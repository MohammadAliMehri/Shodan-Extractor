# Shodan Extractor

## Overview
Shodan Extractor is a simple Bash script designed to extract subdomains and IP addresses associated with a given domain by scraping its Shodan.io page.

## Features
- Extracts subdomains from the Shodan domain page
- Extracts IP addresses related to the subdomains
- Displays extracted information in a structured format
- Allows users to delete or keep extracted data files

## Requirements
- Bash
- curl
- grep
- sed

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/MohammadAliMehri/Shodan-Extractor.git
   cd Shodan-Extractor
   ```
2. Make the script executable:
   ```bash
   chmod +x shodan_extractor.sh
   ```
3. Run the script:
   ```bash
   ./shodan_extractor.sh
   ```
4. Enter a domain when prompted.
5. View extracted subdomains and IPs.
6. Choose whether to delete or keep the output files.

## Output Files
- `subdomain_<domain>.txt` - Contains the extracted subdomains.
- `ips_<domain>.txt` - Contains the extracted IP addresses.

## Example
```bash
Enter your domain: example.com
Subdomains for example.com:
=====================================
www.example.com
api.example.com
mail.example.com
=====================================
IPs for Subdomains from example.com:
=====================================
192.168.1.1
203.0.113.10
=====================================
```

## Disclaimer
This script is intended for educational and research purposes only. Ensure you have permission before using it on any domain.

## License
MIT License

## Author
[Your Name](https://github.com/MohammadAliMehri/)

