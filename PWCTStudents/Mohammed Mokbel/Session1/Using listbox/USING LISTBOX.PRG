*---------------------------------------------------------------------------*
* Time : 17:55:53    Date : 01/04/2095
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


Resistance R_USING_LISTBOX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USING_LISTBOX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 177 ;
HEIGHT 395 ;
ICON "PWCTICON" ;
TITLE "Using Listbox" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,12 LISTBOX list1;
WIDTH 136 ;
HEIGHT 209 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 243 ,29 BUTTONEX btn1;
CAPTION "Add Items";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
@ 303 ,30 BUTTONEX btn2;
CAPTION "close window";
ON CLICK closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
win1.list1.AddItem ( "Mr" )
win1.list1.AddItem ( "Mokbel" )
Win1.List1.Additem ( "1 " )
Win1.List1.Additem ( "2 " )
Win1.List1.Additem ( "3" )
return
procedure closewindow()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_USING_LISTBOX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Listbox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Items'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close window'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Mr' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Mokbel' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1 ') to Listbox (List1) of Window (Win1)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2 ') to Listbox (List1) of Window (Win1)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
