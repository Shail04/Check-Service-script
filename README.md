# Check-Service-script

This repository provides scripts to check the installation and running status of services or programs on both Windows and Linux systems.

## Contents

- `Service_check.ps1` — PowerShell script for Windows
- `Service_check.sh` — Bash script for Linux
- `output.txt`, `output_1.txt` — Example output files

## Usage

### Windows (PowerShell)

1. Open PowerShell.
2. Run the script:
   ```powershell
   .\Service_check.ps1
   ```
3. Enter the name of the service or program when prompted.

The script will:
- Check if the service exists and is running.
- Check if the program is available in PATH.
- Check if the program is installed via winget.

### Linux (Bash)

1. Open a terminal.
2. Make the script executable:
   ```bash
   chmod +x Service_check.sh
   ```
3. Run the script:
   ```bash
   ./Service_check.sh
   ```
4. Enter the service name when prompted.

The script will:
- Check if the package is installed (using `rpm`).
- Check if the service is running (using `ps`).

---

## Advanced Linux Setup & Troubleshooting

2) **Ensure Git is installed**
Run one of the following (based on your OS family):

Amazon Linux 2023 / Fedora / RHEL9+ (dnf):
```bash
sudo dnf install -y git
```
RHEL / CentOS / Oracle Linux (yum):
```bash
sudo yum install -y git
```
Ubuntu / Debian (apt):
```bash
sudo apt-get update
sudo apt-get install -y git
```

2. **Clone your GitHub repository**
   ```bash
   git clone https://github.com/<YOUR_GITHUB_USERNAME>/<YOUR_REPO_NAME>.git
   cd <YOUR_REPO_NAME>
   ```
3. **Make the script executable**
   ```bash
   chmod +x check_service.sh
   ```
4. **Run the script**
   ```bash
   ./check_service.sh
   ```
5. **Example session**
   ```
   Enter the service name to check:
   nginx
   ✅ nginx is installed.
   ✅ nginx process is running.
   ```
6. **Tips & Troubleshooting**
   - Permission denied: `chmod +x check_service.sh`
   - Git not found: Install Git 
   - Service not running: Use `systemctl` or `ps`/`pgrep` 
   - On Debian/Ubuntu: Use `dpkg -l | grep <name>` instead of `rpm -qa`
7. **Typical repo layout**
   ```
   <YOUR_REPO_NAME>/
   ├─ check_service.sh      # the bash script (interactive or with args)
   └─ README.md             # this guide
   ```
8. **License**
   - MIT (see LICENSE file)
9. **Contributing**
    Fork the repository
    Create a feature branch: git checkout -b feature/my-change
    Commit your changes: git commit -m "Explain what changed"
    Push to your fork: git push origin feature/my-change
    Open a Pull Request

---

## Example Output

See `output.txt` and `output_1.txt` for screenshots and sample outputs of both scripts.

## License

MIT
