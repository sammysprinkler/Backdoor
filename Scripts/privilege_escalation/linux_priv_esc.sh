#!/bin/bash
# Privilege Escalation on Linux
# This script checks for common privilege escalation vectors on Linux systems.

echo "Checking for writable files in PATH..."
find / -writable -type d 2>/dev/null

echo "Checking for SUID binaries..."
find / -perm -4000 -type f 2>/dev/null

echo "Checking for world-writable files..."
find / -perm -o+w -type f 2>/dev/null
