@echo off

if exist "build" rmdir /S/Q "build"
mkdir "build"

xcopy /E/Y A3-Antistasi\Templates\A3-AATemplate.Altis build\Antistasi.Altis\
xcopy /E/Y A3-Antistasi build\Antistasi.Altis\
rmdir /S/Q build\Antistasi.Altis\Templates

makepbo -P build\Antistasi.Altis\ build\Antistasi.Altis.pbo