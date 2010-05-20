#include "nova.ch"
#include "hbqt.ch"

*---------------
* Button
*---------------

Function SimpleGUI_NewButton()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][2]

	if .not. nActiveWindow = SN_NoActiveObject

		// Create new object	
		SimpleGUI_NewObject()

		// Set active button
		SGUI_ActiveObjs[SN_Button][SN_ObjectPointer] := SGUI_ObjsCount

		// Create the new button
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Button"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QPushButton():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:settext( "" )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:resize( 100, 30 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:move( 10, 10 )
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:show()
		SGUI_Objs[SGUI_ObjsCount][SN_Name] := {}
		AAdd(SGUI_Objs[SGUI_ObjsCount][SN_Name] , "Object" + Alltrim(Str(SGUI_ObjsCount)) )
		SGUI_Objs[SGUI_ObjsCount][SN_Top] := 10		
		SGUI_Objs[SGUI_ObjsCount][SN_Left] := 10	
		SGUI_Objs[SGUI_ObjsCount][SN_Width] := 100	
		SGUI_Objs[SGUI_ObjsCount][SN_Height] := 30	
		SGUI_Objs[SGUI_ObjsCount][SN_Title] := ""	

		// button events
		SimpleGUI_InstallEvents()

	endif

Return Nil


Function SimpleGUI_SetButtonForeColor(cColor)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject

		SGUI_Objs[nActiveButton][SN_ForeColor] := cColor

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil

Function SimpleGUI_SetButtonBackColor(cColor)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]

	IF .not.  nActiveButton = SN_NoActiveObject

		SGUI_Objs[nActiveButton][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil



Function SimpleGUI_SetButtonFontName(cFontName)

	local nActiveButton

	if simplegui_isactiveButton() = .f.
		simplegui_newButton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]

	IF .not.  nActiveButton = SN_NoActiveObject

		SGUI_Objs[nActiveButton][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil

Function SimpleGUI_SetButtonFontBold(lFontBold)

	local nActiveButton

	if simplegui_isactiveButton() = .f.
		simplegui_newButton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]

	IF .not.  nActiveButton = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveButton][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveButton][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil

Function SimpleGUI_SetButtonFontItalic(lFontItalic)

	local nActiveButton

	if simplegui_isactiveButton() = .f.
		simplegui_newButton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]

	IF .not.  nActiveButton = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveButton][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveButton][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil


Function SimpleGUI_SetButtonFontSize(cFontSize)

	local nActiveButton

	if simplegui_isactiveButton() = .f.
		simplegui_newButton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]

	IF .not.  nActiveButton = SN_NoActiveObject

		SGUI_Objs[nActiveButton][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveButton)

	ENDIF

Return Nil



function simplegui_setbuttonname(cButtonName)

	local nActiveButton,x,mymax

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveButton][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveButton][SN_Name][X])) == upper(alltrim(cButtonName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveButton][SN_Name],cButtonName)

	ENDIF

Return Nil

Function SimpleGUI_SetButtonText(cButtonText)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		SGUI_Objs[nActiveButton][SN_Object]:settext( cButtonText )
		SGUI_Objs[nActiveButton][SN_Title] := cButtonText
	ENDIF

Return Nil

Function SimpleGUI_GetButtonText(cButtonText)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveButton][SN_Title] 
	ENDIF

Return Nil


Function SimpleGUI_SetButtonTop(p1)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		SGUI_Objs[nActiveButton][SN_Object]:move( SGUI_Objs[nActiveButton][SN_Left] , p1 )
		SGUI_Objs[nActiveButton][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetButtonLeft(p1)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		SGUI_Objs[nActiveButton][SN_Object]:move( p1 , SGUI_Objs[nActiveButton][SN_Top] )
		SGUI_Objs[nActiveButton][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetButtonwidth(p1)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		SGUI_Objs[nActiveButton][SN_Object]:resize( p1 , SGUI_Objs[nActiveButton][SN_Height] )
		SGUI_Objs[nActiveButton][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetButtonheight(p1)

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		SGUI_Objs[nActiveButton][SN_Object]:resize( SGUI_Objs[nActiveButton][6] , p1)
		SGUI_Objs[nActiveButton][SN_Height] := p1
	ENDIF

Return Nil

Function SimpleGUI_GetButtonTop()

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveButton][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetButtonLeft()

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveButton][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetButtonwidth()

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveButton][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetButtonheight()

	local nActiveButton

	if simplegui_isactivebutton() = .f.
		simplegui_newbutton()
	endif

	nActiveButton := SGUI_ActiveObjs[SN_Button][SN_ObjectPointer]
	IF .not.  nActiveButton = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveButton][SN_Height] 
	ENDIF

Return Nil

