#!/bin/bash
# Enumerate IAM user keys
# Usage: iam_key_enum.sh

echo "Enumerating IAM user keys..."

aws iam list-users --query 'Users[*].UserName' --output text | while read username; do
    echo "User: $username"
    aws iam list-access-keys --user-name $username --query 'AccessKeyMetadata[*].[AccessKeyId,Status,CreateDate]' --output table
done
