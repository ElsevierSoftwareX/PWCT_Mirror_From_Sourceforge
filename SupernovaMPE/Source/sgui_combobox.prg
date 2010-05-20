#include "nova.ch"
#include "hbqt.ch"

*---------------
* Combobox
*---------------

Function SimpleGUI_NewCombobox()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	if .not. nActiveWindow = SN_NoActiveObject
		// Create new object	
		SimpleGUI_NewObject()

		// Set active Combobox
		SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer] := SGUI_ObjsCount

		// Create the new button
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Combobox"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QComboBox():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:setMouseTracking( .t. )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 200, 200 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
		SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
		AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
		SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		&& Top
		SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10		&& Left
		SGUI_Objs[SGUI_ObjsCount][SN_Width] := 100		&& Width
		SGUI_Objs[SGUI_ObjsCount][SN_Height] := 30		&& Height
		SGUI_Objs[SGUI_ObjsCount][SN_Title] := "No Caption"	&& Title
		
		SimpleGUI_InstallEvents()

	endif

Return Nil


Function SimpleGUI_SetComboboxForeColor(cColor)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject

		SGUI_Objs[nActiveCombobox][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil

Function SimpleGUI_SetComboboxBackColor(cColor)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]

	IF .not.  nActiveCombobox = SN_NoActiveObject

		SGUI_Objs[nActiveCombobox][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil


Function SimpleGUI_SetComboboxFontName(cFontName)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]

	IF .not.  nActiveCombobox = SN_NoActiveObject

		SGUI_Objs[nActiveCombobox][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil

Function SimpleGUI_SetComboboxFontBold(lFontBold)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]

	IF .not.  nActiveCombobox = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveCombobox][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveCombobox][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil

Function SimpleGUI_SetComboboxFontItalic(lFontItalic)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]

	IF .not.  nActiveCombobox = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveCombobox][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveCombobox][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil


Function SimpleGUI_SetComboboxFontSize(cFontSize)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]

	IF .not.  nActiveCombobox = SN_NoActiveObject

		SGUI_Objs[nActiveCombobox][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveCombobox)

	ENDIF

Return Nil



Function SimpleGUI_SetComboboxName(cComboboxName)

	local nActiveCombobox,x,mymax

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveCombobox][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveCombobox][SN_Name][X])) == upper(alltrim(cComboboxName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveCombobox][SN_Name],cComboboxName)

	ENDIF

Return Nil

Function SimpleGUI_SetComboboxTop(p1)

	local nActiveCombobox
	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:move( SGUI_Objs[nActiveCombobox][SN_Left] , p1 )
		SGUI_Objs[nActiveCombobox][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetComboboxLeft(p1)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:move( p1 , SGUI_Objs[nActiveCombobox][SN_Top] )
		SGUI_Objs[nActiveCombobox][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetComboboxwidth(p1)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:resize( p1 , SGUI_Objs[nActiveCombobox][7] )
		SGUI_Objs[nActiveCombobox][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetComboboxheight(p1)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:resize( SGUI_Objs[nActiveCombobox][SN_Width] , p1)
		SGUI_Objs[nActiveCombobox][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_GetComboboxTop()

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveCombobox][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetComboboxLeft()

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveCombobox][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetComboboxwidth()

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveCombobox][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetComboboxheight()

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveCombobox][SN_Height] 
	ENDIF

Return Nil

Function SimpleGUI_Comboboxadditem(p1)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:additem(p1)
		SGUI_Objs[nActiveCombobox][SN_Object]:show()
	ENDIF

Return Nil

Function SimpleGUI_setComboboxvalue(p1)

	local nActiveCombobox

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		SGUI_Objs[nActiveCombobox][SN_Object]:setcurrentindex(P1-1)	
	ENDIF

Return Nil

Function SimpleGUI_getComboboxvalue()

	local nActiveCombobox,myret

	if simplegui_isactiveCombobox() = .f.
		simplegui_newCombobox()
	endif

	myret = 0
	nActiveCombobox := SGUI_ActiveObjs[SN_Combobox][SN_ObjectPointer]
	IF .not.  nActiveCombobox = SN_NoActiveObject
		myret = SGUI_Objs[nActiveCombobox][SN_Object]:currentindex() + 1
	ENDIF

Return myret

