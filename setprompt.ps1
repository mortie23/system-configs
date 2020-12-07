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