*---------------------------------------------------------------------------*
* Time : 08:16:45    Date : 09/16/2012
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


Resistance R_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 598 ;
HEIGHT 287 ;
ON MOUSECLICK RedWindow()  ;
ICON "PWCTICON" ;
TITLE "White Window  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 40 ,148 LABEL lbl2 ;
VALUE "··≈‰ ﬁ«· «·Ï «·‘«‘… «·Õ„—«¡ ﬁ„ »«·‰ﬁ— ⁄·Ï «·‘«‘… " ;
WIDTH 304 ;
HEIGHT 34 ;
FONT "" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure RedWindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 553 ;
HEIGHT 376 ;
ICON "PWCTICON" ;
TITLE "Red Window  " ;
CHILD ;
BACKCOLOR {255,0,0} 

@ 65 ,43 LABEL lbl1 ;
VALUE "«Â·« Ê”Â·« »ﬂ ›Ì «·‘«‘… «·Õ„—«¡ ·«€·«ﬁ «·’›Õ… «‰ﬁ— ⁄·Ï “— «·«€·«ﬁ " ;
WIDTH 439 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 155 ,211 BUTTONEX btn1;
CAPTION "≈€·«ﬁ ";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure close()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'White Window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action RedWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '··≈‰ ﬁ«· «·Ï «·‘«‘… «·Õ„—«¡ ﬁ„ »«·‰ﬁ— ⁄·Ï «·‘«‘… '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RedWindow - Event : MOUSECLICK",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Red Window  '",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«Â·« Ê”Â·« »ﬂ ›Ì «·‘«‘… «·Õ„—«¡ ·«€·«ﬁ «·’›Õ… «‰ﬁ— ⁄·Ï “— «·«€·«ﬁ '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
Return
*-------------------------------------------------------------------*
