*---------------------------------------------------------------------------*
* Time : 19:13:00    Date : 11/26/2012
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


Resistance R_TSS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TSS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 793 ;
HEIGHT 400 ;
ON MOUSECLICK Green()  ;
ICON "PWCTICON" ;
TITLE "Red  " ;
MAIN ;
BACKCOLOR {255,0,0} 

@ 281 ,617 BUTTONEX btn1;
CAPTION "«€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK CloseApplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 5 ,687 BUTTONEX btn2;
CAPTION " ﬂ»Ì— «·‰«›–… ";
ON CLICK maxwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 5 ,585 BUTTONEX btn4;
CAPTION " Ê”Ìÿ «·‰«›–… ";
ON CLICK Centerwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 5 ,475 BUTTONEX btn5;
CAPTION " ’€Ì— «·‰«›–… ";
ON CLICK Miniwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Green()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK MSGINFO( "Hello" ) ;
ICON "PWCTICON" ;
TITLE "Green  " ;
CHILD ;
BACKCOLOR {0,255,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure CloseApplication()
win1.Release ( )
return
procedure maxwin()
win1.Maximize ( )
return
procedure Miniwin()
win1.Minimize ( )
return
procedure Centerwin()
win1.Center ( )
return


End Of Resistance

INIT PROCEDURE Init_TSS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Red  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action Green",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·«ﬁ «· ÿ»Ìﬁ '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApplication",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— «·‰«›–… '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxwin",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' Ê”Ìÿ «·‰«›–… '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Centerwin",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' ’€Ì— «·‰«›–… '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Miniwin",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Green - Event : MOUSECLICK",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Green  '",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action 'Hello'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApplication ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxwin ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Miniwin ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Centerwin ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
