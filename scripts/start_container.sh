#!/bin/bash

set -e

echo "Starting Dagster deployment..."

cd /home/ubuntu/rahulk-dagster

echo "Logging in to Amazon ECR..."

aws ecr get-login-password --region ap-south-1 | \
docker login --username AWS \
--password-stdin 368355641188.dkr.ecr.ap-south-1.amazonaws.com

echo "Pulling latest Dagster image..."

docker pull 368355641188.dkr.ecr.ap-south-1.amazonaws.com/rahulk-dagster:latest

echo "Starting Dagster containers..."

docker compose up -d

echo "Dagster deployment completed successfully!"