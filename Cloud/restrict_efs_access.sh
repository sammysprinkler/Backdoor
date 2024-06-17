#!/bin/bash
# Restrict unrestricted EFS access identified by open_efs.sh
# Usage: restrict_efs_access.sh

echo "Restricting unrestricted EFS access..."

aws efs describe-file-systems --query 'FileSystems[*].[FileSystemId,Name,CreationToken]' --output text | tr '\t' '\n' | while read file_system_id; do
    echo "Restricting EFS access for: $file_system_id"
    aws efs update-file-system --file-system-id $file_system_id --throughput-mode provisioned --provisioned-throughput-in-mibps 1
done
