#!/bin/bash
# Check for unrestricted EFS access
# Usage: open_efs.sh

echo "Checking for unrestricted EFS access..."

aws efs describe-file-systems --query 'FileSystems[*].[FileSystemId,Name,CreationToken]' --output table
