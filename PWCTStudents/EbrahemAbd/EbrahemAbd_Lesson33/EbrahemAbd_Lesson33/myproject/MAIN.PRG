*---------------------------------------------------------------------------*
* Time : 15:47:43    Date : 05/01/2012
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
set date japan
set cent on

Set Procedure to "Sub1.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "SearchByCountry.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "CustomersReport2.PRG"
Set Procedure to "MasterDetailsTest.PRG"
Set Procedure to "OrdersReport.PRG"
Set Procedure to "SelectItem.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
AboutObject = AboutClass()
CustomersObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
SearchByCountryObject = SearchByCountryClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
OrdersReportObject = OrdersReportClass()
SelectItemObject = SelectItemClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT UsersObject:SystemLogin()  ;
ICON "PWCTICON" ;
TITLE "«·‘«‘… «·—∆Ì”Ì…" ;
MAIN ;
CURSOR "IMAGES\ABN.ANI" ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "‘«‘… «·⁄„·«¡" Action CustomersObject:ShowWindow()
MENUITEM "‘«‘… «” ⁄—«’ »Ì«‰«  «·⁄„·«¡" Action CustomersBrowseObject:ShowWindow()
MENUITEM "‘«‘… «·⁄„·«¡ »Ì«‰«  / »ÕÀ " Action CustDataBrowseObject:ShowWindow()
MENUITEM "«·»ÕÀ »√”„ «·œÊ·… ⁄‰ ÿ—Ìﬁ ﬂÊ„»Ê»Êﬂ” " Action SearchByCountryObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·⁄„·«¡ " Action CustomersReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·⁄„·«¡ ÿ»ﬁ« ··„Ì·«œ " Action CustomersReport2Object:ShowWindow()
MENUITEM "‘«‘…  ›«’Ì· «·»‰Êœ " Action OrdersObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·√Ê«„— Ê «·ÿ·»« " Action OrdersReportObject:ShowWindow
MENUITEM "⁄‰ «·»—‰«„Ã" Action AboutObject:showWindow()
MENUITEM " «·„” Œœ„Ì‰" Action UsersObject:ShowWindow()
MENUITEM "«·Œ—ÊÃ „‰ «·»—‰«„Ã" Action closesystem()
END POPUP
END MENU
@ -4 ,-10 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 1600 HEIGHT 800
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set date setting",1,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SearchByCountry.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MasterDetailsTest.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersDataClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SearchByCountryObject of Class SearchByCountryClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‘«‘… «·—∆Ì”Ì…'",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action UsersObject:SystemLogin()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «·⁄„·«¡' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «” ⁄—«’ »Ì«‰«  «·⁄„·«¡' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «·⁄„·«¡ »Ì«‰«  / »ÕÀ ' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·»ÕÀ »√”„ «·œÊ·… ⁄‰ ÿ—Ìﬁ ﬂÊ„»Ê»Êﬂ” ' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·⁄„·«¡ ' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·⁄„·«¡ ÿ»ﬁ« ··„Ì·«œ ' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘…  ›«’Ì· «·»‰Êœ ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·√Ê«„— Ê «·ÿ·»« ' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰ «·»—‰«„Ã' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' «·„” Œœ„Ì‰' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·Œ—ÊÃ „‰ «·»—‰«„Ã' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGES\BACK.JPG'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
