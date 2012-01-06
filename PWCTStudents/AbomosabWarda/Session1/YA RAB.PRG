*---------------------------------------------------------------------------*
* Time : 21:08:35    Date : 01/03/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Using listbox" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 80 ,145 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 292 ,197 BUTTONEX btn1;
CAPTION "Add items";
ON CLICK Mywork()  ;
WIDTH 115 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Mywork()
win1.list1.AddItem ( "Ahmed" )
win1.list1.AddItem ( "elgharib" )
win1.list1.AddItem ( "warda" )
Win1.List1.Additem ( "thanks ENG.mahmoud " )
Win1.List1.Additem ( "this cours is very wonderfull " )


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using listbox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add items'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mywork ( Event : CLICK )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Ahmed' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'elgharib' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'warda' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('thanks ENG.mahmoud ') to Listbox (List1) of Window (Win1)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('this cours is very wonderfull ') to Listbox (List1) of Window (Win1)",33,33)
Return
*-------------------------------------------------------------------*
