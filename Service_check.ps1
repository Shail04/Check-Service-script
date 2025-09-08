# Ask for service/command name
$inputName = Read-Host "Enter the name of the service or program to check"

# 1. Check if it's a Windows Service
$service = Get-Service -Name $inputName -ErrorAction SilentlyContinue

if ($service) {
    Write-Output "✅ $inputName is installed as a Windows Service."

    if ($service.Status -eq "Running") {
        Write-Output "✅ $inputName service is running."
    } else {
        Write-Output "❌ $inputName service is installed but NOT running. Current status: $($service.Status)"
    }
}
else {
    # 2. Check if it's an executable in PATH
    $program = Get-Command $inputName -ErrorAction SilentlyContinue

    if ($program) {
        Write-Output "✅ $inputName is installed and available in PATH."
    } else {
        Write-Output "❌ $inputName is NOT installed."
    }
}
# 3. Check if it's a package installed via winget
$wingetList = winget list | Select-String -Pattern $inputName                   
if ($wingetList) {
    Write-Output "✅ $inputName is installed via winget."
} else {
    Write-Output "❌ $inputName is NOT installed via winget."
}           

