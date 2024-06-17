#!/bin/bash
# Advanced AWS Lambda Function Vulnerability Scanner
# Usage: lambda_vuln_scan.sh <function_name>

FUNCTION_NAME=$1

if [ -z "$FUNCTION_NAME" ]; then
    echo "Usage: $0 <function_name>"
    exit 1
fi

echo "Starting AWS Lambda Function Vulnerability Scan..."

# Ensure AWS Inspector is installed
if ! command -v inspector &> /dev/null; then
    echo "AWS Inspector could not be found, please install it first."
    exit 1
fi

# Create an assessment target
ASSESSMENT_TARGET_NAME="LambdaAssessmentTarget"
aws inspector create-assessment-target --assessment-target-name $ASSESSMENT_TARGET_NAME --resource-group-arn arn:aws:lambda:$AWS_REGION:account-id:function:$FUNCTION_NAME

# Create an assessment template
ASSESSMENT_TEMPLATE_NAME="LambdaAssessmentTemplate"
aws inspector create-assessment-template --assessment-template-name $ASSESSMENT_TEMPLATE_NAME --assessment-target-arn arn:aws:lambda:$AWS_REGION:account-id:function:$FUNCTION_NAME --duration-in-seconds 3600 --rules-package-arns "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-3bbosUjo"

# Run the assessment
aws inspector start-assessment-run --assessment-template-arn arn:aws:inspector:us-west-2:758058086616:assessment-template/LambdaAssessmentTemplate

echo "AWS Lambda Function Vulnerability Scan started. Results will be available in AWS Inspector."
