#!/bin/bash
# Hydra - Password brute-forcing tool
# Options:
# -l : Login name
# -P : Password list
# -s : Port number
# -t : Number of parallel connections
# -o : Output file

# Usage: hydra -l <login> -P <password_list> -s <port> <target_ip> <protocol>
# Example script
hydra -l admin -P /path/to/passwords.txt -s 22 192.168.1.1 ssh -t 4 -o hydra_output.txt
