#!/bin/bash
# List all IAM roles and their associated policies
# Usage: iam_roles.sh

echo "Listing IAM roles and their policies..."
aws iam list-roles --query 'Roles[*].RoleName' --output text | tr '\t' '\n' | while read role; do
    echo "Role: $role"
    aws iam list-role-policies --role-name $role --query 'PolicyNames[*]' --output text
done
