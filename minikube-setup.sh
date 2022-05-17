#!/bin/bash

sudo apt update
read -p "Press enter to continue"

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version
read -p "Press enter to continue"

sudo apt-get install docker.io -y
sudo systemctl status docker
sudo usermod -aG docker $USER && newgrp docker
read -p "Press enter to continue"

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
minikube version
read -p "Press enter to continue"

sudo apt-get install -y conntrack
minikube start --vm-driver=none
minikube status
read -p "Press enter to continue"

kubectl cluster-info
kubectl get events
kubectl config view
read -p "Press enter to continue"

# kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
# kubectl get pods

read -p "Press enter to continue"

minikube ip

# minikube stop
# minikube delete
