#!/bin/bash
# Postman - Automated IDOR Testing with Postman
# Options:
# -c : Postman collection file
# -e : Postman environment file

# Usage: postman_idor.sh <collection_file> <environment_file>
# Example script
# postman_idor.sh idor_collection.json idor_environment.json

# Check if newman is installed
if ! command -v newman &> /dev/null
then
    echo "Newman (Postman CLI) could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <collection_file> <environment_file>"
    exit 1
fi

COLLECTION_FILE=$1
ENVIRONMENT_FILE=$2

echo "Starting Postman IDOR test with collection $COLLECTION_FILE and environment $ENVIRONMENT_FILE"

# Perform IDOR test with Postman
newman run $COLLECTION_FILE -e $ENVIRONMENT_FILE

echo "Postman IDOR test completed."
