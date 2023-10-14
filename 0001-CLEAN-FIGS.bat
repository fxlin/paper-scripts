@echo off

call "setenv.bat"

:: echo root dir: %rootDir%
:: echo %PATH%

echo "Clean all PDF figs..."

cd "%rootDir%/figs"
make -f "%scriptDir%/Makefile" clean

call "%scriptDir%/delay-exit.bat"
