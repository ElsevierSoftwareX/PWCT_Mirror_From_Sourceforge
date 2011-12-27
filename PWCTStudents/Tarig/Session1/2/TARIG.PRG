*---------------------------------------------------------------------------*
* Time : 10:35:17    Date : 12/27/2011
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


Resistance R_TARIG_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TARIG_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 540 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Add Item" ;
MAIN ;
BACKCOLOR {255,255,128} 

@ 17 ,206 LABEL lbl1 ;
VALUE "how to add" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 253 ,207 BUTTONEX btn1;
CAPTION "Add Item";
BACKCOLOR {10,255,255};
ON CLICK c()  ;
WIDTH 100 HEIGHT 24 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 42 ,145 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
Win1.List1.Additem ( "1" )
Win1.List1.Additem ( "2" )
Win1.List1.Additem ( "3" )
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure c()
Win1.List1.Additem ( "Mahmoud" )
Win1.List1.Additem ( "Tarig" )
Win1.List1.Additem ( "Osama" )
return


End Of Resistance

INIT PROCEDURE Init_TARIG
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Item'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'how to add'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Item'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action c",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure c ( Event : CLICK )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Mahmoud') to Listbox (List1) of Window (Win1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Tarig') to Listbox (List1) of Window (Win1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Osama') to Listbox (List1) of Window (Win1)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
