*---------------------------------------------------------------------------*
* Time : 03:58:13    Date : 10/24/2011
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
WIDTH 369 ;
HEIGHT 290 ;
ON INIT DD()  ;
ICON "PWCTICON" ;
TITLE "Date Information sample by Ibrahim Abdelelah" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,64} 

win1.Center ( )
@ 82 ,267 LABEL lbl1 ;
VALUE "DD" ;
WIDTH 48 ;
HEIGHT 40 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 82 ,178 LABEL lbl2 ;
VALUE "MM" ;
WIDTH 66 ;
HEIGHT 41 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 82 ,49 LABEL lbl3 ;
VALUE "YYYY" ;
WIDTH 90 ;
HEIGHT 35 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 198 ,226 BUTTONEX btn1;
CAPTION "Close";
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 38 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 128 ,251 TEXTBOX text1;
HEIGHT 46 ;
WIDTH 75 ;
READONLY ;
FONT "Arial" SIZE 24 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 128 ,168 TEXTBOX text2;
HEIGHT 46 ;
WIDTH 77 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 128 ,30 TEXTBOX text3;
HEIGHT 47 ;
WIDTH 135 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 14 ,58 LABEL lbl4 ;
VALUE "Today Date" ;
WIDTH 257 ;
HEIGHT 60 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

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
Return Nil


End Of Resistance

INIT PROCEDURE Init_AS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Date Information sample by Ibrahim Abdelelah'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action DD",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'DD'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'MM'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'YYYY'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Today Date'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure dd",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","date = System Date of today",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","date = CONVERT Date date TO String",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","y = Sub String of date From 7 Count 10",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := y",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","m = Sub String of date From 1 Count 2",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := m",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","d = Sub String of date From 4 Count 2",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := d",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
