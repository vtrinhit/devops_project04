#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=trinhlv2/trinhlv2:v1.0.0
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devops04microproject --image=$dockerpath --port=80 --labels app=devops04microproject

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward devops04microproject 8000:80
