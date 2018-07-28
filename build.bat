@echo off

if exist "build" rmdir /S/Q "build"
mkdir "build"

xcopy /E/Y A3-Antistasi\Templates\A3-AATemplate.Altis build\Antistasi.Altis\
xcopy /E/Y A3-Antistasi build\Antistasi.Altis\
rmdir /S/Q build\Antistasi.Altis\Templates\A3-AA-BLUFORTemplate.Altis
rmdir /S/Q build\Antistasi.Altis\Templates\A3-AATemplate.Altis
rmdir /S/Q build\Antistasi.Altis\Templates\A3-WotPTemplate.Tanoa

makepbo -PN build\Antistasi.Altis\ build\Antistasi.Altis.pbo
