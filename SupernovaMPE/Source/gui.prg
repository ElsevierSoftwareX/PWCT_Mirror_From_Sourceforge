Proc RT_GUI

*------------*
* window
*------------*

* i want window
IF myopcode = 1
   SimpleGUI_NewWindow()
   RETURN 0
ENDIF
* window title is
IF myopcode = 2
   SimpleGUI_SetWindowTitle(myopdata[1])
   RETURN 0
ENDIF
* Window back color is
IF myopcode = 4
	SimpleGUI_SetWindowBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* window top is
IF myopcode = 5
   SimpleGUI_SetWindowTop(val(myopdata[1]))
   Return 0
ENDIF
* window left is
IF myopcode = 6
   SimpleGUI_SetWindowLeft(val(myopdata[1]))
   Return 0
ENDIF
* window width is
IF myopcode = 7
   SimpleGUI_SetWindowwidth(val(myopdata[1]))
   Return 0
ENDIF
* window height is
IF myopcode = 8
   SimpleGUI_SetWindowheight(val(myopdata[1]))
   Return 0
ENDIF
* window name
if myopcode = 15
	SimpleGUI_SetWindowName(myopdata[1])
	return 0
endif
* window selected
IF myopcode = 16
	SimpleGUI_SelectObject("window")
	Return 0
ENDIF
* window title from
IF myopcode = 18
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetWindowtitle(varvalue)
   Return 0
ENDIF
* window top to
IF myopcode = 29
   myvalue = SimpleGUI_getwindowtop()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* window left to
IF myopcode = 30
   myvalue = SimpleGUI_getwindowleft()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* window width to
IF myopcode = 31
   myvalue = SimpleGUI_getwindowwidth()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* window height to
IF myopcode = 32
   myvalue = SimpleGUI_getwindowheight()
   DO RT_SetVarValue WITH myopdata[1],alltrim(Str(myvalue))
   Return 0
ENDIF
* window top from
IF myopcode = 33
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetWindowTop(val(varvalue))
   Return 0
ENDIF
* window left from
IF myopcode = 34
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetWindowLeft(val(varvalue))
   Return 0
ENDIF
* window width from
IF myopcode = 35
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetWindowwidth(val(varvalue))
   Return 0
ENDIF
* window height from
IF myopcode = 36
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetWindowheight(val(varvalue))
   Return 0
ENDIF
* close window
if myopcode = 14
	SimpleGUI_CloseWindow()
	return 0
endif
* close application
if myopcode = 17
	SimpleGUI_CloseApplication()
	return 0
endif

*------------*
* label
*------------*

* i want label
IF myopcode = 100
	SimpleGUI_NewLabel()
	RETURN 0
endif
* Label caption is
IF myopcode = 101
   SimpleGUI_SetLabelText(myopdata[1])
   RETURN 0
ENDIF
* Label top is
IF myopcode = 102
   SimpleGUI_SetLabelTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Label left is
IF myopcode = 103
   SimpleGUI_SetLabelLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Label width is
IF myopcode = 104
   SimpleGUI_SetLabelWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Label height is
IF myopcode = 105
   SimpleGUI_SetLabelHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* label name
if myopcode = 106
	SimpleGUI_SetLabelName(myopdata[1])
	return 0
endif
* label font name
if myopcode = 107
	SimpleGUI_SetLabelFontName(myopdata[1])
	return 0
endif
* label font size
if myopcode = 108
	SimpleGUI_SetLabelFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* label font bold
if myopcode = 111
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetLabelFontBold(.t.)
	else
		SimpleGUI_SetLabelFontBold(.f.)
	endif
	return 0
endif
* label font italic
if myopcode = 112
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetLabelFontItalic(.t.)
	else
		SimpleGUI_SetLabelFontItalic(.f.)
	endif
	return 0
endif
* Label fore color is
IF myopcode = 109
	SimpleGUI_SetLabelForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Label back color is
