#!/bin/bash
# Enumerate IAM policy bindings in GCP
# Usage: gcp_iam_policy_enum.sh <project_id>

PROJECT_ID=$1

if [ -z "$PROJECT_ID" ]; then
    echo "Usage: $0 <project_id>"
    exit 1
fi

echo "Enumerating IAM policy bindings for project: $PROJECT_ID"
gcloud projects get-iam-policy $PROJECT_ID --format="json(bindings)"
