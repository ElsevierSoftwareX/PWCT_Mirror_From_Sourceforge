#include "nova.ch"
#include "hbqt.ch"


*---------------
* Textbox
*---------------

Function SimpleGUI_NewTextbox()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][2]

	if .not. nActiveWindow = SN_NoActiveObject

		// Create new object	
		SimpleGUI_NewObject()

		// Set active textbox
		SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer] := SGUI_ObjsCount

		// Create the new textbox
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Textbox"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QLineEdit():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:settext( "" )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 200, 30 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
		SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
		AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
		SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		
		SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10		
		SGUI_Objs[SGUI_ObjsCount][SN_Width] := 200		
		SGUI_Objs[SGUI_ObjsCount][SN_Height] := 30		
		SGUI_Objs[SGUI_ObjsCount][SN_Title] := ""	

		// textbox events
		SimpleGUI_InstallEvents()

	endif

Return Nil


Function SimpleGUI_SetTextboxForeColor(cColor)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject

		SGUI_Objs[nActiveTextbox][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil

Function SimpleGUI_SetTextboxBackColor(cColor)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]

	IF .not.  nActiveTextbox = SN_NoActiveObject

		SGUI_Objs[nActiveTextbox][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil



Function SimpleGUI_SetTextboxFontName(cFontName)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]

	IF .not.  nActiveTextbox = SN_NoActiveObject

		SGUI_Objs[nActiveTextbox][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil

Function SimpleGUI_SetTextboxFontBold(lFontBold)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]

	IF .not.  nActiveTextbox = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveTextbox][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveTextbox][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil

Function SimpleGUI_SetTextboxFontItalic(lFontItalic)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]

	IF .not.  nActiveTextbox = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveTextbox][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveTextbox][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil


Function SimpleGUI_SetTextboxFontSize(cFontSize)

	local nActiveTextbox

	if simplegui_isactiveTextbox() = .f.
		simplegui_newTextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]

	IF .not.  nActiveTextbox = SN_NoActiveObject

		SGUI_Objs[nActiveTextbox][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveTextbox)

	ENDIF

Return Nil




Function SimpleGUI_SetTextboxName(cTextboxName)

	local nActiveTextbox,X,MYMAX

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveTextbox][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveTextbox][SN_Name][X])) == upper(alltrim(cTextboxName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveTextbox][SN_Name],cTextboxName)
	ENDIF

Return Nil

Function SimpleGUI_SetTextboxText(cTextboxText)

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		SGUI_Objs[nActiveTextbox][SN_Object]:settext( cTextboxText )
	   	SGUI_Objs[nActiveTextbox][SN_Title] := cTextboxText
	ENDIF

Return Nil

Function SimpleGUI_getTextboxText()

	local nActiveTextbox,myret

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	myret = ""
	
	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		myret = SGUI_Objs[nActiveTextbox][SN_Object]:text()
	ENDIF

Return myret


Function SimpleGUI_SetTextboxTop(p1)

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		SGUI_Objs[nActiveTextbox][SN_Object]:move( SGUI_Objs[nActiveTextbox][SN_Left] , p1 )
   		SGUI_Objs[nActiveTextbox][SN_Top] := p1
	ENDIF	

Return Nil


Function SimpleGUI_SetTextboxLeft(p1)

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		SGUI_Objs[nActiveTextbox][SN_Object]:move( p1 , SGUI_Objs[nActiveTextbox][SN_Top] )
		SGUI_Objs[nActiveTextbox][SN_Left] := p1
	ENDIF


Return Nil

Function SimpleGUI_SetTextboxwidth(p1)

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		SGUI_Objs[nActiveTextbox][SN_Object]:resize( p1 , SGUI_Objs[nActiveTextbox][SN_Height] )
		SGUI_Objs[nActiveTextbox][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetTextboxheight(p1)

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		SGUI_Objs[nActiveTextbox][SN_Object]:resize( SGUI_Objs[nActiveTextbox][SN_Width] , p1)
		SGUI_Objs[nActiveTextbox][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_GetTextboxTop()

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveTextbox][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetTextboxLeft()

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
	   RETURN SGUI_Objs[nActiveTextbox][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetTextboxwidth()

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveTextbox][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetTextboxheight()

	local nActiveTextbox

	if simplegui_isactivetextbox() = .f.
		simplegui_newtextbox()
	endif

	nActiveTextbox := SGUI_ActiveObjs[SN_Textbox][SN_ObjectPointer]
	IF .not.  nActiveTextbox = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveTextbox][SN_Height] 
	ENDIF

Return Nil