IF myopcode = 110
	SimpleGUI_SetLabelBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* label selected
IF myopcode = 117
	SimpleGUI_SelectObject("label")
	Return 0
ENDIF
* label caption from
IF myopcode = 118
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetLabelText(varvalue)
	Return 0
ENDIF
* label caption to
IF myopcode = 119
	myvalue = SimpleGUI_getLabelText()
	DO RT_SetVarValue WITH myopdata[1],myvalue
	Return 0
ENDIF
* label top to
IF myopcode = 120
	myvalue = SimpleGUI_GetLabelTop()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* label left to
IF myopcode = 121
	myvalue = SimpleGUI_GetLabelleft()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* label width to
IF myopcode = 122
	myvalue = SimpleGUI_GetLabelWidth()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* label height to
IF myopcode = 123
	myvalue = SimpleGUI_GetLabelHeight()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* label top from
IF myopcode = 124
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetLabelTop(VAL(VARVALUE))
	Return 0
ENDIF
* label left from
IF myopcode = 125
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetLabelLeft(VAL(VARVALUE))
	Return 0
ENDIF
* label width from 
IF myopcode = 126
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetLabelWidth(VAL(VARVALUE))
	Return 0
ENDIF
* label height from
IF myopcode = 127
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetLabelHeight(VAL(VARVALUE))
	Return 0
ENDIF


*------------*
* Textbox
*------------*


* i want textbox
IF myopcode = 200
	SimpleGUI_NewTextbox()
	RETURN 0
endif
* Textbox text is
IF myopcode = 201
   SimpleGUI_SetTextboxText(myopdata[1])
   RETURN 0
ENDIF
* Textbox top is
IF myopcode = 202
   SimpleGUI_SetTextboxTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Textbox left is
IF myopcode = 203
   SimpleGUI_SetTextboxLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Textbox width is
IF myopcode = 204
   SimpleGUI_SetTextboxWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Textbox height is
IF myopcode = 205
   SimpleGUI_SetTextboxHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* textbox name
if myopcode = 206
	SimpleGUI_SetTextboxName(myopdata[1])
	return 0
endif
* textbox font name
if myopcode = 207
	SimpleGUI_SetTextboxFontName(myopdata[1])
	return 0
endif
* textbox font size
if myopcode = 208
	SimpleGUI_SetTextboxFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* textbox font bold
if myopcode = 211
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetTextboxFontBold(.t.)
	else
		SimpleGUI_SetTextboxFontBold(.f.)
	endif
	return 0
endif
* textbox font italic
if myopcode = 212
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetTextboxFontItalic(.t.)
	else
		SimpleGUI_SetTextboxFontItalic(.f.)
	endif
	return 0
endif
* Textbox fore color is
IF myopcode = 209
	SimpleGUI_SetTextboxForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Textbox back color is
IF myopcode = 210
	SimpleGUI_SetTextboxBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* textbox selected
IF myopcode = 215
	SimpleGUI_SelectObject("textbox")
	Return 0
ENDIF
* textbox value from
IF myopcode = 216
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetTextboxText(varvalue)
	Return 0
ENDIF
* textbox value to
IF myopcode = 217
	myvalue = SimpleGUI_getTextboxText()
	DO RT_SetVarValue WITH myopdata[1],myvalue
	Return 0
ENDIF

*------------*
* Button
*------------*
* i want button
IF myopcode = 50
	SimpleGUI_NewButton()
	RETURN 0
endif
* Button text is
IF myopcode = 51
   SimpleGUI_SetButtonText(myopdata[1])
   RETURN 0
ENDIF
* button text from
IF myopcode = 67
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetButtonText(varvalue)
	Return 0
ENDIF
* button text to
IF myopcode = 68
	myvalue = SimpleGUI_GetButtonText()
	DO RT_SetVarValue WITH myopdata[1],myvalue
	Return 0
