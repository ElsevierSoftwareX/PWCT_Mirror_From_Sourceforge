*---------------------------------------------------------------------------*
* Time : 21:07:11    Date : 03/07/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 466 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÇßÈÑ ÑÞã  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {150,241,241} 

@ 29 ,340 LABEL lbl1 ;
VALUE " ÇáÑÞã" ;
WIDTH 37 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 28 ,128 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 80 ,128 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 27 ,12 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 310 ,242 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÇßÈÑ ÑÞã ";
ON CLICK mymax()  ;
WIDTH 116 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 311 ,97 BUTTONEX btnclear;
CAPTION "ãÓÍ ÇáÞÇÆãÉ ";
ON CLICK clearlist()  ;
WIDTH 107 HEIGHT 33 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX(" ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ"," ÚÝæÂ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã ")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã ")
Return Nil
Proc clearlist
win1.list1.DeleteAllItems ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÊÍÏíÏ ÇßÈÑ ÑÞã  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' ÇáÑÞã'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ÇÖÇÝÉ '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'ÊÍÏíÏ ÇßÈÑ ÑÞã '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclear ) , Caption : 'ãÓÍ ÇáÞÇÆãÉ '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clearlist()",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ' Title ' ÚÝæÂ' Type: Message Box",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clearlist",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
Return
*-------------------------------------------------------------------*
