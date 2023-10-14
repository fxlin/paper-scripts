@echo off

call "setenv.bat"

echo "ALL --> PDF"

cd "%rootDir%/figs"
make -f "%scriptDir%/Makefile" 

call "%scriptDir%/delay-exit.bat"