ENDIF
* Button top is
IF myopcode = 52
   SimpleGUI_SetButtonTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Button left is
IF myopcode = 53
   SimpleGUI_SetButtonLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Button width is
IF myopcode = 54
   SimpleGUI_SetButtonWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Button height is
IF myopcode = 55
   SimpleGUI_SetButtonHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* Button name is
IF myopcode = 56
   SimpleGUI_SetButtonName(myopdata[1])
   RETURN 0
ENDIF
* Button font name
if myopcode = 57
	SimpleGUI_SetButtonFontName(myopdata[1])
	return 0
endif
* Button font size
if myopcode = 58
	SimpleGUI_SetButtonFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* Button font bold
if myopcode = 61
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetButtonFontBold(.t.)
	else
		SimpleGUI_SetButtonFontBold(.f.)
	endif
	return 0
endif
* Button font italic
if myopcode = 62
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetButtonFontItalic(.t.)
	else
		SimpleGUI_SetButtonFontItalic(.f.)
	endif
	return 0
endif
* Button fore color is
IF myopcode = 59
	SimpleGUI_SetButtonForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Button back color is
IF myopcode = 60
	SimpleGUI_SetButtonBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* button top to
IF myopcode = 69
   myvalue = SimpleGUI_getbuttontop()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* button left to
IF myopcode = 70
   myvalue = SimpleGUI_getbuttonleft()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* button width to
IF myopcode = 71
   myvalue = SimpleGUI_getbuttonwidth()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* button height to
IF myopcode = 72
   myvalue = SimpleGUI_getbuttonheight()
   DO RT_SetVarValue WITH myopdata[1],alltrim(Str(myvalue))
   Return 0
ENDIF
* button top from
IF myopcode = 73
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetbuttonTop(val(varvalue))
   Return 0
ENDIF
* button left from
IF myopcode = 74
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetbuttonLeft(val(varvalue))
   Return 0
ENDIF
* button width from
IF myopcode = 75
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_Setbuttonwidth(val(varvalue))
   Return 0
ENDIF
* button height from
IF myopcode = 76
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_Setbuttonheight(val(varvalue))
   Return 0
ENDIF

* button selected
IF myopcode = 66
	SimpleGUI_SelectObject("button")
	Return 0
ENDIF


*------------*
* Listbox
*------------*

* i want listbox
IF myopcode = 300
	SimpleGUI_NewListBox()
ENDIF
* listbox value is
IF myopcode = 301
	SimpleGUI_SetListboxValue(val(myopdata[1]))
 	Return 0
ENDIF
* listbox top is
IF myopcode = 302
   SimpleGUI_SetListboxTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Listbox left is
IF myopcode = 303
   SimpleGUI_SetListboxLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Listbox width is
IF myopcode = 304
   SimpleGUI_SetListboxWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Listbox height is
IF myopcode = 305
   SimpleGUI_SetListboxHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* listbox name
if myopcode = 306
	SimpleGUI_SetListboxName(myopdata[1])
	return 0
endif
* Listbox font name
if myopcode = 307
	SimpleGUI_SetListboxFontName(myopdata[1])
	return 0
endif
* Listbox font size
if myopcode = 308
	SimpleGUI_SetListboxFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* Listbox font bold
if myopcode = 311
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetListboxFontBold(.t.)
	else
		SimpleGUI_SetListboxFontBold(.f.)
	endif
	return 0
endif
* Listbox font italic
if myopcode = 312
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetListboxFontItalic(.t.)
	else
		SimpleGUI_SetListboxFontItalic(.f.)
	endif
	return 0
endif
* Listbox fore color is
IF myopcode = 309
	SimpleGUI_SetListboxForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Listbox back color is
IF myopcode = 310
	SimpleGUI_SetListboxBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* listbox selected
IF myopcode = 315
	SimpleGUI_SelectObject("listbox")
	Return 0
ENDIF
* listbox must add item
IF myopcode = 316
	SimpleGUI_listboxadditem(myopdata[1])
	Return 0
