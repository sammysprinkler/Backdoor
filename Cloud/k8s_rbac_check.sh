#!/bin/bash
# Kubernetes RBAC Misconfiguration Checker
# Usage: k8s_rbac_check.sh <kubeconfig>

KUBECONFIG=$1

if [ -z "$KUBECONFIG" ]; then
    echo "Usage: $0 <kubeconfig>"
    exit 1
fi

echo "Starting Kubernetes RBAC Misconfiguration Check..."

# Ensure kube-hunter is installed
if ! command -v kube-hunter &> /dev/null; then
    echo "kube-hunter could not be found, please install it first."
    exit 1
fi

# Run kube-hunter to check for RBAC misconfigurations
kube-hunter --kubeconfig $KUBECONFIG --log warn

echo "Kubernetes RBAC Misconfiguration Check completed."
