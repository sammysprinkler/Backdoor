#!/bin/bash
# Dump ECR image tags
# Usage: ecr_image_tags.sh <repository_name>

REPOSITORY_NAME=$1

if [ -z "$REPOSITORY_NAME" ]; then
    echo "Usage: $0 <repository_name>"
    exit 1
fi

echo "Dumping image tags for repository: $REPOSITORY_NAME"
aws ecr list-images --repository-name $REPOSITORY_NAME --query 'imageIds[*].imageTag' --output table
