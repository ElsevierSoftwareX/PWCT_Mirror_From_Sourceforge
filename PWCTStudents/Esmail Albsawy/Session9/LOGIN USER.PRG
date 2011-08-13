*---------------------------------------------------------------------------*
* Time : 00:07:59    Date : 08/14/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_LOGIN_USER_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_USER_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Login User" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,255} 

@ 21 ,183 IMAGE image1;
PICTURE "images.jpg";
WIDTH 100 HEIGHT 100
@ 130 ,11 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 143 ;
HEIGHT 47 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {255,255,255}
@ 136 ,137 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 195 ,191 BUTTONEX btn1;
CAPTION "Login";
ON CLICK login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
IF user==""
MyOut := MSGBOX("Please inter user name","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hello" + " " + user ;
MODAL ;
BACKCOLOR {0,0,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN_USER
START DOUBLES
Return
*-------------------------------------------------------------------*
