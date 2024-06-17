#!/bin/bash
# Check for publicly accessible S3 buckets
# Usage: s3_public_access.sh

echo "Checking for publicly accessible S3 buckets..."

aws s3api list-buckets --query 'Buckets[*].Name' --output text | tr '\t' '\n' | while read bucket; do
    policy_status=$(aws s3api get-bucket-policy-status --bucket $bucket --query 'PolicyStatus.IsPublic' --output text)
    acl_status=$(aws s3api get-bucket-acl --bucket $bucket --query 'Grants[?Grantee.URI==`http://acs.amazonaws.com/groups/global/AllUsers`]' --output text)
    
    if [[ $policy_status == "true" || ! -z $acl_status ]]; then
        echo "Bucket $bucket is publicly accessible."
    else
        echo "Bucket $bucket is not publicly accessible."
    fi
done
