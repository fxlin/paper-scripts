## Windows

### First time

Go to your "paper" root dir (where main.tex locates)

```
mkdir scripts
cd scripts
set "URL=https://github.com/fxlin/paper-scripts/releases/latest/download/scripts.zip"
set "TEMP_FILE=scripts.zip"
curl -L -o "%TEMP_FILE%" "%URL%"
tar -xvf "%TEMP_FILE%"
del /Q scripts.zip
```
Later, to update scripts...

Use Explorer. Go under "%paper_root%/scripts" and click "ZZZX-UPDATE-SCRIPTS.bat"


### To create a release 

Use Explorer. Go under "%paper_root%/scripts" and click "ZZZU-....bat"

Then upload scripts.zip to: 
https://github.com/fxlin/paper-scripts/releases/edit/init


## Note 

Right now, only Windows is supported. 

For Mac, calling word/pptx may be possible via Apple Script


## KNOWN ISSUES

Problem: 
The scripts sometimes may run slow, taking very long launch the Word instances (via RPC). 

Possible reason: 
This is likely b/c Word tries to contacting some Internet services (?) which takes long to respond. 
Oddly, manually launch Word may not see such a symptom. 

Mitigation: 
Turn off Internet, e.g. putting the computer into "airplane" mode. The problem might go away. 



CREDITS

pdfcrop comes from the texlive distro