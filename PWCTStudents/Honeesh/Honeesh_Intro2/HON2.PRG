*---------------------------------------------------------------------------*
* Time : 16:51:25    Date : 03/15/2012
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


Resistance R_HON2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HON2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Jewelrey2  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 57 ,145 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 294 ,177 BUTTONEX btn1;
CAPTION "Add Items ";
ON CLICK mywork()  ;
WIDTH 137 HEIGHT 33 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
win1.list1.AddItem ( "one" )
win1.list1.AddItem ( "two" )
win1.list1.AddItem ( "three" )
Win1.List1.Additem ( "1 " )
Win1.List1.Additem ( "2 " )
Win1.List1.Additem ( "3 " )
return


End Of Resistance

INIT PROCEDURE Init_HON2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Jewelrey2  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Items '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'one' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'two' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'three' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1 ') to Listbox (List1) of Window (Win1)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2 ') to Listbox (List1) of Window (Win1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3 ') to Listbox (List1) of Window (Win1)",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
