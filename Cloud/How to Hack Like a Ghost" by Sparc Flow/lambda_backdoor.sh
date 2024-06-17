#!/bin/bash
# Create a backdoor in AWS Lambda function
# Usage: lambda_backdoor.sh <function_name>

FUNCTION_NAME=$1

if [ -z "$FUNCTION_NAME" ]; then
    echo "Usage: $0 <function_name>"
    exit 1
fi

echo "Creating backdoor in Lambda function: $FUNCTION_NAME"

aws lambda update-function-configuration --function-name $FUNCTION_NAME --environment Variables="{BACKDOOR=enabled}"

echo "Backdoor created."
