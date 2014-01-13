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
	IDFVarName = ""

	cTextValue = "" && the text that will be replaced with the item from the listbox 
	nTextStart = 0 && the start of adding the selected item 

	PROCEDURE GOTFOCUS
	
		IF LEFT(ALLTRIM(THIS.VALUE),1) == '"' .AND. RIGHT(ALLTRIM(THIS.VALUE),1) == '"'
			THIS.SELSTART = 1
		ENDIF

		runtrfref.list1.fontsize = this.FontSize 
		runtrfref.list1.width = this.Width 
		runtrfref.list1.visible = .f.
		runtrfref.list1.refresh
	
		runtrflastactivetextbox = this
		

		RETURN

	PROCEDURE InteractiveChange
				
				LOCAL nMax,x,cLetter,nCount,nCount2
 
 			 IF EMPTY(ALLTRIM(this.Value))
 			 		runtrfref.list1.visible = .f.
 			 		RETURN 
 			 ENDIF 
 
				runtrfref.list1.top = this.Top + this.height + 65  + this.Parent.top 
				
				runtrfref.list1.left = this.Left  
				
				
				this.cTextValue = this.Value 
				this.nTextStart = 0
				
				nMax = LEN(this.cTextValue)
				IF nMax > 0

					FOR x = nMax TO 1 STEP -1
					
						cLetter = SUBSTR(this.cTextValue,x,1) 
						
						IF cLetter = "+" .or. cLetter = "-" .or. cLetter = "*" .or. cLetter = "/" .or. cLetter = "%" .or. ;
						   cLetter = "=" .or. cLetter = "<" .or. cLetter = ">" .or. cLetter = "[" .or. cLetter = "("
						   
						   this.nTextStart = x			
						   
						   IF .not. x = nMax
						   
							   this.cTextValue = SUBSTR(this.Value,x+1)
							   
						 	ELSE 
						 	
						 		this.cTextValue = ""
						 		
						 	ENDIF
						 		   
						   EXIT
						   
						ENDIF						   
					
					NEXT 
				
				ENDIF 
				
				runtrfref.list1.clear
				
				ALINES(aInteractiveList,obj_intellisense.cList)
				
				nCount = this.countmark(this.cTextValue,".")
				nCount2 = this.countmark(this.cTextValue,":")
				
				IF obj_intellisense.nRealStart <= ALEN(aInteractiveList)
					FOR x = obj_intellisense.nRealStart TO ALEN(aInteractiveList)
						IF UPPER(ALLTRIM(left(aInteractiveList(x),LEN(ALLTRIM(this.cTextValue))))) == UPPER(ALLTRIM(this.cTextValue)) .and. ;
	 						this.countmark(aInteractiveList(x),".") = nCount .and. this.countmark(aInteractiveList(x),":") = nCount2
	 						
							runtrfref.list1.AddItem(aInteractiveList(x))
							
						ENDIF 
					next
				ENDIF
				
				
				IF runtrfref.list1.listcount > 0
					runtrfref.list1.visible = .t.
					runtrfref.list1.listindex = 1
					IF runtrfref.list1.listcount = 1 .and. UPPER(ALLTRIM(this.cTextValue)) == UPPER(ALLTRIM(runtrfref.list1.listitem(1)))
						runtrfref.list1.visible = .f.
					ENDIF 
					
				ELSE
					runtrfref.list1.visible = .f.
				ENDIF 

					
 
		RETURN 


	PROCEDURE CountMark(cText,cMark) && Count "." and ":" in strings
	
			LOCAL nCount,nMax
			
			nMax = LEN(cText)
			
			FOR x = 1 TO nMax
			
				IF AT(cMark,cText,x) = 0 
					EXIT 
				ENDIF 
			
			NEXT 
			
		  nCount = x - 1
			
	RETURN nCount

	PROCEDURE valid
	
		IF runtrfref.list1.visible = .t.
		
			IF LASTKEY() = 24  
					runtrfref.list1.listindex = runtrfref.list1.listindex + 1
					CLEAR TYPEAHEAD 
					RETURN .f.
			ENDIF 
			
			IF LASTKEY() = 5   
					runtrfref.list1.listindex = runtrfref.list1.listindex - 1	
					CLEAR TYPEAHEAD 
					RETURN .f.
			ENDIF 
			
			
			
		ENDIF 
		

	
		RETURN .T. 
		

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

	 IF runtrfref.list1.visible = .t. .and. (nKeycode = 13 .or. nkeycode = 32 ) .and. runtrfref.list1.listindex != 0			
					this.Value = LEFT(this.Value,this.nTextStart) + ALLTRIM(runtrfref.list1.listitem(runtrfref.list1.listindex))
					this.SelStart = LEN(ALLTRIM(this.Value))
					runtrfref.list1.visible = .f.
					IF nKeycode = 32 && space
						KEYBOARD CHR(127) && backspace
					ENDIF 
		ENDIF 
			


		RETURN


	PROCEDURE LOSTFOCUS
	
  		APPLICATION.ACTIVEFORM.REFRESH
			
		RETURN
		
	PROCEDURE RIGHTCLICK
	
		LOCAL cCustomList
		
		cCustomList =  obj_avoiderrors.customlist(fixfolderpath(run_trf),this.IDFVarName) 
		*stmsg("Component : " + run_trf + " Control : " + this.IDFVarName)
		
	
	
		DEFINE POPUP mencontex shortcut RELATIVE FROM MROW(),MCOL()
		DEFINE BAR 1 OF mencontex PROMPT  sysmsg(1508)
		DEFINE BAR 2 OF mencontex PROMPT  sysmsg(1509)
		DEFINE BAR 3 OF mencontex PROMPT  sysmsg(1576)
		DEFINE BAR 4 OF mencontex PROMPT  "Select Object"
		DEFINE BAR 5 OF mencontex PROMPT  " = True "
		DEFINE BAR 6 OF mencontex PROMPT  " = False "
		
		IF  EMPTY(ALLTRIM(cCustomList))
	 
 
    	cCustomList = "Variable Name" + CHR(13) + CHR(10)
    	cCustomList = cCustomList + "Array Name" + CHR(13) + CHR(10) 
    	cCustomList = cCustomList + "Object Name" + CHR(13) + CHR(10) 
    	cCustomList = cCustomList + "Procedure Name" + CHR(13) + CHR(10)
    	cCustomList = cCustomList + "Class Name" + CHR(13) + CHR(10) 
    	cCustomList = cCustomList + "Class Data Name" + CHR(13) + CHR(10)
    	cCustomList = cCustomList + "Method Name" + CHR(13) + CHR(10) 
 			
		ENDIF
		
			FOR T = 1 TO MEMLINES(cCustomList)
			
			cLine = MLINE(cCustomList,t)
			
			IF .not. EMPTY(ALLTRIM(cLine))
	
				BarNum = 6 + t
				
				s = "DEFINE BAR " + ALLTRIM(STR(BarNum)) + " OF mencontex PROMPT  cLine "
				&s
				
				s = "ON SELECTION BAR " + ALLTRIM(STR(BarNum)) + " OF mencontex _selec=" + ALLTRIM(STR(BarNum))
				&s
			
			ENDIF
			
			NEXT
 
     
   
		

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
			
		CASE _selec >= 7
		
		 
		  PUBLIC cCustomListType
		  cCustomListType = MLINE(cCustomList,_selec - 6)
		
			PUBLIC objfromlist
			objfromlist = ""
			DO FORM customlist.scx
			IF .NOT. EMPTY(objfromlist)
				THIS.VALUE = objfromlist
			ENDIF

			
		ENDCASE
		RETURN
ENDDEFINE
