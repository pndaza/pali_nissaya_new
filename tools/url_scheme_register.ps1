$scheme = "palinissaya"
$exe = "C:\Projects\pali_nissaya_new\build\windows\arm64\runner\Debug\pali_nissaya.exe"
$basePath = "HKCU:\Software\Classes\$scheme"

Write-Host "Registering ${scheme}:// URL scheme..." -ForegroundColor Green

# Remove existing entries
if (Test-Path $basePath) {
    Remove-Item -Path $basePath -Recurse -Force
}

# Create keys
New-Item -Path $basePath -Force | Out-Null
New-Item -Path "$basePath\DefaultIcon" -Force | Out-Null
New-Item -Path "$basePath\shell\open\command" -Force | Out-Null

# Set values
Set-ItemProperty -Path $basePath -Name "(Default)" -Value "URL:Pali Nissaya Protocol"
Set-ItemProperty -Path $basePath -Name "URL Protocol" -Value ""
Set-ItemProperty -Path "$basePath\DefaultIcon" -Name "(Default)" -Value "$exe,0"
Set-ItemProperty -Path "$basePath\shell\open\command" -Name "(Default)" -Value "`"$exe`" `"%1`""

Write-Host "Done. Test with: ${scheme}://mm.pndaza.palinissaya/open?id=..." -ForegroundColor Green
