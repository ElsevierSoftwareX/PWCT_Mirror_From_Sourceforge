*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\MYMAP.PRG
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
*:   mymap
*:   startmap
*:   endmap
*:   domap
*!******************************************************************************
*!
*! Procedure STARTMAP
*!
*!******************************************************************************
FUNCTION startmap()
	PUBLIC mymap
	DIMENSION mymap(1,2)
	mymap(1,1) = ""
	mymap(1,2) = ""
	RETURN

*!******************************************************************************
*!
*! Procedure ENDMAP
*!
*!******************************************************************************
FUNCTION endmap()
	RELEASE mymap
	RETURN

*!******************************************************************************
*!
*! Procedure DOMAP
*!
*!******************************************************************************
FUNCTION domap(p1)
	mymax = ALEN(mymap,1)
	FOR x = 1 TO mymax
		IF UPPER(ALLTRIM(mymap(x,1))) == UPPER(ALLTRIM(p1))
			RETURN ALLTRIM(mymap(x,2))
		ENDIF
	NEXT
	DIMENSION mymap(ALEN(mymap,1)+1,2)
	mymap(ALEN(mymap,1),1) = ALLTRIM(p1)
	stepsnum = stepsnum + 1
	ckey = STR(stepsnum) + "_"
	mymap(ALEN(mymap,1),2) = ALLTRIM(ckey)
	RETURN ALLTRIM(ckey)




