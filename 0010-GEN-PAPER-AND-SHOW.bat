@echo off

call "setenv.bat"

echo "[36m LATEX --> PDF [0m"

cd "%rootDir%%

del /Q "output\main.*"

:: just do a shallow gen...
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex
:: latexmk -synctex=1 -interaction=nonstopmode -pdf -outdir=output main.tex

:: must be in path 
"C:\Program Files (x86)\Evince-2.32.0.145\bin\evince.exe" output/main.pdf