*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\GUI_TB.PRG
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
*:   gui_tb
*:******************************************************************************
*:
*: Class:tr_textbox  BaseClass: TEXTBOX
*:
*:******************************************************************************
DEFINE CLASS tr_textbox AS TEXTBOX
	lautoname = .F.
	tautoname = ""
	ldefault = .F.

	PROCEDURE GOTFOCUS
		IF LEFT(ALLTRIM(THIS.VALUE),1) == '"' .AND. RIGHT(ALLTRIM(THIS.VALUE),1) == '"'
			THIS.SELSTART = 1

		ENDIF

		RETURN

	PROCEDURE KEYPRESS
		LPARAMETERS nkeycode, nshiftaltctrl
		IF nkeycode = 15 && ctrl+o
			PUBLIC objfromlist
			objfromlist = ""
			DO FORM selobj.scx
			IF .NOT. EMPTY(objfromlist)
				THIS.VALUE = objfromlist
			ENDIF
		ENDIF

		RETURN


	PROCEDURE LOSTFOCUS
		APPLICATION.ACTIVEFORM.REFRESH
		RETURN
	PROCEDURE RIGHTCLICK
		DEFINE POPUP mencontex shortcut RELATIVE FROM MROW(),MCOL()
		DEFINE BAR 1 OF mencontex PROMPT  sysmsg(1508)
		DEFINE BAR 2 OF mencontex PROMPT  sysmsg(1509)
		DEFINE BAR 3 OF mencontex PROMPT  sysmsg(1576)
		DEFINE BAR 4 OF mencontex PROMPT  "Select Object"
		DEFINE BAR 5 OF mencontex PROMPT  " = True "
		DEFINE BAR 6 OF mencontex PROMPT  " = False "

		ON SELECTION BAR 1 OF mencontex _selec=1
		ON SELECTION BAR 2 OF mencontex _selec=2
		ON SELECTION BAR 3 OF mencontex _selec=3
		ON SELECTION BAR 4 OF mencontex _selec=4
		ON SELECTION BAR 5 OF mencontex _selec=5
		ON SELECTION BAR 6 OF mencontex _selec=6
		_selec=0
		ACTIVATE POPUP mencontex
		DO CASE
		CASE _selec = 1

			cstartcolor = "{"
			cendcolor = "}"
			IF .NOT. EMPTY(ALLTRIM(THIS.VALUE))
				IF LEN(ALLTRIM(THIS.VALUE)) > 2
					cstartcolor = LEFT(ALLTRIM(THIS.VALUE),1)
					cendcolor = RIGHT(ALLTRIM(THIS.VALUE),1)
				ENDIF
			ENDIF


			mycolor = GETCOLOR()
			myg = INT(BITAND(mycolor,RGB(0,255,0))/256)
			myr = INT(BITAND(mycolor,RGB(255,0,0)))
			myb = INT(BITAND(mycolor,RGB(0,0,255))/(256*256))
			
			* Hex
			IF LEN(ALLTRIM(this.value)) = 6
			
				myg = RIGHT(transform(myg,"@0X"),2)
				myr = RIGHT(transform(myr,"@0X"),2)
				myb = RIGHT(transform(myb,"@0X"),2)
				THIS.VALUE = myr+myg+myb
			
			ELSE
	
				THIS.VALUE = cstartcolor+ALLTRIM(STR(myr)) + ;
					"," + ALLTRIM(STR(myg)) + "," + ALLTRIM(STR(myb)) + cendcolor
				
			ENDIF
			
			
		
				
		CASE _selec = 2
			myfont = GETFONT("Times New Roman")
			IF .NOT. EMPTY(myfont)
				x = AT(",",myfont)
				THIS.VALUE = '"' + SUBSTR(myfont,1,x-1) + '"'
			ENDIF
		CASE _selec = 3
			myfile = GETFILE()
			IF .NOT. EMPTY(myfile)
				THIS.VALUE = '"' + myfile + '"'
			ENDIF
		CASE _selec = 4
			PUBLIC objfromlist
			objfromlist = ""
			DO FORM selobj.scx
			IF .NOT. EMPTY(objfromlist)
				THIS.VALUE = objfromlist
			ENDIF
		CASE _selec = 5
			THIS.VALUE = "True "
		CASE _selec = 6
			THIS.VALUE = "False "
		ENDCASE
		RETURN
ENDDEFINE
