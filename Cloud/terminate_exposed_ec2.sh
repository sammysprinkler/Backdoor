#!/bin/bash
# Terminate publicly accessible EC2 instances identified by public_ec2_instances.sh
# Usage: terminate_exposed_ec2.sh

echo "Terminating publicly accessible EC2 instances..."

aws ec2 describe-instances --query 'Reservations[*].Instances[?PublicIpAddress!=null].[InstanceId]' --output text | tr '\t' '\n' | while read instance_id; do
    echo "Terminating instance: $instance_id"
    aws ec2 terminate-instances --instance-ids $instance_id
done
