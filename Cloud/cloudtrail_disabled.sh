#!/bin/bash
# Check for disabled CloudTrail logging
# Usage: cloudtrail_disabled.sh

echo "Checking for disabled CloudTrail logging..."
aws cloudtrail describe-trails --query 'trailList[?Status==`false`].[Name,HomeRegion]' --output table
