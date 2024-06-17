#!/bin/bash
# Check for exposed Docker API
# Usage: exposed_docker.sh <ip_list>

IP_LIST=$1

if [ -z "$IP_LIST" ]; then
    echo "Usage: $0 <ip_list>"
    exit 1
fi

while read -r ip; do
    echo "Checking Docker API on: $ip"
    curl -s --unix-socket /var/run/docker.sock http://$ip/version
done < "$IP_LIST"
