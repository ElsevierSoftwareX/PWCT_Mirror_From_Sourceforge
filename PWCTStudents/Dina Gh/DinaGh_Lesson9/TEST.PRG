*---------------------------------------------------------------------------*
* Time : 13:41:42    Date : 02/03/2012
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
WIDTH 368 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE " ÊÍÏíÏ ÇßÈÑ ÑÞã" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 24 ,154 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 24 ,13 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 282 ,82 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÇßÈÑ ÑÞã ";
ON CLICK mymax()  ;
WIDTH 200 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 26 ,272 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 53 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 72 ,82 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
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
MyOut := MSGBOX("ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÇÚÏÇÏ","ÚÝæÇ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã")
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
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÊÍÏíÏ ÇßÈÑ ÑÞã'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ÇÖÇÝÉ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'ÊÍÏíÏ ÇßÈÑ ÑÞã '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÇÚÏÇÏ' Title 'ÚÝæÇ' Type: Message Box",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã' Type: Message Box",64,64)
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
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã' Type: Message Box",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
