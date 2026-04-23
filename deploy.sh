#!/bin/bash

echo "Building Docker image..."
docker build -t ci-cd .

echo "Stopping old container..."
docker rm -f ci-cd-container || true

echo "Running new container..."
docker run -d -p 3001:3000 --name ci-cd-container ci-cd