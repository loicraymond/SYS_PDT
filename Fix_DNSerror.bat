@echo off

echo SUPPRESSION PROXY
netsh winhttp reset proxy

echo SUPPRESSION CLE DE REGISTRE
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SearchList" /f

echo CREATION CLE DE REGISTRE
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SearchList" /d "" /t REG_SZ
