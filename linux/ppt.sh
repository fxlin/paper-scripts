#!/bin/bash
# convert pptx to pdf using libreoffice

fbname=$(basename "$1" .pptx)
libreoffice --headless --invisible --convert-to pdf $1
pdftk ${fbname}.pdf cat 1 output ${fbname}.pdf.page1
pdfcrop ${fbname}.pdf.page1 ${fbname}.pdf

