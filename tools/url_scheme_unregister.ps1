$scheme = "palinissaya"

Write-Host "Removing ${scheme}:// URL scheme..." -ForegroundColor Yellow
reg delete "HKCU\Software\Classes\${scheme}" /f
Write-Host "Done." -ForegroundColor Green
