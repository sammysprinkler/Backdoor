#!/bin/bash
# SQLMap - Automated SQL injection and database takeover tool
# Options:
# -u : URL to scan
# --batch : Never ask for user input, use the default behaviour
# -D : Database name
# -T : Table name
# -C : Column name

# Usage: sqlmap -u <target_url> --batch
# Example script
sqlmap -u http://example.com/vuln.php?id=1 --batch
