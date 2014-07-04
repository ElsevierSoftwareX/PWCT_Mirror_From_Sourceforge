*---------------------------------------------------------------------------*
* Time : 03:01:15    Date : 07/04/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_TEST_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_19art1() code
Public nIDMax
nIDMax := 0
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 525 ;
HEIGHT 309 ;
ON INIT mycheck()  ;
ICON "PWCTICON" ;
TITLE "Tree Manager sample v.2 (Uses ItemsID)" ;
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
TOOLTIP "" ;
ITEMIDS 
END TREE

@ 9 ,9 BUTTONEX btn1;
CAPTION "Add Item (Root)";
ON CLICK myaddroot()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 55 ,10 BUTTONEX btn2;
CAPTION "Add Item (Child)";
ON CLICK myaddchild()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 134 ,9 BUTTONEX btn3;
CAPTION "Edit";
ON CLICK myedit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 217 ,9 BUTTONEX btn4;
CAPTION "Delete";
ON CLICK mydelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myaddroot
nIDMax := nIDMax+1
myvalue = InputBox ( "Name :" , ;
"Add Item (Root)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,0,nIDMax )
DO mycheck
Return Nil
Proc myaddchild
nIDMax := nIDMax+1
myvalue = InputBox ( "Name :" , ;
"Add Item (Child)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,win1.tree1.value,nIDMax )
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
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public nIDMax",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","nIDMax = 0",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Tree Manager sample v.2 (Uses ItemsID)'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mycheck()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tree ( tree1 )",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Tree Properties",19,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Item (Root)'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myaddroot()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add Item (Child)'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myaddchild()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Edit'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myedit()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Delete'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydelete()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myaddroot",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","nIDMax = nIDMax+1",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt 'Name :'",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.AddItem ( myvalue,0,nIDMax )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myaddchild",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","nIDMax = nIDMax+1",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt 'Name :'",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.AddItem ( myvalue,win1.tree1.value,nIDMax )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. win1.tree1.value = 0 )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.Expand ( win1.tree1.value )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydelete",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.tree1.value = 0 )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the item' Title 'Sorry' Type: Message Box",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.DeleteItem ( win1.tree1.value )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myedit",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.tree1.value = 0 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the item' Title 'Sorry' Type: Message Box",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.tree1.item(win1.tree1.value)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = Input Box prompt win1.tree1.value",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.tree1.item(win1.tree1.value) := myvalue",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mycheck",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycheck",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.tree1.ItemCount",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
