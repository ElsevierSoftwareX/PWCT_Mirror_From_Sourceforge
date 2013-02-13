*---------------------------------------------------------------------------*
* Time : 12:20:40    Date : 01/11/2013
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
AT 10 ,10 ;
WIDTH 687 ;
HEIGHT 249 ;
ON MOUSECLICK RedWindow()  ;
ICON "PWCTICON" ;
TITLE " white window «··Ê‰ «·«»Ì÷" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 136 ,270 BUTTONEX btn1;
CAPTION "«€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK CloseApplication()  ;
WIDTH 110 HEIGHT 26 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure RedWindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK MSGINFO( "„—Õ»«" ) ;
ICON "PWCTICON" ;
TITLE " Red Window «··Ê‰ «·«Õ„— " ;
CHILD ;
BACKCOLOR {255,0,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure CloseApplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' white window «··Ê‰ «·«»Ì÷'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action RedWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·«ﬁ «· ÿ»Ìﬁ '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApplication",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RedWindow - Event : MOUSECLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Red Window «··Ê‰ «·«Õ„— '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '„—Õ»«'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApplication ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
