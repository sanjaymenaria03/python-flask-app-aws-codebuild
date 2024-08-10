#!/bin/bash
set -e


# Stop the running container (if any)

# Get the container ID of the running Docker container
container_id=$(docker ps -q)

# Check if a container ID was found
if [ -n "$container_id" ]; then
    echo "Stopping container with ID: $container_id"
    docker stop "$container_id"
else
    echo "No running Docker container found."
fi
