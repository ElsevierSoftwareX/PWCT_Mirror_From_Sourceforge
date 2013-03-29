*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\TESTFILE.PRG
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
*:   testfile
PARAMETERS myfile,myp2
LOCAL myalias
IF EMPTY(ALLTRIM(myfile))
	RETURN
ENDIF
IF UPPER(RIGHT(myfile,4))== ".FPT"
	MESSAGEBOX(sysmsg(1392),0,sysmsg(1393))
	RETURN .F.
ENDIF
IF myp2 = 1111
	RETURN .T.
ENDIF
myalias = ALIAS()
myrec = RECNO()
IF ! FILE(myfile)
	MESSAGEBOX(sysmsg(1386),0,sysmsg(1385))
	RETURN .F.
ENDIF
myrei = .T.
TRY
	SELECT 0
	USE (myfile)
	IF .NOT. AFIELDS(mytest) = myp2
		IF AFIELDS(mytest) = 16 .AND. myp2 = 22
		ELSE
			MESSAGEBOX(sysmsg(1387),0,sysmsg(1385))
			USE
			myrei = .F.
		ENDIF
	ENDIF
	USE
CATCH
	MESSAGEBOX(sysmsg(1387),0,sysmsg(1385))
	myrei = .F.
ENDTRY
IF .NOT. EMPTY(ALLTRIM(myalias))
	SELECT (myalias)
	IF .NOT. myrec = 0 .AND. .NOT. RECCOUNT() = 0 .AND. .NOT. myrec > RECCOUNT()
		GOTO myrec
	ENDIF
ENDIF
RETURN myrei
