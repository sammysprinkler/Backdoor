#!/bin/bash
# Remove rules allowing public access from security groups identified by open_ports_sg.sh
# Usage: remove_open_security_groups.sh

echo "Removing public access rules from security groups..."

aws ec2 describe-security-groups --query 'SecurityGroups[*].[GroupName,GroupId,IpPermissions[?IpRanges[?CidrIp==`0.0.0.0/0`]]].[GroupId,FromPort,ToPort,IpProtocol]' --output text | while read group_id from_port to_port ip_protocol; do
    echo "Removing public access rule from security group: $group_id"
    aws ec2 revoke-security-group-ingress --group-id $group_id --protocol $ip_protocol --port $from_port-$to_port --cidr 0.0.0.0/0
done
