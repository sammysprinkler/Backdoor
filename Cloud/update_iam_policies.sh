#!/bin/bash
# Update IAM policies to least privilege identified by iam_policy_enum.sh
# Usage: update_iam_policies.sh

echo "Updating IAM policies to least privilege..."

aws iam list-policies --query 'Policies[*].[PolicyName,PolicyId,Arn]' --output text | while read policy_name policy_id arn; do
    echo "Updating IAM policy: $policy_name"
    aws iam create-policy-version --policy-arn $arn --policy-document file://least_privilege_policy.json --set-as-default
done
