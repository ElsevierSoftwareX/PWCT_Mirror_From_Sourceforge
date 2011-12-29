*---------------------------------------------------------------------------*
* Time : 18:20:05    Date : 12/28/2011
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


Resistance R_FIRST_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FIRST_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 642 ;
HEIGHT 295 ;
ICON "PWCTICON" ;
TITLE "First Application" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 26 ,84 LABEL lbl1 ;
VALUE "Do You Love Basketball ?" ;
WIDTH 257 ;
HEIGHT 36 ;
FONT "Bradley Hand ITC" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,64}
@ 143 ,67 BUTTONEX btn1;
CAPTION "Yes I Do ";
ON CLICK MSGINFO( "Me Too I Adore Basketball" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 144 ,249 BUTTONEX btn2;
CAPTION "No I Don't ";
ON CLICK closeapplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 4 ,415 IMAGE image1;
PICTURE "ball.jpg";
STRETCH ;
WIDTH 207 HEIGHT 243
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_FIRST_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'First Application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Do You Love Basketball ?'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Yes I Do '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Me Too I Adore Basketball'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'No I Don't '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ball.jpg'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
