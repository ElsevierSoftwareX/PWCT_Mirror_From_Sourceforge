*---------------------------------------------------------------------------*
* Time : 18:03:38    Date : 01/07/2012
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


Resistance R_TELEPHONE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELEPHONE_18smart1() code
Set Procedure to "DATACLASS.PRG"
Set Procedure to "Report.PRG"
Set Procedure to "Search.PRG"
ObjData = DataC()
ObjData:DBB := "DB\Phone.mdb"
ObjData:Tbl1 := "Phone"
ObjData:Col1 := "Name"
ObjData:Col2 := "Address"
ObjData:Col3 := "Phone"
ObjData:Col4 := "Notes"
ObjData:lbl1 := "Name"
ObjData:lbl2 := "Address"
ObjData:lbl3 := "Phone"
ObjData:lbl4 := "Notes"
RptObj = PrintRpt()
RptObj:DBB := "\DB\Phone.mdb"
RptObj:Rpt := "\Rpt\Report1.rpt"
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
POPUP "Data"
MENUITEM "Insert Data" Action ObjData:InterfaceLayer()
END POPUP
POPUP "Search"
MENUITEM "Search By Name" Action SearchObj:WinSearch(0)
MENUITEM "Search By Address" Action SearchObj:WinSearch(1)
MENUITEM "Search By Phone" Action SearchObj:WinSearch(2)
END POPUP
POPUP "Print"
MENUITEM "Report" Action RptObj:WinRpt()
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

INIT PROCEDURE Init_TELEPHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATACLASS.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Report.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Search.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ObjData of Class DataC",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.DBB = 'DB\Phone.mdb'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.Tbl1 = 'Phone'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.Col1 = 'Name'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.Col2 = 'Address'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.Col3 = 'Phone'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.Col4 = 'Notes'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.lbl1 = 'Name'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.lbl2 = 'Address'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.lbl3 = 'Phone'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","ObjData.lbl4 = 'Notes'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object RptObj of Class PrintRpt",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","RptObj.DBB = '\DB\Phone.mdb'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","RptObj.Rpt = '\Rpt\Report1.rpt'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SearchObj of Class SearchC",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","SearchObj.DBB = 'DB\Phone.mdb'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Data'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Insert Data' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Name' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Address' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Phone' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Print'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Report' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*
