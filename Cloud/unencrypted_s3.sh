#!/bin/bash
# Check for unencrypted S3 buckets
# Usage: unencrypted_s3.sh

echo "Listing unencrypted S3 buckets..."
aws s3api list-buckets --query 'Buckets[*].Name' --output text | tr '\t' '\n' | while read bucket; do
    encryption=$(aws s3api get-bucket-encryption --bucket $bucket 2>&1)
    if [[ $encryption == *"ServerSideEncryptionConfiguration"* ]]; then
        echo "Bucket $bucket is encrypted"
    else
        echo "Bucket $bucket is NOT encrypted"
    fi
done
