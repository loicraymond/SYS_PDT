REM
REM Nom : WSUS-ReinitID.bat
REM Date : 14/10/2019
REM Auteur : Loïc RAYMOND
REM


REM J'arrete les services Windows Update et BITS
net stop wuauserv /y
net stop BITS /y

REM Je supprime les clés de registres
REG Delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId  /f
REG Delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientIdValidation  /f

REM Je lance une mise à jour des stratégies
gpupdate


REM Je demarre le service Windows Update
net start wuauserv /y

REM Je réinitialise la connectivité avec le serveur WSUS
wuauclt.exe /resetauthorization /detectnow