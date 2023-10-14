@echo off

pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

call "figs/scripts/win/delay-exit.bat"
