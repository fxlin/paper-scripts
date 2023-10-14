@echo off

call "setenv.bat"

setlocal enabledelayedexpansion
REM Get the current date and time in the format YYYYMMDD_HHMMSS
:: FL: echo %date% %time%
:: Wed 10/04/2023_10:48:08.14
for /f "tokens=1-9 delims=/:. " %%a in ('echo %date% %time%') do (
  set "dow=%%a"
  set "year=%%d"
  set "month=%%b"
  set "day=%%c"
  set "hour=%%e"
  set "minute=%%f"
  set "second=%%g"
)

echo dow !dow!
echo year !year!
echo m !month!
echo d !day!
echo h !hour!
echo m !minute!
echo s !second!

REM xzl: some fileds are not 100% correct. but that's ok as of now...
:: set "formattedDate=!year!!month!!day!_!hour!!minute!"
set "formattedDate=!year!!month!!day!_!dow!_!hour!!minute!"

REM Specify the old and new filenames here
set "oldFileName=main.pdf"
set "newFileName=!paperCodeName!!formattedDate!.pdf"

cd "%rootDir%"
cd /d "output"

REM Rename the file

@echo on
echo %oldFileName% ===> %newFileName%

@echo off
copy "!oldFileName!" "!newFileName!"

cd .. 

call "%scriptDir%/delay-exit.bat"
