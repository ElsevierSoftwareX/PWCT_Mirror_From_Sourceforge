#include "nova.ch"
#include "hbqt.ch"

*---------------
* Image
*---------------

Function SimpleGUI_NewImage()

	Local nActiveWindow

	if simplegui_isactivewindow() = .f.
		simplegui_newwindow()
	endif

	nActiveWindow := SGUI_ActiveObjs[SN_Window][SN_ObjectPointer]
	if .not. nActiveWindow = SN_NoActiveObject
		// Create new object	
		SimpleGUI_NewObject()
		// Set active Image
		SGUI_ActiveObjs[SN_Image][SN_ObjectPointer] := SGUI_ObjsCount
		// Create the new Image
		SGUI_Objs[SGUI_ObjsCount][SN_Class] := "Image"
		SGUI_Objs[SGUI_ObjsCount][SN_Object] := QLabel():new(SGUI_Objs[nActiveWindow][SN_Object])
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:SetTextFormat( 1 )  // 0 text plain  1 RicText
		SGUI_Objs[SGUI_ObjsCount][SN_Object]:setScaledContents(.T.)
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


Function SimpleGUI_SetImageName(cImageName)

	local nActiveImage,x,mymax

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		MYMAX = LEN ( SGUI_Objs[nActiveImage][SN_Name] )
		FOR X = 1 TO MYMAX
			IF upper(alltrim(SGUI_Objs[nActiveImage][SN_Name][X])) == upper(alltrim(cImageName))
				RETURN
			ENDIF
		NEXT
		AADD(SGUI_Objs[nActiveImage][SN_Name],cImageName)
	ENDIF

Return Nil

Function SimpleGUI_SetImageFile(cImageFile)

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		SGUI_Objs[nActiveImage][SN_Title]:= cImageFile
		//cHtm := ""
		//cHtm := cHtm + "<html>" + CHR(13)+CHR(10)
		//cHtm := cHtm +  ' <body align=center valign=center>'  + CHR(13)+CHR(10)
		//cHtm := cHtm +  '  <img src="' + SGUI_Objs[nActiveImage][SN_Title] + ;
		//	 '" width="'+alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Width]))+;
		//	'" height="'+alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Height]))+'"</img></br>'  + CHR(13)+CHR(10)
		//cHtm := cHtm + " </body>"  + CHR(13)+CHR(10)
		//cHtm := cHtm +  "</html>"  + CHR(13)+CHR(10)
		//SGUI_Objs[nActiveImage][SN_Object]:SetText( cHtm )
		SGUI_Objs[nActiveImage][SN_Object]:SetStyleSheet("qproperty-pixmap: url("+;
		SGUI_Objs[nActiveImage][SN_Title]+");")
		SGUI_Objs[nActiveImage][SN_Object]:show()
	ENDIF

Return Nil

Function SimpleGUI_GetImageFile()

	local nActiveImage,myret

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	myret = ""
	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
	   myret = SGUI_Objs[nActiveImage][SN_Title]
	ENDIF

Return myret


Function SimpleGUI_SetImageTop(p1)

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
	   SGUI_Objs[nActiveImage][SN_Object]:move( SGUI_Objs[nActiveImage][SN_Left] , p1 )
	   SGUI_Objs[nActiveImage][SN_Top] := p1
	ENDIF

Return Nil


Function SimpleGUI_SetImageLeft(p1)

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
	   SGUI_Objs[nActiveImage][SN_Object]:move( p1 , SGUI_Objs[nActiveImage][SN_Top] )
	   SGUI_Objs[nActiveImage][SN_Left] := p1
	ENDIF

Return Nil

Function SimpleGUI_SetImagewidth(p1)

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
	   SGUI_Objs[nActiveImage][SN_Object]:resize( p1 , SGUI_Objs[nActiveImage][SN_Height] )
	   SGUI_Objs[nActiveImage][SN_Width] := p1
		SGUI_Objs[nActiveImage][SN_Object]:SetText( [<PRE><IMG SRC=]+SGUI_Objs[nActiveImage][SN_Title]+;
		[ NAME="graphics1" WIDTH=]+alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Width]))+[ HEIGHT=]+;
		alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Height]))+[ ></PRE>] )
	ENDIF

Return Nil

Function SimpleGUI_SetImageheight(p1)

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		   SGUI_Objs[nActiveImage][SN_Object]:resize( SGUI_Objs[nActiveImage][SN_Width] , p1)
		   SGUI_Objs[nActiveImage][SN_Height] := p1
		SGUI_Objs[nActiveImage][SN_Object]:SetText( [<PRE><IMG SRC=]+SGUI_Objs[nActiveImage][SN_Title]+;
		[ NAME="graphics1" WIDTH=]+alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Width]))+[ HEIGHT=]+;
		alltrim(str(SGUI_Objs[SGUI_ObjsCount][SN_Height]))+[ ></PRE>] )
	ENDIF

Return Nil


Function SimpleGUI_GetImageTop()

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveImage][SN_Top] 
	ENDIF

Return Nil


Function SimpleGUI_GetImageLeft()

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		RETURN SGUI_Objs[nActiveImage][SN_Left] 
	ENDIF

Return Nil

Function SimpleGUI_GetImagewidth()

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
	   RETURN SGUI_Objs[nActiveImage][SN_Width]
	ENDIF

Return Nil

Function SimpleGUI_GetImageheight()

	local nActiveImage

	if simplegui_isactiveImage() = .f.
		simplegui_newImage()
	endif

	nActiveImage := SGUI_ActiveObjs[SN_Image][SN_ObjectPointer]

	IF .not.  nActiveImage = SN_NoActiveObject
		   RETURN SGUI_Objs[nActiveImage][SN_Height] 
	ENDIF

Return Nil


