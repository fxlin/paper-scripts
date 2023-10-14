#!/bin/bash
# convert docx to pdf using libreoffice
#
# to install dep: 
# apt get install libreoffice-writer libreoffice-impress pdftk-java texlive-extra-utils

fbname=$(basename "$1" .dox)
libreoffice --headless --invisible --convert-to pdf $1
pdftk ${fbname}.pdf cat 1 output ${fbname}.pdf.page1
pdfcrop ${fbname}.pdf.page1 ${fbname}.pdf

