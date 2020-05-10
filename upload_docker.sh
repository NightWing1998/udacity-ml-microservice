#!/bin/bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dhruvilshah98/udacity-nanoproj-ml-microservice #defaults to docker hub

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacity-nanoproj-ml-microservice:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest # Pushing image to dockerhub