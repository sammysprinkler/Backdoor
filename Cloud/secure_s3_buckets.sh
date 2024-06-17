#!/bin/bash
# Secure publicly accessible S3 buckets identified by s3_public_access.sh
# Usage: secure_s3_buckets.sh

echo "Securing publicly accessible S3 buckets..."

aws s3api list-buckets --query 'Buckets[*].Name' --output text | tr '\t' '\n' | while read bucket; do
    policy_status=$(aws s3api get-bucket-policy-status --bucket $bucket --query 'PolicyStatus.IsPublic' --output text)
    acl_status=$(aws s3api get-bucket-acl --bucket $bucket --query 'Grants[?Grantee.URI==`http://acs.amazonaws.com/groups/global/AllUsers`]' --output text)
    
    if [[ $policy_status == "true" || ! -z $acl_status ]]; then
        echo "Securing bucket: $bucket"
        aws s3api put-bucket-acl --bucket $bucket --acl private
    else
        echo "Bucket $bucket is already secure."
    fi
done
