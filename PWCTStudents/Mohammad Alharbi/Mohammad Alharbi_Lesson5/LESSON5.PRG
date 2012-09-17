*---------------------------------------------------------------------------*
* Time : 08:55:24    Date : 09/17/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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


Resistance R_LESSON5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 398 ;
HEIGHT 202 ;
ON MOUSECLICK REDCOLOR()  ;
ICON "PWCTICON" ;
TITLE "White window  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 65 ,143 BUTTONEX btn1;
CAPTION "close ";
ON CLICK close()  ;
WIDTH 123 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
procedure REDCOLOR()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 427 ;
HEIGHT 257 ;
ON MOUSECLICK MSGINFO( "HHHHH" ) ;
ICON "PWCTICON" ;
TITLE "Red Color  " ;
CHILD ;
BACKCOLOR {255,0,0} 

@ 32 ,171 BUTTONEX btn2;
CAPTION " ﬂ»Ì— «·‘«‘… ";
ON CLICK maxwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,173 BUTTONEX btn3;
CAPTION " Ê”Ìÿ «·‘«‘… ";
ON CLICK MID()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 118 ,173 BUTTONEX btn4;
CAPTION " ’€Ì—«·‘«‘… ";
ON CLICK minwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 159 ,172 BUTTONEX btn5;
CAPTION "≈€·«ﬁ ";
ON CLICK closewin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 2 ,316 IMAGE image1;
PICTURE "flowers.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure MID()
win2.Center ( )
return
procedure maxwin()
win2.Maximize ( )
return
procedure minwin()
win2.Minimize ( )
return
procedure closewin2()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'White window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action REDCOLOR",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure REDCOLOR - Event : MOUSECLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Red Color  '",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action 'HHHHH'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— «·‘«‘… '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxwin",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' Ê”Ìÿ «·‘«‘… '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MID",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' ’€Ì—«·‘«‘… '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minwin",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '≈€·«ﬁ '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin2",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'flowers.jpg'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MID ( Event : CLICK )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxwin ( Event : CLICK )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minwin ( Event : CLICK )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Minimize ( )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2 ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
