#include "nova.ch"
#include "hbqt.ch"


*---------------
* Editbox
*---------------

Function SimpleGUI_NewEditbox()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	if .not. nActiveWindow = SN_NoActiveObject

		// Create new object	
		SimpleGUI_NewObject()

		// Set active editbox
		SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer] := SGUI_ObjsCount

		// Create the new edit
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Editbox"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QTextEdit():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:setplaintext( "" )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 200, 200 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
		SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
		AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
		SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		
		SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10	
		SGUI_Objs[SGUI_ObjsCount][SN_Width] := 200	
		SGUI_Objs[SGUI_ObjsCount][SN_Height] := 200	
		SGUI_Objs[SGUI_ObjsCount][SN_Title] := ""	

		SimpleGUI_InstallEvents()
	
	endif

Return Nil



Function SimpleGUI_SetEditboxForeColor(cColor)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject

		SGUI_Objs[nActiveEditbox][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxBackColor(cColor)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]

	IF .not.  nActiveEditbox = SN_NoActiveObject

		SGUI_Objs[nActiveEditbox][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxFontName(cFontName)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]

	IF .not.  nActiveEditbox = SN_NoActiveObject

		SGUI_Objs[nActiveEditbox][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxFontBold(lFontBold)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]

	IF .not.  nActiveEditbox = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveEditbox][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveEditbox][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxFontItalic(lFontItalic)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]

	IF .not.  nActiveEditbox = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveEditbox][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveEditbox][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil


Function SimpleGUI_SetEditboxFontSize(cFontSize)

	local nActiveEditbox

	if simplegui_isactiveEditbox() = .f.
		simplegui_newEditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]

	IF .not.  nActiveEditbox = SN_NoActiveObject

		SGUI_Objs[nActiveEditbox][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveEditbox)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxName(cEditboxName)

	local nActiveEditbox,x,mymax

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveEditbox][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveEditbox][SN_Name][X])) == upper(alltrim(cEditboxName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveEditbox][SN_Name],cEditboxName)

	ENDIF

Return Nil

Function SimpleGUI_SetEditboxText(cEditboxText)

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		SGUI_Objs[nActiveEditbox][SN_Object]:setplaintext( cEditboxText )
		SGUI_Objs[nActiveEditbox][SN_Title] := cEditboxText
	ENDIF

Return Nil

Function SimpleGUI_getEditboxText()

	local nActiveEditbox,myret

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	myret = ""
	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		myret = SGUI_Objs[nActiveEditbox][SN_Object]:toplaintext()
	ENDIF

Return myret


Function SimpleGUI_SetEditboxTop(p1)

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		SGUI_Objs[nActiveEditbox][SN_Object]:move( SGUI_Objs[nActiveEditbox][SN_Left] , p1 )
		SGUI_Objs[nActiveEditbox][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetEditboxLeft(p1)

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		SGUI_Objs[nActiveEditbox][SN_Object]:move( p1 , SGUI_Objs[nActiveEditbox][SN_Top] )
		SGUI_Objs[nActiveEditbox][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetEditboxwidth(p1)

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		SGUI_Objs[nActiveEditbox][SN_Object]:resize( p1 , SGUI_Objs[nActiveEditbox][SN_Height] )
		SGUI_Objs[nActiveEditbox][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetEditboxheight(p1)

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		SGUI_Objs[nActiveEditbox][SN_Object]:resize( SGUI_Objs[nActiveEditbox][SN_Width] , p1)
		SGUI_Objs[nActiveEditbox][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_GetEditboxTop()

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveEditbox][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetEditboxLeft()

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveEditbox][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetEditboxwidth()

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveEditbox][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetEditboxheight()

	local nActiveEditbox

	if simplegui_isactiveeditbox() = .f.
		simplegui_neweditbox()
	endif

	nActiveEditbox := SGUI_ActiveObjs[SN_Editbox][SN_ObjectPointer]
	IF .not.  nActiveEditbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveEditbox][SN_Height] 
	ENDIF

Return Nil

