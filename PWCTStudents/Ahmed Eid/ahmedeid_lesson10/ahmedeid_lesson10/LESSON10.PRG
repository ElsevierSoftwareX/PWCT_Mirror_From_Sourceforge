*---------------------------------------------------------------------------*
* Time : 04:09:19    Date : 03/03/2012
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


Resistance R_LESSON10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 267 ;
HEIGHT 316 ;
ICON "PWCTICON" ;
TITLE "áÊÍÏíÏ ÃßÈÑ ÑÞã  " ;
MAIN ;
NOSIZE ;
BACKCOLOR {0,0,255} 

@ 8 ,6 BUTTONEX btnadd;
CAPTION " ÅÖÇÝÉ ÑÞã";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "" SIZE 14 ;
TOOLTIP ""
@ 242 ,76 BUTTONEX btnmax;
CAPTION " ÊÍÏíÏ ÃßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "" SIZE 14 ;
TOOLTIP ""
@ 41 ,8 LISTBOX list1;
WIDTH 240 ;
HEIGHT 192 ;
FONT "" SIZE 14 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0}
@ 16 ,225 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 55 ;
HEIGHT 23 ;
FONT "" SIZE 14  ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0}
@ 9 ,113 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 108 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0} ;
NUMERIC 

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
MyOut := MSGBOX("ÇáÞÇÆãå ÊÎáæ ãä ÇáÃÑÞÇã  "," ÚÝæÇ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymax," ÇßÈÑ ÑÞã åæ ")
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
MyOut := MSGBOX(mymax," ÇßÈÑ ÑÞã åæ ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'áÊÍÏíÏ ÃßÈÑ ÑÞã  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : ' ÅÖÇÝÉ ÑÞã'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : ' ÊÍÏíÏ ÃßÈÑ ÑÞã'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãå ÊÎáæ ãä ÇáÃÑÞÇã  ' Title ' ÚÝæÇ' Type: Message Box",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title ' ÇßÈÑ ÑÞã åæ ' Type: Message Box",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title ' ÇßÈÑ ÑÞã åæ ' Type: Message Box",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
