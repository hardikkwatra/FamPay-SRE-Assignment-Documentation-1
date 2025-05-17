#!/bin/bash

echo "Creating namespace..."
kubectl create namespace fampay

echo "Creating secrets..."
kubectl create secret generic bran-secrets \
  --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e' \
  --from-literal=ALLOWED_HOSTS='*' \
  --from-literal=DEBUG='true' \
  --from-literal=TIME_ZONE='UTC' \
  --namespace=fampay

kubectl create secret generic hodor-secrets \
  --from-literal=HOST_ADDR='0.0.0.0:8888' \
  --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e' \
  --from-literal=ALLOWED_HOSTS='*' \
  --namespace=fampay

echo "Applying deployments..."
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml

echo "Applying services..."
kubectl apply -f services.yaml

echo "Applying load balancer configuration..."
kubectl apply -f load-balancer.yaml

echo "Applying network policies..."
kubectl apply -f network-policies.yaml

echo "Waiting for deployments to be ready..."
kubectl rollout status deployment/bran -n fampay
kubectl rollout status deployment/hodor -n fampay
kubectl rollout status deployment/lb-proxy -n fampay

echo "Deployment complete! Here's the current state:"
kubectl get pods -n fampay
kubectl get services -n fampay
