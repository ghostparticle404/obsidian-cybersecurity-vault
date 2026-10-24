
#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  bash create_cybersecurity_vault.sh [--preview] "/path/to/Obsidian Vault"

Options:
  --preview   Show folders without creating them
  -h, --help  Show this help

Example:
  bash create_cybersecurity_vault.sh "$HOME/Documents/Cybersecurity Vault"
EOF
}

preview=false
if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi
if [[ "${1:-}" == "--preview" ]]; then
  preview=true
  shift
fi
if [[ $# -ne 1 || -z "$1" ]]; then
  usage >&2
  exit 1
fi

vault="${1%/}"
if [[ ! -d "$vault/.obsidian" ]]; then
  printf 'Error: No existing Obsidian vault found at: %s\n' "$vault" >&2
  exit 1
fi

folders=(
  '00 - Dashboard & Indexes'
  '01 - Operating Systems & CLI/macOS CLI'
  '01 - Operating Systems & CLI/Linux CLI'
  '01 - Operating Systems & CLI/Windows CMD'
  '01 - Operating Systems & CLI/Windows PowerShell'
  '01 - Operating Systems & CLI/Bash & Shell Scripting'
  '01 - Operating Systems & CLI/Python for Security'
  '02 - Networking & Packet Analysis/TShark'
  '02 - Networking & Packet Analysis/Wireshark'
  '02 - Networking & Packet Analysis/tcpdump'
  '02 - Networking & Packet Analysis/Nmap'
  '02 - Networking & Packet Analysis/DNS Tools'
  '02 - Networking & Packet Analysis/Firewalls & Routing'
  '03 - Digital Forensics/Disk Imaging & DD'
  '03 - Digital Forensics/Autopsy'
  '03 - Digital Forensics/Volatility'
  '03 - Digital Forensics/Memory Forensics'
  '03 - Digital Forensics/macOS Forensics'
  '03 - Digital Forensics/Windows Forensics'
  '03 - Digital Forensics/File Metadata & ExifTool'
  '04 - SIEM & Log Analysis/Elastic & Kibana'
  '04 - SIEM & Log Analysis/Splunk'
  '04 - SIEM & Log Analysis/Wazuh'
  '04 - SIEM & Log Analysis/Sysmon'
  '04 - SIEM & Log Analysis/Sigma Rules'
  '04 - SIEM & Log Analysis/Log Parsing'
  '05 - Web Security & Pentesting/Burp Suite'
  '05 - Web Security & Pentesting/OWASP ZAP'
  '05 - Web Security & Pentesting/Web Enumeration'
  '05 - Web Security & Pentesting/Web Vulnerabilities'
  '05 - Web Security & Pentesting/Testing Methodologies'
  '06 - Threat Intelligence & OSINT/OSINT Tools'
  '06 - Threat Intelligence & OSINT/Threat Intelligence'
  '06 - Threat Intelligence & OSINT/MITRE ATT&CK'
  '06 - Threat Intelligence & OSINT/IOC Analysis'
  '06 - Threat Intelligence & OSINT/Threat Hunting'
  '07 - Cryptography & Encoding/Cryptographic Algorithms'
  '07 - Cryptography & Encoding/OpenSSL'
  '07 - Cryptography & Encoding/Hashes & Encoding'
  '07 - Cryptography & Encoding/Steganography'
  '08 - Cloud & Identity/AWS'
  '08 - Cloud & Identity/Azure & Entra'
  '08 - Cloud & Identity/Google Cloud'
  '08 - Cloud & Identity/IAM & Authentication'
  '08 - Cloud & Identity/Cloud Security'
  '09 - Security Architecture/Endpoint Security'
  '09 - Security Architecture/Network Security'
  '09 - Security Architecture/Backup & Recovery'
  '09 - Security Architecture/Incident Response'
  '09 - Security Architecture/Zero Trust'
  '10 - Labs & CTFs/TryHackMe'
  '10 - Labs & CTFs/SANS Skills Quest'
  '10 - Labs & CTFs/Just Hacking Training'
  '10 - Labs & CTFs/Other CTFs'
  '11 - Certifications/CompTIA Security+'
  '11 - Certifications/SANS Training'
  '11 - Certifications/Other Courses'
  '12 - PDF Reference Library/Official Manuals'
  '12 - PDF Reference Library/Cheat Sheets'
  '12 - PDF Reference Library/Standards & Frameworks'
  '12 - PDF Reference Library/Research Papers'
  '99 - Templates & Archive/Command Note Template'
  '99 - Templates & Archive/Lab Writeup Template'
  '99 - Templates & Archive/Investigation Template'
)

printf 'Target vault: %s\n' "$vault"
if [[ "$preview" == true ]]; then
  printf 'PREVIEW ONLY — no folders will be created.\n'
  for folder in "${folders[@]}"; do
    printf '  %s\n' "$folder"
  done
else
  for folder in "${folders[@]}"; do
    mkdir -p -- "$vault/$folder"
  done
  printf 'Created or verified %s folder paths.\n' "${#folders[@]}"
  printf 'Existing files were not modified.\n'
fi
  
