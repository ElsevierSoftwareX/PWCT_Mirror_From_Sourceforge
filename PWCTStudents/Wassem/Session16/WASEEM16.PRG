*---------------------------------------------------------------------------*
* Time : 15:10:08    Date : 01/26/2012
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


Resistance R_WASEEM16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 284 ;
HEIGHT 350 ;
ICON "PWCTICON" ;
TITLE "waseem 16" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 272 ,37 BUTTONEX btn1;
CAPTION " Max ";
ON CLICK mymax()  ;
WIDTH 188 HEIGHT 24 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 46 ,37 LISTBOX list1;
WIDTH 190 ;
HEIGHT 196 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 246 ,36 BUTTONEX btn2;
CAPTION "Add ";
ON CLICK Myadd()  ;
WIDTH 190 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 12 ,37 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 191 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myadd
mytext := win1.text1.Value
win1.list1.AddItem ( Mytext )
Return Nil
Proc mymax()
myreem := win1.list1.ItemCount
IF myreem = 0
MyOut := MSGBOX("áÇ íæÌÏ ÃÑÞÇã Ýí ÇáÞÇÆãÉ ","ÎØÃ ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF myreem = 1
MyOut := MSGBOX(mymax," max")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO myreem STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"max num ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'waseem 16'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Max '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myadd()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myadd",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( Mytext )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax()",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","myreem = win1.list1.ItemCount",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myreem = 0 )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇ íæÌÏ ÃÑÞÇã Ýí ÇáÞÇÆãÉ ' Title 'ÎØÃ ' Type: Message Box",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myreem = 1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title ' max' Type: Message Box",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To myreem Step 1)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'max num ' Type: Message Box",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
