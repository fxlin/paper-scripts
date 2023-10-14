@echo off

call "setenv.bat"

echo "[36m LATEX --> PDF [0m"

cd "%rootDir%"

del /Q "output\main.pdf"

:: just do a shallow gen...

pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

:: for some reason, pdflaex always show error return status even if it compiles ok

IF EXIST ""output/main.pdf"" (
    set errorlevel=0
) ELSE (
    set errorlevel=1
)

call "%scriptDir%/delay-exit.bat"
