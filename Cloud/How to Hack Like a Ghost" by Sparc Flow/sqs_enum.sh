#!/bin/bash
# Enumerate AWS SQS queues
# Usage: sqs_enum.sh

echo "Enumerating SQS queues..."
aws sqs list-queues --query 'QueueUrls' --output table
