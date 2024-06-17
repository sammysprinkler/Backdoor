#!/bin/bash
# Secure Lambda functions with insecure configurations identified by lambda_insecure_functions.sh
# Usage: secure_lambda_functions.sh

echo "Securing Lambda functions with insecure configurations..."

aws lambda list-functions --query 'Functions[*].[FunctionName,Role,Handler,Runtime,Environment]' --output text | while read function_name role handler runtime environment; do
    echo "Securing Lambda function: $function_name"
    aws lambda update-function-configuration --function-name $function_name --runtime nodejs14.x --memory-size 512 --timeout 60
done
