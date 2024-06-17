#!/bin/bash
# Enumerate all IAM policies
# Usage: iam_policy_enum.sh

echo "Enumerating all IAM policies..."

aws iam list-policies --query 'Policies[*].[PolicyName,PolicyId,Arn]' --output table
