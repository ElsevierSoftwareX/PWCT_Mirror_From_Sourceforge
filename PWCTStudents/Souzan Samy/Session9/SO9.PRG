*---------------------------------------------------------------------------*
* Time : 07:50:35    Date : 02/20/2011
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


Resistance R_SO9_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO9_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 66 ,30 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 164 ,30 LABEL lbl2 ;
VALUE "password" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 62 ,208 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} 

@ 160 ,207 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} ;
PASSWORD 

@ 271 ,244 BUTTONEX btn1;
CAPTION "login";
FONTCOLOR {0,64,128};
ON CLICK user()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc user
user := win1.text1.Value
pass := win1.text2.Value
IF user==""
MyOut := MSGBOX("problem with user name or password","error")
ELSEIF pass==""
MyOut := MSGBOX("please enter your pasword","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "thanks " +user ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,10 IMAGE image1;
PICTURE "SIGPIC83235_1.JPG";
WIDTH 100 HEIGHT 100
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO9
START DOUBLES
Return
*-------------------------------------------------------------------*
