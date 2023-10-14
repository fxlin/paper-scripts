@echo off

call "setenv.bat"

echo "[34m DOCX --> PDF [0m"

cd "%rootDir%/figs"
make -f "%scriptDir%/Makefile" docx

call "%scriptDir%/delay-exit.bat"