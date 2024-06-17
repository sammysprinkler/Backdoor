#!/bin/bash
# List publicly accessible RDS instances
# Usage: rds_public.sh

echo "Listing publicly accessible RDS instances..."
aws rds describe-db-instances --query 'DBInstances[?PubliclyAccessible==`true`].[DBInstanceIdentifier,Endpoint.Address,DBInstanceStatus]' --output table
