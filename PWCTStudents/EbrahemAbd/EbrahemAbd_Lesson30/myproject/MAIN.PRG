*---------------------------------------------------------------------------*
* Time : 15:43:37    Date : 05/01/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·‘«‘… «·—∆Ì”Ì…" ;
MAIN ;
CURSOR "IMAGES\ABN.ANI" ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "‘«‘… «·⁄„·«¡" Action CustomersObject:ShowWindow()  IMAGE "IMAGES\SS.BMP"
MENUITEM "‘«‘… «” ⁄—«’ »Ì«‰«  «·⁄„·«¡" Action CustomersBrowseObject:ShowWindow()
MENUITEM "‘«‘… «·⁄„·«¡ »Ì«‰«  / »ÕÀ " Action CustDataBrowseObject:ShowWindow()
MENUITEM "«·»ÕÀ »√”„ «·œÊ·… ⁄‰ ÿ—Ìﬁ ﬂÊ„»Ê»Êﬂ” " Action SearchByCountryObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·⁄„·«¡ " Action CustomersReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·⁄„·«¡ ÿ»ﬁ« ··„Ì·«œ " Action CustomersReport2Object:ShowWindow()
MENUITEM "‘«‘…  ›«’Ì· «·»‰Êœ " Action OrdersObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·√Ê«„— Ê «·ÿ·»« " Action OrdersReportObject:ShowWindow
MENUITEM "⁄‰ «·»—‰«„Ã" Action AboutObject:showWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersDataClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SearchByCountryObject of Class SearchByCountryClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‘«‘… «·—∆Ì”Ì…'",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «·⁄„·«¡' )  IMAGE 'IMAGES\SS.BMP'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «” ⁄—«’ »Ì«‰«  «·⁄„·«¡' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «·⁄„·«¡ »Ì«‰«  / »ÕÀ ' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·»ÕÀ »√”„ «·œÊ·… ⁄‰ ÿ—Ìﬁ ﬂÊ„»Ê»Êﬂ” ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·⁄„·«¡ ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·⁄„·«¡ ÿ»ﬁ« ··„Ì·«œ ' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘…  ›«’Ì· «·»‰Êœ ' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·√Ê«„— Ê «·ÿ·»« ' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰ «·»—‰«„Ã' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·Œ—ÊÃ „‰ «·»—‰«„Ã' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGES\BACK.JPG'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
