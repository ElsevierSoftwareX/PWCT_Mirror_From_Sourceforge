*---------------------------------------------------------------------------*
* Time : 01:52:05    Date : 10/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 0 ,0 ;
WIDTH 768 ;
HEIGHT 477 ;
ICON "sun.ico" ;
TITLE "Optimization of total cost for moubarak pump station" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 20 ,30 LABEL lbl5 ;
VALUE "Working Pumps Range From" ;
WIDTH 170 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,210 TEXTBOX text5;
HEIGHT 26 ;
WIDTH 119 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC ;
INPUTMASK "9999999999.9999" 

@ 50 ,180 LABEL lbl1 ;
VALUE "To" ;
WIDTH 20 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 80 ,40 LABEL lbl2 ;
VALUE "Working Hours Range From" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 110 ,180 LABEL lbl3 ;
VALUE "To" ;
WIDTH 20 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 50 ,210 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 119 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 80 ,210 TEXTBOX text2;
HEIGHT 26 ;
WIDTH 119 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 110 ,210 TEXTBOX text3;
HEIGHT 26 ;
WIDTH 119 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 20 ,360 BUTTONEX btn1;
CAPTION "Clear History";
ON CLICK clearhis()  ;
WIDTH 130 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
TOOLTIP ""
@ 180 ,10 EDITBOX edit1;
WIDTH 320 ;
HEIGHT 130;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 330 ,160 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 170 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 330 ,10 BUTTONEX btn2;
CAPTION "Minimum Cost";
ON CLICK myoptibtn()  ;
WIDTH 130 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
TOOLTIP ""
@ 145 ,160 LABEL lbl6 ;
VALUE "Mode" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 145 ,209 COMBOBOX combo1;
WIDTH 120 ;
ITEMS {"Design Mode","Max. Discharge","Max. Efficiency"} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 330 ,480 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 270 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 330 ,359 LABEL lbl7 ;
VALUE "Min. Cost (Absolute)" ;
WIDTH 120 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 55 ,360 LISTBOX list1;
WIDTH 390 ;
HEIGHT 255 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action win1.release()
END POPUP
END POPUP
END MENU
DEFINE STATUSBAR 

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

win1.Center ( )
win1.text4.Enabled := False
win1.combo1.Value := 1
win1.text6.Enabled := False
Public amcfirst,amcvalue,amcstr
amcfirst := True
amcvalue := 0
amcstr := ""
ACTIVATE WINDOW win1
EndIF

