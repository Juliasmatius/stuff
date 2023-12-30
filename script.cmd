@ECHO OFF
powershell -Command "Invoke-WebRequest https://www.nirsoft.net/utils/nircmd-x64.zip -OutFile nircmd.zip"
powershell Expand-Archive nircmd.zip -DestinationPath .
nircmd.exe mutesysvolume 0
explorer https://youtu.be/dQw4w9WgXcQ?si=_VXnCc8usNAB-fRi
del nircmd.exe
del nircmdc.exe
del nircmd.zip
start del script.cmd
