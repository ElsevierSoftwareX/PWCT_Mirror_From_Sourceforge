#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 13:27:20    Date : 01/12/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RABUBV1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RABUBV1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 330 ;
HEIGHT 155 ;
ICON "sameh.ico" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 48 ,120 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 195 ;
FONT "Arial" SIZE 12 ;
BOLD ;
PASSWORD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 48 ,5 BUTTONEX btn1;
CAPTION "› Õ";
ON CLICK Testpass()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 81 ,5 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 21 ,216 LABEL lbl1 ;
VALUE "√œŒ· ﬂ·„… «·„—Ê—" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc Testpass
pass := win1.text1.Value
IF pass="sameh"
MyOut := MSGINFO(" „  ”ÃÌ· «·œŒÊ· »‰Ã«Õ"," ”ÃÌ· œŒÊ·")
win1.Release ( )
ELSEIF pass<>"sameh"
MyOut := MSGExclamation("ﬂ·„… „—Ê— €Ì— ’ÕÌÕ…","Œÿ√")
win1.text1.SetFocus ( )
ENDIF
Return Nil
Proc Close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Procedure",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Testpass",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text1.Value",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pass='sameh' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „  ”ÃÌ· «·œŒÊ· »‰Ã«Õ' Title ' ”ÃÌ· œŒÊ·' Type: Message Info",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass<>'sameh' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ﬂ·„… „—Ê— €Ì— ’ÕÌÕ…' Title 'Œÿ√' Type: Message Exclamation",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*
