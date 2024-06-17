#!/bin/bash
# Check for open Elasticsearch clusters
# Usage: open_elasticsearch.sh <cluster_url_list>

CLUSTER_LIST=$1

if [ -z "$CLUSTER_LIST" ]; then
    echo "Usage: $0 <cluster_url_list>"
    exit 1
fi

while read -r url; do
    echo "Checking Elasticsearch cluster: $url"
    curl -s $url/_cat/indices?v
done < "$CLUSTER_LIST"