ENDIF

* listbox must add from
IF myopcode = 317
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_listboxadditem(varvalue)
	Return 0
ENDIF
* listbox value from
IF myopcode = 318
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetListboxValue(Val(VarValue))
	Return 0
ENDIF
* listbox value to
IF myopcode = 319
	myvalue = SimpleGUI_GetListboxValue()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF


*------------*
* Combobox
*------------*

* i want Combobox
IF myopcode = 350
	SimpleGUI_NewCombobox()
ENDIF
* Combobox value is
IF myopcode = 351
	SimpleGUI_SetComboboxValue(val(myopdata[1]))
 	Return 0
ENDIF
* Combobox top is
IF myopcode = 352
   SimpleGUI_SetComboboxTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Combobox left is
IF myopcode = 353
   SimpleGUI_SetComboboxLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Combobox width is
IF myopcode = 354
   SimpleGUI_SetComboboxWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Combobox height is
IF myopcode = 355
   SimpleGUI_SetComboboxHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* Combobox name
if myopcode = 356
	SimpleGUI_SetComboboxName(myopdata[1])
	return 0
endif
* Combobox font name
if myopcode = 357
	SimpleGUI_SetComboboxFontName(myopdata[1])
	return 0
endif
* Combobox font size
if myopcode = 358
	SimpleGUI_SetComboboxFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* Combobox fore color is
IF myopcode = 359
	SimpleGUI_SetComboboxForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Combobox back color is
IF myopcode = 360
	SimpleGUI_SetComboboxBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* Combobox font bold
if myopcode = 361
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetComboboxFontBold(.t.)
	else
		SimpleGUI_SetComboboxFontBold(.f.)
	endif
	return 0
endif
* Combobox font italic
if myopcode = 362
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetComboboxFontItalic(.t.)
	else
		SimpleGUI_SetComboboxFontItalic(.f.)
	endif
	return 0
endif
* Combobox selected
IF myopcode = 365
	SimpleGUI_SelectObject("Combobox")
	Return 0
ENDIF
* Combobox must add item
IF myopcode = 366
	SimpleGUI_Comboboxadditem(myopdata[1])
	Return 0
ENDIF

* Combobox must add from
IF myopcode = 367
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_Comboboxadditem(varvalue)
	Return 0
ENDIF
* Combobox value from
IF myopcode = 368
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetComboboxValue(Val(VarValue))
	Return 0
ENDIF
* Combobox value to
IF myopcode = 369
	myvalue = SimpleGUI_GetComboboxValue()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF



*------------*
* Editbox
*------------*


* i want Editbox
IF myopcode = 250
	SimpleGUI_NewEditbox()
	RETURN 0
endif
* Edit value is
IF myopcode = 251
   SimpleGUI_SetEditboxText(myopdata[1])
   RETURN 0
ENDIF
* Editbox top is
IF myopcode = 252
   SimpleGUI_SetEditboxTop(val(myopdata[1]))
   RETURN 0
ENDIF
* Editbox left is
IF myopcode = 253
   SimpleGUI_SetEditboxLeft(val(myopdata[1]))
   RETURN 0
ENDIF
* Editbox width is
IF myopcode = 254
   SimpleGUI_SetEditboxWidth(val(myopdata[1]))
   RETURN 0
ENDIF
* Editbox height is
IF myopcode = 255
   SimpleGUI_SetEditboxHeight(val(myopdata[1]))
   RETURN 0
ENDIF
* Editbox name
if myopcode = 256
	SimpleGUI_SetEditboxName(myopdata[1])
	return 0
endif
* Editbox font name
if myopcode = 257
	SimpleGUI_SetEditboxFontName(myopdata[1])
	return 0
endif
* Editbox font size
if myopcode = 258
	SimpleGUI_SetEditboxFontSize(str(val(myopdata[1]))) && str(val()) is a trick prevent bad CSS font size parameter
	return 0
