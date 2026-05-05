del /s /q appdata\logs\*
for /d %%i in ("appdata\logs\*") do rmdir /s /q "%%i"
pause