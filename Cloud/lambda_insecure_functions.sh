#!/bin/bash
# List Lambda functions with insecure configurations
# Usage: lambda_insecure_functions.sh

echo "Listing Lambda functions with insecure configurations..."

aws lambda list-functions --query 'Functions[*].[FunctionName,Role,Handler,Runtime,Environment]' --output table
