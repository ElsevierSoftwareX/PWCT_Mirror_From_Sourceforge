*---------------------------------------------------------------------------*
* Time : 23:12:07    Date : 12/28/2011
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


Resistance R_HELLOW_WORLD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLOW_WORLD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 481 ;
HEIGHT 283 ;
ICON "PWCTICON" ;
TITLE "Hellow World" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "C:\USERS\PUBLIC\PICTURES\SAMPLE PICTURES\TULIPS.JPG";
WIDTH 473 HEIGHT 245
@ 10 ,10 LABEL lbl1 ;
VALUE "Hellow World" ;
WIDTH 230 ;
HEIGHT 45 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {64,0,64}
@ 196 ,334 BUTTONEX btn1;
CAPTION "Close";
ON CLICK myclose()  ;
WIDTH 107 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 100 ,130 BUTTONEX btn2;
CAPTION "PWCT pdf";
ON CLICK book()  ;
WIDTH 205 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil
Proc book
Execute File "C:\USERS\ITC\DESKTOP\«·«¡ Õ«„œ\TITORIAL\ABOELSOUDABDELRAOUF_ARABICTUTORIALS_LES2.PDF"
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLOW_WORLD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hellow World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'C:\USERS\PUBLIC\PICTURES\SAMPLE PICTURES\TULIPS.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hellow World'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'PWCT pdf'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action book()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure book",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\USERS\ITC\DESKTOP\«·«¡ Õ«„œ\TITORIAL\ABOELSOUDABDELRAOUF_ARABICTUTORIALS_LES2.PDF'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
