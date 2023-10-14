@echo off

:: Set the URL and the temporary file path
set "URL=https://github.com/fxlin/paper-scripts/releases/latest/download/scripts.zip"
:: set "TEMP_FILE=%TEMP%\scripts.zip"
set "TEMP_FILE=scripts.zip"

:: Download the file using certutil
:: cerutil may trigger firewall....
:: certutil -urlcache -split -f "%URL%" "%TEMP_FILE%"
:: use curl instead. -L follow redicts
curl -L -o "%TEMP_FILE%" "%URL%"

:: Display a message indicating the download
echo File downloaded to: %TEMP_FILE%

:: Extract the zip file to a temporary directory
:: set "tempDir=%TEMP%\temp_extract_dir"
:: mkdir "%tempDir%" 2>nul

:: expand only support *.cab
:: expand "%TEMP_FILE%" -F:* "%tempDir%"
:: tar -xvf "%TEMP_FILE%" -C "%tempDir%"
tar -xvf "%TEMP_FILE%"


:: On Windows 10 build 17063 or later you can use tar.exe

:: Copy files from the temporary directory to the current directory
:: robocopy "%tempDir%" . /E /IS /MOVE

:: Clean up the temporary directory
:: rd /s /q "%tempDir%"

del /Q scripts.zip

echo Extraction completed.

:: Rest of your script


call "setenv.bat"

call "%scriptDir%/delay-exit.bat"
