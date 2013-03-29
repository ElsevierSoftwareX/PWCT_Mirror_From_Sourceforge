*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\NOCERROR.PRG
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
*:   nocerror
*:   mydf
PARAMETERS noe_myinput
LOCAL noe_mymsg

**************** RPWI Only

IF sys_showdoubles = .F.

	IF EMPTY(noe_myinput)
		stmsg(sysmsg(1546))
		?? CHR(7)
		RETURN .F.
	ENDIF

	RETURN .T.

ENDIF

**************************




noe_myinput = LOWER(ALLTRIM(noe_myinput))
noe_oldinput = noe_myinput

noe_myinput = STRTRAN(noe_myinput,"substr","")
noe_myinput = STRTRAN(noe_myinput,"this","thisobj")
noe_myinput = STRTRAN(noe_myinput,"oop","")
noe_myinput = STRTRAN(noe_myinput,"->","")
noe_myinput = STRTRAN(noe_myinput,"[","")
noe_myinput = STRTRAN(noe_myinput,"]","")
noe_myinput = STRTRAN(noe_myinput,"@","")
noe_myinput = STRTRAN(noe_myinput,"&","")
noe_myinput = STRTRAN(noe_myinput,".f.","/f\")
noe_myinput = STRTRAN(noe_myinput,".t.","/t\")
* SUPPORTING OBJECTS { . } without logic conflict
noe_myinput = STRTRAN(noe_myinput,"."," + ")
noe_myinput = STRTRAN(noe_myinput,"/f\",".f.")
noe_myinput = STRTRAN(noe_myinput,"/t\",".t.")
* SUPPORTING Circuit Address { \ }
noe_myinput = STRTRAN(noe_myinput,"\"," + ")
* SUPPORTING SubShell Address { : }
noe_myinput = STRTRAN(noe_myinput,":"," + ")
* SUPPORTING ARRAYS { , }
IF .NOT. EMPTY(ALLTRIM(noe_myinput))
	noe_myinput = STRTRAN(noe_myinput,"{","mydf(")
	noe_myinput = STRTRAN(noe_myinput,"}",")")
	noe_myinput = STRTRAN(noe_myinput,",",") + mydf(")
	noe_myinput = "mydf(" + noe_myinput + ")"  && ALLOW PARAMETERS LIKE "NAME",4
ENDIF
*-------------------------------------------*

IF EMPTY(noe_myinput)
	stmsg(sysmsg(1546))
	?? CHR(7)
	RETURN .F.
ENDIF

noe_myret = .T.

TRY
	noe_myinput = &noe_myinput
CATCH TO omyerror
	noe_mymsg = omyerror.MESSAGE
	noe_errorno = ALLTRIM(STR(omyerror.ERRORNO))
	IF omyerror.ERRORNO = 1231 && missing operand
		stmsg(sysmsg(1547) + " , Expression : " + noe_oldinput)
		noe_myret = .F.
		?? CHR(7)
	ELSE
		IF omyerror.ERRORNO = 12 && variable doesn't exist
			noe_myret = .T.
		ELSE
			IF omyerror.ERRORNO = 1 && file doesn't exist (when calling function not defined)
				noe_myret = .T.
			ELSE
				stmsg(sysmsg(1548) + " , Expression : " + noe_oldinput)
				noe_myret = .F.
				?? CHR(7)
			ENDIF
		ENDIF
	ENDIF

ENDTRY

RETURN noe_myret

*!******************************************************************************
*!
*! Procedure MYDF
*!
*!  Calls
*!      sysmsg
*!
*!******************************************************************************
FUNCTION mydf(p1) && DUMMY FUNCTION
	RETURN ""
