#!/bin/bash
# SMBClient - SMB client for Unix
# Options:
# -U : Username
# -L : List shares

# Usage: smbclient -U <username> //<target_ip>/<share>
# Example script
smbclient -U admin //192.168.1.1/share
