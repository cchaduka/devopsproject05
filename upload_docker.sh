#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=cchaduka/devopsproj05

# Step 2:  
# Authenticate & tag
cat ˜/.docker-login.txt | docker login --username cchaduka --password-stdin
tag=latest
docker tag devopsproj05 $dockerpath:$tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tag
