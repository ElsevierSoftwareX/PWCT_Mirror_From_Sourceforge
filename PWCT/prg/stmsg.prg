*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\STMSG.PRG
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
*:   stmsg
PARAMETERS mymsg

DIMENSION pwct_statusmsgs(ALEN(pwct_statusmsgs,1)+1)
pwct_statusmsgs(ALEN(pwct_statusmsgs,1)) = mymsg

win_mssf.otoolbar3.timer1.ENABLED = .F.
win_mssf.otoolbar3.wwstatusbar1.panels(1).TEXT  = mymsg
win_mssf.otoolbar3.wwstatusbar1.renderpanel(1)
win_mssf.otoolbar3.timer1.ENABLED = .T.

