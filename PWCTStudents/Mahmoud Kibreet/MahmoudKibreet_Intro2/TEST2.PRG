*---------------------------------------------------------------------------*
* Time : 01:03:11    Date : 04/07/2012
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


Resistance R_TEST2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Using LostBox" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 17 ,135 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 257 ,171 BUTTONEX btn1;
CAPTION "Add Items";
ON CLICK MYWork()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 297 ,171 BUTTONEX btn2;
CAPTION "Quit Program";
ON CLICK closeapplication()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure MYWork()
win1.list1.AddItem ( "One" )
win1.list1.AddItem ( "Two" )
win1.list1.AddItem ( "Three" )
Win1.List1.Additem ( "1" )
Win1.List1.Additem ( "2" )
Win1.List1.Additem ( "3" )
return
procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using LostBox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Items'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYWork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Quit Program'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYWork ( Event : CLICK )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'One' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Two' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Three' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
Return
*-------------------------------------------------------------------*
