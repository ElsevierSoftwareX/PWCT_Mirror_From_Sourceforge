*---------------------------------------------------------------------------*
* Time : 17:41:58    Date : 01/04/2095
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


Resistance R_HELLO_WORLD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_WORLD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 369 ;
HEIGHT 261 ;
ICON "PWCTICON" ;
TITLE "Hello World" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 4 ,7 LABEL lbl1 ;
VALUE "«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« Â" ;
WIDTH 347 ;
HEIGHT 50 ;
FONT "" SIZE 24  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {64,0,0}
@ 42 ,77 LABEL lbl2 ;
VALUE "Hello World" ;
WIDTH 245 ;
HEIGHT 53 ;
FONT "Dinarjev Republika" SIZE 26  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,64,0}
@ 120 ,42 BUTTONEX btn1;
CAPTION "say hello";
ON CLICK MSGINFO( "Hello World" ) ;
WIDTH 88 HEIGHT 24 ;
FONT "MGI Archon" SIZE 14 ;
TOOLTIP ""
@ 118 ,207 BUTTONEX btn2;
CAPTION " ﬁ· «·Õ„œ ··Â";
ON CLICK MSGINFO( "«·Õ„œ ··Â Õ„œ« ﬂÀÌ—« ﬂ„« Ì‰»€Ï ·Ã·« ÊÃÂÂ Ê⁄ŸÌ„ ”·ÿ«‰Â" ) ;
WIDTH 111 HEIGHT 29 ;
FONT "Al-Kharashi 21" SIZE 14 ;
TOOLTIP ""
@ 185 ,106 BUTTONEX btn3;
CAPTION " close window";
ON CLICK closeapplicati()  ;
WIDTH 130 HEIGHT 25 ;
FONT "MGI Archon" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplicati()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_HELLO_WORLD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« Â'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Hello World'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'say hello'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello World'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬁ· «·Õ„œ ··Â'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '«·Õ„œ ··Â Õ„œ« ﬂÀÌ—« ﬂ„« Ì‰»€Ï ·Ã·« ÊÃÂÂ Ê⁄ŸÌ„ ”·ÿ«‰Â'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' close window'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplicati",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplicati ( Event : CLICK )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
