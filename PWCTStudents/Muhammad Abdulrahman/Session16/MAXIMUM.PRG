*---------------------------------------------------------------------------*
* Time : 23:28:37    Date : 01/24/2012
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


Resistance R_MAXIMUM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAXIMUM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 506 ;
HEIGHT 435 ;
ICON "PWCTICON" ;
TITLE " ÊÍÏíÏ ÃßÈÑ ÑÞã " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 16 ,334 LABEL lbl1 ;
VALUE "ÇáÑÞã" ;
WIDTH 52 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 15 ,113 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 60 ,113 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 15 ,5 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 274 ,113 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÃßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,332 LABEL lbl2 ;
VALUE "Muhammad A. Rahman" ;
WIDTH 141 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Brush Script MT" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 225 ,359 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 347 ,21 BUTTONEX btn2;
CAPTION "ÎÑæÌ";
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 347 ,139 BUTTONEX btn3;
CAPTION "ãÓÍ";
ON CLICK myclear()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ","ÚÝæÇð")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
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
Proc Myexit
win1.Release ( )
Return Nil
Proc myclear
win1.list1.DeleteAllItems ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAXIMUM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÊÍÏíÏ ÃßÈÑ ÑÞã '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ÅÖÇÝÉ'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'ÊÍÏíÏ ÃßÈÑ ÑÞã'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Muhammad A. Rahman'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÎÑæÌ'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'ãÓÍ'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclear()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÚÏÇÏ' Title 'ÚÝæÇð' Type: Message Box",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã' Type: Message Box",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myexit",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclear",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
