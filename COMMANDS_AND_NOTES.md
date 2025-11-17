# Commands & Notes — Check-Service-script

## Purpose
- Central place to document commands, usage examples, git workflow, troubleshooting tips, and output-recording guidance for this repository.

## How to use this file
- Add a new entry under "Session log" each time you run or change a script.
- Keep command examples copy-paste friendly.

## Repository scripts (quick reference)
- **Windows PowerShell scripts:**
  - `Service_check2.ps1`, `Service_check.ps1`, `check.ps1`
  - **Run:** Open PowerShell and execute:
    - `.\Service_check2.ps1`
    - `.\check.ps1`
  - **Common troubleshooting:** syntax errors often show line number and msg (e.g. "Unexpected token '}'"). Check brace balance in IF/ELSE blocks.

- **Linux Bash script:**
  - `service_check.sh`
  - **Run:** `chmod +x service_check.sh; ./service_check.sh`

## Common commands (PowerShell)
- Run a script in current directory: `.\scriptname.ps1`
- Get-Service: `Get-Service -Name <name> -ErrorAction SilentlyContinue`
- Get-Command (check in PATH): `Get-Command <name> -ErrorAction SilentlyContinue`
- Check file version: `(Get-Item <path>).VersionInfo.FileVersion`
- Search winget list: `winget list | Select-String -Pattern <name>`

## Common commands (Bash)
- Make executable: `chmod +x service_check.sh`
- Run script: `./service_check.sh`
- Check installed rpm package: `rpm -qa | grep -q "$SERVICE_NAME"`
- Check process running: `ps -ef | grep -v grep | grep -q "$SERVICE_NAME"`

## Git workflow used in this repo
- Clone remote: `git clone <repo-url>`
- Create branch: `git checkout -b feature/describe-change`
- Commit changes: `git add .; git commit -m "Short description"`
- Pull remote before push (to avoid rejected push):
  - `git pull origin main`
  - Resolve conflicts if any, then commit
- Push changes: `git push origin main`
- If push rejected: do `git pull origin main`, resolve conflicts, `git push origin main`

## Example git session (from this repo)
- `git pull origin main`
- `git merge` or resolve conflicts
- `git push origin main`

## Session log (template)
- Date: `YYYY-MM-DD`
- User: `<your name>`
- Script run: `<script filename>`
- Command used:
  - e.g. `.\check.ps1`
- Input provided (if interactive): `<input>`
- Output summary: `<short summary or redirect to output file>`
- Notes / Errors: `<e.g. "Unexpected token '}' at line 56 — removed extra brace"> 

## Troubleshooting: common PowerShell syntax issues
- **Unexpected token '}':**
  - Usually an extra closing brace. Inspect surrounding lines for mismatched if/else or function blocks.
- **Missing closing '}':**
  - A block was not closed. Count opening and closing braces for each if/else.
- **Tips:**
  - Use an editor with brace matching (VS Code, PowerShell ISE).
  - Run small segments or use syntax highlighting to find mismatches.

## How to include screenshots / images in output files
- Place image file inside repository, e.g. `images/service_check_ps1_example.png`
- In markdown files: `![description](images/service_check_ps1_example.png)`
- In plain text output files (`output.txt` / `output_1.txt`): add a reference line:
  - `[Image: images/service_check_ps1_example.png] — description`

## Output files
- `output.txt` — example output for bash script runs (`service_check.sh`)
- `output_1.txt` — example output for PowerShell runs (`Service_check.ps1`)

## Changelog template
- `YYYY-MM-DD` — short description of change (file and reason)

## Checklist before committing changes
- [ ] Run script locally to verify no syntax errors
- [ ] Add or update output example files if behavior changed
- [ ] Update `README.md` or this `COMMANDS_AND_NOTES.md` if interfaces changed

## Useful aliases / snippets
- **PowerShell:** run script and capture output to file
  - `.\check.ps1 *> run_output.txt`
- **Bash:** run script and append to output file
  - `./service_check.sh >> output.txt 2>&1`

## Contact / Author
- Maintainer: `<your name or email>`