endif
* Editbox font bold
if myopcode = 261
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetEditboxFontBold(.t.)
	else
		SimpleGUI_SetEditboxFontBold(.f.)
	endif
	return 0
endif
* Editbox font italic
if myopcode = 262
	if lower(alltrim(myopdata[1])) = "true"	.or. lower(alltrim(myopdata[1])) = "1" 
		SimpleGUI_SetEditboxFontItalic(.t.)
	else
		SimpleGUI_SetEditboxFontItalic(.f.)
	endif
	return 0
endif
* Editbox fore color is
IF myopcode = 259
	SimpleGUI_SetEditboxForecolor(RT_CheckColor( myopdata[1] ))
	RETURN 0
ENDIF
* Editbox back color is
IF myopcode = 260
	SimpleGUI_SetEditboxBackcolor(RT_CheckColor( myopdata[1] ) )
	RETURN 0
ENDIF
* Editbox selected
IF myopcode = 265
	SimpleGUI_SelectObject("Editbox")
	Return 0
ENDIF
* Editbox value from
IF myopcode = 266
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetEditboxText(varvalue)
	Return 0
ENDIF
* Editbox value to
IF myopcode = 267
	myvalue = SimpleGUI_getEditboxText()
	DO RT_SetVarValue WITH myopdata[1],myvalue
	Return 0
ENDIF
* Editbox top to
IF myopcode = 268
   myvalue = SimpleGUI_getEditboxtop()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* Editbox left to
IF myopcode = 269
   myvalue = SimpleGUI_getEditboxleft()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* Editbox width to
IF myopcode = 270
   myvalue = SimpleGUI_getEditboxwidth()
   DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
   Return 0
ENDIF
* Editbox height to
IF myopcode = 271
   myvalue = SimpleGUI_getEditboxheight()
   DO RT_SetVarValue WITH myopdata[1],alltrim(Str(myvalue))
   Return 0
ENDIF
* Editbox top from
IF myopcode = 272
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetEditboxTop(val(varvalue))
   Return 0
ENDIF
* Editbox left from
IF myopcode = 273
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetEditboxLeft(val(varvalue))
   Return 0
ENDIF
* Editbox width from
IF myopcode = 274
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetEditboxwidth(val(varvalue))
   Return 0
ENDIF
* Editbox height from
IF myopcode = 275
   DO RT_ReadExpr WITH myopdata[1],"RightSide"
   VARVALUE = RT_GetExprValue ( RT_RS_DATA )
   SimpleGUI_SetEditboxheight(val(varvalue))
   Return 0
ENDIF


*------------*
* picture
*------------*

* i want picture
IF myopcode = 150
	SimpleGUI_NewImage()
	RETURN 0
endif
* Picture file is
IF myopcode = 151
	SimpleGUI_SetImageFile(myopdata[1])
	RETURN 0
ENDIF
* Picture top is
IF myopcode = 152
	SimpleGUI_SetImageTop(val(myopdata[1]))
	RETURN 0
ENDIF
* Picture left is
IF myopcode = 153
	SimpleGUI_SetImageLeft(val(myopdata[1]))
	RETURN 0
ENDIF
* Picture width is
IF myopcode = 154
	SimpleGUI_SetImageWidth(val(myopdata[1]))
	RETURN 0
ENDIF
* Picture height is
IF myopcode = 155
	SimpleGUI_SetImageHeight(val(myopdata[1]))
	RETURN 0
ENDIF
* Picture name
if myopcode = 156
	SimpleGUI_SetImageName(myopdata[1])
	return 0
endif
* Picture selected
IF myopcode = 157
	SimpleGUI_SelectObject("image")
	Return 0
ENDIF
* Picture file from
IF myopcode = 158
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetImageFile(varvalue)
	Return 0
