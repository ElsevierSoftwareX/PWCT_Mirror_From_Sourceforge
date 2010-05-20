*------------------------------------------------------------*
* Simple GUI Library based on HarbourQt (HbQt)
* 2010, Mahmoud Fayed (msfclipper@yahoo.com)
*------------------------------------------------------------*

#include "nova.ch"

#include "hbqt.ch"

request hb_qt

INIT PROCEDURE Qt_Start()
	hb_traceState(0)
	SimpleGUI_Load()
RETURN

EXIT PROCEDURE Qt_End()
	SimpleGUI_UnLoad()
RETURN


FUNCTION xReleaseMemory( aObj )

	#if 1
	LOCAL i
	FOR i := 1 TO len( aObj )
	   IF hb_isObject( aObj[ i ] )
	      aObj[ i ]:pPtr := 1
	   ELSEIF hb_isArray( aObj[ i ] )
	      xReleaseMemory( aObj[ i ] )
	   ENDIF
	NEXT
	#else
	HB_SYMBOL_UNUSED( aObj )
	#endif

RETURN nil

Function SimpleGUI_Load()


	public SGUI_ObjsCount
	Public SGUI_ActiveObjs
	public SGUI_Objs

	public SGUI_qApp
	public SGUI_events
	public SGUI_slots



	SGUI_qApp := QApplication():new()
	SGUI_slots := QT_Slots_New()
	SGUI_events := QT_Events_New()

	hbqt_errorsys()

	SGUI_ObjsCount := 0
	SGUI_Objs := {}
	SGUI_ActiveObjs := {}
	AAdd(SGUI_ActiveObjs, {"Window", 0 } )
	AAdd(SGUI_ActiveObjs, {"Label", 0 } )
	AAdd(SGUI_ActiveObjs, {"Textbox", 0 } )
	AAdd(SGUI_ActiveObjs, {"Button", 0 } )
	AAdd(SGUI_ActiveObjs, {"Listbox", 0 } )
	AAdd(SGUI_ActiveObjs, {"Editbox", 0 } )
	AAdd(SGUI_ActiveObjs, {"Image", 0 } )
	
	AAdd(SGUI_ActiveObjs, {"Combobox", 0 } )
	SimpleGUI_Arabic()

Return Nil

Function SimpleGUI_Start()
	sgui_qApp:exec()
Return Nil

Function SimpleGUI_UnLoad()
	local x,mymax
	mymax = len ( SGUI_OBJS )
	if  mymax > 0
		for x = mymax to 1 step -1
			if alltrim(lower(SGUI_OBJS[X][1])) = "window"
				SGUI_Objs[x][SN_Object]:CLOSE()
			endif
                 //     xReleaseMemory( { SGUI_Objs[x][SN_Object]  } )
		next		
	endif
	sgui_qApp:quit()
	quit
Return Nil

Function SimpleGUI_CloseApplication()
	SimpleGUI_UnLoad()
Return Nil

Function SimpleGUI_IsActiveCheck(p1)
	local myret
	myret = .t.
	if SGUI_ActiveObjs[p1][SN_ObjectPointer] = 0
		myret = .f.
	endif 
return myret

Function SimpleGUI_isactivewindow()
return SimpleGUI_IsActiveCheck(SN_Window)

Function SimpleGUI_isactivelabel()
return SimpleGUI_IsActiveCheck(SN_Label)

Function SimpleGUI_isactivetextbox()
return SimpleGUI_IsActiveCheck(SN_Textbox)

Function SimpleGUI_isactivebutton()
return SimpleGUI_IsActiveCheck(SN_Button)

Function SimpleGUI_isactivelistbox()
return SimpleGUI_IsActiveCheck(SN_Listbox)

Function SimpleGUI_isactiveeditbox()
return SimpleGUI_IsActiveCheck(SN_Editbox)

Function SimpleGUI_isactiveImage()
return SimpleGUI_IsActiveCheck(SN_Image)

Function SimpleGUI_isactivecombobox()
return SimpleGUI_IsActiveCheck(SN_Combobox)


Function SimpleGUI_NewObject()


	SGUI_ObjsCount := SGUI_ObjsCount + 1


// 1- object type 2- Object Variable 3- Object Name
// 4- Object Top 5- Object Left 6- Object Width 7- Object Height 8 - Object Title
// 9- fore color 10- back color 
// 11- font name 12- font bold 13- font italic 14- font size

	AAdd(SGUI_Objs,{"","","","","","","","","","","Arial","normal","normal","14"})


Return Nil

