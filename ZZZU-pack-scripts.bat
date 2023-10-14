@echo off

call "setenv.bat"

echo "[36m PACK scripts for rls... [0m"

del /Q scripts.zip

tar -a -c -f scripts.zip --exclude ".git/*" --exclude "bin/*" --exclude ".git*" --exclude "*.zip" *


IF EXIST "scripts.zip"  (
    set errorlevel=0
) ELSE (
    set errorlevel=1
)

call "%scriptDir%/delay-exit.bat"
