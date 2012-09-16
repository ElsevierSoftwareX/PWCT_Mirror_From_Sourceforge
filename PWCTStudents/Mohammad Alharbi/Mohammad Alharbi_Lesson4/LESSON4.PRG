*---------------------------------------------------------------------------*
* Time : 08:39:38    Date : 09/16/2012
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


Resistance R_LESSON4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 506 ;
HEIGHT 235 ;
ON MOUSECLICK Red()  ;
ICON "PWCTICON" ;
TITLE "White window  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 82 ,190 BUTTONEX btn1;
CAPTION "«€·«ﬁ ";
PICTURE "";
VERTICAL ;
UPPERTEXT ;
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Red()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 585 ;
HEIGHT 372 ;
ON MOUSECLICK MSGINFO( "Thank you" ) ;
ICON "PWCTICON" ;
TITLE "Red window  " ;
CHILD ;
BACKCOLOR {255,0,0} 

@ 27,252 HYPERLINK Hyper1;
VALUE "PWCT Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 178 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 14 ;
ITALIC ;
TOOLTIP "program without code technology" ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 27 ,40 LABEL lbl1 ;
VALUE "Visit Pwct Website" ;
WIDTH 203 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'White window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action Red",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·«ﬁ '",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Red - Event : MOUSECLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Red window  '",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action 'Thank you'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",38,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Visit Pwct Website'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
