#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=cchaduka/devopsproj05
tag=latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment devopsproj05 --image=docker.io/$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get deployments

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/devopsproj05 8000:80
