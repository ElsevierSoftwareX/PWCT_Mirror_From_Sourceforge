#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 16:58:12    Date : 04/20/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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
					Resistance Mycalc                        
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main

Resistance RUZSLC2() address Code Unit : Circuits\Main\Main\Mycalc


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
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
FONT "Arial" SIZE 9 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
FONT "Arial" SIZE 9 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 80 ,210 TEXTBOX text2;
HEIGHT 26 ;
WIDTH 119 ;
FONT "Arial" SIZE 9 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 110 ,210 TEXTBOX text3;
HEIGHT 26 ;
WIDTH 119 ;
FONT "Arial" SIZE 9 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,360 BUTTONEX btn1;
CAPTION "Clear History";
ON CLICK clearhis()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 180 ,10 EDITBOX edit1;
WIDTH 320 ;
HEIGHT 130;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 330 ,160 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 170 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 330 ,10 BUTTONEX btn2;
CAPTION "Minimum Cost";
ON CLICK myoptibtn()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 10 ;
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
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 330 ,480 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 9 ;
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
FONT "Arial" SIZE 9 ;
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

win1.Center (  )
win1.text4.Enabled := .f.
win1.combo1.Value := 1
win1.text6.Enabled := .f.
Public amcfirst,amcvalue,amcstr
amcfirst := .t.
amcvalue := 0
amcstr := ""
ACTIVATE WINDOW win1



