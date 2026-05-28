$scheme = "palinissaya"
$exe = "C:\Projects\pali_nissaya_new\build\windows\x64\runner\Debug\pali_nissaya.exe"

Write-Host "Registering ${scheme}:// URL scheme..." -ForegroundColor Green
reg add "HKCU\Software\Classes\${scheme}" /v "URL Protocol" /d "" /f
reg add "HKCU\Software\Classes\${scheme}\shell\open\command" /ve /d "`"$exe`" `"%1`"" /f
Write-Host "Done. Test with: ${scheme}://mm.pndaza.palinissaya/open?id=..." -ForegroundColor Green
