#!/bin/bash
# Extract Kubernetes config files from pods
# Usage: k8s_config_extract.sh <namespace> <pod_name>

NAMESPACE=$1
POD_NAME=$2

if [ -z "$NAMESPACE" ] || [ -z "$POD_NAME" ]; then
    echo "Usage: $0 <namespace> <pod_name>"
    exit 1
fi

echo "Extracting Kubernetes config files from pod: $POD_NAME in namespace: $NAMESPACE"
kubectl cp $NAMESPACE/$POD_NAME:/etc/kubernetes/admin.conf ./kube_config_$POD_NAME.conf
