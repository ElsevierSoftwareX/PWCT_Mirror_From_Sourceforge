#include "nova.ch"
#include "hbqt.ch"

*---------------
* Listbox
*---------------

Function SimpleGUI_NewListbox()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif


	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	if .not. nActiveWindow = SN_NoActiveObject
		// Create new object	
		SimpleGUI_NewObject()

		// Set active listbox
		SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer] := SGUI_ObjsCount

		// Create the new button
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Listbox"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QListwidget():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:setMouseTracking( .t. )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 200, 200 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
		SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
		AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
		SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		&& Top
		SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10		&& Left
		SGUI_Objs[SGUI_ObjsCount][SN_Width] := 200		&& Width
		SGUI_Objs[SGUI_ObjsCount][SN_Height] := 200		&& Height
		SGUI_Objs[SGUI_ObjsCount][SN_Title] := "No Caption"	&& Title
		//SGUI_Objs[SGUI_ObjsCount][9] :=  QStringList():new()
		//SGUI_Objs[SGUI_ObjsCount][10] := QStringListModel():new()
		//SGUI_Objs[SGUI_ObjsCount][10]:setStringList( SGUI_Objs[SGUI_ObjsCount][9] )
		//SGUI_Objs[SGUI_ObjsCount][SN_Object]:setModel( SGUI_Objs[SGUI_ObjsCount][10] )

		SimpleGUI_InstallEvents()

	endif

Return Nil


Function SimpleGUI_SetListboxForeColor(cColor)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject

		SGUI_Objs[nActiveListbox][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil

Function SimpleGUI_SetListboxBackColor(cColor)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]

	IF .not.  nActiveListbox = SN_NoActiveObject

		SGUI_Objs[nActiveListbox][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil


Function SimpleGUI_SetListboxFontName(cFontName)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]

	IF .not.  nActiveListbox = SN_NoActiveObject

		SGUI_Objs[nActiveListbox][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil

Function SimpleGUI_SetListboxFontBold(lFontBold)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]

	IF .not.  nActiveListbox = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveListbox][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveListbox][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil

Function SimpleGUI_SetListboxFontItalic(lFontItalic)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]

	IF .not.  nActiveListbox = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveListbox][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveListbox][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil


Function SimpleGUI_SetListboxFontSize(cFontSize)

	local nActiveListbox

	if simplegui_isactiveListbox() = .f.
		simplegui_newListbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]

	IF .not.  nActiveListbox = SN_NoActiveObject

		SGUI_Objs[nActiveListbox][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveListbox)

	ENDIF

Return Nil



Function SimpleGUI_SetListboxName(cListboxName)

	local nActiveListbox,x,mymax

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveListbox][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveListbox][SN_Name][X])) == upper(alltrim(cListboxName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveListbox][SN_Name],cListboxName)

	ENDIF

Return Nil

Function SimpleGUI_SetListboxTop(p1)

	local nActiveListbox
	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:move( SGUI_Objs[nActiveListbox][SN_Left] , p1 )
		SGUI_Objs[nActiveListbox][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetListboxLeft(p1)

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:move( p1 , SGUI_Objs[nActiveListbox][SN_Top] )
		SGUI_Objs[nActiveListbox][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetListboxwidth(p1)

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:resize( p1 , SGUI_Objs[nActiveListbox][7] )
		SGUI_Objs[nActiveListbox][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetListboxheight(p1)

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:resize( SGUI_Objs[nActiveListbox][SN_Width] , p1)
		SGUI_Objs[nActiveListbox][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_GetListboxTop()

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveListbox][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetListboxLeft()

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveListbox][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetListboxwidth()

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveListbox][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetListboxheight()

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveListbox][SN_Height] 
	ENDIF

Return Nil

Function SimpleGUI_Listboxadditem(p1)

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:additem(p1)
		SGUI_Objs[nActiveListbox][SN_Object]:show()
	ENDIF

Return Nil

Function SimpleGUI_setListboxvalue(p1)

	local nActiveListbox

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		SGUI_Objs[nActiveListbox][SN_Object]:setcurrentrow(P1-1)	
	ENDIF

Return Nil

Function SimpleGUI_getListboxvalue()

	local nActiveListbox,myret

	if simplegui_isactivelistbox() = .f.
		simplegui_newlistbox()
	endif

	myret = 0
	nActiveListbox := SGUI_ActiveObjs[SN_Listbox][SN_ObjectPointer]
	IF .not.  nActiveListbox = SN_NoActiveObject
		myret = SGUI_Objs[nActiveListbox][SN_Object]:currentrow() + 1
	ENDIF

Return myret


