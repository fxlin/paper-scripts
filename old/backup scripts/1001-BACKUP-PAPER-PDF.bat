@echo off

setlocal enabledelayedexpansion
REM Get the current date and time in the format YYYYMMDD_HHMMSS
for /f "tokens=1-9 delims=/:. " %%a in ('echo %date%_%time%') do (
  set "year=%%c"
  set "month=%%a"
  set "day=%%b"
  set "hour=%%d"
  set "minute=%%e"
  set "second=%%f"
)

REM xzl: some fileds are not 100% correct. but that's ok as of now...
set "formattedDate=!year!!month!!day!_!hour!!minute!"

REM Specify the old and new filenames here
set "oldFileName=main.pdf"
set "newFileName=main-!formattedDate!.pdf"

cd /d "output"

REM Rename the file

@echo on
echo %oldFileName% ===> %newFileName%

@echo off
copy "!oldFileName!" "!newFileName!"

cd .. 

call "figs/scripts/win/delay-exit.bat"
