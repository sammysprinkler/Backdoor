# Reconnaissance Scripts

This directory contains various scripts for reconnaissance purposes. These scripts help in gathering information about the target during the initial phase of a penetration test or bug bounty hunting.

## Scripts

### amass.sh
- **Purpose**: In-depth DNS enumeration and network mapping.
- **Command**:
  ```bash
  amass enum -d example.com -o amass_output.txt
assetfinder.sh
Purpose: Find related domains and subdomains.
Command:
bash
Copy code
assetfinder --subs-only example.com > assetfinder_output.txt
waybackurls.sh
Purpose: Fetch URLs from the Wayback Machine.
Command:
bash
Copy code
echo example.com | waybackurls > waybackurls_output.txt
crtsh.sh
Purpose: Enumerate subdomains using Certificate Transparency logs.
Command:
bash
Copy code
curl -s https://crt.sh/?q=%25.example.com | grep -oP '>\K[^<]+' | grep example.com > crtsh_output.txt
subfinder.sh
Purpose: Subdomain discovery.
Command:
bash
Copy code
subfinder -d example.com -o subfinder_output.txt
httprobe.sh
Purpose: Probe for working HTTP and HTTPS servers.
Command:
bash
Copy code
cat subdomains.txt | httprobe > httprobe_output.txt
gowitness.sh
Purpose: Capture screenshots of web pages.
Command:
bash
Copy code
gowitness file -f httprobe_output.txt
massdns.sh
Purpose: High-performance DNS stub resolver.
Command:
bash
Copy code
massdns -r resolvers.txt -t 1000 subdomains.txt > massdns_output.txt
aquatone.sh
Purpose: Visual inspection of websites across a large number of hosts.
Command:
bash
Copy code
cat httprobe_output.txt | aquatone
nuclei.sh
Purpose: Vulnerability scanning based on customizable templates.
Command:
bash
Copy code
nuclei -t cves/ -l subdomains.txt -o nuclei_output.txt
Installation
Run the install_recon.sh script to update your system and install all the necessary packages for these scripts.

bash
Copy code
chmod +x install_recon.sh
./install_recon.sh
sql
Copy code

### Steps to Add and Commit the New Files

1. **Create and add `install_recon.sh`**:
   ```bash
   nano install_recon.sh
   # Paste the content from above
   chmod +x install_recon.sh
   git add install_recon.sh
