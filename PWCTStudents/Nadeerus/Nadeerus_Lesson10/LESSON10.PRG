*---------------------------------------------------------------------------*
* Time : 12:04:50    Date : 05/14/2012
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
WIDTH 485 ;
HEIGHT 297 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÃßÈÑ ÑÞã" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 39 ,431 LABEL lbl1 ;
VALUE "ÇáÑÞã" ;
WIDTH 36 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 64 ,243 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 102 ,291 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 144 ,291 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÃßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 23 ,24 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure myadd()
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
return
procedure mymax()
count := win1.list1.ItemCount
IF count = 0
MyOut := MSGBOX("áÇ íæÌÏ ÃÑÞÇã","ÊäÈíå")
Return 0
ENDIF
mcount := win1.list1.item(1)
IF count=1
MyOut := MSGBOX(mcount,"ÃßÈÑ ÑÞã")
Return 0
ENDIF
mcount = VAL ( mcount )
FOR x = 2 TO count STEP 1
item := win1.list1.item(x)
item = VAL ( item )
IF item > mcount
mcount := item
ENDIF
Next
mcount = STR ( mcount )
MyOut := MSGBOX(mcount,"ÃßÈÑ ÑÞã")
return


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÊÍÏíÏ ÃßÈÑ ÑÞã'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ÅÖÇÝÉ'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'ÊÍÏíÏ ÃßÈÑ ÑÞã'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.list1.ItemCount",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count = 0 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇ íæÌÏ ÃÑÞÇã' Title 'ÊäÈíå' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mcount = win1.list1.item(1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count=1 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mcount Title 'ÃßÈÑ ÑÞã' Type: Message Box",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mcount = CONVERT mcount TO Numeric",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To count Step 1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","item = win1.list1.item(x)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","item = CONVERT item TO Numeric",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( item > mcount )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mcount = item",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","mcount = CONVERT mcount TO STRING",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mcount Title 'ÃßÈÑ ÑÞã' Type: Message Box",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
Return
*-------------------------------------------------------------------*
