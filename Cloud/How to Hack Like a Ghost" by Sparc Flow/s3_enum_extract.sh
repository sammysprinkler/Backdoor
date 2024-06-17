#!/bin/bash
# Enumerate S3 buckets and extract data
# Usage: s3_enum_extract.sh <bucket_name_list>

BUCKET_LIST=$1

if [ -z "$BUCKET_LIST" ]; then
    echo "Usage: $0 <bucket_name_list>"
    exit 1
fi

while read -r bucket; do
    echo "Checking bucket: $bucket"
    aws s3 ls s3://$bucket --no-sign-request
    aws s3 sync s3://$bucket ./downloaded_data/$bucket --no-sign-request
done < "$BUCKET_LIST"
