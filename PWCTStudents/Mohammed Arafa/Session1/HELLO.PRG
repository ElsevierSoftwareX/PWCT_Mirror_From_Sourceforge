*---------------------------------------------------------------------------*
* Time : 14:58:32    Date : 12/28/2011
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


Resistance R_HELLO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 694 ;
HEIGHT 434 ;
ICON "PWCTICON" ;
TITLE "Hello world" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 279 ,291 BUTTONEX btn1;
CAPTION "Close";
ON CLICK myclose()  ;
WIDTH 127 HEIGHT 54 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 15 ,18 LABEL lbl1 ;
VALUE "I am an Engineer ..... ," ;
WIDTH 487 ;
HEIGHT 74 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 132 ,156 LABEL lbl2 ;
VALUE " So , I am thinking ." ;
WIDTH 427 ;
HEIGHT 63 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 86 ,13 IMAGE image1;
PICTURE "Brain-Power6.jpg";
STRETCH ;
WIDTH 142 HEIGHT 125
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myclose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_HELLO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello world'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'I am an Engineer ..... ,'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' So , I am thinking .'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Brain-Power6.jpg'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
