#!/bin/bash
# List publicly accessible EC2 instances
# Usage: public_ec2_instances.sh

echo "Listing publicly accessible EC2 instances..."

aws ec2 describe-instances --query 'Reservations[*].Instances[?PublicIpAddress!=null].[InstanceId,InstanceType,PublicIpAddress,State.Name]' --output table