Function SimpleGUI_SetStyle(nObjectPointer)

	local cStyle,cText
	cStyle = ""

	if .not. empty(SGUI_Objs[nObjectPointer][SN_ForeColor])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = " color: rgb(" + SGUI_Objs[nObjectPointer][SN_ForeColor] + ")"
		cText = strtran(cText,"{","")
		cText = strtran(cText,"}","")
		cStyle = cStyle + cText
	endif

	if .not. empty(SGUI_Objs[nObjectPointer][SN_BackColor])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = " background-color: rgb(" + SGUI_Objs[nObjectPointer][SN_BackColor] + ")"
		cText = strtran(cText,"{","")
		cText = strtran(cText,"}","")
		cStyle = cStyle + cText
	endif

	if .not. empty(SGUI_Objs[nObjectPointer][SN_FontBold])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = ' font-weight: ' + SGUI_Objs[nObjectPointer][SN_FontBold] 
		cStyle = cStyle + cText
	endif

	if .not. empty(SGUI_Objs[nObjectPointer][SN_FontItalic])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = ' font-style: ' + SGUI_Objs[nObjectPointer][SN_FontItalic] 
		cStyle = cStyle + cText
	endif

	if .not. empty(SGUI_Objs[nObjectPointer][SN_FontName])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = ' font-family: "' + alltrim(SGUI_Objs[nObjectPointer][SN_FontName]) + '"'
		cStyle = cStyle + cText
	endif

	if .not. empty(SGUI_Objs[nObjectPointer][SN_FontSize])
		if .not. empty(cStyle)
			cStyle = cStyle + " ; "
		endif
		cText = ' font-size: ' + SGUI_Objs[nObjectPointer][SN_FontSize] + "px"
		cStyle = cStyle + cText
	endif
	
	SGUI_Objs[nObjectPointer][SN_Object]:setStyleSheet( cStyle )

Return Nil

*----------------
* File Dialog
*----------------

FUNCTION SimpleGUI_OpenFile()

	local myret,x,myobj,nRes,oFiles,myfiles

	myret = ""
	MYobj := QFileDialog():new()
	myobj:setWindowTitle( "Open File" )
	myobj:setAcceptMode( QFileDialog_AcceptOpen )
	nRes := myobj:exec()

	if .not. nRes = 0
	
	   	myfiles := {}

		oFiles := QStringList():configure( myobj:selectedFiles() )
		FOR x := 1 TO oFiles:size()
			aadd( myfiles, oFiles:at( x-1 ) )
		NEXT

		myret = myfiles[1]
	endif

	myobj := NIL
	HB_GCALL( .T.)


RETURN myret

FUNCTION SimpleGUI_SaveFile()

	local myret,x,myobj,nRes,oFiles,myfiles

	myret = ""
	myobj := QFileDialog():new()
	myobj:setWindowTitle( "Save As" )
	myobj:setAcceptMode( QFileDialog_AcceptSave )
	nRes := MYObj:exec()

	if .not. nRes = 0
	
	   	myfiles := {}

		oFiles := QStringList():configure( myobj:selectedFiles() )
		FOR x := 1 TO oFiles:size()
			aadd( myfiles, oFiles:at( x-1 ) )
		NEXT

		myret = myfiles[1]
	endif


	myobj := NIL
	HB_GCALL( .T.)

RETURN myret

*-----------
* Events
*-----------

Function SimpleGUI_DoEvents()

	local nActiveWindow

	nActiveWindow := SGUI_ActiveObjs[SN_Window][2]
	IF .not.  nActiveWindow = SN_NoActiveObject
		sgui_qApp:processEvents()
	ENDIF

Return nil

Function SimpleGUI_InstallEvents()

local nActiveWindow,myclickevent,mydoubleclickevent,mygotfocusevent,mylostfocusevent,mykeypressevent

nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

SGUI_Objs[SGUI_ObjsCount][SN_Object]:setMouseTracking( .t. )

myclickevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'mouseclick') }"
mydoubleclickevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'mousedoubleclick') }"
mygotfocusevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'gotfocus') }"
mylostfocusevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'lostfocus') }"
mykeypressevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'keypress') }"
mychangeevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'change') }"
myENTERevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+" , " + alltrim(str(SGUI_ObjsCount)) + ",'enter') }"



SGUI_Objs[SGUI_ObjsCount][SN_Object]:installEventFilter( SGUI_Events )

if lower(alltrim(SGUI_Objs[SGUI_ObjsCount][SN_Class])) == "button"
	Qt_slots_Connect( sgui_slots, SGUI_Objs[SGUI_ObjsCount][SN_Object], "clicked()", &myclickevent )
else
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_MouseButtonPress, &myclickevent )
endif

if lower(alltrim(SGUI_Objs[SGUI_ObjsCount][SN_Class])) == "textbox"
	Qt_events_Connect( sgui_events, SGUI_Objs[SGUI_ObjsCount][SN_Object], QEvent_KeyPress , &mychangeevent )
	Qt_slots_Connect( sgui_slots, SGUI_Objs[SGUI_ObjsCount][SN_Object], "returnPressed()", &myenterevent )
endif

if lower(alltrim(SGUI_Objs[SGUI_ObjsCount][SN_Class])) == "editbox"
	Qt_events_Connect( sgui_events, SGUI_Objs[SGUI_ObjsCount][SN_Object], QEvent_KeyPress , &mychangeevent )
