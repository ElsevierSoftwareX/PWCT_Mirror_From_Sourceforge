*---------------------------------------------------------------------------*
* Time : 13:26:53    Date : 01/06/2012
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
 * (Noun) *
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


Resistance R_WINSEARCH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINSEARCH_18smart1() code
Set Procedure to "SEARCHCLASS.PRG"
SearchObj = SearchC()
SearchObj:DBB := "DB\Phone.mdb"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {239,239,239} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "Search"
MENUITEM "Search By Name" Action SearchObj:WinSearch(0)
MENUITEM "Search By Address" Action SearchObj:WinSearch(1)
MENUITEM "Search By Phone" Action SearchObj:WinSearch(2)
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WINSEARCH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SEARCHCLASS.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SearchObj of Class SearchC",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","SearchObj.DBB = 'DB\Phone.mdb'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Name' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Address' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Phone' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
