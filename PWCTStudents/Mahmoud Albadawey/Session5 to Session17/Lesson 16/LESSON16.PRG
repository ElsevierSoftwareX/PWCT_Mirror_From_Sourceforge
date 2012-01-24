*---------------------------------------------------------------------------*
* Time : 11:18:14    Date : 01/23/2012
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


Resistance R_LESSON16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 406 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Lesson 16  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 28 ,130 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 28 ,348 LABEL lbl1 ;
VALUE "«·—ﬁ„ " ;
WIDTH 35 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 70 ,130 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 28 ,12 BUTTONEX btnadd;
CAPTION "≈÷«›Â ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 286 ,185 BUTTONEX btnmax;
CAPTION "›Õ’ «·√—ﬁ«„ ";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Mahmoud Albadawey"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
num1 := win1.text1.Value
num1 = STR ( num1 )
win1.list1.AddItem ( num1 )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount==0
MyOut := MSGSTOP("·«ÌÊÃœ √—ﬁ«„ ··„ﬁ«—‰Â ","Œÿ√ ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount==1
MyOut := MSGINFO(mymax,"√ﬂ»— ﬁÌ„Â ")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGINFO(mymax,"√ﬂ»— ﬁÌ„Â ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 16  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : '≈÷«›Â '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : '›Õ’ «·√—ﬁ«„ '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Mahmoud Albadawey' )",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( num1 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==0 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«ÌÊÃœ √—ﬁ«„ ··„ﬁ«—‰Â ' Title 'Œÿ√ ' Type: Message Stop",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==1 )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title '√ﬂ»— ﬁÌ„Â ' Type: Message Info",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>mymax )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title '√ﬂ»— ﬁÌ„Â ' Type: Message Info",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
Return
*-------------------------------------------------------------------*
