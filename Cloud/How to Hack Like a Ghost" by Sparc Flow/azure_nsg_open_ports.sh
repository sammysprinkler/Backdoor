#!/bin/bash
# Find open ports in Azure NSGs
# Usage: azure_nsg_open_ports.sh <resource_group>

RESOURCE_GROUP=$1

if [ -z "$RESOURCE_GROUP" ]; then
    echo "Usage: $0 <resource_group>"
    exit 1
fi

echo "Finding open ports in NSGs for resource group: $RESOURCE_GROUP"
az network nsg rule list --resource-group $RESOURCE_GROUP --query '[?access==`Allow` && destinationPortRange!=`*`].[name,destinationPortRange]' --output table
