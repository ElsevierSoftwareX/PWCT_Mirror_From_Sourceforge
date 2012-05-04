*---------------------------------------------------------------------------*
* Time : 15:53:33    Date : 05/01/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÃßÈÑ ÑÞã" ;
MAIN ;
BACKCOLOR {236,233,216} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
@ 17 ,41 LABEL lbl1 ;
VALUE "ÇáÑÞã" ;
WIDTH 41 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,95 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 58 ,92 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,314 BUTTONEX btnadd;
CAPTION "ÇáÃÖÇÝÉ";
ON CLICK myadd()  ;
WIDTH 96 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 269 ,101 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÃßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 177 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount = 0
MyOut := MSGBOX("ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ","ÚÝæÇð")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã")
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
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÊÍÏíÏ ÃßÈÑ ÑÞã'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ÇáÃÖÇÝÉ'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'ÊÍÏíÏ ÃßÈÑ ÑÞã'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ' Title 'ÚÝæÇð' Type: Message Box",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
