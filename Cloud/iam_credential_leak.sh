#!/bin/bash
# Check for leaked IAM credentials
# Usage: iam_credential_leak.sh

echo "Checking for leaked IAM credentials..."
aws iam generate-credential-report
aws iam get-credential-report --query 'Content' --output text | base64 -d
