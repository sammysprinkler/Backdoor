#!/bin/bash
# Enable CloudTrail logging for trails identified by cloudtrail_disabled.sh
# Usage: enable_cloudtrail_logging.sh

echo "Enabling CloudTrail logging..."

aws cloudtrail describe-trails --query 'trailList[?Status==`false`].[Name]' --output text | tr '\t' '\n' | while read trail_name; do
    echo "Enabling logging for CloudTrail: $trail_name"
    aws cloudtrail start-logging --name $trail_name
done
