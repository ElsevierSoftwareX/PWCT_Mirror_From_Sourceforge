#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 07:17:12    Date : 01/15/2012
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


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 533 ;
HEIGHT 178 ;
ICON "PWCTICON" ;
TITLE "Hello!!" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 21 ,240 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 250 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 29 ,15 LABEL lbl1 ;
VALUE "Your name" ;
WIDTH 205 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 75 ,119 BUTTONEX btn1;
CAPTION " hello!! ";
ON CLICK form()  ;
WIDTH 217 HEIGHT 27 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "Help"
MENUITEM "Help" Action MSGINFO( "You can Make a window for your Book or lisson, You just have to write the informations" )
END POPUP
POPUP "Informations"
MENUITEM "The programmer" Action MSGINFO( "The programmer is Waseem Mhammad Saaid from Syria / Dair Al-zoor" )
MENUITEM "Wib site" Action MSGINFO( "www.nwsmgroup.allgoo.net" )
MENUITEM "E-mail" Action MSGINFO( "waseem_m_s@hotmail.com" )
END POPUP
POPUP "close"
MENUITEM "close" Action close()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc form
majed := win1.text2.Value
text := win1.text2.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 100 ,200 ;
WIDTH 379 ;
HEIGHT 152 ;
ICON "PWCTICON" ;
TITLE "hello..." + "&majed" ;
MODAL ;
NOSIZE 

@ 15 ,56 LABEL lbl7 ;
VALUE "Hello...."+"&text" ;
WIDTH 214 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 65 ,105 BUTTONEX btn2;
CAPTION "CLOSE";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello!!'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Your name'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' hello!! '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action form()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Informations'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The programmer' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Wib site' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'E-mail' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'close'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","pro",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure form",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","majed = win1.text2.Value",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.text2.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'hello...' + '&majed'",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Hello....'+'&text'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'CLOSE'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