Function  mycalc ( p1,p2 )
c1 := 86
c2 := 52.7
prated := 12000
IF win1.combo1.value = 1
eff := 0.90
ENDIF
IF win1.combo1.value = 2
eff := 0.93
ENDIF
IF win1.combo1.value = 3
eff := 0.97
ENDIF
myret := (c1*prated*p1)+(c2*eff*prated*p2*p1)
Return myret
Proc myoptibtn
LV1MIN := WIN1.TEXT5.Value
LV1MAX := WIN1.TEXT1.Value
LV2MIN := WIN1.TEXT2.Value
LV2MAX := WIN1.TEXT3.Value
IF win1.combo1.value = 1
IF lv1min < 16 .or. lv1max > 18
MyOut := MSGBOX("Number of pumps is out of range (16-18)","Sorry")
Return 0
ENDIF
QPC := 16.7
ENDIF
IF win1.combo1.value = 2
IF lv1min < 12 .or. lv1max > 18
MyOut := MSGBOX("Number of pumps is out of range (12 to 18)","Sorry")
Return 0
ENDIF
QPC := 25
ENDIF
IF win1.combo1.value = 3
IF lv1min < 14 .or. lv1max > 18
Return 0
ENDIF
ENDIF
QPC := 21
DO mygen
Return Nil
Proc mygen
new  = CHR(13)
line  = CHR(10)
MYLV1 := ""
MYLV2 := ""
myresult := "Total cost = F ( Pumps , Hours )" + new + line
mymtc := mycalc(LV1MIN,LV2MIN)
MYMTCL := True
FOR LV1 = LV1MIN TO LV1MAX STEP 1
FOR LV2 = LV2MIN TO LV2MAX STEP 1
out = TESTHOUR ( LV1,LV2 )
IF OUT = True
out = MYRESULT ( LV1,LV2 )
ENDIF
Next
Next
IF MYMTCL = True
win1.edit1.Value := myresult
Return 0
ENDIF
mymtc2 = STR ( mymtc )
mymtc2 = ALLTRIM ( mymtc2 )
win1.text4.Value := mymtc2 + " = F ( " + MYLV1 + " , " + MYLV2 + ")"
win1.edit1.Value := myresult
IF win1.combo1.value = 1
mymode := "Design Mode : "
ENDIF
IF win1.combo1.value = 2
mymode := "Max. Discharge : "
ENDIF
IF win1.combo1.value = 3
mymode := "Max. Efficiency : "
ENDIF
win1.list1.AddItem ( mymode + win1.text4.value )
IF amcfirst = True
amcvalue := mymtc
amcstr := mymode + win1.text4.value
amcfirst := false
ENDIF
IF mymtc < amcvalue
amcvalue := mymtc
amcstr := mymode + win1.text4.value
ENDIF
win1.text6.Value := amcstr
Return Nil
Function  myresult ( LV1,LV2 )
new  = CHR(13)
line  = CHR(10)
myntc = mycalc ( LV1,LV2 )
IF MYMTCL = True
MYMTCL := False
MYMTC := MYNTC
ENDIF
IF MYNTC <= MYMTC
MYLV1 := LV1
MYLV2 := LV2
MYLV1 = STR ( MYLV1 )
MYLV2 = STR ( MYLV2 )
MYLV1 = ALLTRIM ( MYLV1 )
MYLV2 = ALLTRIM ( MYLV2 )
ENDIF
mymtc = min ( mymtc,myntc )
CV1 = STR ( myntc )
CV2 = STR ( LV1 )
CV3 = STR ( LV2 )
CV2 = ALLTRIM ( CV2 )
CV3 = ALLTRIM ( CV3 )
myresult := myresult + CV1 + " =  F ( " + CV2 + " , " + CV3 + ")" + new + line
Return
Proc clearhis
win1.list1.DeleteAllItems ( )
win1.text6.Value := ""
amcfirst := True
amcvalue := 0
amcstr := ""
Return Nil
Function  testhour ( p1,p2 )
qreq := {}
AADD( qreq , 92.59)
AADD( qreq , 128.82)
AADD( qreq , 163.08)
AADD( qreq , 163.08)
AADD( qreq , 199.31)
AADD( qreq , 265.63)
AADD( qreq , 259.61)
AADD( qreq , 233.45)
AADD( qreq , 159.03)
AADD( qreq , 128.82)
AADD( qreq , 120.72)
AADD( qreq , 92.59)
hmin := (qreq[1] * 24) / (QPC * p1)
hmax := hmin
FOR x = 1 TO 12 STEP 1
hnew := (qreq[x] * 24) / (QPC * p1)
IF hnew < hmin
hmin := hnew
ENDIF
IF hnew > hmax
hmax := hnew
ENDIF
Next
myret := False
IF p2 >= hmin .and. p2 <= hmax
myret := True
ENDIF
IF myret = false
MYRESULT := MYRESULT + " F ( " + alltrim(str(P1)) + "," + alltrim(str(P2)) + ")" + " hours out of range  (" + alltrim(str(hmin)) + "," + alltrim(str(hmax)) + ")" + chr(13) + chr(10)
ENDIF
Return myret


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Optimization of total cost for moubarak pump station'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Working Pumps Range From'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'To'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Working Hours Range From'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'To'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Clear History'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clearhis()",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Minimum Cost'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myoptibtn()",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Mode'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Design Mode','Max. Discharge','Max. Efficiency'}",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Min. Cost (Absolute)'",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Date",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Enabled := False",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.Value := 1",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Enabled := False",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Public amcfirst,amcvalue,amcstr",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","amcfirst = True",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","amcvalue = 0",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","amcstr = ''",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",153,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function mycalc ( p1,p2 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = 86",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = 52.7",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","prated = 12000",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 1 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","eff = 0.90",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 2 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","eff = 0.93",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 3 )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","eff = 0.97",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","myret = (c1*prated*p1)+(c2*eff*prated*p2*p1)",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return myret)",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myoptibtn",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","LV1MIN = WIN1.TEXT5.Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","LV1MAX = WIN1.TEXT1.Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","LV2MIN = WIN1.TEXT2.Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","LV2MAX = WIN1.TEXT3.Value",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 1 )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lv1min < 16 .or. lv1max > 18 )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Number of pumps is out of range (16-18)' Title 'Sorry' Type: Message Box",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","QPC = 16.7",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 2 )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lv1min < 12 .or. lv1max > 18 )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Number of pumps is out of range (12 to 18)' Title 'Sorry' Type: Message Box",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","QPC = 25",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 3 )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lv1min < 14 .or. lv1max > 18 )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","QPC = 21",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mygen",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mygen",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","new = Get character of ASCII Code 13",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","line = Get character of ASCII Code 10",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV1 = ''",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV2 = ''",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","myresult = 'Total cost = F ( Pumps , Hours )' + new + line",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","mymtc = mycalc(LV1MIN,LV2MIN)",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","MYMTCL = True",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From LV1 = LV1MIN To LV1MAX Step 1)",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From LV2 = LV2MIN To LV2MAX Step 1)",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","out = Call Function TESTHOUR ( LV1,LV2 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( OUT = True )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","out = Call Function MYRESULT ( LV1,LV2 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMTCL = True )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := myresult",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","mymtc2 = CONVERT mymtc TO STRING",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mymtc2 = All Trim mymtc2",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := mymtc2 + ' = F ( ' + MYLV1 + ' , ' + MYLV2 + ')'",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := myresult",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 1 )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","mymode = 'Design Mode : '",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 2 )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymode = 'Max. Discharge : '",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.combo1.value = 3 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mymode = 'Max. Efficiency : '",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mymode + win1.text4.value )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( amcfirst = True )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","amcvalue = mymtc",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","amcstr = mymode + win1.text4.value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","amcfirst = false",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymtc < amcvalue )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","amcvalue = mymtc",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","amcstr = mymode + win1.text4.value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := amcstr",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function myresult ( LV1,LV2 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","new = Get character of ASCII Code 13",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","line = Get character of ASCII Code 10",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","myntc = Call Function mycalc ( LV1,LV2 )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMTCL = True )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","MYMTCL = False",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","MYMTC = MYNTC",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYNTC <= MYMTC )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV1 = LV1",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV2 = LV2",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV1 = CONVERT MYLV1 TO STRING",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV2 = CONVERT MYLV2 TO STRING",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV1 = All Trim MYLV1",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","MYLV2 = All Trim MYLV2",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","mymtc = Call Function min ( mymtc,myntc )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","CV1 = CONVERT myntc TO STRING",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","CV2 = CONVERT LV1 TO STRING",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","CV3 = CONVERT LV2 TO STRING",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","CV2 = All Trim CV2",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","CV3 = All Trim CV3",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myresult = myresult + CV1 + ' =  F ( ' + CV2 + ' , ' + CV3 + ')' + new + line",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clearhis",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := ''",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","amcfirst = True",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","amcvalue = 0",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","amcstr = ''",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function testhour ( p1,p2 )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array qreq",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 92.59 To Array qreq",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 128.82 To Array qreq",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 163.08 To Array qreq",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 163.08 To Array qreq",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 199.31 To Array qreq",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 265.63 To Array qreq",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 259.61 To Array qreq",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 233.45 To Array qreq",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 159.03 To Array qreq",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 128.82 To Array qreq",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 120.72 To Array qreq",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 92.59 To Array qreq",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","hmin = (qreq[1] * 24) / (QPC * p1)",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","hmax = hmin",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 12 Step 1)",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","hnew = (qreq[x] * 24) / (QPC * p1)",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( hnew < hmin )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","hmin = hnew",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( hnew > hmax )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","hmax = hnew",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","myret = False",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p2 >= hmin .and. p2 <= hmax )",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myret = True",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myret = false )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","MYRESULT = MYRESULT + ' F ( ' + alltrim(str(P1)) + ',' + alltrim(str(P2)) + ')' + ' hours out of range  (' + alltrim(str(hmin)) + ',' + alltrim(str(hmax)) + ')' + chr(13) + chr(10)",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return myret)",306,306)
Return
*-------------------------------------------------------------------*
