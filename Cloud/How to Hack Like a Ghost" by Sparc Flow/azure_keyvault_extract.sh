#!/bin/bash
# Extract secrets from Azure Key Vault
# Usage: azure_keyvault_extract.sh <vault_name>

VAULT_NAME=$1

if [ -z "$VAULT_NAME" ]; then
    echo "Usage: $0 <vault_name>"
    exit 1
fi

echo "Extracting secrets from Key Vault: $VAULT_NAME"
az keyvault secret list --vault-name $VAULT_NAME --query '[].id' -o tsv | while read -r secret_id; do
    echo "Secret ID: $secret_id"
    az keyvault secret show --id $secret_id --query 'value' -o tsv
done
