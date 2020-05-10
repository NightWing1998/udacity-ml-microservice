#!/bin/bash

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-nanoproj-ml-microservice . 

# Step 2: 
# List docker images
docker images | grep udacity-nanoproj-ml-microservice

# Step 3: 
# Run flask app
docker run -it --rm -p 8000:80 udacity-nanoproj-ml-microservice