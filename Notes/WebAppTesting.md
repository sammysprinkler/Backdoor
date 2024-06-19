# Recon Section

## 1. Port Scanning
- **Port Range**: 0-65535
- **Common Ports**: 80, 443, 8080, 8443, 2701
- **Tools**:
  - nmap
  - masscan (very fast)
  - netcat

## 2. Mapping Visible Content
- **Use Tools**:
  - **CES** (Click on, Enter, Send):
    - Link crawlers: wget, curl
    - Directory discovery: dirb, gobuster
  - **View Source/Dev Tools**:
    - Inspect links and resources in web pages

## 3. Using Shodan
- **Search for**:
  - Specific types of devices or services
  - Use filters to narrow down search results

## 4. Mapping Application Hidden Directories
- **Look for**:
  - Backup files
  - Admin panels
- **Tools**:
  - dirb
  - wfuzz
  - gobuster

## 5. Use [SEC] [SECURITY] Configurations
- **Parameters**:
  - debug
  - dev
  - Example: `DEBUG = True`

## 6. Identify Data Entry Points
- **Look for**:
  - Forms (e.g., sign-up, login)
  - Payment gateways
  - Unauthorized access points

## 7. Identify Tech Stack
- **Tools**:
  - nmap
  - Wappalyzer (for web applications)

## 8. Mapping the Attack Surface
- **Perspective**: Think like an attacker
- **Identify**:
  - **Valuable assets**: What’s most critical?
  - **Weak points**: Where are the vulnerabilities?
  - **Examples**: Bypassing login screens, cross-site scripting (XSS)
  - **Business Process**: Understand how the business operates to identify potential flaws

---
- **Search for Links**:
  - Use browser’s find feature (Ctrl + F, search `href`)
- **Use gobuster to Find Hidden Paths**:
  - Command example:
    ```sh
    gobuster dir -u http://example.com -w /usr/share/seclists/Discovery/Web-Content/common.txt
    ```
- **Use curl for HTTP Requests**:
  - Example:
    ```sh
    curl -I http://example.com
    ```
- **Look for Forgable Cookies**:
  - Change values in browser
  - Send to repeater in Burp Suite

---

# Tips and Acronyms

- **Acronyms for Remembering Tools**:
  - **NMAP**: Network Mapper
  - **CES**: Click on, Enter, Send
  - **WFUZZ**: Web Fuzzer
  - **DIRB**: Directory Buster

- **Helpful Mnemonics**:
  - **Port Scan**: Please Scan Networks
  - **CES**: Click on, Enter, Send
  - **WFUZZ**: Web Fuzzer Using Zen Zen

- **Quick Checks**:
  - **RTFM**: Read The Fucking Manual (for understanding tools)
  - **DEBUG**: Digs Bugs Using Great tools

---

# Additional Information

- **Shodan**:
  - Filters: `country:US`, `port:80`
  - Example Query: `apache country:US port:80`

- **Masscan vs Nmap**:
  - **Masscan**: Fast, can scan the entire internet
  - **Nmap**: Detailed, slower, good for comprehensive scans

- **Tech Stack Identification**:
  - **Nmap**: OS detection with `-O`
  - **Wappalyzer**: Browser extension for identifying web technologies