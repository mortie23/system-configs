# Suggestions for using Powershell

## Prompt

To get a prompt that looks less cluttered and is helpful (when you can't install oh my posh), edit / create this file:  

```sh
C:\Users\<usrid>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

Paste the following into the file and save.  

```ps1
function prompt {
  $dateTime = get-date -Format "dd.MM.yyyy HH:mm:ss"
  $currentDirectory = $(Get-Location)
  $driveletter = $currentDirectory.Drive.Name
  $UncRoot = $currentDirectory.Drive.DisplayRoot
  
  write-host "$(Convert-Path $currentDirectory)" -NoNewline -ForegroundColor green
  write-host " $UncRoot" -ForegroundColor Gray
  # Convert-Path needed for pure UNC-locations
  write-host "PS $driveletter >" -NoNewline -ForegroundColor Yellow
  return " "
  write-host " " -ForegroundColor White
}
```
