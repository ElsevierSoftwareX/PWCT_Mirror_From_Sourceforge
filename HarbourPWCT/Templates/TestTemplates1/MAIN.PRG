*---------------------------------------------------------------------------*
* Time : 22:58:37    Date : 08/01/2010
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


Resistance R_MAIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_15speed1() code
Set Procedure to "ItemsWindow.PRG"
Set Procedure to "ItemsSearchWindow.PRG"
Set Procedure to "ItemBrowseWindow.PRG"
Set Procedure to "ItemsReport.PRG"
Set Procedure to "ItemsSEARCHANDDATAWINDOW.PRG"
Set Procedure to "ItemsbrowseANDDATAWINDOW.PRG"
Set Procedure to "ItemsReport2.PRG"
Set Procedure to "ItemsReport3.PRG"
Set Procedure to "telbrowseanddatawindow.PRG"
Set Procedure to "telbrowsewindow.PRG"
Set Procedure to "teldatawindow.PRG"
Set Procedure to "about.PRG"
Set Procedure to "TELSEARCHWINDOW.PRG"
Set Procedure to "TELSEARCHDATAWINDOW.PRG"
myItemsObj = Items()
myItemsSearchObj = windowsearchItems()
myItemsBrowseObj = windowBrowseItems()
myReportItemsObj = accessreportITEMS()
mySEARCHDATAItemsObj = WINDOWDATA()
mybrowseDATAItemsObj = windowdatabrowseitems()
itemsreport2object = itemsreport2class()
itemsreport3object = itemsreport3class()
telbrowseanddataobject = telbrowseanddataclass()
telbrowseobject = telbrowseclass()
teldatawindowobject = teldatawindowclass()
aboutobject = aboutclass()
TELSEARCHWINDOWobject = TELSEARCHCLASS()
TELSEARCHDATAWINDOWobject = TELSEARCHDATAWINDOWclass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Invoices" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "Items"
MENUITEM "Items" Action MyItemsObj:ShowWindow()
MENUITEM "Search" Action myItemsSearchObj:ShowWindow()
MENUITEM "Browse" Action myItemsBrowseObj:ShowWindow()
MENUITEM "Items Report" Action myReportItemsObj:ShowWindow()
MENUITEM "Items Search/Data" Action mySEARCHDATAItemsObj:ShowWindow()
MENUITEM "Items Browse/Data" Action mybrowseDATAItemsObj:ShowWindow()
MENUITEM "Items Report 2" Action itemsreport2object:ShowWindow()
MENUITEM "Items Report 3" Action itemsreport3object:ShowWindow()
MENUITEM "tel browse and data" Action telbrowseanddataobject:ShowWindow()
MENUITEM "tel browse window" Action telbrowseobject:ShowWindow()
MENUITEM "tel data window" Action teldatawindowobject :ShowWindow()
MENUITEM "about" Action aboutobject :ShowWindow()
MENUITEM "TEL SEARCH WINDOW" Action TELSEARCHWINDOWobject :ShowWindow()
MENUITEM "TEL SEARCH data WINDOW" Action TELSEARCHDATAWINDOWobject:ShowWindow()
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

INIT PROCEDURE Init_MAIN
START DOUBLES
Return
*-------------------------------------------------------------------*
