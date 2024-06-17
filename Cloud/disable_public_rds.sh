#!/bin/bash
# Disable public accessibility for RDS instances identified by open_rds_instances.sh
# Usage: disable_public_rds.sh

echo "Disabling public accessibility for RDS instances..."

aws rds describe-db-instances --query 'DBInstances[?PubliclyAccessible==`true`].[DBInstanceIdentifier]' --output text | tr '\t' '\n' | while read db_instance_id; do
    echo "Disabling public accessibility for RDS instance: $db_instance_id"
    aws rds modify-db-instance --db-instance-identifier $db_instance_id --no-publicly-accessible --apply-immediately
done
