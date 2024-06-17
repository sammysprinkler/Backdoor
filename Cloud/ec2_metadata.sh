#!/bin/bash
# Retrieve EC2 instance metadata
# Usage: ec2_metadata.sh <instance_id>

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "Usage: $0 <instance_id>"
    exit 1
fi

echo "Retrieving metadata for instance: $INSTANCE_ID"
aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[*].Instances[*].[InstanceId,PublicIpAddress,InstanceType,State.Name]' --output table
