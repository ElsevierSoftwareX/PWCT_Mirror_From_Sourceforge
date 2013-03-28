*---------------------------------------------------------------------------*
* Time : 12:31:19    Date : 09/15/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
Set Procedure to "test2.PRG"
Set Procedure to "test3.PRG"
Set Procedure to "test7.PRG"
Set Procedure to "systemdatabase_base.PRG"
Set Procedure to "test8.PRG"
Set Procedure to "test9.PRG"
Set Procedure to "reportbase.PRG"
Set Procedure to "test10.PRG"
Set Procedure to "test11.PRG"
Set Procedure to "test12.PRG"
test2object = test2class()
reportobject = reportclass()
customersdataobject = customersdataclass()
customersbrowseobject = customersbrowseclass()
customersreportobject = customersreportclass()
customersdatabrowseobject = customersdatabrowseclass()
OrdersMasterDetailsObject = OrdersMasterDetailsClass()
filterreportobject = filterreportclass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Report" Action ReportObject:ShowWindow()
MENUITEM "about" Action test2object:showwindow()
MENUITEM "Close System" Action closesystem()
MENUITEM "Custoemrs" Action CustomersdataObject:ShowWindow()
MENUITEM "Customers browse" Action CustomersbrowseObject:ShowWindow()
MENUITEM "Customers report" Action CustomersreportObject:ShowWindow()
MENUITEM "Customers data/browse" Action CustomersdatabrowseObject:ShowWindow()
MENUITEM "Order Items" Action OrdersMasterDetailsobject:ShowWindow()
MENUITEM "filter report" Action filterreportobject:ShowWindow()
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

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
