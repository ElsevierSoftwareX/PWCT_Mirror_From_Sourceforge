*---------------------------------------------------------------------------*
* Time : 00:54:13    Date : 12/03/2012
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
ON MOUSEDRAG blackWindow()  ;
ICON "PWCTICON" ;
TITLE "«··Ê‰ «·«»Ì÷  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 29 ,147 BUTTONEX btn1;
CAPTION "«€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK closeAppliction()  ;
WIDTH 102 HEIGHT 68 ;
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

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure closeAppliction()
win1.Release ( )
return
procedure blackWindow()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 430 ,290 ;
WIDTH 416 ;
HEIGHT 225 ;
ICON "PWCTICON" ;
TITLE " «··Ê‰ «·«”Êœ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win3
EndIF

return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«··Ê‰ «·«»Ì÷  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action redwindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEDRAG : Action blackWindow",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·«ﬁ «· ÿ»Ìﬁ '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeAppliction",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure redwindow - Event : MOUSECLICK",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«··Ê‰ «·«Õ„—  '",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '„’— «·Õ»Ì»…'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",34,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeAppliction ( Event : CLICK )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure blackWindow - Event : MOUSEDRAG",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : ' «··Ê‰ «·«”Êœ'",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",57,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
