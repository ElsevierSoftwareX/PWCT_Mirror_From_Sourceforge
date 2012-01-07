*---------------------------------------------------------------------------*
* Time : 17:07:05    Date : 01/06/2012
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


Resistance R_WINDOWS_MAKER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINDOWS_MAKER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 456 ;
HEIGHT 227 ;
ICON "PWCTICON" ;
TITLE "Windows Maker" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 85 ,218 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 25 ,220 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 86 ,11 LABEL lbl1 ;
VALUE "The text of Your window" ;
WIDTH 205 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 23 ,7 LABEL lbl2 ;
VALUE "The title of your window" ;
WIDTH 200 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 139 ,106 BUTTONEX btn1;
CAPTION "Make my window now!!";
ON CLICK waseem()  ;
WIDTH 217 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "Help"
MENUITEM "Help" Action MSGINFO( "You can Make a window for your Book or lisson, You just have to write the informations" )
END POPUP
POPUP "Informations"
MENUITEM "The programmer" Action MSGINFO( "The programmer is Waseem Mhammad Saaid from Syria" )
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

Proc waseem
waseem := win1.text1.Value
majed := win1.text2.Value
MyOut := MSGBOX(waseem,majed)
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WINDOWS_MAKER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Windows Maker'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The text of Your window'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'The title of your window'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Make my window now!!'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action waseem()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Informations'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The programmer' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Wib site' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'E-mail' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'close'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure waseem",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","waseem = win1.text1.Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","majed = win1.text2.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message waseem Title majed Type: Message Box",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
