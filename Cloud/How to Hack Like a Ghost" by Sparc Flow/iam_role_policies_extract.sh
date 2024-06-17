#!/bin/bash
# Extract attached policies for IAM roles
# Usage: iam_role_policies_extract.sh

echo "Extracting attached policies for IAM roles..."
aws iam list-roles --query 'Roles[*].RoleName' --output text | while read role_name; do
    echo "Role: $role_name"
    aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[*].[PolicyName,PolicyArn]' --output table
done
