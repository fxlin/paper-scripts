:: purpose - open powerpoint or word
:: usage open-figtab.bat "path-to-tex"
:: 		if fig-XXXX.tex, then open figs/XXXX.pptx
::		if tab-XXXX.tex, then open figs/XXXX.dox


@echo off

setlocal EnableDelayedExpansion

:: Get the current file name and extension
:: 	FL: 1 means the 1st argument, x means extension
set "filePath=%~dpnx1"
:: no extension
set "fileName=%~n1"	
:: no extension, start from 4th char (0 based)
set "XXXX=!fileName:~4!"	
set "fileExtension=%~x1"
set "fig-or-tab=!fileName:~0,3!"

echo Got !fileName! ...
@echo on
cd "figs"

if /i "%fig-or-tab%" == "fig" (
	echo think it should be a pptx... !XXXX!.pptx
	if exist "!XXXX!.pptx" (
		start "" "POWERPNT.EXE" "!XXXX!.pptx"	
	) else (
		echo Cannot find figs/!XXXX!.dox. Abort		
	)
) else if /i "%fig-or-tab%" == "tab" (
	echo think it should be a docx ... !XXXX!.dox	
	if exist "!XXXX!.dox" (
		start "" "WINWORD.EXE" "!XXXX!.dox"
	) else if exist "!XXXX!.docx" (
		echo Do you mean figs/!XXXX!.docx?
	) else  (
		echo Cannot find figs/!XXXX!.dox. Abort
	)
)

:nofound_label

