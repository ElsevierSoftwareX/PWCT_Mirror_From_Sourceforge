*---------------------------------------------------------------------------*
* Time : 01:07:16    Date : 07/30/2011
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


Resistance R_APPLICATION_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Reem" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 207 ,140 LABEL lbl1 ;
VALUE "Message" ;
WIDTH 82 ;
HEIGHT 29 ;
FONT "Cooper Black" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 134 ,154 LABEL lbl2 ;
VALUE "Title" ;
WIDTH 60 ;
HEIGHT 28 ;
FONT "Cooper Black" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 12 ,23 LABEL lbl3 ;
VALUE "please type your message here" ;
WIDTH 447 ;
HEIGHT 47 ;
FONT "Cooper Black" SIZE 22  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 323 ,378 BUTTONEX btn1;
CAPTION "exit";
FONTCOLOR {0,128,255};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 320 ,14 BUTTONEX btn2;
CAPTION "show";
FONTCOLOR {0,128,255};
ON CLICK myshow()  ;
WIDTH 101 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 207 ,220 TEXTBOX text1;
HEIGHT 89 ;
WIDTH 252 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 128 ,220 TEXTBOX text2;
HEIGHT 49 ;
WIDTH 215 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,12 IMAGE image1;
PICTURE "NEITH.JPG";
STRETCH ;
WIDTH 120 HEIGHT 260
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc myshow
roma := win1.text1.Value
num := win1.text2.Value
MyOut := MSGINFO(roma,num)
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION
START DOUBLES
Return
*-------------------------------------------------------------------*