ENDIF
* Picture file to
IF myopcode = 159
	myvalue = SimpleGUI_getImageFile()
	DO RT_SetVarValue WITH myopdata[1],myvalue
	Return 0
ENDIF
* Picture top to
IF myopcode = 160
	myvalue = SimpleGUI_GetImageTop()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* Picture left to
IF myopcode = 161
	myvalue = SimpleGUI_GetImageleft()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* Picture width to
IF myopcode = 162
	myvalue = SimpleGUI_GetImageWidth()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* Picture height to
IF myopcode = 163
	myvalue = SimpleGUI_GetImageHeight()
	DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
	Return 0
ENDIF
* Picture top from
IF myopcode = 164
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetImageTop(VAL(VARVALUE))
	Return 0
ENDIF
* Picture left from
IF myopcode = 165
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetImageLeft(VAL(VARVALUE))
	Return 0
ENDIF
* Picture width from 
IF myopcode = 166
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetImageWidth(VAL(VARVALUE))
	Return 0
ENDIF
* Picture height from
IF myopcode = 167
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_SetImageHeight(VAL(VARVALUE))
	Return 0
ENDIF

RETURN



Proc RT_CheckColor( p1 )

	local myret,tempvar,x,nCommaCount

	myret := true

	p1 = ALLTRIM ( p1 )
	p1 = STRTRAN(p1," ","")

	IF len(p1) > 13
		myret := false
	ENDIF

	tempvar = Left(p1,1)

	IF tempvar != "{"
		myret := false
	ENDIF

	tempvar = Right(p1,1)

	IF tempvar != "}"
		myret := false
	ENDIF

	
	nCommaCount := 0

	for x = 1 to len(p1)
		if substr(p1,x,1) = ","
			nCommaCount := nCommaCount + 1
		endif
	next

	IF nCommaCount != 2
		myret := false
	ENDIF

	FOR x = 2 TO len(p1)-1 STEP 1

		tv = SUBSTR(p1,x,1)

		IF tv = "0" .or. tv = "1" .or. tv = "2" .or. tv = "3" .or. tv = "4" .or. tv = "5" .or. ;
		tv = "6" .or. tv = "7" .or. tv = "8" .or. tv = "9" .or. tv = ","
		ELSE
			myret := false
			Exit
		ENDIF

	Next

	IF myret = true
		Return p1
	ELSE
		p1 = LOWER ( p1 )
		IF p1 == "aqua" 
			Return "{0,255,255}"
		ENDIF
		IF p1 == "black"
			Return "{0,0,0}"
		ENDIF
		IF p1 == "blue" 
			Return "{0,0,255}"
		ENDIF
		IF p1 == "darkgray" 
			Return "{128,128,128}"
		ENDIF
		IF p1 == "fuchsia" 
			Return "{255,0,255}"
		ENDIF
		IF p1 == "gray" 
			Return "{128,128,128}"
		ENDIF
		IF p1 == "green"
			Return "{0,128,0}"
		ENDIF
		IF p1 == "lime" 
			Return "{0,255,0}"
		ENDIF
		IF p1 == "lightgray" 
			Return "{192,192,192}"
		ENDIF
		IF p1 == "maroon" 
			Return "{128,0,0}"
		ENDIF
		IF p1 == "navy" 
			Return "{0,0,128}"
		ENDIF
		IF p1 = "purple"
			Return "{128,0,128}"
		ENDIF
		IF p1 == "red" 
			Return "{255,0,0}"
		ENDIF
		IF p1 == "silver"
			Return "{192,192,192}"
		ENDIF
		IF p1 == "teal"
			Return "{128,128,0}"
		ENDIF
		IF p1 == "white" 
			Return "{255,255,255}"
		ENDIF
		IF p1 == "yellow" 
			Return "{255,255,0}"
		ENDIF

		myret := SNLang_ArabicColors(p1)
		if .not. myret == "NOCOLOR"
			return myret
		endif

		Return "{0,0,0}"
	ENDIF
Return Nil

