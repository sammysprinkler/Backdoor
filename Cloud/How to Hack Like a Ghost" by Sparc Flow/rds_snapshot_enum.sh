#!/bin/bash
# Enumerate RDS snapshots
# Usage: rds_snapshot_enum.sh

echo "Enumerating RDS snapshots..."
aws rds describe-db-snapshots --query 'DBSnapshots[*].[DBSnapshotIdentifier,DBInstanceIdentifier,SnapshotCreateTime,Status]' --output table
