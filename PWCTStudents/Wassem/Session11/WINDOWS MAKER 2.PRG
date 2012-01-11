#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 08:05:29    Date : 01/10/2012
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 533 ;
HEIGHT 308 ;
ICON "PWCTICON" ;
TITLE "Windows Maker" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 18 ,237 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 248 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 67 ,236 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 250 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 75 ,11 LABEL lbl1 ;
VALUE "The text of Your window" ;
WIDTH 205 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 23 ,13 LABEL lbl2 ;
VALUE "The title of your window" ;
WIDTH 200 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 226 ,124 BUTTONEX btn1;
CAPTION "Make my window now!!";
ON CLICK form()  ;
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
@ 121 ,234 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 252 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 123 ,15 LABEL lbl3 ;
VALUE "back color" ;
WIDTH 114 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,64}
@ 169 ,302 TEXTBOX text4;
HEIGHT 29 ;
WIDTH 60 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 169 ,423 TEXTBOX text5;
HEIGHT 33 ;
WIDTH 62 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} 

@ 172 ,232 LABEL lbl4 ;
VALUE "Height" ;
WIDTH 61 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,64}
@ 171 ,367 LABEL lbl5 ;
VALUE "Width" ;
WIDTH 54 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,64}
@ 170 ,18 LABEL lbl6 ;
VALUE "Size" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,64}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc form
waseemm := win1.text5.Value
majedd := win1.text4.Value
colornum := win1.text3.Value
waseem := win1.text1.Value
majed := win1.text2.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 100 ,200 ;
WIDTH &waseemm ;
HEIGHT &majedd ;
ICON "PWCTICON" ;
TITLE "&waseem" ;
MODAL ;
NOSIZE ;
BACKCOLOR {&colornum} 

@ 10 ,10 LABEL lbl7 ;
VALUE "&waseem" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_WINDOWS_MAKER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Windows Maker'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The text of Your window'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'The title of your window'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Make my window now!!'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action form()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Informations'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The programmer' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Wib site' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'E-mail' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'close'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'back color'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",75,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Height'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",90,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Width'",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",99,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Size'",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,114)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","pro",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure form",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","waseemm = win1.text5.Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","majedd = win1.text4.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","waseem = win1.text1.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","majed = win1.text2.Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&waseem'",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",134,139)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '&waseem'",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",142,148)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",154,154)
Return
*-------------------------------------------------------------------*
