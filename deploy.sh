#!/bin/bash
set -e  # exit on any error

# Go to project directory
cd ~/vg-deploy

# Fetch latest changes
git fetch origin main

echo "Pulling latest container images..."
sudo docker compose pull

echo "Recreating containers with the latest images..."
sudo docker compose up -d

echo "Cleaning up unused resources..."
sudo docker image prune -f
sudo docker container prune -f
