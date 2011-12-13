*---------------------------------------------------------------------------*
* Time : 10:45:53    Date : 12/13/2011
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


Resistance R_MAXNUM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAXNUM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÃßÈÑ ÑÞã" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 48 ,13 LABEL lbl1 ;
VALUE "ÇÏÎá ÇáÑÞã åäÇ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 42 ,122 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 98 ,125 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 42 ,345 BUTTONEX btnadd;
CAPTION "ÇÖÝ ÑÞã";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 205 ,350 BUTTONEX btnmax;
CAPTION "ÇßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
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


End Of Resistance

INIT PROCEDURE Init_MAXNUM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd )",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÇÚÏÇÏ' Title 'ÚÝæÇ' Type: Message Box",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",75,75)
Return
*-------------------------------------------------------------------*
