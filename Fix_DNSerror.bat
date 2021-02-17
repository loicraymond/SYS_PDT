@echo off

echo SUPPRESSION CLE DE REGISTRE
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\SearchList" /f

echo CREATION CLE DE REGISTRE
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\SearchList" /v "" /t REG_SZ