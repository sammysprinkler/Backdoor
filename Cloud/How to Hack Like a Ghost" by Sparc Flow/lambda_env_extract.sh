#!/bin/bash
# Extract environment variables from AWS Lambda functions
# Usage: lambda_env_extract.sh

echo "Extracting environment variables from AWS Lambda functions..."

aws lambda list-functions --query 'Functions[*].[FunctionName]' --output text | while read function_name; do
    echo "Function: $function_name"
    aws lambda get-function-configuration --function-name $function_name --query 'Environment.Variables' --output table
done
