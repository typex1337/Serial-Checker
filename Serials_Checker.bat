@echo off
:diocane
title Serial Checker by xouse
start https://wanted.lol/xouse
color 5
cls
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo CPU
wmic cpu get serialnumber
wmic cpu get processorid
echo Diskdrive
wmic diskdrive get serialnumber
echo Motherboard
wmic baseboard get serialnumber
echo Ram
wmic memorychip get serialnumber
echo MacAddress
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo GPU
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo Press ENTER to check serial again...
pause >nul
goto diocane