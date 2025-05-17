exit
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
# Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
# Install Helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# Create EKS cluster with managed node groups
eksctl create cluster   --name fampay-cluster   --region us-west-2   --version 1.27   --nodegroup-name standard-workers   --node-type t3.medium   --nodes 3   --nodes-min 3   --nodes-max 10   --with-oidc   --managed   --alb-ingress-access   --ssh-access   --ssh-public-key ~/.ssh/id_rsa.pub
# Verify cluster creation
eksctl get cluster --name fampay-cluster --region us-west-2
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
aws ec2 import-key-pair   --key-name my-eks-key   --public-key-material fileb://~/.ssh/id_rsa.pub   --region us-west-2
# Create EKS cluster with managed node groups
eksctl create cluster   --name fampay-cluster   --region us-west-2   --version 1.27   --nodegroup-name standard-workers   --node-type t3.medium   --nodes 3   --nodes-min 3   --nodes-max 10   --with-oidc   --managed   --alb-ingress-access   --ssh-access   --ssh-public-key ~/.ssh/id_rsa.pub
# Verify cluster creation
eksctl get cluster --name fampay-cluster --region us-west-2
eksctl delete cluster --region=us-west-2 --name=fampay-cluster
ls
aws configure
eksctl utils associate-iam-oidc-provider   --region us-west-2   --cluster fampay-cluster   --approve
# Create EKS cluster with managed node groups
eksctl create cluster   --name fampay-cluster   --region us-west-2   --version 1.27   --nodegroup-name standard-workers   --node-type t3.medium   --nodes 3   --nodes-min 3   --nodes-max 10   --with-oidc   --managed   --alb-ingress-access   --ssh-access   --ssh-public-key ~/.ssh/id_rsa.pub
# Verify cluster creation
eksctl get cluster --name fampay-cluster --region us-west-2
# Update kubeconfig to connect to the new cluster
aws eks update-kubeconfig --name fampay-cluster --region us-west-2
# Verify connection
kubectl get nodes
# Create ECR repositories for both applications
aws ecr create-repository --repository-name fampay/hodor --image-scanning-configuration scanOnPush=true
aws ecr create-repository --repository-name fampay/bran --image-scanning-configuration scanOnPush=true
# Note the repository URIs returned in the output
mkdir Hodor
cd Hodor
vim Dockerfile
cd ..
mkdir Bran
cd Barn
cd Bran
vim Dockerfile
# Build Hodor image
cd /path/to/hodor
docker build -t hodor:latest .
# Test Hodor image
docker run -p 8080:8080 hodor:latest
# Build Bran image
cd /path/to/bran
docker build -t bran:latest .
# Test Bran image
docker run -p 8000:8000 bran:latest
docker build -t bran:latest .
vim Dockerfile
docker build -t bran:latest .
vim Dockerfile
docker build -t bran:latest .
touch requirements.txt
docker build -t bran:latest .
ls
cd ..
ls
rm -rf Bran Hodor
git clonehttps://github.com/fampay-inc/bran.git
git clone https://github.com/fampay-inc/bran.git
ls
cd bran
ls
vim .env
cd ..
vim docker-compose.yml
docker-compose up -d
docker ps
cd bran
vim .env
ls
vim Dockerfile
docker build -t bran:latest .
ls
ls -a
rm -rf Dockerfile
cd backend
vim Dockerfile
docker build -t bran:latest .
rm -rf Dockerfile
cd ..
vim Dockerfile
docker build -t bran:latest .
vim Dockerfile
docker build -t bran:latest .
cd backend/backend/settings.py
cd backend/backend
ls
vim settings.py
cd ../..
docker build -t bran:latest .
docker run -p 8000:8000 bran:latest
sudo lsof -i :8000
docker run -p 8080:8000 bran:latest
poetry add gunicorn
curl -sSL https://install.python-poetry.org | python3 -
poetry --version
apt install python3-poetry
poetry --version
poetry add gunicorn
docker run -p 8080:8000 bran:latest
docker run -p 8000:8000 bran:latest
LS
ls
vim Dockerfile
ls
vim pyproject.toml
cat pyproject.toml
clear
vim pyproject.toml
vim Dockerfile
docker build -t bran:latest .
docker run -it --rm bran:latest sh
docker run -p 8080:8000 bran:latest
lsof -i:8000
lsof -i :8000
netstat -tulnp | grep 8000
ss -ltnp | grep 8000
kill -9 4096
sudo fuser -n tcp 8000
vim Dockerfile
docker run -p 8080:8000 bran:latest
docker build -t bran:latest .
docker run -p 8080:8080 bran:latest
ls
cd backend
ls
cd backend
ls
vim settings.py
python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
python3 -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
sudo apt install python-is-python3
python3 -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
pip3 install django
apt install python3
python3 -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
pip3 install django
python3 install django
apt install django
pip3 install --break-system-packages django
python3 -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
ls
cd ../..
ls
vim .env
ls -a
docker run --env-file .env -p 8080:8080 bran:latest
clear
docker run --env-file .env -p 8080:8080 bran:latest
vim .env
docker run --env-file .env -p 8080:8080 bran:latest
clear
docker run --env-file .env -p 8080:8080 bran:latest
vim .env
docker run --env-file .env -p 8080:8080 bran:latest
clear
docker run --env-file .env -p 8080:8080 bran:latest
ls
cat Dockerfile
ls
vim pyproject.toml
poetry update psycopg
docker build -t bran:latest .
vim Dockerfile
docker build -t bran:latest .
docker run --env-file .env -p 8080:8080 bran:latest
vim Dockerfile
vim pyproject.toml
cat pyproject.toml
vim pyproject.toml
poetry lock
docker build -t bran:latest .
docker run --env-file .env -p 8080:8080 bran:latest
vim Dockerfile
docker build -t bran:latest .
docker run --env-file .env -p 8080:8080 bran:latest
vim Dockerfile
docker build -t bran:latest .
docker run --env-file .env -p 8080:8080 bran:latest
vim Dockerfile
docker run --env-file .env -p 8080:5000 bran:latest
docker build -t bran:latest .
docker run --env-file .env -p 8080:5000 bran:latest
docker run --env-file .env -p 5000:5000 bran:latest
ls
cd backend
ls
cd backend
ls
vim settings.py
docker run --env-file .env -p 5000:5000 bran:latest
docker build -t bran:latest .
cd ../..
docker build -t bran:latest .
docker run --env-file .env -p 5000:5000 bran:latest
cd backend
ls
vim urls.py
docker build -t bran:latest .
cd ../..
docker build -t bran:latest .
docker run --env-file .env -p 5000:5000 bran:latest
cd ..
ls
git clone https://github.com/fampay-inc/hodr.git
cd hodor
ls
cd hodr
ls
vim .env
ls
vim Dockerfile
docker build -t hodor:latest .
vim Dockerfile
ls
vim go.mod
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
docker run --env-file .env -p 9000:9000 hodor:latest
vim Dockerfile
docker build -t hodor:latest .
docker run --env-file .env -p 8888:8888 hodor:latest
vim .env
docker run --env-file .env -p 8888:8888 hodor:latest
vim .env
docker run --env-file .env -p 8888:8888 hodor:latest
ls
docker list
docker --help
docker images
# Push Hodor image
docker push hardddyy/hodor:latest
docker push hardddyy/hodor:$GIT_COMMIT_SHA
# Push Bran image
docker push hardddyy/bran:latest
docker push hardddyy/bran:$GIT_COMMIT_SHA
docker push hardddyy/hodor:latest
docker images
docker push hardddyy/hodor:$GIT_COMMIT_SHA
docker push hardddyy/bran:$GIT_COMMIT_SHA
docker push hardddyy/hodor:latest
docker tag hodor:latest hardddyy/hodor:latest
docker push hardddyy/hodor:latest
docker login
docker login -u hardddyy
docker push hardddyy/hodor:latest
docker tag bran:latest hardddyy/bran:latest
docker push hardddyy/bran:latest
docker push hardddyy/hodor:$GIT_COMMIT_SHA
docker push hardddyy/bran:$GIT_COMMIT_SHA
docker tag 14dbd6e7bfb9 hardddyy/hodor:$GIT_COMMIT_SHA
docker tag 40aae9be1757 hardddyy/bran:$GIT_COMMIT_SHA
containers:
- name: hodor
containers:
- name: hodor
# Create namespaces for different components
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: fampay
---
apiVersion: v1
kind: Namespace
metadata:
  name: monitoring
