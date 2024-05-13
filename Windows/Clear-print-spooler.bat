REM 
REM Suppression des fichiers du spouleur d'impressions
REM 

@echo off

echo ARRET DU SERVICE
net stop spooler

echo SUPPRESSION DES FICHIERS
DEL /F /S /Q %systemroot%\System32\spool\PRINTERS\*

echo DEMARRAGE DU SERVICE
net start spooler

pause
