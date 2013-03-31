*---------------------------------------------------------------------------*
* Time : 11:44:10    Date : 01/04/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
* Get parameters from command line
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
AT 10 ,10 ;
WIDTH 481 ;
HEIGHT 331 ;
ON INIT MyWork()  ;
ICON "PWCTICON" ;
TITLE "Color for Negative Numbers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 76 ,16 TEXTBOX text1;
ON CHANGE MyWork()  ;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "-10" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 113 ,16 TEXTBOX text2;
ON CHANGE MyWork()  ;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "-5" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 36 ,232 LABEL lbl1 ;
VALUE " Textbox Type" ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 76 ,232 LABEL lbl2 ;
VALUE "String " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 113 ,232 LABEL lbl3 ;
VALUE "Number " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 198 ,345 LABEL lbl4 ;
VALUE " Positive " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 235 ,345 LABEL lbl5 ;
VALUE " Negative " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,255,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 162 ,345 LABEL lbl6 ;
VALUE "Colors " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 36 ,16 LABEL lbl7 ;
VALUE "Values" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure MyWork()
cNumber := win1.text1.Value
nNumber = VAL ( cNumber )
IF nNumber < 0
win1.text1.BackColor := {0,255,0}
ELSE
win1.text1.BackColor := {255,255,255}
ENDIF
nNumber := win1.text2.Value
IF nNumber < 0
win1.text2.BackColor := {0,255,0}
ELSE
win1.text2.BackColor := {255,255,255}
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Color for Negative Numbers  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action MyWork",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action MyWork",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action MyWork",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Textbox Type'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'String '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Number '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' Positive '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ' Negative '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Colors '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Values'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyWork - Event : INIT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","cNumber = win1.text1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","nNumber = CONVERT cNumber TO Numeric",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNumber < 0 )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.BackColor := {0,255,0}",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.BackColor := {255,255,255}",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","nNumber = win1.text2.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNumber < 0 )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.BackColor := {0,255,0}",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.BackColor := {255,255,255}",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
Return
*-------------------------------------------------------------------*
