#!/bin/bash
# Docker Privilege Escalation - Check for Docker group membership
# Options:
# None

# Usage: docker_priv_esc.sh
# Example script
# docker_priv_esc.sh

echo "Starting Docker Privilege Escalation Check"

# Perform Docker Privilege Escalation Check
if groups | grep &>/dev/null '\bdocker\b'; then
    echo "User is in the docker group. Potential privilege escalation vector."
else
    echo "User is not in the docker group."
fi

echo "Docker Privilege Escalation Check completed."
