*---------------------------------------------------------------------------*
* Time : 04:21:40    Date : 10/24/2011
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_AS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 392 ;
HEIGHT 319 ;
ICON "PWCTICON" ;
TITLE "Age Calculation sample" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,64} 

win1.Center ( )
@ 13 ,315 LABEL lbl1 ;
VALUE "DD" ;
WIDTH 35 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 13 ,261 LABEL lbl2 ;
VALUE "MM" ;
WIDTH 35 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 12 ,187 LABEL lbl3 ;
VALUE "YYYY" ;
WIDTH 57 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 46 ,318 TEXTBOX text1;
HEIGHT 42 ;
WIDTH 35 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 46 ,255 TEXTBOX text2;
HEIGHT 42 ;
WIDTH 35 ;
READONLY ;
FONT "Arial" SIZE 14 ;
TOOLTIP " ÇáÔåÑ ÇáÍÇáì" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 46 ,185 TEXTBOX text3;
HEIGHT 42 ;
WIDTH 51 ;
READONLY ;
FONT "Arial" SIZE 14 ;
TOOLTIP " ÇáÓäÉ ÇáÍÇáíÉ" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 114 ,28 LABEL lbl5 ;
VALUE "Date of birth" ;
WIDTH 122 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 49 ,28 LABEL lbl6 ;
VALUE "Today Date" ;
WIDTH 122 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 107 ,317 TEXTBOX text4;
HEIGHT 40 ;
WIDTH 35 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 107 ,256 TEXTBOX text5;
HEIGHT 40 ;
WIDTH 35 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 107 ,185 TEXTBOX text6;
HEIGHT 40 ;
WIDTH 51 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 167 ,317 TEXTBOX text7;
HEIGHT 39 ;
WIDTH 35 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 167 ,257 TEXTBOX text8;
HEIGHT 39 ;
WIDTH 36 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 167 ,186 TEXTBOX text9;
HEIGHT 39 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0} 

@ 171 ,28 BUTTONEX btn1;
CAPTION "Calculate";
ON CLICK calc()  ;
WIDTH 92 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 179 ,133 LABEL L ;
VALUE "Age" ;
WIDTH 47 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 233 ,130 BUTTONEX btn2;
CAPTION "Close";
ON CLICK myexit()  ;
WIDTH 122 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO dd
ACTIVATE WINDOW win1
EndIF

Proc calc
t1 = VAL ( win1.text1.value )
t2 = VAL ( win1.text2.value )
t3 = VAL ( win1.text3.value )
t4 = VAL ( win1.text4.value )
t5 = VAL ( win1.text5.value )
t6 = VAL ( win1.text6.value )
IF t4>t1
t1 := t1+30
t2 := t2-1
ENDIF
IF t5>t2
t3 := t3-1
t2 := t2+12
ENDIF
p := t1-t4
p1 := t2-t5
p2 := t3-t6
IF p>=30
p := p-30
p1 := p1+1
ENDIF
IF p1>12
p2 := p2+1
ENDIF
IF t3<=0 .or. t6<=0 .or. p2<0 .or. p1<0 .or. t6>t3 .or. p<0 .or. t4>31 .or. (t4>29 .and. t5=2 ) .or. t5>12
MyOut := MSGINFO("Invalid parameters , check your data !!!","Sorry")
p := 0
p1 := 0
p2 := 0
ENDIF
p = STR ( p )
p1 = STR ( p1 )
p2 = STR ( p2 )
p = ALLTRIM ( p )
p1 = ALLTRIM ( p1 )
p2 = ALLTRIM ( p2 )
win1.text7.Value := p
win1.text8.Value := p1
win1.text9.Value := p2
Return Nil
Proc myexit
win1.Release ( )
Return Nil
Proc dd
set century on
date = DATE()
date = DTOC ( date )
y = SUBSTR(date,7,10)
win1.text3.Value := y
m = SUBSTR(date,1,2)
win1.text2.Value := m
d = SUBSTR(date,4,2)
win1.text1.Value := d
win1.text4.SetFocus ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_AS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Age Calculation sample by Ibrahim Abdelelah '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'DD'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'MM'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'YYYY'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Date of birth'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Today Date'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",77,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate'",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( L ) , Caption : 'Age'",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure dd",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",146,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","t1 = CONVERT win1.text1.value TO Numeric",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = CONVERT win1.text2.value TO Numeric",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","t3 = CONVERT win1.text3.value TO Numeric",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","t4 = CONVERT win1.text4.value TO Numeric",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","t5 = CONVERT win1.text5.value TO Numeric",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","t6 = CONVERT win1.text6.value TO Numeric",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t4>t1 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","t1 = t1+30",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = t2-1",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t5>t2 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","t3 = t3-1",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = t2+12",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","p = t1-t4",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = t2-t5",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = t3-t6",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p>=30 )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","p = p-30",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = p1+1",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1>12 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = p2+1",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t3<=0 .or. t6<=0 .or. p2<0 .or. p1<0 .or. t6>t3 .or. p<0 .or. t4>31 .or. (t4>29 .and. t5=2 ) .or. t5>12 )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Invalid parameters , check your data !!!' Title 'Sorry' Type: Message Info",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","p = 0",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 0",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = 0",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","p = CONVERT p TO STRING",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = CONVERT p1 TO STRING",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = CONVERT p2 TO STRING",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","p = All Trim p",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = All Trim p1",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = All Trim p2",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text7.Value := p",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text8.Value := p1",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text9.Value := p2",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure dd",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","date = System Date of today",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","date = CONVERT Date date TO String",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","y = Sub String of date From 7 Count 10",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := y",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","m = Sub String of date From 1 Count 2",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := m",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","d = Sub String of date From 4 Count 2",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := d",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.SetFocus ( )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
Return
*-------------------------------------------------------------------*
