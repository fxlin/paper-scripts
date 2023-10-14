
Right now, only Windows is supported. 

For Mac, calling word/pptx may be possible via Apple Script


KNOWN ISSUES

Problem: 
The scripts sometimes may run slow, taking very long launch the Word instances (via RPC). 

Possible reason: 
This is likely b/c Word tries to contacting some Internet services (?) which takes long to respond. 
Oddly, manually launch Word may not see such a symptom. 

Mitigation: 
Turn off Internet, e.g. putting the computer into "airplane" mode. The problem might go away. 



