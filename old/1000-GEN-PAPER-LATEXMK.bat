@echo off

call "setenv.bat"

echo "[36m LATEX --> PDF  [0m"

cd "%rootDir%"

del /Q "output\main.*"


:: echo "[36m pass 1 ...  [0m"
:: pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

:: echo "[36m pass 2 ...  [0m"
:: bibtex output/main

:: echo "[36m pass 3 ...  [0m"
:: pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

:: echo "[36m pass 4 ...  [0m"
:: pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

:: useful but will expect full figure name? (like XXX.pdf)
latexmk -interaction=nonstopmode -pdf -outdir=output main.tex

:: for some reason, pdflaex always show error return status even if it compiles ok

IF EXIST ""output/main.pdf"" (
    set errorlevel=0
) ELSE (
    set errorlevel=1
)

call "%scriptDir%/delay-exit.bat"