End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\Mycalc
Resistance RUZSLC2() code
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
MSGBOX("Number of pumps is out of range (16-18)","Sorry")
Return
ENDIF
QPC := 16.7
ENDIF
IF win1.combo1.value = 2
IF lv1min < 12 .or. lv1max > 18
MSGBOX("Number of pumps is out of range (12 to 18)","Sorry")
Return
ENDIF
QPC := 25
ENDIF
IF win1.combo1.value = 3
IF lv1min < 14 .or. lv1max > 18
MSGINFO("Number of pumps is out of range (14 to 18)","Sorry")
Return
ENDIF
ENDIF
QPC := 21
mygen()
Return Nil
Proc mygen
new  = CHR(13)
line  = CHR(10)
MYLV1 := ""
MYLV2 := ""
myresult := "Total cost = F ( Pumps , Hours )" + new + line
mymtc := mycalc(LV1MIN,LV2MIN)
MYMTCL := .T.
FOR LV1 = LV1MIN TO LV1MAX STEP 1
FOR LV2 = LV2MIN TO LV2MAX STEP 1
OUT = TESTHOUR ( LV1,LV2 )
IF OUT = .T.
OUT = MYRESULT ( LV1,LV2 )
ENDIF
Next
Next
IF MYMTCL = .T.
win1.edit1.Value := myresult
Return
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
IF amcfirst = .t.
amcvalue := mymtc
amcstr := mymode + win1.text4.value
amcfirst := .f.
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
IF MYMTCL = .T.
MYMTCL := .F.
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
win1.list1.DeleteAllItems (  )
amcfirst := .t.
win1.text6.Value := ""
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
myret := .f.
IF p2 >= hmin .and. p2 <= hmax
myret := .t.
ENDIF
IF myret = .f.
MYRESULT := MYRESULT + " F ( " + alltrim(str(P1)) + "," + alltrim(str(P2)) + ")" + " hours out of range  (" + alltrim(str(hmin)) + "," + alltrim(str(hmax)) + ")" + chr(13) + chr(10)
ENDIF
Return myret


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESARES("Circuits\Main\Main\Mycalc",211)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\Mycalc","calc")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 )",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 )",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Event",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Date",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center (  )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Enabled := .f.",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.Value := 1",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Enabled := .f.",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Public amcfirst,amcvalue,amcstr",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","amcfirst = .t.",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","amcvalue = 0",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","amcstr = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",151,152)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Total Cost Calculation",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Function mycalc ( p1,p2 )",1,1)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","c1 = 86",2,2)
SS_ESASTEP("Circuits\Main\Main\Mycalc","c2 = 52.7",3,3)
SS_ESASTEP("Circuits\Main\Main\Mycalc","prated = 12000",4,4)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 1 )",5,5)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","eff = 0.90",6,6)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",7,7)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 2 )",8,8)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","eff = 0.93",9,9)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",10,10)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 3 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","eff = 0.97",12,12)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",13,13)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myret = (c1*prated*p1)+(c2*eff*prated*p2*p1)",14,14)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Function (Return myret)",15,15)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Procedure myoptibtn",16,16)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","LV1MIN = WIN1.TEXT5.Value",17,17)
SS_ESASTEP("Circuits\Main\Main\Mycalc","LV1MAX = WIN1.TEXT1.Value",18,18)
SS_ESASTEP("Circuits\Main\Main\Mycalc","LV2MIN = WIN1.TEXT2.Value",19,19)
SS_ESASTEP("Circuits\Main\Main\Mycalc","LV2MAX = WIN1.TEXT3.Value",20,20)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 1 )",21,21)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( lv1min < 16 .or. lv1max > 18 )",22,22)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Show Message 'Number of pumps is out of range (16-18)' Title 'Sorry' Type: Message Box",23,23)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Return",24,24)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",25,25)
SS_ESASTEP("Circuits\Main\Main\Mycalc","QPC = 16.7",26,26)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",27,27)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 2 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( lv1min < 12 .or. lv1max > 18 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Show Message 'Number of pumps is out of range (12 to 18)' Title 'Sorry' Type: Message Box",30,30)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Return",31,31)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",32,32)
SS_ESASTEP("Circuits\Main\Main\Mycalc","QPC = 25",33,33)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",34,34)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 3 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( lv1min < 14 .or. lv1max > 18 )",36,36)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Show Message 'Number of pumps is out of range (14 to 18)' Title 'Sorry'",37,37)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Return",38,38)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",39,39)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",40,40)
SS_ESASTEP("Circuits\Main\Main\Mycalc","QPC = 21",41,41)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Call Procedure mygen",42,42)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Procedure mygen",44,44)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","new = Get character of ASCII Code 13",45,45)
SS_ESASTEP("Circuits\Main\Main\Mycalc","line = Get character of ASCII Code 10",46,46)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV1 = ''",47,47)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV2 = ''",48,48)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myresult = 'Total cost = F ( Pumps , Hours )' + new + line",49,49)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymtc = mycalc(LV1MIN,LV2MIN)",50,50)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYMTCL = .T.",51,51)
SS_ESASTEP("Circuits\Main\Main\Mycalc","FOR LOOP ( From LV1 = LV1MIN To LV1MAX Step 1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","FOR LOOP ( From LV2 = LV2MIN To LV2MAX Step 1)",53,53)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","OUT = Call Function TESTHOUR ( LV1,LV2 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( OUT = .T. )",55,55)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","OUT = Call Function MYRESULT ( LV1,LV2 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of For Loop",58,58)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of For Loop",59,59)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( MYMTCL = .T. )",60,60)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.edit1.Value := myresult",61,61)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Return",62,62)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymtc2 = CONVERT mymtc TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymtc2 = All Trim mymtc2",65,65)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.text4.Value := mymtc2 + ' = F ( ' + MYLV1 + ' , ' + MYLV2 + ')'",66,66)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.edit1.Value := myresult",67,67)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 1 )",68,68)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymode = 'Design Mode : '",69,69)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 2 )",71,71)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymode = 'Max. Discharge : '",72,72)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( win1.combo1.value = 3 )",74,74)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymode = 'Max. Efficiency : '",75,75)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.list1.AddItem ( mymode + win1.text4.value )",77,77)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( amcfirst = .t. )",78,78)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcvalue = mymtc",79,79)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcstr = mymode + win1.text4.value",80,80)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcfirst = .f.",81,81)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( mymtc < amcvalue )",83,83)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcvalue = mymtc",84,84)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcstr = mymode + win1.text4.value",85,85)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.text6.Value := amcstr",87,87)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Function myresult ( LV1,LV2 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","new = Get character of ASCII Code 13",90,90)
SS_ESASTEP("Circuits\Main\Main\Mycalc","line = Get character of ASCII Code 10",91,91)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myntc = Call Function mycalc ( LV1,LV2 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( MYMTCL = .T. )",93,93)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYMTCL = .F.",94,94)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYMTC = MYNTC",95,95)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",96,96)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( MYNTC <= MYMTC )",97,97)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV1 = LV1",98,98)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV2 = LV2",99,99)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV1 = CONVERT MYLV1 TO STRING",100,100)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV2 = CONVERT MYLV2 TO STRING",101,101)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV1 = All Trim MYLV1",102,102)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYLV2 = All Trim MYLV2",103,103)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Mycalc","mymtc = Call Function min ( mymtc,myntc )",105,105)
SS_ESASTEP("Circuits\Main\Main\Mycalc","CV1 = CONVERT myntc TO STRING",106,106)
SS_ESASTEP("Circuits\Main\Main\Mycalc","CV2 = CONVERT LV1 TO STRING",107,107)
SS_ESASTEP("Circuits\Main\Main\Mycalc","CV3 = CONVERT LV2 TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Mycalc","CV2 = All Trim CV2",109,109)
SS_ESASTEP("Circuits\Main\Main\Mycalc","CV3 = All Trim CV3",110,110)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myresult = myresult + CV1 + ' =  F ( ' + CV2 + ' , ' + CV3 + ')' + new + line",111,111)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Function",112,112)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Procedure clearhis",113,113)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.list1.DeleteAllItems (  )",114,114)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcfirst = .t.",115,115)
SS_ESASTEP("Circuits\Main\Main\Mycalc","win1.text6.Value := ''",116,116)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcvalue = 0",117,117)
SS_ESASTEP("Circuits\Main\Main\Mycalc","amcstr = ''",118,118)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Define Function testhour ( p1,p2 )",120,120)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Declare Array qreq",121,121)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 92.59 To Array qreq",122,122)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 128.82 To Array qreq",123,123)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 163.08 To Array qreq",124,124)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 163.08 To Array qreq",125,125)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 199.31 To Array qreq",126,126)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 265.63 To Array qreq",127,127)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 259.61 To Array qreq",128,128)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 233.45 To Array qreq",129,129)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 159.03 To Array qreq",130,130)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 128.82 To Array qreq",131,131)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 120.72 To Array qreq",132,132)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Add item 92.59 To Array qreq",133,133)
SS_ESASTEP("Circuits\Main\Main\Mycalc","hmin = (qreq[1] * 24) / (QPC * p1)",134,134)
SS_ESASTEP("Circuits\Main\Main\Mycalc","hmax = hmin",135,135)
SS_ESASTEP("Circuits\Main\Main\Mycalc","FOR LOOP ( From x = 1 To 12 Step 1)",136,136)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","hnew = (qreq[x] * 24) / (QPC * p1)",137,137)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( hnew < hmin )",138,138)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","hmin = hnew",139,139)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",140,140)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( hnew > hmax )",141,141)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","hmax = hnew",142,142)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of For Loop",144,144)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myret = .f.",145,145)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( p2 >= hmin .and. p2 <= hmax )",146,146)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","myret = .t.",147,147)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Mycalc","IF ( myret = .f. )",149,149)
SS_ESASTEP("Circuits\Main\Main\Mycalc","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Mycalc","MYRESULT = MYRESULT + ' F ( ' + alltrim(str(P1)) + ',' + alltrim(str(P2)) + ')' + ' hours out of ran",150,150)
SS_ESASTEP("Circuits\Main\Main\Mycalc","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Mycalc","End of Function (Return myret)",152,152)
Return
*-------------------------------------------------------------------*
