@echo off
setlocal EnableExtensions

set "REPOSITORY_ROOT=%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {
  Add-Type -AssemblyName System.Windows.Forms
  $dialog = New-Object System.Windows.Forms.OpenFileDialog
  $dialog.Title = 'Choose the CIS181 starter package you downloaded from Brightspace'
  $dialog.Filter = 'CIS181 starter packages (lab-Sx-y.zip)|lab-S*-*.zip|ZIP files (*.zip)|*.zip'
  if ($dialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) { exit 0 }
  $package = $dialog.FileName
  $name = [IO.Path]::GetFileName($package)
  $targets = @{ 'lab-S1-2.zip'='lab1-2'; 'lab-S1-3.zip'='lab1-3'; 'lab-S1-4.zip'='lab1-4'; 'lab-S1-5.zip'='lab1-5'; 'lab-S2-1.zip'='lab2-1'; 'lab-S2-3.zip'='lab2-3'; 'lab-S2-5.zip'='lab2-5'; 'lab-S3-1.zip'='lab3-1'; 'lab-S3-3.zip'='lab3-3' }
  if (-not $targets.ContainsKey($name)) { [System.Windows.Forms.MessageBox]::Show('This is not a CIS181 starter package. Choose a file named lab-Sx-y.zip.', 'CIS181 Installer'); exit 1 }
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
