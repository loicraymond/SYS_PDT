```
%windir%\system32\reg.exe add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v FocusBorderHeight /t REG_DWORD /d 2 /f
%windir%\system32\reg.exe add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v FocusBorderWidth /t REG_DWORD /d 2 /f
%windir%\system32\reg.exe add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v Win8DpiScaling /t REG_DWORD /d 1 /f
%windir%\system32\reg.exe add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v LogPixels /t REG_DWORD /d 60 /f
```
