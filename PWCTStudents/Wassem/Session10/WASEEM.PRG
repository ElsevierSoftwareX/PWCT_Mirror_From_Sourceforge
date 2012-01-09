#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:44:23    Date : 01/09/2012
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


Resistance RPEPPI1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPEPPI1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 468 ;
HEIGHT 249 ;
ICON "PWCTICON" ;
TITLE "The Tenth application" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 39 ,63 LABEL lbl1 ;
VALUE "Your name" ;
WIDTH 102 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 82 ,65 LABEL lbl2 ;
VALUE "Text" ;
WIDTH 104 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 148 ,113 BUTTONEX btn2;
CAPTION "Enter";
ON CLICK Enter()  ;
WIDTH 194 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 34 ,194 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 81 ,195 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "Help"
MENUITEM "Help" Action MSGINFO( "You can Write your name for get a <hello> and write the text of your text window" )
END POPUP
END MENU
POPUP "informations"
MENUITEM "programmar" Action MSGINFO( "The programmer is Waseem Mohammad Saaid from syria-Dair Al-zoor" )
END POPUP
POPUP "close"
MENUITEM "close" Action closewin()
END POPUP
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc Enter
Yourname := win1.text1.Value
text := win1.text2.Value
IF Yourname==""
MyOut := MSGExclamation("Enter Your name","one eror")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 486 ;
HEIGHT 164 ;
ICON "PWCTICON" ;
TITLE "Hello..." + Yourname ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 23 ,203 LABEL lbl3 ;
VALUE text ;
WIDTH 206 ;
HEIGHT 45 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,128,64} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 87 ,174 BUTTONEX btn3;
CAPTION "Backe";
ON CLICK closewin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc closewin2
win2.Release ( )
Return Nil
Proc closewin
MyOut := MSGOKCANCEL("Are you sure?","close")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'The Tenth application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Your name'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Text'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Enter'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Enter()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'informations'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'programmar' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'close'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","pro",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Enter",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Yourname = win1.text1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.text2.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Yourname=='' )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter Your name' Title 'one eror' Type: Message Exclamation",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello...' + Yourname",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",78,83)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : text",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Backe'",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin2()",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'close' Type: Message Ok/Cancel",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
Return
*-------------------------------------------------------------------*
