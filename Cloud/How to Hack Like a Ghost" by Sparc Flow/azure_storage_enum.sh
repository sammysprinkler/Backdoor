#!/bin/bash
# Enumerate Azure storage accounts
# Usage: azure_storage_enum.sh

echo "Enumerating Azure storage accounts..."

az storage account list --query '[].{Name:name, ResourceGroup:resourceGroup, Location:primaryLocation}' --output table
