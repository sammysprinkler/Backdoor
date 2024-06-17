#!/bin/bash
# Delete old CloudWatch log groups identified by cloudwatch_log_groups.sh
# Usage: delete_cloudwatch_log_groups.sh

echo "Deleting old CloudWatch log groups..."

aws logs describe-log-groups --query 'logGroups[?creationTime<`$(($(date +%s) - 365 * 24 * 60 * 60))`].logGroupName' --output text | while read log_group; do
    echo "Deleting CloudWatch log group: $log_group"
    aws logs delete-log-group --log-group-name $log_group
done
