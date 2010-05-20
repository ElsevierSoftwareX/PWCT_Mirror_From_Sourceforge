#include "nova.ch"
#include "hbqt.ch"

*---------------*
* Window
*---------------*


Function SimpleGUI_NewWindow()

	// Create new object	
	SimpleGUI_NewObject()

	// Set active window
	SGUI_ActiveObjs[SN_Window][SN_ObjectPointer] := SGUI_ObjsCount

	// Create the new window
	SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Window"
	SGUI_Objs[SGUI_ObjsCount][SN_Object] := Qwidget():new()
	SGUI_Objs[SGUI_ObjsCount][SN_Object]:setWindowTitle( "" )
	SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 500, 400 )
	SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
	SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
	SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
	AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
	SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		
	SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10		
	SGUI_Objs[SGUI_ObjsCount][SN_Width] := 500		
	SGUI_Objs[SGUI_ObjsCount][SN_Height] := 400		
	SGUI_Objs[SGUI_ObjsCount][SN_Title] := ""	

	// window events

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	SGUI_Objs[SGUI_ObjsCount][SN_Object]:setMouseTracking( .t. )

	myclickevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+",'mouseclick') }"
	mydoubleclickevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+",'mousedoubleclick') }"
	mygotfocusevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+",'gotfocus') }"
	mylostfocusevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+ ",'lostfocus') }"
	mykeypressevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+",'keypress') }"
	mymoveevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+ ",'move') }"
	myresizeevent = "{|| RT_DoEvent("+alltrim(str(nActiveWindow))+ ",'resize') }"

	SGUI_Objs[SGUI_ObjsCount][SN_Object]:installEventFilter( SGUI_Events )

	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_MouseButtonPress, &myclickevent )
Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_MouseButtonDblClick, &mydoubleclickevent )
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_WindowActivate, &mygotfocusevent )
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_WindowDeactivate , &mylostfocusevent )
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_KeyPress  , &mykeypressevent )
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_Move   , &mymoveevent )
	Qt_Events_Connect( SGUI_Events, SGUI_Objs[SGUI_ObjsCount][SN_Object] , QEvent_Resize , &myresizeevent )

Return Nil

Function SimpleGUI_SetWindowForeColor(cColor)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveWindow)
	ENDIF

Return Nil

Function SimpleGUI_SetWindowBackColor(cColor)

	local nActiveWindow

	if simplegui_isactiveWindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	IF .not.  nActiveWindow = SN_NoActiveObject

		SGUI_Objs[nActiveWindow][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveWindow)

	ENDIF

Return Nil


Function SimpleGUI_SetWindowTitle(cWindowTitle)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_Object]
	IF .not.  nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_Object]:setWindowTitle( cWindowTitle )
		SGUI_Objs[nActiveWindow][SN_Title] := cWindowTitle
	ENDIF

Return Nil


Function SimpleGUI_SetWindowName(cWindowName)

	local nActiveWindow,X,MYMAX

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveWindow][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveWindow][SN_Name][X])) == upper(alltrim(cWindowName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveWindow][SN_Name],cWindowName)

	ENDIF

Return Nil

Function SimpleGUI_SetWindowTop(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		   SGUI_Objs[nActiveWindow][SN_Object]:move( SGUI_Objs[nActiveWindow][SN_Left] , p1 )
		   SGUI_Objs[nActiveWindow][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetWindowLeft(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_Object]:move( p1 , SGUI_Objs[nActiveWindow][SN_Top] )
		SGUI_Objs[nActiveWindow][SN_Left] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetWindowwidth(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_Object]:resize( p1 , SGUI_Objs[nActiveWindow][SN_Height] )
		SGUI_Objs[nActiveWindow][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetWindowheight(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_Object]:resize( SGUI_Objs[nActiveWindow][SN_Width] , p1)
		SGUI_Objs[nActiveWindow][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_getWindowTop()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		return SGUI_Objs[nActiveWindow][SN_Top]
	ENDIF

Return Nil


Function SimpleGUI_getWindowLeft(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		return SGUI_Objs[nActiveWindow][SN_Left] 	
	ENDIF

Return Nil


Function SimpleGUI_getWindowwidth(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		return SGUI_Objs[nActiveWindow][SN_Width]
	ENDIF

Return Nil


Function SimpleGUI_getWindowheight(p1)

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	IF .not.  nActiveWindow = SN_NoActiveObject
		return SGUI_Objs[nActiveWindow][SN_Height]
	ENDIF

Return Nil

Function SimpleGUI_CloseWindow()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		RTE_ADDERROR(11)
		RTE_TCHECK()
		RTE_CHECK()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	if .not. nActiveWindow = SN_NoActiveObject
		SGUI_Objs[nActiveWindow][SN_Object]:CLOSE()
	endif

Return Nil

