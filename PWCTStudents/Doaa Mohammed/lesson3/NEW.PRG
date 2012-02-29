*---------------------------------------------------------------------------*
* Time : 02:00:09    Date : 03/01/2012
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


Resistance R_NEW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 516 ;
HEIGHT 264 ;
ICON "PWCTICON" ;
TITLE "main window  " ;
MAIN ;
BACKCOLOR {128,255,255} 

@ 171 ,200 BUTTONEX btn1;
CAPTION "login ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 111 ,203 TEXTBOX text1;
HEIGHT 24 ;
WIDTH 255 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 116 ,99 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 95 ;
HEIGHT 24 ;
FONT "Arial Narrow" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 3 ,190 IMAGE image1;
PICTURE "E:\PWCT\LESSON3\195323_100002003844382_7724705_N.JPG";
STRETCH ;
WIDTH 100 HEIGHT 100
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("please inter user name ","error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 402 ;
HEIGHT 201 ;
ICON "PWCTICON" ;
TITLE " hello " + user ;
MODAL ;
BACKCOLOR {0,255,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'main window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'E:\PWCT\LESSON3\195323_100002003844382_7724705_N.JPG'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please inter user name ' Title 'error ' Type: Message Exclamation",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' hello ' + user",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*
