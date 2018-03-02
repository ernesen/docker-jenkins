

kubectl create namespace jenkins
kubectl create -f jenkins-ui-service.yaml
kubectl create -f jenkins-slaves-service.yaml
kubectl create -f jenkins-persistent-volume.yaml
minikube ssh "sudo chmod 777 /var/run/docker.sock"
minikube ssh "sudo mkdir -p /data/jenkins-data && sudo chmod 777 /data/jenkins-data"
kubectl create -f jenkins-master-deployment.yaml

