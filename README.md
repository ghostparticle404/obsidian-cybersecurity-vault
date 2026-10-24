# 🛡️ Obsidian Cybersecurity Vault
A beginner-friendly Bash script that automatically generates an organized folder structure for cybersecurity notes, technical references, CLI commands, labs, and study materials in [Obsidian](https://obsidian.md/).

## 📖 About This Project
I'm building my own cybersecurity knowledge base as I study Linux, networking, digital forensics, threat intelligence, penetration testing, and other cybersecurity disciplines.

I wanted a simple way to organize my notes by operating system, tool, and technical subject rather than having everything scattered across different documents. This project provides a starting folder structure that anyone can customize and expand as they learn.

## 📁 Folder Structure
The script creates the following main folders and their corresponding subfolders:

| Main Folder | Includes |
|---|---|
| 00 - Dashboard & Indexes | Master indexes and navigation |
| 01 - Operating Systems & CLI | macOS, Linux, Windows CMD, PowerShell, Bash, Python |
| 02 - Networking & Packet Analysis | TShark, Wireshark, tcpdump, Nmap, DNS, firewalls |
| 03 - Digital Forensics | Disk imaging, Autopsy, Volatility, memory analysis, ExifTool |
| 04 - SIEM & Log Analysis | Elastic, Kibana, Splunk, Wazuh, Sysmon, Sigma |
| 05 - Web Security & Pentesting | Burp Suite, OWASP ZAP, enumeration, vulnerabilities |
| 06 - Threat Intelligence & OSINT | OSINT tools, MITRE ATT&CK, IOC analysis, threat hunting |
| 07 - Cryptography & Encoding | OpenSSL, hashing, encryption, steganography |
| 08 - Cloud & Identity | AWS, Azure, Google Cloud, IAM |
| 09 - Security Architecture | Endpoint security, network security, backups, incident response |
| 10 - Labs & CTFs | TryHackMe, SANS Skills Quest, other CTFs |
| 11 - Certifications | CompTIA Security+, SANS, other courses |
| 12 - PDF Reference Library | Manuals, cheat sheets, standards, research papers |
| 99 - Templates & Archive | Space for note templates and archived materials |

## 🚀 Getting Started

### 1. Install Obsidian
Download and install Obsidian from:

https://obsidian.md/

### 2. Create a Vault
Open Obsidian and create a new vault, or use an existing vault.

### 3. Download the Script
Download `create_cybersecurity_vault.sh` from this repository.

### 4. Review the Script
Always review shell scripts before executing them, even when downloaded from GitHub.

### 5. Run the Script
Open Terminal and navigate to the directory containing the downloaded script.

For example, if the script is in Downloads:
```bash
cd ~/Downloads
```

Run the script with the path to your existing Obsidian vault:
```bash
bash create_cybersecurity_vault.sh "$HOME/Documents/Cybersecurity Vault"
```

Replace the example vault path with your own.

## 🔐 Security and Safety
The original folder-creation script:

- Creates folders using `mkdir -p`.
- Does not delete existing notes or directories.
- Does not require administrator privileges.
- Does not download or install additional software.
- Checks that the target directory contains an Obsidian `.obsidian` folder.

Review the published script before running it, especially if changes have been made.

## 📝 Adding Notes and Resources
Once the structure is created, you can begin adding:

- CLI commands and examples
- Technical reference notes
- Troubleshooting procedures
- CTF and lab writeups
- Official documentation and PDFs
- Security concepts and study materials
- Links between related tools and concepts

Obsidian supports Markdown, code blocks, internal links, tags, and graph visualization.

## 🛠️ Customization
This folder structure is intended as a starting point.

Add, rename, or remove folders to suit your own interests, tools, certifications, and workflows.

## 🤝 Contributions
Suggestions, improvements, and contributions are welcome!

If you have ideas for additional cybersecurity tools, categories, or improvements to the folder structure, feel free to open an issue or submit a pull request.

## 📄 License
MIT License.

## 💜 Final Note
This project is a work in progress, created while learning cybersecurity and experimenting with ways to build a more useful technical knowledge base.

Hopefully, it saves someone else a little time organizing their notes!

Happy learning and happy hacking! 🛡️