endif


if lower(alltrim(SGUI_Objs[SGUI_ObjsCount][SN_Class])) == "listbox"
	Qt_slots_Connect( sgui_slots, SGUI_Objs[SGUI_ObjsCount][SN_Object], "itemSelectionChanged()", &myenterevent )
	Qt_slots_Connect( sgui_slots, SGUI_Objs[SGUI_ObjsCount][SN_Object], "currentItemChanged(QLWItem,QLWItem)", &mychangeevent )

endif

if lower(alltrim(SGUI_Objs[SGUI_ObjsCount][SN_Class])) == "combobox"
	Qt_slots_Connect( sgui_slots, SGUI_Objs[SGUI_ObjsCount][SN_Object],"currentIndexChanged(int)", &mychangeevent )
endif


Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_KeyPress  , &mykeypressevent )
Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_MouseButtonDblClick, &mydoubleclickevent )
Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_FocusIn, &mygotfocusevent )
Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_FocusOut , &mylostfocusevent )

return nil

*-------------
* objects
*-------------


Proc RT_DoEvent( P1,P2,P3)

	Local mypos,objtype,oldwin,x,mymax

	if pcount() = 2

		// set active window
		oldwin = SGUI_ActiveObjs[SN_Window][2] 
		SGUI_ActiveObjs[SN_Window][SN_ObjectPointer] = p1

		mymax = len( SGUI_Objs[p1][SN_Name] )
		for x = 1 to mymax
			DO RT_CallInstructions WITH LOWER(ALLTRIM(SGUI_Objs[p1][SN_Name][x]))+" " + Lower(Alltrim(P2))
		next

		SGUI_ActiveObjs[SN_Window][SN_ObjectPointer] = oldwin

		return
	endif

	if pcount() = 3

		// set active window
		oldwin = SGUI_ActiveObjs[SN_Window][SN_ObjectPointer] 
	
		SGUI_ActiveObjs[SN_Window][SN_ObjectPointer] = p1

		if P2 >0 .AND. P2 <= len(SGUI_OBJS)
			objtype = SGUI_OBJS[P2][SN_Class] 
			mypos = SimpleGUI_GetClassPosition(objtype)
			if mypos = 0
				return 0
			endif
			// set active object
			SGUI_ActiveObjs[mypos][SN_ObjectPointer] = p2
		endif

			// do event procedure
			mymax = len( SGUI_Objs[p2][SN_Name] )
			for x = 1 to mymax
 			DO RT_CallInstructions WITH LOWER(ALLTRIM(SGUI_Objs[p2][SN_Name][x]))+" " + Lower(Alltrim(P3))
			next

		SGUI_ActiveObjs[SN_Window][2] = oldwin

	endif

Return Nil

// select GUI object using name
Function SimpleGUI_SelectObject( p1 )

	local x,vmax,mypos,t,mymax

	mypos = SimpleGUI_GetClassPosition(p1)

	if mypos = 0
		return 0
	endif

	vmax  = LEN(SGUI_Objs)
	myopdata[1] = STRTRAN(myopdata[1]," ","")
	myopdata[1] = STRTRAN(myopdata[1],chr(13) + chr(10),"")
	myopdata[1] = ALLTRIM ( myopdata[1] )

	FOR x = vmax TO 1 STEP -1
		IF lower(alltrim(SGUI_Objs[x][SN_Class])) == lower(alltrim(p1))
			MYMAX = LEN ( SGUI_Objs[x][SN_Name] )
			FOR T = MYMAX TO 1 Step -1
				IF lower(alltrim(SGUI_Objs[x][SN_Name][T])) ==  lower(alltrim(MyOpData[1]))
					SGUI_ActiveObjs[MYPOS][2] := x
					Exit
				ENDIF
			NEXT
		ENDIF
	Next
Return Nil 

Function SimpleGUI_GetClassPosition(p1)
	
	local mypos

	mypos = 0

	p1 = lower(alltrim(p1))
	if p1 = "window"
		mypos = SN_Window
	endif
	if p1 = "label"
		mypos = SN_Label
	endif
	if p1 = "textbox"
		mypos = SN_Textbox
	endif
	if p1 = "button"
		mypos = SN_Button
	endif
	if p1 = "listbox"
		mypos = SN_Listbox
	endif
	if p1 = "editbox"
		mypos = SN_Editbox
	endif
	if p1 = "image"
		mypos = SN_Image
	endif
	if p1 = "combobox"
		mypos = SN_Combobox
	endif

return mypos

*-------------
* Process
*-------------

Function SimpleGUI_Execute(cProgram)
	hb_threadStart( @SimpleGUI_RUN() , cProgram)
return nil

Function SimpleGUI_Run(cProgram)
	run (cProgram)
return nil


*---------------
* Arabic 
*---------------

Function SimpleGUI_Arabic()
	LOCAL lang := QTextCodec (): new ()
	lang: setCodecForCStrings (lang: codecForName_1 ( "UTF-8"))
return nil


