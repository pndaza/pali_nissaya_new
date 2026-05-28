$scheme = "palinissaya"
$basePath = "HKCU:\Software\Classes\$scheme"

Write-Host "Removing ${scheme}:// URL scheme..." -ForegroundColor Yellow

if (Test-Path $basePath) {
    Remove-Item -Path $basePath -Recurse -Force
    Write-Host "Done." -ForegroundColor Green
} else {
    Write-Host "Nothing to remove." -ForegroundColor Yellow
}
