@echo off
echo. && echo.
echo "re gen pdf(s) from all docx..."

cd "figs"
make -f scripts/win/Makefile docx

call scripts/win/delay-exit.bat
