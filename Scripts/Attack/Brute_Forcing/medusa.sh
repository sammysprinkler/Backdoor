#!/bin/bash
# Medusa - Parallel Network Login Auditor
# This script runs Medusa for brute-forcing credentials.

medusa -h <target_ip> -U <user_list> -P <password_list> -M ssh
# Example
medusa -h 192.168.1.1 -U users.txt -P passwords.txt -M ssh
