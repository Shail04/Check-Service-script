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

## Example Output

See `output.txt` and `output_1.txt` for screenshots and sample outputs of both scripts.

## License

MIT
