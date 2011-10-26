*---------------------------------------------------------------------------*
* Time : 02:03:29    Date : 10/24/2011
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
WIDTH 525 ;
HEIGHT 309 ;
ON INIT mycheck()  ;
ICON "PWCTICON" ;
TITLE "Tree Manager sample" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE TREE tree1;
AT 8 ,123 ;
WIDTH 385 ;
HEIGHT 251 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
TOOLTIP "" 
END TREE

@ 9 ,9 BUTTONEX btn1;
CAPTION "Add Item (Root)";
ON CLICK myaddroot()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 55 ,10 BUTTONEX btn2;
CAPTION "Add Item (Child)";
ON CLICK myaddchild()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 134 ,9 BUTTONEX btn3;
CAPTION "Edit";
ON CLICK myedit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 217 ,9 BUTTONEX btn4;
CAPTION "Delete";
ON CLICK mydelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myaddroot
myvalue = InputBox ( "Name :" , ;
"Add Item (Root)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,0 )
DO mycheck
Return Nil
Proc myaddchild
myvalue = InputBox ( "Name :" , ;
"Add Item (Child)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,win1.tree1.value )
IF .not. win1.tree1.value = 0
win1.tree1.Expand ( win1.tree1.value )
ENDIF
DO mycheck
Return Nil
Proc mydelete
IF win1.tree1.value = 0
MyOut := MSGBOX("Please select the item","Sorry")
Return 0
ENDIF
win1.tree1.DeleteItem ( win1.tree1.value )
DO mycheck
Return Nil
Proc myedit
IF win1.tree1.value = 0
MyOut := MSGBOX("Please select the item","Sorry")
Return 0
ENDIF
myvalue := win1.tree1.item(win1.tree1.value)
myvalue = InputBox ( win1.tree1.value , ;
"Edit Item Name" , ;
myvalue ,;
,;
.F.)
win1.tree1.item(win1.tree1.value) := myvalue
DO mycheck
Return Nil
Proc mycheck
mycount := win1.tree1.ItemCount
IF mycount = 0
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
ELSE
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Tree Manager sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mycheck()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tree ( tree1 )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Tree Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Item (Root)'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myaddroot()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add Item (Child)'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myaddchild()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Edit'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myedit()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Delete'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydelete()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myaddroot",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt 'Name :'",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.AddItem ( myvalue,0 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myaddchild",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt 'Name :'",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.AddItem ( myvalue,win1.tree1.value )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. win1.tree1.value = 0 )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.Expand ( win1.tree1.value )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydelete",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.tree1.value = 0 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the item' Title 'Sorry' Type: Message Box",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.DeleteItem ( win1.tree1.value )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myedit",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.tree1.value = 0 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the item' Title 'Sorry' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.tree1.item(win1.tree1.value)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt win1.tree1.value",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.item(win1.tree1.value) := myvalue",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycheck",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.tree1.ItemCount",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
Return
*-------------------------------------------------------------------*
