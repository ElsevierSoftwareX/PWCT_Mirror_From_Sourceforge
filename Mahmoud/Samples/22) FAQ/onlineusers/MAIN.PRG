*---------------------------------------------------------------------------*
* Time : 01:45:49    Date : 07/03/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_MAIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 283 ;
HEIGHT 141 ;
ICON "PWCTICON" ;
TITLE "PWCT Forum (Arabic)" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 60 ,113 BUTTONEX btn1;
CAPTION "  ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 2000 ;
Action members_status()
@ 21 ,114 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 150 ;
VALUE "„Õ„Êœ ›«Ìœ" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 30 ,20 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 70 ,20 LABEL lbl2 ;
VALUE "Status :" ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Members_Status
win1.timer1.Enabled := false
cMemberName := win1.text1.Value
OPEN CONNECTION MyCon SERVER 'doublesvsoop.sourceforge.net' PORT 80 HTTP
GET URL "/forum/index.php" TO Response CONNECTION MyCon
CLOSE CONNECTION MyCon
nStartPos = AT("<!-- logged-in users -->",response)
nEndPos = AT("<!-- end logged-in users -->",response)
response = SUBSTR(response,nStartPos,nEndPos-nStartPos)
v1 = AT(cMemberName,response)
IF v1 > 0
DO setproperty WITH "win1","btn1","backcolor",{0,255,0}
ELSE
DO setproperty WITH "win1","btn1","backcolor",{255,0,0}
ENDIF
win1.timer1.Enabled := true
DO EVENTS
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
Return
*-------------------------------------------------------------------*
