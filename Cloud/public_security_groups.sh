#!/bin/bash
# List public security groups (0.0.0.0/0)
# Usage: public_security_groups.sh

echo "Listing security groups with public access..."
aws ec2 describe-security-groups --query 'SecurityGroups[?IpPermissions[?IpRanges[?CidrIp==`0.0.0.0/0`]]].{GroupName:GroupName,GroupId:GroupId}' --output table
