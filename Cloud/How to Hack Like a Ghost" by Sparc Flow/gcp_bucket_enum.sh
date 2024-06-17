#!/bin/bash
# Enumerate accessible GCP buckets
# Usage: gcp_bucket_enum.sh

echo "Enumerating accessible GCP buckets..."

gcloud storage buckets list --format="table(name,location,storageClass)"
