*---------------------------------------------------------------------------*
* Time : 02:47:50    Date : 10/24/2011
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


Resistance R_TIME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TIME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 425 ;
HEIGHT 425 ;
ON INIT ShowTime()  ;
ICON "PWCTICON" ;
TITLE "Time Information sample - by Ibrahim Abdelelah" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win1.Center ( )
@ 75 ,312 LABEL lbl1 ;
VALUE "S" ;
WIDTH 121 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 75 ,184 LABEL lbl2 ;
VALUE "M" ;
WIDTH 122 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 75 ,60 LABEL lbl3 ;
VALUE "H" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 126 ,282 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 100 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 126 ,154 TEXTBOX text2;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 126 ,30 TEXTBOX text3;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 260 ,312 LABEL lbl4 ;
VALUE "S" ;
WIDTH 121 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 260 ,184 LABEL lbl5 ;
VALUE "M" ;
WIDTH 122 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 260 ,60 LABEL lbl6 ;
VALUE "H" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 314 ,282 TEXTBOX text4;
HEIGHT 40 ;
WIDTH 100 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 314 ,154 TEXTBOX text5;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 314 ,30 TEXTBOX text6;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 10 ,24 LABEL lbl7 ;
VALUE "24 hours system" ;
WIDTH 305 ;
HEIGHT 42 ;
FONT "Arial" SIZE 30  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 188 ,24 LABEL lbl8 ;
VALUE "12 hours system" ;
WIDTH 305 ;
HEIGHT 46 ;
FONT "Arial" SIZE 30  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 198 ,323 LABEL lbl9 ;
VALUE "" ;
WIDTH 61 ;
HEIGHT 38 ;
FONT "Arial" SIZE 25  ;
BOLD ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action showTime()
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc thetime
mytime = TIME()
h = SUBSTR(mytime,1,2)
win1.text3.Value := h
m = SUBSTR(mytime,4,2)
win1.text2.Value := m
s = SUBSTR(mytime,7,2)
win1.text1.Value := s
Return Nil
Proc thetime1
h1 := win1.text3.Value
m1 := win1.text2.Value
s1 := win1.text1.Value
h1 = VAL ( h1 )
IF h1>12 .OR. (h1=12 .and. m1>0 ) .OR. (h1=12 .and. s1>0 )
h2 := h1-12
h2 = STR ( h2 )
h2 = ALLTRIM ( h2 )
win1.text6.Value := h2
m1 := win1.text2.Value
win1.text5.Value := m1
s1 := win1.text1.Value
win1.text4.Value := s1
win1.lbl9.Value := "PM"
ELSE
h1 = STR ( h1 )
win1.text6.Value := h1
win1.text5.Value := m1
win1.text4.Value := s1
win1.lbl9.Value := "AM"
ENDIF
Return Nil
Proc ShowTime
DO thetime
DO thetime1
Return Nil


End Of Resistance

INIT PROCEDURE Init_TIME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Time Information sample - by Ibrahim Abdelelah'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action ShowTime",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'S'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'M'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'H'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'S'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'M'",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'H'",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",109,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '24 hours system'",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",120,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : '12 hours system'",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",130,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ''",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",140,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure thetime",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","mytime = System Time",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","h = Sub String of mytime From 1 Count 2",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := h",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","m = Sub String of mytime From 4 Count 2",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := m",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","s = Sub String of mytime From 7 Count 2",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := s",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure thetime1",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","h1 = win1.text3.Value",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","m1 = win1.text2.Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","s1 = win1.text1.Value",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","h1 = CONVERT h1 TO Numeric",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( h1>12 .OR. (h1=12 .and. m1>0 ) .OR. (h1=12 .and. s1>0 ) )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","h2 = h1-12",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","h2 = CONVERT h2 TO STRING",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","h2 = All Trim h2",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := h2",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","m1 = win1.text2.Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := m1",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","s1 = win1.text1.Value",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := s1",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl9.Value := 'PM'",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","h1 = CONVERT h1 TO STRING",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := h1",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := m1",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := s1",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl9.Value := 'AM'",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowTime",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure thetime",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure thetime1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
Return
*-------------------------------------------------------------------*
