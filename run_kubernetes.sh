#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=lakshya412/udacity
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity --image=lakshya412/udacity --port=80
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/udacity 8000:80
#kubectl port-forward --address 0.0.0.0 deployments/udacity 8000:80