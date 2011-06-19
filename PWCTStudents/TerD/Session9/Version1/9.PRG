*---------------------------------------------------------------------------*
* Time : 20:54:15    Date : 06/18/2011
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
WIDTH 441 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 142 ,316 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 120 ;
HEIGHT 29 ;
FONT "" SIZE 18  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 136 ,86 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 238 ,130 BUTTONEX btn1;
CAPTION "œŒÊ·";
ON CLICK mylogn()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 14 ,121 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\ADMINISTRATOR\DESKTOP\«· ÿ»Ìﬁ «· «”⁄\11.JPG";
WIDTH 133 HEIGHT 111
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myx()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mylogn
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· «·«”„","!Œÿ«¡")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 420 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«"+user ;
MODAL ;
BACKCOLOR {64,0,64} 

@ 177 ,269 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK myx()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 10 ,10 BUTTONEX btn2;
CAPTION "«· —ÕÌ»";
ON CLICK mymasg()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myx()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc myx
win1.Release ( )
Return Nil
Proc mymasg
MyOut := MSGBOX("„—Õ»« »ﬂ„ ›Ï «·»—„Ã… »œÊ‰ ﬂÊœ","‘ﬂ—«")
Return Nil


End Of Resistance

INIT PROCEDURE Init_9
START DOUBLES
Return
*-------------------------------------------------------------------*
