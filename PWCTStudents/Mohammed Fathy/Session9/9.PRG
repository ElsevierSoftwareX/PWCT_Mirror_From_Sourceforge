*---------------------------------------------------------------------------*
* Time : 06:55:13    Date : 09/07/2011
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


Resistance R_9_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_9_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 389 ;
ICON "PWCTICON" ;
TITLE "app9 - Mohammed Fathy" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -9 ,-4 IMAGE image1;
PICTURE "APPLE.JPG";
STRETCH ;
WIDTH 494 HEIGHT 366
@ 13 ,6 LABEL lbl1 ;
VALUE "User name" ;
WIDTH 117 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,6 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 104 ,8 BUTTONEX btn1;
CAPTION "Login";
ON CLICK user()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc user
num := win1.text1.Value
IF num== ""
MyOut := MSGBOX("Please write your name","No entry")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 426 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "Hello " + num ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -2 ,-7 IMAGE image2;
PICTURE "microsoft.jpg";
STRETCH ;
WIDTH 430 HEIGHT 281
@ 4 ,4 LABEL lbl2 ;
VALUE "welcome "+ num + " to pwct" ;
WIDTH 288 ;
HEIGHT 57 ;
AUTOSIZE ;
FONT "AR CHRISTY" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 234 ,187 BUTTONEX btn1;
CAPTION "Click here "+ num;
ON CLICK exit()  ;
WIDTH 221 HEIGHT 29 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc exit
win1.Release ( )
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_9
START DOUBLES
Return
*-------------------------------------------------------------------*
