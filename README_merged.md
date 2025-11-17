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

1. **Connect to the machine**
   - AWS EC2: Use SSH with your key (see README1.md for details)
   - Local Linux: Open Terminal
2. **Ensure Git is installed** (see README1.md for commands)
3. **Clone your GitHub repository**
   ```bash
   git clone https://github.com/<YOUR_GITHUB_USERNAME>/<YOUR_REPO_NAME>.git
   cd <YOUR_REPO_NAME>
   ```
4. **Make the script executable**
   ```bash
   chmod +x check_service.sh
   ```
5. **Run the script**
   ```bash
   ./check_service.sh
   ```
6. **Example session**
   ```
   Enter the service name to check:
   nginx
   ✅ nginx is installed.
   ✅ nginx process is running.
   ```
7. **Tips & Troubleshooting**
   - Permission denied: `chmod +x check_service.sh`
   - Git not found: Install Git (see README1.md)
   - Service not running: Use `systemctl` or `ps`/`pgrep` (see README1.md)
   - On Debian/Ubuntu: Use `dpkg -l | grep <name>` instead of `rpm -qa`
8. **Typical repo layout**
   ```
   <YOUR_REPO_NAME>/
   ├─ check_service.sh      # the bash script (interactive or with args)
   └─ README.md             # this guide
   ```
9. **License**
   - MIT (see LICENSE file)
10. **Contributing**
   - Fork, branch, commit, push, and open a Pull Request

---

## Example Output

See `output.txt` and `output_1.txt` for screenshots and sample outputs of both scripts.

## License

MIT
