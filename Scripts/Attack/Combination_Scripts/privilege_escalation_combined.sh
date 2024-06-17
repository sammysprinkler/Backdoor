#!/bin/bash
# Privilege Escalation Combined Script
# Combines checks for both Linux and Windows systems.

echo "Checking for privilege escalation vectors on Linux..."
./scripts/Attacks/Privilege_Escalation/linux_priv_esc.sh > linux_priv_esc_results.txt

echo "Checking for privilege escalation vectors on Windows..."
powershell.exe -File ./scripts/Attacks/Privilege_Escalation/windows_priv_esc.sh > windows_priv_esc_results.txt

echo "Combined results saved to linux_priv_esc_results.txt and windows_priv_esc_results.txt"