---
apiVersion: v1
kind: Namespace
metadata:
  name: logging
EOF

# Verify namespaces
kubectl get namespaces
# Add the Helm repository
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
# Install NGINX Ingress Controller
helm install nginx-ingress ingress-nginx/ingress-nginx   --namespace ingress-nginx   --create-namespace   --set controller.service.type=LoadBalancer
# Wait for the load balancer to be provisioned
kubectl --namespace ingress-nginx get services -o wide -w nginx-ingress-ingress-nginx-controller
# Note the external IP/hostname of the load balancer
export INGRESS_HOST=$(kubectl -n ingress-nginx get service nginx-ingress-ingress-nginx-controller -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
echo "Ingress Host: $INGRESS_HOST"
cd ..
# Create ConfigMap for application configuration
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config
  namespace: fampay
data:
  ENVIRONMENT: "production"
  LOG_LEVEL: "info"
EOF

# Verify ConfigMap
kubectl get configmap app-config -n fampay -o yaml
kubectl create secret docker-registry dockerhub-secret   --namespace fampay   --docker-server=index.docker.io   --docker-username=hardddyy   --docker-password=Ilikeyou12
ls
cd hodor
cd hodr
ls
vim Dockerfile
clear
kubectl get svc nginx-ingress-ingress-nginx-controller -n ingress-nginx -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'
dig abe2d7597452b4caf9a0abfc08b5faa2-13713433.us-west-2.elb.amazonaws.com
apt install bind9-dnsutils
aws elbv2 describe-load-balancers   --region us-west-2   --query "LoadBalancers[?DNSName=='abe2d7597452b4caf9a0abfc08b5faa2-13713433.us-west-2.elb.amazonaws.com'].{State:State}"
dig abe2d7597452b4caf9a0abfc08b5faa2-13713433.us-west-2.elb.amazonaws.com
curl -v -H "Host: pay.famprotocol.org" http://abe2d7597452b4caf9a0abfc08b5faa2-13713433.us-west-2.elb.amazonaws.com
vim hodor-deployment.yaml
vim bran-deployment.yaml
vim hodor-service.yaml
vim bran-service.yaml
vim ingress.yaml
vim network-policy.yaml
# Apply all configurations
kubectl apply -f hodor-deployment.yaml
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-service.yaml
kubectl apply -f bran-service.yaml
kubectl apply -f ingress.yaml
kubectl apply -f network-policy.yaml
# Verify
kubectl get pods,svc,ingress -n fampay
kubectl get pods
No resources found in default namespace.
kubectl get pods -n fampay
# Check Bran logs (port 5000)
kubectl logs bran-5687cf74bf-84n4s -n fampay --previous
# Check Hodor logs (port 8888)
kubectl logs hodor-58475c6d54-4h4b8 -n fampay --previous
docker compose list
docker-compose list
docker-compose images
cd ..
ls
vim docker-compose.yml
ls
cd bran
ls
ls -a
vim .env
cd ..
ls
cd hodr
vim .env
vim postgres-secrets.yaml
vim apiVersion: v1
kind: Secret
metadata:
  name: bran-secrets
  namespace: fampay
type: Opaque
stringData:
  DATABASE_URL: "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@postgres:5432/$(POSTGRES_DB)"
  SECRET_KEY: "django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e"

---
apiVersion: v1
kind: Secret
metadata:
  name: hodor-secrets
  namespace: fampay
type: Opaque
stringData:
  DATABASE_URL: "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@postgres:5432/$(POSTGRES_DB)"
  HOST_ADDR: "0.0.0.0:8888"
vim app-secrets.yaml
vim network-policies.yaml
vim network-policy.yaml
ls
vim bran-deployment.yaml
cat bran-deployment.yaml
ls
vim bran-deployment.yaml
cat hodor-deployment.yaml
ls
vim bran-service.yaml
vim hodor-deployment.yaml
# Check environment variables
kubectl exec -it $(kubectl get pods -n fampay -l app=hodor -o jsonpath='{.items[0].metadata.name}') -n fampay -- env | grep DB_
# Test database connection
kubectl exec -it $(kubectl get pods -n fampay -l app=hodor -o jsonpath='{.items[0].metadata.name}') -n fampay --   sh -c 'echo "SELECT 1" | psql $DATABASE_URL'
ls
cd ..
ls
cd hodr
vim l     network-policy.yaml
README.md   bran-service.yaml     go.sum       i
vim hodor-service.yaml
kubectl apply -f postgres-secrets.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f app-secrets.yaml
kubectl apply -f network-policies.yaml
# Wait for Postgres to be ready
kubectl wait --for=condition=ready pod -l app=postgres -n fampay --timeout=120s
# Apply application deployments
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
kubectl apply -f bran-service.yaml
kubectl apply -f hodor-service.yaml
kubectl apply -f ingress.yaml
# Verify network policies
kubectl get networkpolicy -n fampay
ls
kubectl apply -f app-secrets.yaml
kubectl apply -f network-policy.yaml
# Wait for Postgres to be ready
kubectl wait --for=condition=ready pod -l app=postgres -n fampay --timeout=120s
# Apply application deployments
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
kubectl apply -f bran-service.yaml
kubectl apply -f hodor-service.yaml
kubectl apply -f ingress.yaml
# Verify network policies
kubectl get networkpolicy -n fampay
kubectl get secrets
kubectl get secrets --fampay
kubectl get secrets -fampay
kubectl get secrets -n fampay
kubectl get deployments
kubectl get deployments -n fampay
kubectl describe deployment postgres -n fampay
kubectl get pods -n fampay
kubectl get pod postgres-0 -n fampay
kubectl describe pod postgres-0 -n fampay
kubectl logs postgres-0 -n fampay
kubectl exec -it postgres-0 -n fampay -- bash
clear
kubectl exec -it postgres-0 -n fampay -- bash
kubectl get pvc -n fampay
kubectl patch pvc postgres-data-postgres-0 -n fampay -p '{"spec":{"storageClassName":"standard"}}'
kubectl get pvc -n fampay
kubectl delete pods --all -n fampay
kubectl get pods -n fampay
kubectl describe pod bran-5687cf74bf-c2lqx -n fampay
kubectl delete deployment --all -n fampay
ls
kubectl get pods -n fampay
kubectl delete statefulset --all -n fampay
kubectl get pods -n fampay
kubectl apply -f postgres-secrets.yaml
kubectl get secrets -n fampay
vim postgres-deployment.yaml
kubectl config current-context
kubectl get nodes -o wide
kubectl version --short
kubectl version 
vim postgres-deployment.yaml
kubectl apply -f postgres-deployment.yaml
kubectl get statefulset postgres -n fampay
kubectl get pods -n fampay
kubectl logs postgres-0 -n fampay
kubectl get service postgres -n fampay
kubectl get pvc -n fampay
kubectl get events -n fampay
kubectl get statefulset postgres -n fampay
# First, delete the stuck resources
kubectl delete statefulset postgres -n fampay
kubectl delete pvc postgres-data-postgres-0 -n fampay
# Create a StorageClass (if not exists)
cat <<EOF | kubectl apply -f -
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: fast
provisioner: kubernetes.io/aws-ebs  # Change based on your cloud provider
parameters:
  type: gp2
  fsType: ext4
reclaimPolicy: Retain
volumeBindingMode: WaitForFirstConsumer
EOF

# Update your postgres-deployment.yaml to include StorageClass:
spec:
ls
vim postgres-deployment.yaml
kubectl get storageclass
cat <<EOF | kubectl apply -f -
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: fast
provisioner: ebs.csi.aws.com
parameters:
  type: gp3
  fsType: ext4
volumeBindingMode: WaitForFirstConsumer
EOF

kubectl delete storageclass fast
cat <<EOF | kubectl apply -f -
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: postgres-storage
provisioner: ebs.csi.aws.com
parameters:
  type: gp3
  fsType: ext4
  encrypted: "true"
volumeBindingMode: WaitForFirstConsumer
reclaimPolicy: Retain
allowVolumeExpansion: true
EOF

clear
vim postgres-deployment.yaml
kubectl apply -f postgres-deployment.yaml
kubectl get statefulset postgres -n fampay
kubectl get pods -n fampay
kubectl logs postgres-0 -n fampay
kubectl get service postgres -n fampay
kubectl get pvc -n fampay
kubectl delete deployment --all -n fampay
kubectl delete statefulset --all -n fampay
kubectl get service postgres -n fampay
kubectl delete pods --all -n fampay
kubectl delete pvc --all -n fampay
kubectl delete svc --all -n fampay
kubectl get all -n fampay
kubectl get pvc -n fampay
kubectl get secrets -n fampay
kubectl delete secrets --all -n fampay
ls
kubectl apply -f postgres-secrets.yaml
kubectl apply -f postgres-deployment.yaml
kubectl get statefulset postgres -n fampay
kubectl get pods -n fampay
kubectl logs postgres-0 -n fampay
kubectl get service postgres -n fampay
kubectl get pvc -n fampay
kubectl delete pods --all -n fampay
kubectl delete deployment --all -n fampay
vim postgres-deployment.yaml
kubectl get storageclass
vim postgres-deployment.yaml
kubectl delete all,statefulsets,svc,pvc,secrets,configmaps --all -n fampay
kubectl delete deployment --all -n fampay
kubectl get all,statefulsets,svc,pvc,secrets,configmaps -n fampay
# Should show "No resources found"
# Create namespaces for different components
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: fampay
---
apiVersion: v1
kind: Namespace
metadata:
  name: monitoring
---
apiVersion: v1
kind: Namespace
metadata:
  name: logging
EOF

# Verify namespaces
kubectl get namespaces
# Add the Helm repository
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
# Install NGINX Ingress Controller
helm install nginx-ingress ingress-nginx/ingress-nginx   --namespace ingress-nginx   --create-namespace   --set controller.service.type=LoadBalancer
# Wait for the load balancer to be provisioned
kubectl --namespace ingress-nginx get services -o wide -w nginx-ingress-ingress-nginx-controller
# Note the external IP/hostname of the load balancer
export INGRESS_HOST=$(kubectl -n ingress-nginx get service nginx-ingress-ingress-nginx-controller -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
echo "Ingress Host: $INGRESS_HOST"
# Add the Helm repository
helm repo add jetstack https://charts.jetstack.io
helm repo update
# Install cert-manager
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --version v1.11.0   --set installCRDs=true
# Create a ClusterIssuer for Let's Encrypt
cat <<EOF | kubectl apply -f -
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: hardikkwatra0014@gmail.com
    privateKeySecretRef:
      name: letsencrypt-prod
    solvers:
    - http01:
        ingress:
          class: nginx
EOF

# Create ConfigMap for application configuration
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config
  namespace: fampay
data:
  ENVIRONMENT: "production"
  LOG_LEVEL: "info"
EOF

# Verify ConfigMap
kubectl get configmap app-config -n fampay -o yaml
ls
vim postgres-deployment.yaml
kubectl apply -f postgres-deployment.yaml -n fampay
# Check pod status
kubectl get pods -n fampay -w
# Verify PVC creation
kubectl get pvc -n fampay
# Check database connectivity
kubectl exec -it postgres-0 -n fampay -- psql -U bran_user -d bran_db -c "SELECT 1"
kubectl get pvc -n fampay
kubectl get pods -n fampay -w
kubectl describe pod postgres-0 -n fampay
kubectl get storageclass
AME               PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
gp2 (default)      kubernetes.io/aws-ebs   Delete          WaitForFirstConsumer   false                  8h
kubectl get pvc -n fampay
kubectl describe pvc postgres-data-postgres-0 -n fampay
kubectl delete pvc postgres-data-postgres-0 -n fampay
kubectl delete statefulset postgres -n fampay
# Create manual PV first
kubectl apply -f - <<EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: manual-postgres-pv
spec:
  capacity:
    storage: 10Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  storageClassName: gp2
  awsElasticBlockStore:
    fsType: ext4
    volumeID: vol-0123456789abcdef0  # Replace with actual EBS volume ID
EOF

# Then apply the StatefulSet
ls
vim postgres-deployment.yaml
kubectl apply -f postgres-deployment.yaml
kubectl logs -n kube-system -l app=ebs-csi-controller
kubectl get pods -n fampay -w
kubectl get pvc -n fampay
kubectl get pods -n fampay
kubectl exec -it postgres-0 -n fampay -- psql -U bran_user -d bran_db -c "SELECT 1"
kubectl describe pod postgres-0 -n fampay
kubectl get pvc -n fampay
kubectl get pods -n fampay 
kubectl describe pod postgres-0 -n fampay
kubectl describe pv manual-postgres-pv
kubectl logs -n fampay postgres-0
kubectl describe nodes | grep -A 10 Allocatable
aws ec2 describe-volumes --volume-ids vol-0123456789abcdef0   --query 'Volumes[0].{State:State, Attachments:Attachments}'
# Get the AWS instance ID of your node
INSTANCE_ID=$(kubectl get node ip-192-168-65-168.us-west-2.compute.internal -o jsonpath='{.spec.providerID}' | cut -d'/' -f5)
# Attach the volume
aws ec2 attach-volume   --volume-id vol-0123456789abcdef0   --instance-id $INSTANCE_ID   --device /dev/xvdf
kubectl delete pod postgres-0 -n fampay
kubectl delete pv manual-postgres-pv
kubectl delete pvc postgres-data-postgres-0 -n fampay
kubectl delete statefulset postgres -n fampay
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install pgbouncer bitnami/pgbouncer   --namespace fampay   --create-namespace   --set auth.user=pool_user   --set auth.password=PoolPass123   --set database=prod_db
helm search repo bitnami/pgbouncer
helm repo add groundhog2k https://groundhog2k.github.io/helm-charts/
helm repo update
helm search repo groundhog2k/pgbouncer
ls
vim  app-secrets.yaml
aws rds describe-db-instances   --db-instance-identifier database-1   --query 'DBInstances[0].MasterUsername'
ls
cd ..
ls
rm -rf bran hodr
docker-compose down
git clone https://github.com/fampay-inc/bran.git
ls
cd bran
ls
vim .env
vim Dockerfile
docker ps -a
docker ps
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
docker ps -a
ls
docker build -t bran:latest .
vim Dockerfile
docker build -t bran:latest .
ls
cd backend
ls
vim settings.py
cat settings.py
vim settings.py
docker build -t bran:latest .
cd ../..
docker build -t bran:latest .
docker run --env-file .env -p 5000:5000 bran:latest
ls
vim pyproject.toml
poetry lock
docker build -t bran:latest .
docker run --env-file .env -p 5000:5000 bran:latest
cd backend
ls
vim settings.py
vim .env
cd ../..
vim .env
docker run --env-file .env -p 5000:5000 bran:latest
cd backend
ls
vim urls.py
docker build -t bran:latest .
cd ../..
docker build -t bran:latest .
docker run --env-file .env -p 5000:5000 bran:latest
vim .env
docker run --env-file .env -p 5000:5000 bran:latest
cd ..
git clone https://github.com/fampay-inc/hodr.git
ls
cd hodr
ls
vim .env
vim Dockerfile
docker build -t hodor:latest .
ls
vim go.mod
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
vim Dockerfile
docker build -t hodor:latest .
cat Dockerfile
:%d
vim Dockerfile
docker build -t hodor:latest .
ls
vim go.mod
docker build -t hodor:latest .
docker run --env-file .env -p 8888:8888 hodor:latest
ls
vim main.go
vim Dockerfile
docker run --env-file .env -p 8888:8888 hodor:latest
docker build -t hodor:latest .
docker run --env-file .env -p 8888:8888 hodor:latest
vim .env
ls -a
docker run --env-file .env -p 8080:8888 hodor:latest
docker ps
docker ps -a
docker run -p 8080:8888 hodor:latest
ls ls
ls
vim main.go
docker build -t hodor:latest .
docker run -p 8080:8888 hodor:latest
docker run -p 8080:8080 hodor:latest
docker run -p 8888:8888 hodor:latest
docker run --env-file .env -p 8888:8888 hodor:latest
ls
vim .env
docker build -t hodor:latest .
docker run --env-file .env -p 8888:8888 hodor:latest
docker login
docker tag hodor:latest hardddyy/hodor:1
docker push hardddyy/hodor:1
docker tag hodor:latest hardddyy/hodor:1
docker push hardddyy/hodor:1
docker login
docker push hardddyy/hodor:1
docker images
docker tag bran:latest hardddyy/bran:v1
docker login
docker push hardddyy/bran:v1
cd ..
ls
vim .env
ls
cd bran
vim .env
cd ..
ls
cd hodr
vim .env
# Create secret for bran application
kubectl create secret generic bran-secrets   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
# Create secret for hodor application
kubectl create secret generic hodor-secrets   --from-literal=HOST_ADDR="0.0.0.0:8888"   --namespace=fampay
# Create namespace for our applications
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: fampay
EOF

# Verify namespace creation
kubectl get namespaces
# Create secret for bran application
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: bran-secrets
  namespace: fampay
type: Opaque
data:
  SECRET_KEY: ZGphbmdvLWluc2VjdXJlLThqPWhycyNeel90JTIxXjg5aXNiZ3FlZGRmMl96dyEjemg0NXJ6LT1oJnUlemUpbzNl
  ALLOWED_HOSTS: Kg==
  DEBUG: dHJ1ZQ==
  TIME_ZONE: VVRD
EOF

# Create secret for hodor application
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: hodor-secrets
  namespace: fampay
type: Opaque
data:
  HOST_ADDR: MC4wLjAuMDo4ODg4
EOF

# Verify secrets creation
kubectl get secrets -n fampay
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hodor
  namespace: fampay
spec:
  replicas: 3
  selector:
    matchLabels:
      app: hodor
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  template:
    metadata:
      labels:
        app: hodor
      annotations:
        prometheus.io/scrape: "true"
        prometheus.io/path: "/metrics"
        prometheus.io/port: "8888"
    spec:
      containers:
      - name: hodor
        image: hardddyy/hodor:latest
        ports:
        - containerPort: 8888
        resources:
          requests:
            cpu: "100m"
            memory: "128Mi"
          limits:
            cpu: "500m"
            memory: "512Mi"
        envFrom:
        - secretRef:
            name: hodor-secrets
        readinessProbe:
          httpGet:
            path: /health
            port: 8888
          initialDelaySeconds: 5
          periodSeconds: 10
        livenessProbe:
          httpGet:
            path: /health
            port: 8888
          initialDelaySeconds: 15
          periodSeconds: 20
EOF

# Verify hodor deployment
kubectl get deployments -n fampay
kubectl get pods -n fampay -l app=hodor
# Delete the Hodor deployment
kubectl delete deployment hodor -n fampay
# Delete the Hodor secret
kubectl delete secret hodor-secrets -n fampay
# Optional: Delete the service if one was created
kubectl delete svc hodor -n fampay 2>/dev/null || true
# Verify all Hodor resources are gone
kubectl get all -n fampay | grep hodor || echo "✅ All Hodor resources deleted."
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: hodor-secrets
  namespace: fampay
type: Opaque
data:
  HOST_ADDR: MC4wLjAuMDo4ODg4
EOF

clear
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hodor
  namespace: fampay
spec:
  replicas: 3
  selector:
    matchLabels:
      app: hodor
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  template:
    metadata:
      labels:
        app: hodor
      annotations:
        prometheus.io/scrape: "true"
        prometheus.io/path: "/metrics"
        prometheus.io/port: "8888"
    spec:
      containers:
      - name: hodor
        image: hardddyy/hodor:1 
        ports:
        - containerPort: 8888
        resources:
          requests:
            cpu: "100m"
            memory: "128Mi"
          limits:
            cpu: "500m"
            memory: "512Mi"
        envFrom:
        - secretRef:
            name: hodor-secrets
        readinessProbe:
          httpGet:
            path: /health
            port: 8888
          initialDelaySeconds: 5
          periodSeconds: 10
        livenessProbe:
          httpGet:
            path: /health
            port: 8888
          initialDelaySeconds: 15
          periodSeconds: 20
EOF

# Verify hodor deployment
kubectl get deployments -n fampay
kubectl get pods -n fampay -l app=hodor
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: bran
  namespace: fampay
spec:
  replicas: 3
  selector:
    matchLabels:
      app: bran
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  template:
    metadata:
      labels:
        app: bran
      annotations:
        prometheus.io/scrape: "true"
        prometheus.io/path: "/metrics"
        prometheus.io/port: "5000"
    spec:
      containers:
      - name: bran
        image: hardddyy/bran:v1
        ports:
        - containerPort: 5000
        resources:
          requests:
            cpu: "200m"
            memory: "256Mi"
          limits:
            cpu: "1000m"
            memory: "1Gi"
        envFrom:
        - secretRef:
            name: bran-secrets
        env:
        - name: HODOR_SERVICE_URL
          value: "http://hodor:8888"
        readinessProbe:
          httpGet:
            path: /health
            port: 8000
          initialDelaySeconds: 10
          periodSeconds: 15
        livenessProbe:
          httpGet:
            path: /health
            port: 5000
          initialDelaySeconds: 20
          periodSeconds: 30
EOF

# Verify bran deployment
kubectl get deployments -n fampay
kubectl get pods -n fampay -l app=bran
# Create service for hodor
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  name: hodor
  namespace: fampay
  labels:
    app: hodor
spec:
  selector:
    app: hodor
  ports:
  - port: 8888
    targetPort: 8888
    name: http
EOF

# Create service for bran
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  name: bran
  namespace: fampay
  labels:
    app: bran
spec:
  selector:
    app: bran
  ports:
  - port: 5000
    targetPort: 5000
    name: http
EOF

# Verify services
kubectl get services -n fampay
# Create namespace for ingress-nginx
kubectl create namespace ingress-nginx
# Add the Helm repository
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
# Install NGINX Ingress Controller
helm install nginx-ingress ingress-nginx/ingress-nginx   --namespace ingress-nginx   --set controller.replicaCount=2   --set controller.nodeSelector."kubernetes\.io/os"=linux   --set defaultBackend.nodeSelector."kubernetes\.io/os"=linux   --set controller.service.loadBalancerIP=""   --set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-type"="nlb"   --set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-cross-zone-load-balancing-enabled"="true"
# Verify installation
kubectl get pods -n ingress-nginx
kubectl get services -n ingress-nginx
cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: app-ingress
  namespace: fampay
  annotations:
    kubernetes.io/ingress.class: "nginx"
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
    nginx.ingress.kubernetes.io/rewrite-target: /\$2
    nginx.ingress.kubernetes.io/use-regex: "true"
    external-dns.alpha.kubernetes.io/hostname: pay.famprotocol.org
spec:
  rules:
  - host: pay.famprotocol.org
    http:
      paths:
      - path: /bran(/|$)(.*)
        pathType: Prefix
        backend:
          service:
            name: bran
            port:
              number: 5000
      - path: /hodor(/|$)(.*)
        pathType: Prefix
        backend:
          service:
            name: hodor
            port:
              number: 8888
EOF

# Verify ingress
kubectl get ingress -n fampay
cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: bran-access-policy
  namespace: fampay
spec:
  podSelector:
    matchLabels:
      app: bran
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          kubernetes.io/metadata.name: ingress-nginx
    ports:
    - protocol: TCP
      port: 8000
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: hodor-access-policy
  namespace: fampay
spec:
  podSelector:
    matchLabels:
      app: hodor
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          kubernetes.io/metadata.name: ingress-nginx
    - podSelector:
        matchLabels:
          app: bran
    ports:
    - protocol: TCP
      port: 8888
EOF

# Verify network policies
kubectl get networkpolicies -n fampay
cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: bran-access-policy
  namespace: fampay
spec:
  podSelector:
    matchLabels:
      app: bran
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          kubernetes.io/metadata.name: ingress-nginx
    ports:
    - protocol: TCP
      port: 5000
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: hodor-access-policy
  namespace: fampay
spec:
  podSelector:
    matchLabels:
      app: hodor
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          kubernetes.io/metadata.name: ingress-nginx
    - podSelector:
        matchLabels:
          app: bran
    ports:
    - protocol: TCP
      port: 8888
EOF

# Verify network policies
kubectl get networkpolicies -n fampay
kubctl get all pods -n fampay
kubectl get all pods -n fampay
clear
kubectl get pods -n fampay
kubectl logs bran-f9c4d8677-6hfmq -n fampay
kubectl describe pod bran-f9c4d8677-6hfmq -n fampay
kubectl get pods -n fampay
kubectl delete all --all -n fampay
kubectl get pods -n fampay
kubectl get secrets -n fampay
kubectl delete secret --all -n fampay
ls
cd ..
ls
# Create secret for bran application
kubectl create secret generic bran-secrets   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
# Create secret for hodor application
kubectl create secret generic hodor-secrets   --from-literal=HOST_ADDR="0.0.0.0:8888"   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
kubectl create secret generic bran-secrets   --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e'   --from-literal=ALLOWED_HOSTS='*'   --from-literal=DEBUG='true'   --from-literal=TIME_ZONE='UTC'   --namespace=fampay
kubectl create secret generic hodor-secrets   --from-literal=HOST_ADDR='0.0.0.0:8888'   --from-literal=SECRET_KEY='django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw!#zh45rz-=h&u%ze)o3e'   --from-literal=ALLOWED_HOSTS='*'   --namespace=fampay
kubectl create namespace fampay
# Get your VPC ID and subnet IDs in us-west-2 region
VPC_ID=$(aws ec2 describe-vpcs --region us-west-2 --query "Vpcs[0].VpcId" --output text)
SUBNET_IDS=$(aws ec2 describe-subnets --region us-west-2 --filters "Name=vpc-id,Values=$VPC_ID" --query "Subnets[*].SubnetId" --output text | tr '\t' ',')
# Create a target group for bran service (port 5000)
aws elbv2 create-target-group   --name bran-target-group   --protocol TCP   --port 5000   --vpc-id $VPC_ID   --target-type ip   --region us-west-2
# Create a target group for hodor service (port 8888)
aws elbv2 create-target-group   --name hodor-target-group   --protocol TCP   --port 8888   --vpc-id $VPC_ID   --target-type ip   --region us-west-2
# Create the Network Load Balancer
aws elbv2 create-load-balancer   --name fampay-nlb   --type network   --subnets $(echo $SUBNET_IDS | tr ',' ' ')   --region us-west-2
# Store the load balancer ARN and DNS name
LB_ARN=$(aws elbv2 describe-load-balancers --region us-west-2 --names fampay-nlb --query "LoadBalancers[0].LoadBalancerArn" --output text)
LB_DNS=$(aws elbv2 describe-load-balancers --region us-west-2 --names fampay-nlb --query "LoadBalancers[0].DNSName" --output text)
# Get target group ARNs
BRAN_TG_ARN=$(aws elbv2 describe-target-groups --region us-west-2 --names bran-target-group --query "TargetGroups[0].TargetGroupArn" --output text)
HODOR_TG_ARN=$(aws elbv2 describe-target-groups --region us-west-2 --names hodor-target-group --query "TargetGroups[0].TargetGroupArn" --output text)
# Create listener for bran service (port 5000)
aws elbv2 create-listener   --load-balancer-arn $LB_ARN   --protocol TCP   --port 5000   --default-actions Type=forward,TargetGroupArn=$BRAN_TG_ARN   --region us-west-2
# Create listener for hodor service (port 8888)
aws elbv2 create-listener   --load-balancer-arn $LB_ARN   --protocol TCP   --port 8888   --default-actions Type=forward,TargetGroupArn=$HODOR_TG_ARN   --region us-west-2
echo "Load Balancer DNS Name: $LB_DNS"
clear
ls
kubectl get secrets -n fampay
vim deployments.yaml
vim services.yaml
vim deployments.yaml
vim network-policy.yaml
vim hpa.yaml
vim ingress.yaml
vim services-for-ingress.yaml
ls
kubectl apply -f deployments.yaml
# Apply services (this will connect to the AWS load balancer)
kubectl apply -f services.yaml
# Apply network policies
kubectl apply -f network-policy.yaml
# Apply HPAs
kubectl apply -f hpa.yaml
# Verify deployments
kubectl rollout status deployment/bran -n fampay
kubectl rollout status deployment/hodor -n fampay
# Verify services
kubectl get services -n fampay
# Check if load balancer is properly attached
kubectl describe service bran -n fampay
kubectl describe service hodor -n fampay
kubectl get pods -n fampay
curl -I http://pay.famprotocol.org:8888/health
kubectl get services -n fampay
kubectl get pods -n fampay
ls
cd bran
vim Dockerfile
cleardocker build -t hodor:latest .
docker build -t bran:latest .
docker images
vim Dockerfile
docker run --env-file .env -p 5000:5000 bran:latest
ls
cd ..
kubectl get pods -n fampay
kubectl logs bran-779bdcb876-67s2q -n fampay
# Describe your existing load balancer
aws elbv2 describe-load-balancers --region us-west-2   --names fampay-nlb   --query "LoadBalancers[0].{DNSName: DNSName, LoadBalancerArn: LoadBalancerArn, Type: Type}"
# Describe target groups
aws elbv2 describe-target-groups --region us-west-2   --query "TargetGroups[*].{Name: TargetGroupName, Port: Port, Protocol: Protocol, HealthCheckPath: HealthCheckPath}"
# Delete the Kubernetes-created target groups
aws elbv2 delete-target-group   --region us-west-2   --target-group-arn $(aws elbv2 describe-target-groups --region us-west-2 \
    --names "k8s-fampay-bran-5d343fd9f8" \
    --query "TargetGroups[0].TargetGroupArn" \
    --output text)
aws elbv2 delete-target-group   --region us-west-2   --target-group-arn $(aws elbv2 describe-target-groups --region us-west-2 \
    --names "k8s-fampay-hodor-3ab75ab305" \
    --query "TargetGroups[0].TargetGroupArn" \
    --output text)
kubectl get pods -n fampay
kubectl logs hodor-6f7d647866-6ccwz -n fampay
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hodor
  namespace: fampay
spec:
  replicas: 2
  selector:
    matchLabels:
      app: hodor
  template:
    metadata:
      labels:
        app: hodor
    spec:
      containers:
      - name: hodor
        image: hardddyy/hodor:latest
        ports:
        - containerPort: 8888
EOF

cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: bran
  namespace: fampay
spec:
  replicas: 2
  selector:
    matchLabels:
      app: bran
  template:
    metadata:
      labels:
        app: bran
    spec:
      containers:
      - name: bran
        image: hardddyy/bran:latest
        ports:
        - containerPort: 5000
        env:
        - name: HODOR_SERVICE_URL
          value: "http://hodor.fampay.svc.cluster.local:8888"
EOF

kubectl get pods -n fampay
kubectl logs hodor-76c984d88c-v64zp -n fampay
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hodor
  namespace: fampay
spec:
  replicas: 3
  selector:
    matchLabels:
      app: hodor
  template:
    metadata:
      labels:
        app: hodor
    spec:
      containers:
      - name: hodor
        image: hardddyy/hodor:1
        ports:
        - containerPort: 8888
EOF

kubectl get pods -n fampay
kubectl logs hodor-775845c48c-ghjtx -n fampay
# Create secret for bran application
kubectl create secret generic bran-secrets   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
# Create secret for hodor application
kubectl create secret generic hodor-secrets   --from-literal=HOST_ADDR="0.0.0.0:8888"   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
kubectl create secret generic bran-secrets   --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zw  --from-literal=SECRET_KEY="django-insecure-8j=hrs#^z0t%#1^89isbgqeddf2_zwzh45rz-=h&u%ze)o3e" \
kubectl get secrets -n fampay
kubectl get all -n fampay
kubectl delete $(kubectl api-resources --namespaced=true -o name | grep -v secrets | xargs) -n fampay
vim secrets.yaml
kubectl delete all --all -n fampay
kubectl get all -n fampay
vim ingress.yaml
vim load-balancer.yaml
vim network-policies.yaml
vim hodor-service.yaml
vim bran-service.yaml
vim hodor-deployment.yaml
vim bran-deployment.yaml
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
# Apply services
kubectl apply -f bran-service.yaml
kubectl apply -f hodor-service.yaml
# Apply network policies
kubectl apply -f network-policies.yaml
# Apply load balancer configuration
kubectl apply -f load-balancer.yaml
kubectl get pods -n fampay
vim bran-deployment.yaml
vim hodor-deployment.yaml
vim bran-deployment.yamlkubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
# Apply services
kubectl apply -f bran-service.yaml
kubectl apply -f hodor-service.yaml
# Apply network policies
kubectl apply -f network-policies.yaml
# Apply load balancer configuration
kubectl apply -f load-balancer.yaml
kubectl apply -f bran-deployment.yaml
kubectl apply -f hodor-deployment.yaml
# Apply services
kubectl apply -f bran-service.yaml
kubectl apply -f hodor-service.yaml
# Apply network policies
kubectl apply -f network-policies.yaml
# Apply load balancer configuration
kubectl apply -f load-balancer.yaml
kubectl get pods -n fampay
kubectl get services -n fampay
kubectl logs bran-856885cbf5-ms4td
kubectl logs bran-856885cbf5-ms4td -n fampay
kubectl logs hodor-69b76cd9c8-46ks9 -n fampay
ls
vim load-balancer.yaml
clear
kubectl apply -f load-balancer.yaml
kubectl delete deployment lb-proxy -n fampay
kubectl apply -f load-balancer.yaml
kubectl rollout status deployment/bran -n fampay
kubectl rollout status deployment/hodor -n fampay
kubectl rollout status deployment/lb-proxy -n fampay
kubectl get pods -n fampay
kubectl describe service external-lb -n fampay
curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:5000/
# Create a temporary debugging pod
kubectl run -it --rm debug --image=curlimages/curl --restart=Never -n fampay -- sh
# Once inside the pod, test the services
curl -v http://bran:5000/
curl -v http://hodor:8888/
# Exit the pod when done
exit
# Check load balancer details
aws elbv2 describe-load-balancers   --region us-west-2   --names fampay-nlb   --query "LoadBalancers[0].{DNSName: DNSName, State: State, LoadBalancerArn: LoadBalancerArn}"
# Check listeners
aws elbv2 describe-listeners   --region us-west-2   --load-balancer-arn $(aws elbv2 describe-load-balancers --region us-west-2 --names fampay-nlb --query "LoadBalancers[0].LoadBalancerArn" --output text)
# Check target groups
aws elbv2 describe-target-groups   --region us-west-2   --query "TargetGroups[*].{Name: TargetGroupName, Port: Port, Protocol: Protocol, TargetGroupArn: TargetGroupArn}"
[200~# Check targets for bran target group
aws elbv2 describe-target-health   --target-group-arn arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/bran-target-group/1e7afc531f02334b   --region us-west-2
# Check targets for hodor target group
aws elbv2 describe-target-health   --target-group-arn arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/hodor-target-group/a70f56ea3c34edf9   --region us-west-2~clear
Ilikeyou12
# Check targets for bran target group
aws elbv2 describe-target-health   --target-group-arn arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/bran-target-group/1e7afc531f02334b   --region us-west-2
# Check targets for hodor target group
aws elbv2 describe-target-health   --target-group-arn arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/hodor-target-group/a70f56ea3c34edf9   --region us-west-2
exit
# Create NodePort services
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  name: bran-nodeport
  namespace: fampay
spec:
  selector:
    app: bran
  ports:
  - port: 5000
    targetPort: 5000
    nodePort: 30500
  type: NodePort
---
apiVersion: v1
kind: Service
metadata:
  name: hodor-nodeport
  namespace: fampay
spec:
  selector:
    app: hodor
  ports:
  - port: 8888
    targetPort: 8888
    nodePort: 30888
  type: NodePort
EOF

# Get node information
kubectl get nodes -o wide
# Get instance IDs
INSTANCE_IDS=$(kubectl get nodes -o jsonpath='{.items[*].spec.providerID}' | sed 's|aws:///[^/]*/[^/]*/||g')
echo "Instance IDs: $INSTANCE_IDS"
#!/bin/bash
# Set target group ARNs
BRAN_TG_ARN="arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/bran-target-group/1e7afc531f02334b"
HODOR_TG_ARN="arn:aws:elasticloadbalancing:us-west-2:970547366138:targetgroup/hodor-target-group/a70f56ea3c34edf9"
echo "Creating NodePort services..."
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  name: bran-nodeport
  namespace: fampay
spec:
  selector:
    app: bran
  ports:
  - port: 5000
    targetPort: 5000
    nodePort: 30500
  type: NodePort
---
apiVersion: v1
kind: Service
metadata:
  name: hodor-nodeport
  namespace: fampay
spec:
  selector:
    app: hodor
  ports:
  - port: 8888
    targetPort: 8888
    nodePort: 30888
  type: NodePort
EOF

echo "Getting worker node instance IDs..."
INSTANCE_IDS=$(kubectl get nodes -o jsonpath='{.items[*].spec.providerID}' | grep -o 'i-[a-z0-9]*')
echo "Instance IDs: $INSTANCE_IDS"
echo "Registering instances with target groups..."
for INSTANCE in $INSTANCE_IDS; do   echo "Registering instance $INSTANCE with target groups";   
  aws elbv2 register-targets     --target-group-arn $BRAN_TG_ARN     --targets Id=$INSTANCE,Port=30500     --region us-west-2;   
  aws elbv2 register-targets     --target-group-arn $HODOR_TG_ARN     --targets Id=$INSTANCE,Port=30888     --region us-west-2; done
echo "Updating security groups..."
SG_IDS=$(aws ec2 describe-instances \
  --instance-ids $INSTANCE_IDS \
  --region us-west-2 \
  --query "Reservations[*].Instances[*].SecurityGroups[*].GroupId" \
  --output text | tr '\t' ' ' | sort | uniq)
echo "Security Group IDs: $SG_IDS"
for SG in $SG_IDS; do   echo "Updating security group $SG";   
  aws ec2 authorize-security-group-ingress     --group-id $SG     --protocol tcp     --port 30500     --cidr 0.0.0.0/0     --region us-west-2 || true;   
  aws ec2 authorize-security-group-ingress     --group-id $SG     --protocol tcp     --port 30888     --cidr 0.0.0.0/0     --region us-west-2 || true; done
echo "Modifying target group health check settings..."
# Modify bran target group health check
aws elbv2 modify-target-group   --target-group-arn $BRAN_TG_ARN   --health-check-protocol TCP   --health-check-port 30500   --region us-west-2
# Modify hodor target group health check
aws elbv2 modify-target-group   --target-group-arn $HODOR_TG_ARN   --health-check-protocol TCP   --health-check-port 30888   --region us-west-2
echo "Checking target health..."
# Check targets for bran target group
aws elbv2 describe-target-health   --target-group-arn $BRAN_TG_ARN   --region us-west-2
# Check targets for hodor target group
aws elbv2 describe-target-health   --target-group-arn $HODOR_TG_ARN   --region us-west-2
echo "Load balancer configuration complete!"
echo "Test with:"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:5000/"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:8888/"
#!/bin/bash
# Set variables
REGION="us-west-2"
VPC_ID=$(aws ec2 describe-vpcs --region $REGION --query "Vpcs[0].VpcId" --output text)
LB_ARN=$(aws elbv2 describe-load-balancers --region $REGION --names fampay-nlb --query "LoadBalancers[0].LoadBalancerArn" --output text)
echo "VPC ID: $VPC_ID"
echo "Load Balancer ARN: $LB_ARN"
# Create new target groups with instance target type
echo "Creating new target groups..."
aws elbv2 create-target-group   --name bran-instance-tg   --protocol TCP   --port 30500   --vpc-id $VPC_ID   --target-type instance   --health-check-protocol TCP   --health-check-port 30500   --region $REGION
aws elbv2 create-target-group   --name hodor-instance-tg   --protocol TCP   --port 30888   --vpc-id $VPC_ID   --target-type instance   --health-check-protocol TCP   --health-check-port 30888   --region $REGION
# Get new target group ARNs
BRAN_TG_ARN=$(aws elbv2 describe-target-groups --region $REGION --names bran-instance-tg --query "TargetGroups[0].TargetGroupArn" --output text)
HODOR_TG_ARN=$(aws elbv2 describe-target-groups --region $REGION --names hodor-instance-tg --query "TargetGroups[0].TargetGroupArn" --output text)
echo "Bran Target Group ARN: $BRAN_TG_ARN"
echo "Hodor Target Group ARN: $HODOR_TG_ARN"
# Get instance IDs
echo "Getting worker node instance IDs..."
INSTANCE_IDS=$(kubectl get nodes -o jsonpath='{.items[*].spec.providerID}' | grep -o 'i-[a-z0-9]*')
echo "Instance IDs: $INSTANCE_IDS"
# Register instances with target groups
echo "Registering instances with target groups..."
for INSTANCE in $INSTANCE_IDS; do   echo "Registering instance $INSTANCE with target groups";   
  aws elbv2 register-targets     --target-group-arn $BRAN_TG_ARN     --targets Id=$INSTANCE     --region $REGION;   
  aws elbv2 register-targets     --target-group-arn $HODOR_TG_ARN     --targets Id=$INSTANCE     --region $REGION; done
# Update listeners to use new target groups
echo "Updating listeners..."
# Get listener ARNs
BRAN_LISTENER_ARN=$(aws elbv2 describe-listeners --region $REGION --load-balancer-arn $LB_ARN --query "Listeners[?Port==\`5000\`].ListenerArn" --output text)
HODOR_LISTENER_ARN=$(aws elbv2 describe-listeners --region $REGION --load-balancer-arn $LB_ARN --query "Listeners[?Port==\`8888\`].ListenerArn" --output text)
echo "Bran Listener ARN: $BRAN_LISTENER_ARN"
echo "Hodor Listener ARN: $HODOR_LISTENER_ARN"
# Modify listeners
aws elbv2 modify-listener   --listener-arn $BRAN_LISTENER_ARN   --default-actions Type=forward,TargetGroupArn=$BRAN_TG_ARN   --region $REGION
aws elbv2 modify-listener   --listener-arn $HODOR_LISTENER_ARN   --default-actions Type=forward,TargetGroupArn=$HODOR_TG_ARN   --region $REGION
# Check target health
echo "Checking target health..."
aws elbv2 describe-target-health   --target-group-arn $BRAN_TG_ARN   --region $REGION
aws elbv2 describe-target-health   --target-group-arn $HODOR_TG_ARN   --region $REGION
echo "Load balancer configuration complete!"
echo "Test with:"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:5000/"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:8888/"
# Get instance IDs
INSTANCE_IDS=$(kubectl get nodes -o jsonpath='{.items[*].spec.providerID}' | grep -o 'i-[a-z0-9]*')
# Check which VPC the instances are in
for INSTANCE in $INSTANCE_IDS; do   echo "Checking VPC for instance $INSTANCE";   aws ec2 describe-instances     --instance-ids $INSTANCE     --region us-west-2     --query "Reservations[0].Instances[0].{InstanceId:InstanceId,VpcId:VpcId}"     --output json; done
#!/bin/bash
# Set variables
REGION="us-west-2"
CORRECT_VPC_ID="vpc-0c32d038fc17f6001"  # This is the VPC where your instances are
LB_ARN=$(aws elbv2 describe-load-balancers --region $REGION --names fampay-nlb --query "LoadBalancers[0].LoadBalancerArn" --output text)
echo "Correct VPC ID: $CORRECT_VPC_ID"
echo "Load Balancer ARN: $LB_ARN"
# Create new target groups with instance target type in the correct VPC
echo "Creating new target groups in the correct VPC..."
aws elbv2 create-target-group   --name bran-correct-vpc-tg   --protocol TCP   --port 30500   --vpc-id $CORRECT_VPC_ID   --target-type instance   --health-check-protocol TCP   --health-check-port 30500   --region $REGION
aws elbv2 create-target-group   --name hodor-correct-vpc-tg   --protocol TCP   --port 30888   --vpc-id $CORRECT_VPC_ID   --target-type instance   --health-check-protocol TCP   --health-check-port 30888   --region $REGION
# Get new target group ARNs
BRAN_TG_ARN=$(aws elbv2 describe-target-groups --region $REGION --names bran-correct-vpc-tg --query "TargetGroups[0].TargetGroupArn" --output text)
HODOR_TG_ARN=$(aws elbv2 describe-target-groups --region $REGION --names hodor-correct-vpc-tg --query "TargetGroups[0].TargetGroupArn" --output text)
echo "Bran Target Group ARN: $BRAN_TG_ARN"
echo "Hodor Target Group ARN: $HODOR_TG_ARN"
# Get instance IDs
echo "Getting worker node instance IDs..."
INSTANCE_IDS=$(kubectl get nodes -o jsonpath='{.items[*].spec.providerID}' | grep -o 'i-[a-z0-9]*')
echo "Instance IDs: $INSTANCE_IDS"
# Register instances with target groups
echo "Registering instances with target groups..."
for INSTANCE in $INSTANCE_IDS; do   echo "Registering instance $INSTANCE with target groups";   
  aws elbv2 register-targets     --target-group-arn $BRAN_TG_ARN     --targets Id=$INSTANCE     --region $REGION;   
  aws elbv2 register-targets     --target-group-arn $HODOR_TG_ARN     --targets Id=$INSTANCE     --region $REGION; done
# Update listeners to use new target groups
echo "Updating listeners..."
# Get listener ARNs
BRAN_LISTENER_ARN=$(aws elbv2 describe-listeners --region $REGION --load-balancer-arn $LB_ARN --query "Listeners[?Port==\`5000\`].ListenerArn" --output text)
HODOR_LISTENER_ARN=$(aws elbv2 describe-listeners --region $REGION --load-balancer-arn $LB_ARN --query "Listeners[?Port==\`8888\`].ListenerArn" --output text)
echo "Bran Listener ARN: $BRAN_LISTENER_ARN"
echo "Hodor Listener ARN: $HODOR_LISTENER_ARN"
# Modify listeners
aws elbv2 modify-listener   --listener-arn $BRAN_LISTENER_ARN   --default-actions Type=forward,TargetGroupArn=$BRAN_TG_ARN   --region $REGION
aws elbv2 modify-listener   --listener-arn $HODOR_LISTENER_ARN   --default-actions Type=forward,TargetGroupArn=$HODOR_TG_ARN   --region $REGION
# Check target health
echo "Checking target health..."
aws elbv2 describe-target-health   --target-group-arn $BRAN_TG_ARN   --region $REGION
aws elbv2 describe-target-health   --target-group-arn $HODOR_TG_ARN   --region $REGION
echo "Load balancer configuration complete!"
echo "Test with:"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:5000/"
echo "curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:8888/"
200~# Get target group ARNs
BRAN_TG_ARN=$(aws elbv2 describe-target-groups --region us-west-2 --names bran-correct-vpc-tg --query "TargetGroups[0].TargetGroupArn" --output text)
# Get target group ARNs
BRAN_TG_ARN=$(aws elbv2 describe-target-groups --region us-west-2 --names bran-correct-vpc-tg --query "TargetGroups[0].TargetGroupArn" --output text)
HODOR_TG_ARN=$(aws elbv2 describe-target-groups --region us-west-2 --names hodor-correct-vpc-tg --query "TargetGroups[0].TargetGroupArn" --output text)
# Check targets for bran target group
aws elbv2 describe-target-health   --target-group-arn $BRAN_TG_ARN   --region us-west-2
# Check targets for hodor target group
aws elbv2 describe-target-health   --target-group-arn $HODOR_TG_ARN   --region us-west-2
[200~# Test bran service
curl -v http://fampay-nlb-2a18e2dcd0259942.elb.us-west-2.amazonaws.com:5000/
kubectl get services -n fampay
kubectl get endpoints -n fampay
# Get a bran pod name
BRAN_POD=$(kubectl get pods -l app=bran -o jsonpath='{.items[0].metadata.name}')
# Execute a shell in the bran pod
kubectl exec -it $BRAN_POD -- /bin/sh
# Once inside the pod, try to access hodor using curl
# Replace hodor-nodeport with the actual service name if different
curl hodor-nodeport:8888
# Or use the cluster IP directly
curl 10.100.198.192:8888
# Or use the full DNS name
curl hodor-nodeport.default.svc.cluster.local:8888
# Exit the shell when done
exit
kubectl get pods -n fampay
# Execute a shell in a bran pod
kubectl exec -it bran-856885cbf5-dd78f -- /bin/sh
# Once inside the pod, try to access hodor using curl
# Try the service name
curl hodor:8888
# Or try the service IP (use the IP from kubectl get svc)
curl 10.100.198.192:8888
# Exit when done
exit
# Execute a shell in a bran pod in the fampay namespace
kubectl exec -it bran-856885cbf5-dd78f -n fampay -- /bin/sh
# Once inside the pod, try to access hodor using curl
# Try the service name
curl hodor:8888
# Or try the service name with namespace
curl hodor.fampay.svc.cluster.local:8888
# Exit when done
exit
# Execute a shell in a hodor pod in the fampay namespace
kubectl exec -it hodor-69b76cd9c8-46ks9 -n fampay -- /bin/sh
# Once inside the pod, try to access bran
curl bran:5000
# Or try the service name with namespace
curl bran.fampay.svc.cluster.local:5000
# Exit when done
exit
kubectl get clusterroles
kubectl get events -n monitoring --sort-by='.metadata.creationTimestamp' -w
kubectl get events -n monitoring --watch
