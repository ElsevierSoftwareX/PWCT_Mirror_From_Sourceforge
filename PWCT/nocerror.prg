PARAMETERS noe_myinput
LOCAL noe_mymsg

**************** RPWI Only

IF Sys_ShowDoubleS = .f.

		IF EMPTY(noe_myinput)
				STMSG(sysmsg(1546))
				?? CHR(7)
				RETURN .f.
		ENDIF

		RETURN .T.

ENDIF

**************************




noe_myinput = LOWER(ALLTRIM(noe_myinput))
noe_oldinput = noe_myinput 

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
STMSG(sysmsg(1546))
?? CHR(7)
RETURN .f.
ENDIF

noe_myret = .t.

TRY
			noe_myinput = &noe_myinput
CATCH TO omyerror
			noe_mymsg = omyerror.message 
			noe_errorno = ALLTRIM(STR(omyerror.errorno))
			IF omyerror.errorno = 1231 && missing operand
					STMSG(sysmsg(1547) + " , Expression : " + noe_oldinput)
					noe_myret = .f.
					?? CHR(7)
			ELSE
					IF omyerror.errorno = 12 && variable doesn't exist
							noe_myret = .T.
					ELSE
							IF omyerror.errorno = 1 && file doesn't exist (when calling function not defined)
									noe_myret = .T.
							ELSE
								STMSG(sysmsg(1548) + " , Expression : " + noe_oldinput)
								noe_myret = .f.
								?? CHR(7)
							ENDIF
					ENDIF
			ENDIF

ENDTRY

RETURN noe_myret

FUNCTION MYDF(P1) && DUMMY FUNCTION
RETURN ""