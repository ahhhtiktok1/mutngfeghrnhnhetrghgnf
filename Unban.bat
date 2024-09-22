@echo off
title Woofer 

:: Enable ANSI escape codes (works in newer versions of Windows Terminal or Command Prompt)
setlocal enabledelayedexpansion

:: Clear the screen and display the menu
:MENU
cls

:PERM_SPOOF
cls
echo.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Run as admin..
    pause
    exit /b
)



echo.

cd /d "%~dp0"

echo AMIDEWIN Spoofing..

for /f "delims=" %%i in ('call randstr.exe 10') do set "output9=%%i"
for /f "delims=" %%i in ('call randstr.exe 14') do set "output91=%%i"
for /f "delims=" %%i in ('call randstr.exe 10') do set "output92=%%i"




    AMIDEWINx64.EXE /IVN "AMI"
    AMIDEWINx64.EXE /SM "System manufacturer"
    AMIDEWINx64.EXE /SP "System product name"
    AMIDEWINx64.EXE /SV "System version"
    AMIDEWINx64.EXE /SS %output9%
    AMIDEWINx64.EXE /SU AUTO
    AMIDEWINx64.EXE /SK "To Be Filled By O.E.M"
    AMIDEWINx64.EXE /SF "To Be Filled By O.E.M."
    AMIDEWINx64.EXE /BM "ASRock"
    AMIDEWINx64.EXE /BP "B560M-C"
    AMIDEWINx64.EXE /BV " "
    AMIDEWINx64.EXE /BS %output91%
    AMIDEWINx64.EXE /BT "Default string"
    AMIDEWINx64.EXE /BLC "Default string"
    AMIDEWINx64.EXE /CM "Default string"
    AMIDEWINx64.EXE /CV "Default string"
    AMIDEWINx64.EXE /CS %output92%
    AMIDEWINx64.EXE /CA "Default string"
    AMIDEWINx64.EXE /CSK "SKU"
    AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M."
    AMIDEWINx64.EXE /PAT "To Be Filled By O.E.M."
    AMIDEWINx64.EXE /PPN "To Be Filled By O.E.M."

    echo AMIDEWIN Spoofed!
)


    echo AFUWIN Spoofing..
    AFUWINx64.exe BIOS.rom /o
    AFUWINx64.exe BIOS.rom /p
    echo AFUWIN Spoofed!
)
(
    echo.

    (
    echo echo -off
    echo AMIDEEFIx64.efi /IVN "AMI"
    echo AMIDEEFIx64.efi /SM "System manufacturer"
    echo AMIDEEFIx64.efi /SP "System product name"
    echo AMIDEEFIx64.efi /SV "System version"
    echo AMIDEEFIx64.efi /SS "%output%"
    echo AMIDEEFIx64.efi /SU AUTO
    echo AMIDEEFIx64.efi /SK "To Be Filled By O.E.M"
    echo AMIDEEFIx64.efi /SF "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /BM "ASRock"
    echo AMIDEEFIx64.efi /BP "B560M-C"
    echo AMIDEEFIx64.efi /BV " "
    echo AMIDEEFIx64.efi /BS "%output1%"
    echo AMIDEEFIx64.efi /BT "Default string"
    echo AMIDEEFIx64.efi /BLC "Default string"
    echo AMIDEEFIx64.efi /CM "Default string"
    echo AMIDEEFIx64.efi /CV "Default string"
    echo AMIDEEFIx64.efi /CS "%output2%"
    echo AMIDEEFIx64.efi /CA "Default string"
    echo AMIDEEFIx64.efi /CSK "SKU"
    echo AMIDEEFIx64.efi /PSN "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /PAT "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /PPN "To Be Filled By O.E.M."
    echo exit
    ) > "startup.nsh"


)


exit
