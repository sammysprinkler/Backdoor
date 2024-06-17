#!/bin/bash
# Extract user data from EC2 instances
# Usage: ec2_userdata_extract.sh <instance_id>

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "Usage: $0 <instance_id>"
    exit 1
fi

echo "Extracting user data from instance: $INSTANCE_ID"
aws ec2 describe-instance-attribute --instance-id $INSTANCE_ID --attribute userData --query 'UserData.Value' --output text | base64 --decode

echo "User data extraction completed."
