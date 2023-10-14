@echo off

call "setenv.bat"

echo "[31m PPTX --> PDF [0m"

cd "%rootDir%/figs"
make -f "%scriptDir%/Makefile" pptx

call "%scriptDir%/delay-exit.bat"