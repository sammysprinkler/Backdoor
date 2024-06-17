#!/bin/bash
# Azure AD Privilege Escalation Detection
# Usage: azure_ad_priv_esc.sh <tenant_id> <client_id> <client_secret>

TENANT_ID=$1
CLIENT_ID=$2
CLIENT_SECRET=$3

if [ -z "$TENANT_ID" ] || [ -z "$CLIENT_ID" ] || [ -z "$CLIENT_SECRET" ]; then
    echo "Usage: $0 <tenant_id> <client_id> <client_secret>"
    exit 1
fi

echo "Starting Azure AD Privilege Escalation Detection..."

# Ensure BloodHound is installed
if ! command -v bloodhound &> /dev/null; then
    echo "BloodHound could not be found, please install it first."
    exit 1
fi

# Use AzureHound to collect data for BloodHound
azurehound -c all -d $TENANT_ID -i $CLIENT_ID -p $CLIENT_SECRET

# Analyze the data with BloodHound
bloodhound -d $TENANT_ID -u $CLIENT_ID -p $CLIENT_SECRET

echo "Azure AD Privilege Escalation Detection completed. Data analyzed with BloodHound."
