#!/bin/bash
# List exposed Elastic Load Balancers
# Usage: list_exposed_elbs.sh

echo "Listing exposed Elastic Load Balancers..."
aws elb describe-load-balancers --query 'LoadBalancerDescriptions[*].[LoadBalancerName,DNSName,Scheme]' --output table
