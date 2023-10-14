# batch convert all .pptx files in a directory to .pdf  
# files and crop them. 
# 
# to be used in conjunction with ppt.vbs, which converts
# a .pptx file into a pdf. 
#
# usage: copy this file and ppt.vbs to figs/ and run make
# there
#
# environment: win 10 cmd
#

docobjects := $(patsubst %.docx,%.pdf,$(wildcard *.docx)) $(patsubst %.dox,%.pdf,$(wildcard *.dox))
pptobjects := $(patsubst %.pptx,%.pdf,$(wildcard *.pptx))

current_dir  := $(shell cd)

all : check_overlap $(docobjects) $(pptobjects) 

	
docx : $(docobjects)

pptx : $(pptobjects)

clean :
	del /Q $(docobjects) $(pptobjects)

check_overlap :
	@echo "$(current_dir)"
		
		
%.pdf.uncrop : %.docx
	"c:\Windows\SysWOW64\cscript.exe" "$(scriptDir)\docx.vbs" "$(current_dir)\$^" "$(current_dir)\$@"

%.pdf.uncrop : %.dox
	"c:\Windows\SysWOW64\cscript.exe" "$(scriptDir)\docx.vbs" "$(current_dir)\$^" "$(current_dir)\$@"

%.pdf.uncrop : %.pptx
	"c:\Windows\SysWOW64\cscript.exe" "$(scriptDir)\ppt.vbs" "$(current_dir)\$^" "$(current_dir)\$@"

%.pdf: %.pdf.uncrop
	"$(scriptDir)\bin\pdfcrop.exe" $^ $@
	
	
.PHONY: check_overlap all docx pptx