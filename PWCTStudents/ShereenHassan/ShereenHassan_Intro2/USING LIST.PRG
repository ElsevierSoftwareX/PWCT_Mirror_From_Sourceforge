*---------------------------------------------------------------------------*
* Time : 06:52:30    Date : 02/21/2012
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


Resistance R_USING_LIST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USING_LIST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 355 ;
HEIGHT 410 ;
ICON "PWCTICON" ;
TITLE "Using ListBox  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 78 ,62 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 308 ,190 BUTTONEX btn1;
CAPTION "Add Items ";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 10 ,10 LABEL lbl1 ;
VALUE "My Data " ;
WIDTH 227 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
win1.list1.AddItem ( "Shereen Hassan" )
win1.list1.AddItem ( "Engineer" )
win1.list1.AddItem ( "kafrelshiekh" )
Win1.List1.Additem ( "Colors:" )
Win1.List1.Additem ( "Green " )
Win1.List1.Additem ( "Blue " )
Win1.List1.Additem ( "Yellow " )
return


End Of Resistance

INIT PROCEDURE Init_USING_LIST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using ListBox  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Items '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'My Data '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Shereen Hassan' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Engineer' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'kafrelshiekh' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Colors:') to Listbox (List1) of Window (Win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Green ') to Listbox (List1) of Window (Win1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Blue ') to Listbox (List1) of Window (Win1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Yellow ') to Listbox (List1) of Window (Win1)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
