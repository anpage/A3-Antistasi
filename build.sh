#!/bin/env bash

# Make build folder
if [ -d "build" ]; then rm -r build; fi
mkdir -p build

# Build greenfor Altis
cp -r A3-Antistasi/Templates/A3-AATemplate.Altis build/Antistasi.Altis
cp -r A3-Antistasi/* build/Antistasi.Altis
rm -rf build/Antistasi.Altis/Templates/*/

makepbo -P -X none -Z default build/Antistasi.Altis/ build/Antistasi.Altis.pbo

rm -rf build/Antistasi.Altis/

# Build blufor Altis
cp -r A3-Antistasi/Templates/A3-AA-BLUFORTemplate.Altis build/Antistasi.BLUFOR.Altis
cp -r A3-Antistasi/* build/Antistasi.BLUFOR.Altis
rm -rf build/Antistasi.BLUFOR.Altis/Templates/*/

makepbo -P -X none -Z default build/Antistasi.BLUFOR.Altis/ build/Antistasi.BLUFOR.Altis.pbo

rm -rf build/Antistasi.BLUFOR.Altis/

# Build Tanoa
cp -r A3-Antistasi/Templates/A3-WotPTemplate.Tanoa build/Antistasi.Tanoa
cp -r A3-Antistasi/* build/Antistasi.Tanoa
rm -rf build/Antistasi.Tanoa/Templates/*/

makepbo -P -X none -Z default build/Antistasi.Tanoa/ build/Antistasi.Tanoa.pbo

rm -rf build/Antistasi.Tanoa/
