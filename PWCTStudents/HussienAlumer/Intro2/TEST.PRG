*---------------------------------------------------------------------------*
* Time : 10:36:36    Date : 03/19/2012
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
WIDTH 296 ;
HEIGHT 357 ;
ICON "PWCTICON" ;
TITLE "List  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 12 ,69 LABEL lbl1 ;
VALUE "⁄‰«’— «·ﬁ«∆„… " ;
WIDTH 135 ;
HEIGHT 37 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 54 ,37 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 267 ,79 BUTTONEX btn1;
CAPTION "√÷› «·⁄‰«’— ";
ON CLICK MenuAdd()  ;
WIDTH 125 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure MenuAdd()
win1.list1.AddItem ( "one" )
win1.list1.AddItem ( "tow" )
win1.list1.AddItem ( "Three" )
Win1.List1.Additem ( "1 " )
Win1.List1.Additem ( "2 " )
Win1.List1.Additem ( "3" )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'List  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄‰«’— «·ﬁ«∆„… '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√÷› «·⁄‰«’— '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MenuAdd",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MenuAdd ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'one' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'tow' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Three' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1 ') to Listbox (List1) of Window (Win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2 ') to Listbox (List1) of Window (Win1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
