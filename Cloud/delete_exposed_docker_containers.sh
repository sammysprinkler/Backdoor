#!/bin/bash
# Delete Docker containers with exposed APIs identified by exposed_docker_apis.sh
# Usage: delete_exposed_docker_containers.sh <ip_list>

IP_LIST=$1

if [ -z "$IP_LIST" ]; then
    echo "Usage: $0 <ip_list>"
    exit 1
fi

while read -r ip; do
    echo "Deleting Docker containers on: $ip"
    curl -s --unix-socket /var/run/docker.sock -X DELETE http://$ip/containers/json?all=true
done < "$IP_LIST"
