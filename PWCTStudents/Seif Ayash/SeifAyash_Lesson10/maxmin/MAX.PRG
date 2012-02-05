*---------------------------------------------------------------------------*
* Time : 12:58:58    Date : 02/05/2012
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


Resistance R_MAX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 265 ;
HEIGHT 308 ;
ICON "PWCTICON" ;
TITLE " ÕœÌœ √ﬂ»— —ﬁ„" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,128} 

@ 23 ,192 LABEL lbl1 ;
VALUE "«·—ﬁ„" ;
WIDTH 43 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,112 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 60 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 23 ,8 LISTBOX list1;
WIDTH 97 ;
HEIGHT 225 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 80 ,109 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK myadd()  ;
WIDTH 119 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 141 ,111 BUTTONEX btnmax;
CAPTION " ÕœÌœ √ﬂ»— —ﬁ„";
ON CLICK mymax()  ;
WIDTH 119 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 202 ,110 BUTTONEX btnmin;
CAPTION " ÕœÌœ √’€— —ﬁ„: ";
ON CLICK mymin()  ;
WIDTH 119 HEIGHT 36 ;
FONT "arial" SIZE 16 ;
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
MyOut := MSGBOX("«·ﬁ«∆„…  Œ·Ê „‰ « ·√—ﬁ«„","⁄›Ê«")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymax,"√ﬂ»— —ﬁ„ ÂÊ: ")
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
MyOut := MSGBOX(mymax,"√ﬂ»— —ﬁ„ ÂÊ: ")
Return Nil
Proc mymin
mycount := win1.list1.ItemCount
IF mycount = 0
MyOut := MSGBOX("«·ﬁ«∆„…  Œ·Ê „‰ « ·√—ﬁ«„","⁄›Ê«")
Return 0
ENDIF
mymin := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymin,"√’€— —ﬁ„ ÂÊ: ")
Return 0
ENDIF
mymin = VAL ( mymin )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem < mymin
mymin := myitem
ENDIF
Next
mymin = STR ( mymin )
MyOut := MSGBOX(mymin,"√’€— —ﬁ„ ÂÊ: ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÕœÌœ √ﬂ»— —ﬁ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : '≈÷«›…'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : ' ÕœÌœ √ﬂ»— —ﬁ„'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmin ) , Caption : ' ÕœÌœ √’€— —ﬁ„: '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymin",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·ﬁ«∆„…  Œ·Ê „‰ « ·√—ﬁ«„' Title '⁄›Ê«' Type: Message Box",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title '√ﬂ»— —ﬁ„ ÂÊ: ' Type: Message Box",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title '√ﬂ»— —ﬁ„ ÂÊ: ' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymin",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·ﬁ«∆„…  Œ·Ê „‰ « ·√—ﬁ«„' Title '⁄›Ê«' Type: Message Box",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","mymin = win1.list1.item(1)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymin Title '√’€— —ﬁ„ ÂÊ: ' Type: Message Box",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","mymin = CONVERT mymin TO Numeric",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem < mymin )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","mymin = myitem",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","mymin = CONVERT mymin TO STRING",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymin Title '√’€— —ﬁ„ ÂÊ: ' Type: Message Box",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
Return
*-------------------------------------------------------------------*
