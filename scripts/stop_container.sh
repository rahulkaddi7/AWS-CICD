#!/bin/bash

set -e

echo "Stopping existing Dagster application..."

cd /home/ubuntu/rahulk-dagster

docker compose down || true

echo "Dagster application stopped."