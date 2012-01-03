*---------------------------------------------------------------------------*
* Time : 05:35:41    Date : 12/30/2011
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


Resistance R_GETMAXNUMBERINSIDELISTBOX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GETMAXNUMBERINSIDELISTBOX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 242 ;
HEIGHT 332 ;
ICON "PWCTICON" ;
TITLE "Get Max. Number Inside Listbox" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 11 ,14 BUTTONEX btn1;
CAPTION "Add to list";
ON CLICK Addtolist()  ;
WIDTH 96 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 44 ,14 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 9 ,117 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 95 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 247 ,12 BUTTONEX btn2;
CAPTION "Get Max Num";
ON CLICK GetMax()  ;
WIDTH 205 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Addtolist
num := win1.text1.Value
num = STR ( num )
win1.list1.AddItem ( num )
Return Nil
Proc GetMax
itemscount := win1.list1.ItemCount
IF Itemscount=0
MyOut := MSGBOX("Empty list","Error")
Return 0
ENDIF
Maxnum := win1.list1.item(1)
IF Itemscount=1
MyOut := MSGBOX(Maxnum,"Max number")
Return 0
ENDIF
Maxnum = VAL ( Maxnum )
FOR x = 2 TO Itemscount STEP 1
item := win1.list1.item(x)
item = VAL ( item )
IF item>Maxnum
Maxnum := item
ENDIF
Next
Maxnum = STR ( Maxnum )
MyOut := MSGBOX(Maxnum,"Max number")
Return 0
Return Nil


End Of Resistance

INIT PROCEDURE Init_GETMAXNUMBERINSIDELISTBOX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Get Max. Number Inside Listbox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add to list'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Addtolist",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Get Max Num'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GetMax",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Addtolist",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( num )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GetMax",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","itemscount = win1.list1.ItemCount",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Itemscount=0 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Empty list' Title 'Error' Type: Message Box",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Maxnum = win1.list1.item(1)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Itemscount=1 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Maxnum Title 'Max number' Type: Message Box",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Maxnum = CONVERT Maxnum TO Numeric",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To Itemscount Step 1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","item = win1.list1.item(x)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","item = CONVERT item TO Numeric",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( item>Maxnum )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Maxnum = item",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Maxnum = CONVERT Maxnum TO STRING",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Maxnum Title 'Max number' Type: Message Box",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*
