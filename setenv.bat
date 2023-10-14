@echo off

:: these paths relative to this script (setenv.bat), not the one calling it

set "scriptDir=%~dp0"   
:: echo %scriptDir%
set "PATH=%PATH%;%scriptDir%"
cd ..
set "rootDir=%CD%"
cd "%scriptDir%"

:: will be used for PDFs....
set "paperCodeName=AB-" 

:: why nothing from below??? b/c it is called from another scr?
echo root dir ===== %rootDir%
echo script dir ===== %scriptDir%