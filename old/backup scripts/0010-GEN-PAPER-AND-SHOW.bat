@echo off

pdflatex -synctex=1 -interaction=nonstopmode -output-directory=output main.tex

"C:\Program Files (x86)\Evince-2.32.0.145\bin\evince.exe" output/main.pdf