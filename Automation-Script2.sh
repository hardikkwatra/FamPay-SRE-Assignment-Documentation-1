#!/bin/bash

set -euo pipefail

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Step 1: Installing Required Tools...${NC}"

# Install AWS CLI
if ! command -v aws &> /dev/null; then
  echo "Installing AWS CLI..."
  curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip -q awscliv2.zip
  sudo ./aws/install
  rm -rf awscliv2.zip aws
else
  echo "AWS CLI already installed."
fi

# Configure AWS CLI (will prompt interactively)
echo -e "${GREEN}Step 2: Configuring AWS CLI...${NC}"
aws configure

# Install kubectl
if ! command -v kubectl &> /dev/null; then
  echo "Installing kubectl..."
  curl -LO "https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  chmod +x kubectl
  sudo mv kubectl /usr/local/bin/
else
  echo "kubectl already installed."
fi

# Install eksctl
if ! command -v eksctl &> /dev/null; then
  echo "Installing eksctl..."
  curl -sSL "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
  sudo mv /tmp/eksctl /usr/local/bin/
else
  echo "eksctl already installed."
fi

# Install Helm
if ! command -v helm &> /dev/null; then
  echo "Installing Helm..."
  curl -sSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
else
  echo "Helm already installed."
fi

echo -e "${GREEN}Step 3: Creating EKS Cluster...${NC}"

eksctl create cluster \
  --name fampay-cluster \
  --region us-west-2 \
  --version 1.27 \
  --nodegroup-name standard-workers \
  --node-type t3.medium \
  --nodes 3 \
  --nodes-min 3 \
  --nodes-max 10 \
  --with-oidc \
  --managed \
  --alb-ingress-access \
  --ssh-access \
  --ssh-public-key ~/.ssh/id_rsa.pub

eksctl get cluster --name fampay-cluster --region us-west-2

echo -e "${GREEN}Step 4: Configuring kubectl...${NC}"
aws eks update-kubeconfig --name fampay-cluster --region us-west-2
kubectl get nodes

echo -e "${GREEN}Step 5: Deploying Application to Cluster...${NC}"

# Create namespace
kubectl create namespace fampay || echo "Namespace already exists."

# Create secrets
kubectl create secret generic bran-secrets \
  --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e' \
  --from-literal=ALLOWED_HOSTS='*' \
  --from-literal=DEBUG='true' \
  --from-literal=TIME_ZONE='UTC' \
  --namespace=fampay || echo "bran-secrets already exists."

kubectl create secret generic hodor-secrets \
  --from-literal=HOST_ADDR='0.0.0.0:8888' \
  --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e' \
  --from-literal=ALLOWED_HOSTS='*' \
  --namespace=fampay || echo "hodor-secrets already exists."

# Apply configurations
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
kubectl apply -f services.yaml
kubectl apply -f load-balancer.yaml
kubectl apply -f network-policies.yaml

# Wait for deployments to be ready
echo -e "${GREEN}Waiting for deployments to be ready...${NC}"
kubectl rollout status deployment/bran -n fampay
kubectl rollout status deployment/hodor -n fampay
kubectl rollout status deployment/lb-proxy -n fampay

# Output current state
echo -e "${GREEN}Deployment complete! Current state:${NC}"
kubectl get pods -n fampay
kubectl get services -n fampay

