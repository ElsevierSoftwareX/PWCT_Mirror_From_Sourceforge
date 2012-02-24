*---------------------------------------------------------------------------*
* Time : 02:45:13    Date : 02/24/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "listbox  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 72 ,103 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 302 ,166 BUTTONEX btn1;
CAPTION "add item ";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
win1.list1.AddItem ( "1" )
win1.list1.AddItem ( "2" )
win1.list1.AddItem ( "4" )
win1.list1.AddItem ( "5" )
win1.list1.AddItem ( "6" )
Win1.List1.Additem ( "one " )
Win1.List1.Additem ( "two " )
Win1.List1.Additem ( "3 " )
Win1.List1.Additem ( "three " )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'listbox  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'add item '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '1' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '2' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '4' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '5' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '6' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('one ') to Listbox (List1) of Window (Win1)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('two ') to Listbox (List1) of Window (Win1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3 ') to Listbox (List1) of Window (Win1)",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('three ') to Listbox (List1) of Window (Win1)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
