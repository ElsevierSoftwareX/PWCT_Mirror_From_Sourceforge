*---------------------------------------------------------------------------*
* Time : 01:21:49    Date : 12/03/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 230 ,290 ;
WIDTH 415 ;
HEIGHT 225 ;
ON MOUSECLICK redwindow()  ;
ICON "PWCTICON" ;
TITLE "«··Ê‰ «·«»Ì÷  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 71 ,125 BUTTONEX btn1;
CAPTION "«€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK closeAppliction()  ;
WIDTH 119 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure redwindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,290 ;
WIDTH 415 ;
HEIGHT 225 ;
ON MOUSECLICK MSGINFO( "„’— «·Õ»Ì»…" ) ;
ICON "PWCTICON" ;
TITLE "«··Ê‰ «·«Õ„—  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,0} 

@ 9 ,157 BUTTONEX btn2;
CAPTION " ﬂ»Ì— «·‰«›–… ";
ON CLICK maxWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 46 ,156 BUTTONEX btn3;
CAPTION " Ê”Ìÿ «·‰«›–… ";
ON CLICK CenterWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 122 ,154 BUTTONEX btn4;
CAPTION "«€·«ﬁ «·‰«›–… ";
ON CLICK CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 84 ,154 BUTTONEX btn5;
CAPTION " ’€Ì— «·‰«›–… ";
ON CLICK RestoreWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure closeAppliction()
win1.Release ( )
return
procedure maxWindow()
win2.Maximize ( )
return
procedure CenterWindow()
win2.Center ( )
return
procedure CloseWindow()
win2.Release ( )
return
procedure RestoreWindow()
win2.Restore ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«··Ê‰ «·«»Ì÷  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action redwindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·«ﬁ «· ÿ»Ìﬁ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeAppliction",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure redwindow - Event : MOUSECLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«··Ê‰ «·«Õ„—  '",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '„’— «·Õ»Ì»…'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— «·‰«›–… '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxWindow",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' Ê”Ìÿ «·‰«›–… '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CenterWindow",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«€·«ﬁ «·‰«›–… '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWindow",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' ’€Ì— «·‰«›–… '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action RestoreWindow",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeAppliction ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxWindow ( Event : CLICK )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CenterWindow ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWindow ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RestoreWindow ( Event : CLICK )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Restore ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*
