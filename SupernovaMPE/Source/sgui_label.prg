#include "nova.ch"
#include "hbqt.ch"

*---------------
* Label
*---------------

Function SimpleGUI_NewLabel()

	local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]

	if .not. nActiveWindow = SN_NoActiveObject

		// Create new object	
		SimpleGUI_NewObject()

		// Set active label
		SGUI_ActiveObjs[SN_Label][SN_Object] := SGUI_ObjsCount

		// Create the new label
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Label"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QLabel():new(SGUI_Objs[nActiveWindow][SN_Object])
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

		SimpleGUI_InstallEvents()

	endif

Return Nil

Function SimpleGUI_SetLabelForeColor(cColor)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject

		SGUI_Objs[nActiveLabel][SN_ForeColor] := cColor
		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil

Function SimpleGUI_SetLabelBackColor(cColor)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]

	IF .not.  nActiveLabel = SN_NoActiveObject

		SGUI_Objs[nActiveLabel][SN_BackColor] := cColor

		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil


Function SimpleGUI_SetLabelFontName(cFontName)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]

	IF .not.  nActiveLabel = SN_NoActiveObject

		SGUI_Objs[nActiveLabel][SN_FontName] := cFontName

		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil

Function SimpleGUI_SetLabelFontBold(lFontBold)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]

	IF .not.  nActiveLabel = SN_NoActiveObject

		if lFontBold		
			SGUI_Objs[nActiveLabel][SN_FontBold] := "bold"
		else
			SGUI_Objs[nActiveLabel][SN_FontBold] := ""
		endif

		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil

Function SimpleGUI_SetLabelFontItalic(lFontItalic)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]

	IF .not.  nActiveLabel = SN_NoActiveObject

		if lFontItalic		
			SGUI_Objs[nActiveLabel][SN_FontItalic] := "italic"
		else
			SGUI_Objs[nActiveLabel][SN_FontItalic] := ""
		endif

		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil


Function SimpleGUI_SetLabelFontSize(cFontSize)

	local nActiveLabel

	if simplegui_isactiveLabel() = .f.
		simplegui_newLabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]

	IF .not.  nActiveLabel = SN_NoActiveObject

		SGUI_Objs[nActiveLabel][SN_FontSize] := cFontSize

		SimpleGUI_SetStyle(nActiveLabel)

	ENDIF

Return Nil




Function SimpleGUI_SetLabelName(cLabelName)

	local nActiveLabel,X,MYMAX

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject

		MYMAX = LEN ( SGUI_Objs[nActiveLabel][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveLabel][SN_Name][X])) == upper(alltrim(cLabelName))
				RETURN
			ENDIF
		NEXT

		AADD(SGUI_Objs[nActiveLabel][SN_Name],cLabelNAme)

	ENDIF

Return Nil

Function SimpleGUI_SetLabelText(cLabelText)

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		SGUI_Objs[nActiveLabel][SN_Object]:settext( cLabelText )
		SGUI_Objs[nActiveLabel][SN_Title] := cLabelText
	ENDIF

Return Nil

Function SimpleGUI_GetLabelText()

	local nActiveLabel,myret

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	myret = ""
	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		myret = SGUI_Objs[nActiveLabel][SN_Title]
	ENDIF

Return myret


Function SimpleGUI_SetLabelTop(p1)

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		SGUI_Objs[nActiveLabel][SN_Object]:move( SGUI_Objs[nActiveLabel][SN_Left] , p1 )
		SGUI_Objs[nActiveLabel][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetLabelLeft(p1)

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		SGUI_Objs[nActiveLabel][SN_Object]:move( p1 , SGUI_Objs[nActiveLabel][SN_Top] )
		SGUI_Objs[nActiveLabel][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetLabelwidth(p1)

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		SGUI_Objs[nActiveLabel][SN_Object]:resize( p1 , SGUI_Objs[nActiveLabel][SN_Height] )
		SGUI_Objs[nActiveLabel][SN_Width] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetLabelheight(p1)

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
	   SGUI_Objs[nActiveLabel][SN_Object]:resize( SGUI_Objs[nActiveLabel][SN_Width] , p1)
	   SGUI_Objs[nActiveLabel][SN_Height] := p1
	ENDIF

Return Nil


Function SimpleGUI_GetLabelTop()

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveLabel][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetLabelLeft()

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveLabel][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetLabelwidth()

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveLabel][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetLabelheight()

	local nActiveLabel

	if simplegui_isactivelabel() = .f.
		simplegui_newlabel()
	endif

	nActiveLabel := SGUI_ActiveObjs[SN_Label][SN_ObjectPointer]
	IF .not.  nActiveLabel = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveLabel][SN_Height] 
	ENDIF

Return Nil

