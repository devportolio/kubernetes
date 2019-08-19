#!/bin/bash

sudo systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt install curl -y
sudo sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install kubeadm -y
sudo apt-mark hold kubeadm kubelet kubectl
sudo swapoff -a
mkdir -p $HOME/.kube
