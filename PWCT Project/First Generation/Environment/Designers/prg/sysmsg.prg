*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\SYSMSG.PRG
*:
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	Mahmoud Fayed
*:	Programming without coding technology 1.8 (Smart)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.8 (Smart)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   sysmsg
PARAMETERS nline
RETURN ALLTRIM(MLINE(sys_msg,nline))

