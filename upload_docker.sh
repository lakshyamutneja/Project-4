#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=lakshya412/udacity

# Step 2:  
# Authenticate & tag

echo "Docker ID and Image: $dockerpath"
docker login -u lakshya412 -p REDACTED
docker tag $dockerpath:latest $dockerpath:current
# Step 3:
# Push image to a docker repository
docker push lakshya412/udacity:current