@echo off
setlocal EnableExtensions

set "REPOSITORY_ROOT=%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {
  Add-Type -AssemblyName System.Windows.Forms
  $dialog = New-Object System.Windows.Forms.OpenFileDialog
  $dialog.Title = 'Choose the CIS181 starter package you downloaded from Brightspace'
  $dialog.Filter = 'CIS181 starter packages (lab#-#-starter.zip)|lab*-*-starter.zip|ZIP files (*.zip)|*.zip'
  if ($dialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) { exit 0 }
  $package = $dialog.FileName
  $name = [IO.Path]::GetFileName($package)
  $targets = @{ 'lab1-2-starter.zip'='lab1-2'; 'lab1-3-starter.zip'='lab1-3'; 'lab1-4-starter.zip'='lab1-4'; 'lab1-5-starter.zip'='lab1-5'; 'lab2-1-starter.zip'='lab2-1'; 'lab2-3-starter.zip'='lab2-3'; 'lab2-5-starter.zip'='lab2-5'; 'lab3-1-starter.zip'='lab3-1'; 'lab3-3-starter.zip'='lab3-3' }
  if (-not $targets.ContainsKey($name)) { [System.Windows.Forms.MessageBox]::Show('This is not a CIS181 starter package. Choose a file named lab1-2-starter.zip.', 'CIS181 Installer'); exit 1 }
  $target = $targets[$name]
  $root = '%REPOSITORY_ROOT%'
  $destination = Join-Path $root $target
  $existing = Get-ChildItem -LiteralPath $destination -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Name -notin '.gitkeep', 'README.md' }
  if ($existing) {
    $answer = [System.Windows.Forms.MessageBox]::Show('This will replace the starter files already in the selected lab folder. Continue?', 'CIS181 Installer', 'OKCancel', 'Warning')
    if ($answer -ne 'OK') { exit 0 }
  }
  try {
    Expand-Archive -LiteralPath $package -DestinationPath $root -Force
    Get-ChildItem -LiteralPath $destination -Recurse -Filter '.gitkeep' -File -ErrorAction SilentlyContinue | Remove-Item -Force
    Get-ChildItem -LiteralPath $destination -Recurse -Filter 'README.md' -File -ErrorAction SilentlyContinue | Remove-Item -Force
    [System.Windows.Forms.MessageBox]::Show($target + ' starter files are ready. Open your Local Course Repository in Visual Studio Code to begin.', 'CIS181 Installer')
  } catch {
    [System.Windows.Forms.MessageBox]::Show('The package could not be installed. Please try again or contact your instructor.', 'CIS181 Installer')
    exit 1
  }
}" 
endlocal
