#!/bin/bash
# Check for EC2 instance metadata exposure
# Usage: ec2_metadata_exposure.sh <instance_id>

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "Usage: $0 <instance_id>"
    exit 1
fi

echo "Checking metadata exposure for instance: $INSTANCE_ID"
curl -s http://169.254.169.254/latest/meta-data/

echo "Metadata exposure check completed."
