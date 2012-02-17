*---------------------------------------------------------------------------*
* Time : 23:26:57    Date : 02/13/2012
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


Resistance R_INTRO1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_INTRO1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 498 ;
HEIGHT 204 ;
ICON "PWCTICON" ;
TITLE "«· œ—Ì» «· „ÂÌœÏ  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "HOME.JPG";
STRETCH ;
WIDTH 490 HEIGHT 169
@ 20 ,56 LABEL lbl1 ;
VALUE "«· œ—Ì» «· „ÂÌœÏ " ;
WIDTH 148 ;
HEIGHT 32 ;
FONT "Arabic Transparent" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 116 ,298 BUTTONEX btn1;
CAPTION "«ŸÂ«— ";
ON CLICK MSGINFO( "„—Õ»« «” «–Ï „Õ„Êœ ›«Ìœ" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 116 ,23 BUTTONEX btn2;
CAPTION "«€·«ﬁ ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_INTRO1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· œ—Ì» «· „ÂÌœÏ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HOME.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· œ—Ì» «· „ÂÌœÏ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«ŸÂ«— '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '„—Õ»« «” «–Ï „Õ„Êœ ›«Ìœ'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«€·«ﬁ '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
