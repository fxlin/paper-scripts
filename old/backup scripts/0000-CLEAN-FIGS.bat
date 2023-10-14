@echo off
echo. && echo.
echo "re gen pdf(s) from all pptx..."

cd "figs"
make -f scripts/win/Makefile clean

call scripts/win/delay-exit.bat
