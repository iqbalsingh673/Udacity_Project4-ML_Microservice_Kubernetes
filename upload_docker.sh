#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=iqbalsingh673/udacityproj4-ml-microservices-k8s

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag udacityproj4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
