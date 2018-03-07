#!/bin/sh

minikube_user="${SUDO_USER:-root}"

curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x /usr/local/bin/kubectl

curl -Lo /usr/local/bin/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x /usr/local/bin/minikube

minikube start --vm-driver none --memory 12000 --cpus 4 --bootstrapper localkube

chown -R ${minikube_user}:${minikube_user} ~/.kube/ ~/.minikube/

