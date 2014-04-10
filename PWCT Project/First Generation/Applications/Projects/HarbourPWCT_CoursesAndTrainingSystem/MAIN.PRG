*---------------------------------------------------------------------------*
* Time : 17:17:46    Date : 04/10/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
DO datesettings
Set MenuStyle EXTENDED
SET PROGRAMMATICCHANGE OFF
Set Procedure to "Customers_Data.PRG"
Set Procedure to "Gender_Data.PRG"
Set Procedure to "Country_Data.PRG"
Set Procedure to "Customers_Browse.PRG"
Set Procedure to "Customers_Report.PRG"
Set Procedure to "ItemsClasses_Data.PRG"
Set Procedure to "ItemsUnits_Data.PRG"
Set Procedure to "ItemsGroups_Data.PRG"
Set Procedure to "ItemsGrades_Data.PRG"
Set Procedure to "ItemsSizes_Data.PRG"
Set Procedure to "ItemsColors_Data.PRG"
Set Procedure to "ItemsSources_Data.PRG"
Set Procedure to "ItemsStores_Data.PRG"
Set Procedure to "Employees_Data.PRG"
Set Procedure to "Employees_Browse.PRG"
Set Procedure to "Employees_Report.PRG"
Set Procedure to "Suppliers_Data.PRG"
Set Procedure to "Suppliers_Browse.PRG"
Set Procedure to "Suppliers_Report.PRG"
Set Procedure to "Items_Data.PRG"
Set Procedure to "ItemsEnter_Data.PRG"
Set Procedure to "OrdersEnter_Data.PRG"
Set Procedure to "Agreement.PRG"
Set Procedure to "Quality_Data.PRG"
Set Procedure to "Scheduling_Data.PRG"
Set Procedure to "Warehouse_Data.PRG"
Set Procedure to "Finance_Data.PRG"
Set Procedure to "ReserveItems_Data.PRG"
Set Procedure to "Processes_Data.PRG"
Set Procedure to "ProcessStatus_Data.PRG"
Set Procedure to "Production_Data.PRG"
Set Procedure to "OrderProcesses_Data.PRG"
Set Procedure to "Dispose_Data.PRG"
Set Procedure to "ListOfCustomers_Report.PRG"
Set Procedure to "ListOfEmployees_Report.PRG"
Set Procedure to "ListOfSuppliers_Report.PRG"
Set Procedure to "ITEMCLASSES_Report.PRG"
Set Procedure to "ITEMUNITS_Report.PRG"
Set Procedure to "ITEMGROUPS_Report.PRG"
Set Procedure to "ITEMGRADES_Report.PRG"
Set Procedure to "ITEMSIZES_Report.PRG"
Set Procedure to "ITEMCOLORS_Report.PRG"
Set Procedure to "ITEMSOURCES_Report.PRG"
Set Procedure to "ITEMS_Report.PRG"
Set Procedure to "STORES_Report.PRG"
Set Procedure to "ITEMSENTEREDTOSTORES_Report.PRG"
Set Procedure to "ReservedItems_Report.PRG"
Set Procedure to "ListOfOrders_Report.PRG"
Set Procedure to "OrderDetails_Report.PRG"
Set Procedure to "QualityOpinions_Report.PRG"
Set Procedure to "SchedulingOpinions_Report.PRG"
Set Procedure to "WarehouseOpinions_Report.PRG"
Set Procedure to "FinanceOpinions_Report.PRG"
Set Procedure to "Agreement_Report.PRG"
Set Procedure to "Processes_Report.PRG"
Set Procedure to "ProcessStatus_Report.PRG"
Set Procedure to "OrderProcesses_Report.PRG"
Set Procedure to "EmployeesProduction_Report.PRG"
Set Procedure to "OrdersDispose_Report.PRG"
Set Procedure to "ReportBase.PRG"
Set Procedure to "SystemDatabase_Base.PRG"
Set Procedure to "CustType_Data.PRG"
Set Procedure to "PayMethod_Data.PRG"
Set Procedure to "CustClass_Data.PRG"
Set Procedure to "Customers_Browse2.PRG"
Set Procedure to "HowKnow_Data.PRG"
Set Procedure to "OrderCards_Report.PRG"
Set Procedure to "CustDispose_Data.PRG"
Set Procedure to "CustDispose_Report.PRG"
Set Procedure to "CustOpinion_Data.PRG"
Set Procedure to "Locations_Data.PRG"
Set Procedure to "CustFriends_Data.PRG"
Set Procedure to "CustFriends_Report.PRG"
Set Procedure to "SendMail.PRG"
Set Procedure to "SendMailToOne.PRG"
Set Procedure to "SendMailToAllCustomers.PRG"
Set Procedure to "SendMailToAllEmployees.PRG"
Set Procedure to "SendMailToAllSuppliers.PRG"
Set Procedure to "SendMailToGroup.PRG"
Set Procedure to "Customers_Browse3.PRG"
Set Procedure to "OrderTypes_Data.PRG"
Set Procedure to "CustOrders_Data.PRG"
Set Procedure to "EmpOrders_Data.PRG"
Set Procedure to "ValueItems_Data.PRG"
Set Procedure to "ValueItems_Report.PRG"
Set Procedure to "CustDispose2_Data.PRG"
Set Procedure to "ValueItemsValues_Data.PRG"
Set Procedure to "CustDispose2_Report.PRG"
Set Procedure to "CustDispose3_Report.PRG"
Set Procedure to "CustDispose4_Report.PRG"
Set Procedure to "CustCome_Report.PRG"
Set Procedure to "CustDispose5_Report.PRG"
Set Procedure to "Employees2_Data.PRG"
Set Procedure to "Employees2_Browse.PRG"
Set Procedure to "Employees2_Report.PRG"
Set Procedure to "ListOfEmployees2_Report.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
Set Procedure to "ImportData.PRG"
Set Procedure to "BasicData.PRG"
Set Procedure to "Shehada_Report.PRG"
Set Procedure to "Shehada2_Report.PRG"
Set Procedure to "SendMailToGroup2.PRG"
Set Procedure to "SendMailToGroup3.PRG"
CustomersDataObject = CustomersDataClass()
GenderDataObject = GenderDataClass()
CountryDataObject = CountryDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustomersReportObject = CustomersReportClass()
ItemsClassesObject = ItemsClassesClass()
ItemsUnitsObject = ItemsUnitsClass()
ItemsGroupsObject = ItemsGroupsClass()
ItemsGradesObject = ItemsGradesClass()
ItemsSizesObject = ItemsSizesClass()
ItemsColorsObject = ItemsColorsClass()
ItemsSourcesObject = ItemsSourcesClass()
ItemsStoresObject = ItemsStoresClass()
EmployeesDataObject = EmployeesDataClass()
EmployeesBrowseObject = EmployeesBrowseClass()
EmployeesReportObject = EmployeesReportClass()
SuppliersDataObject = SuppliersDataClass()
SuppliersBrowseObject = SuppliersBrowseClass()
SuppliersReportObject = SuppliersReportClass()
ItemsObject = ItemsClass()
ItemsEnterObject = ItemsEnterClass()
UsersDataObject = UsersClass()
OrdersEnterObject = OrdersEnterClass()
AgreementObject = AgreementClass()
QualityObject = QualityClass()
SchedulingObject = SchedulingClass()
WarehouseObject = WarehouseClass()
FinanceObject = FinanceClass()
ReserveItemsObject = ReserveItemsClass()
ProcessesObject = ProcessesClass()
ProcessStatusObject = ProcessStatusClass()
ProductionObject = ProductionClass()
OrderProcessesObject = OrderProcessesClass()
DisposeObject = DisposeClass()
ListofCustomersReportObject = ListofCustomersReportClass()
ListofEmployeesReportObject = ListofEmployeesReportClass()
ListofSuppliersReportObject = ListofSuppliersReportClass()
ItemClassesReportObject = ItemClassesReportClass()
ItemUnitsReportObject = ItemUnitsReportClass()
ItemGROUPSReportObject = ItemGROUPSReportClass()
ItemGRADESReportObject = ItemGRADESReportClass()
ItemSIZESReportObject = ItemSIZESReportClass()
ItemCOLORSReportObject = ItemCOLORSReportClass()
ItemSOURCESReportObject = ItemSOURCESReportClass()
ItemsReportObject = ItemsReportClass()
StoresReportObject = StoresReportClass()
ITEMSENTEREDTOSTORESReportObject = ITEMSENTEREDTOSTORESReportClass()
ReservedItemsReportObject = ReservedItemsReportClass()
ListOfOrdersReportObject = ListOfOrdersReportClass()
OrderDetailsReportObject = OrderDetailsReportClass()
QualityOpinionsReportObject = QualityOpinionsReportClass()
SchedulingOpinionsReportObject = SchedulingOpinionsReportClass()
FinanceOpinionsReportObject = FinanceOpinionsReportClass()
WarehouseOpinionsReportObject = WarehouseOpinionsReportClass()
AgreementReportObject = AgreementReportClass()
ProcessesReportObject = ProcessesReportClass()
ProcessStatusReportObject = ProcessStatusReportClass()
OrderProcessesReportObject = OrderProcessesReportClass()
EmployeesProductionReportObject = EmployeesProductionReportClass()
OrdersDisposeReportObject = OrdersDisposeReportClass()
CustTypeDataObject = CustTypeDataClass()
PayMethodDataObject = PayMethodDataClass()
CustClassDataObject = CustClassDataClass()
CustomersBrowse2Object = CustomersBrowse2Class()
HowKnowDataObject = HowKnowDataClass()
OrderCardsReportObject = OrderCardsReportClass()
CustDisposeObject = CustDisposeClass()
CustDisposeReportObject = CustDisposeReportClass()
CustOpinionObject = CustOpinionClass()
LocationsObject = LocationsClass()
CustFriendsObject = CustFriendsClass()
CustFriendsReportObject = CustFriendsReportClass()
SendMailToOneObject = SendMailToOneClass()
SendMailToAllCustomersObject = SendMailToAllCustomersClass()
SendMailToAllEmployeesObject = SendMailToAllEmployeesClass()
SendMailToAllSuppliersObject = SendMailToAllSuppliersClass()
SendMailToGroupObject = SendMailToGroupClass()
CustomersBrowse3Object = CustomersBrowse3Class()
OrderTypesObject = OrderTypesClass()
CustOrdersObject = CustOrdersClass()
EmpOrdersObject = EmpOrdersClass()
ValueItemsObject = ValueItemsClass()
ValueItemsReportObject = ValueItemsReportClass()
CustDispose2Object = CustDispose2Class()
ValueItemsValuesObject = ValueItemsValuesClass()
CustDispose2ReportObject = CustDispose2ReportClass()
CustDispose3ReportObject = CustDispose3ReportClass()
CustDispose4ReportObject = CustDispose4ReportClass()
CustComeReportObject = CustComeReportClass()
CustDispose5ReportObject = CustDispose5ReportClass()
Employees2DataObject = Employees2DataClass()
Employees2BrowseObject = Employees2BrowseClass()
Employees2ReportObject = Employees2ReportClass()
ListofEmployees2ReportObject = ListofEmployees2ReportClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
importdataobject = ImportDataClass()
BasicDataObject = BasicDataClass()
ShehadaReportObject = ShehadaReportClass()
Shehada2ReportObject = Shehada2ReportClass()
SendMailToGroup2Object = SendMailToGroup2Class()
SendMailToGroup3Object = SendMailToGroup3Class()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1338 ;
HEIGHT 718 ;
ON INIT systemkey()  ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «·ﬂÊ—”«  Ê«· œ—Ì»  " ;
MAIN ;
NOSHOW ;
BACKCOLOR {255,255,255} 

DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

KEYBOARD

CLOCK;
WIDTH 100;
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.statusbar.item(1) := "«÷€ÿ ‰⁄„ Õ Ï Ì „ «€·«ﬁ «·‰Ÿ«„ «Ê «÷€·« ·« ·«·€«¡ «·⁄„·Ì…"
MyOut := MSGYESNO("Â· «‰  „ «ﬂœ ?","≈€·«ﬁ «·‰Ÿ«„")
IF myout = true
win1.Release ( )
ENDIF
win1.statusbar.item(1) := "Ready"
Return Nil
Proc mylogo
if !iswindowdefined( winlogo )
DEFINE WINDOW winlogo ;
AT 10 ,10 ;
WIDTH 910 ;
HEIGHT 484 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

@ 8 ,353 IMAGE image1;
PICTURE "LOGOALONE";
BACKGROUNDCOLOR {255,255,255}  ;
WIDTH 196 HEIGHT 135
@ 200 ,669 IMAGE image3;
PICTURE "image\CUSTOMERS.JPG";
ON CLICK CustomersBrowse3Object:showwindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,746 LABEL lbl3 ;
VALUE "«·„»Ì⁄« " ;
ON CLICK CustomersBrowse3Object:showwindow()  ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,235 IMAGE image2;
PICTURE "image\LEATHER.JPG";
ON CLICK ItemsObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,313 LABEL lbl2 ;
VALUE "«· ‰”Ìﬁ" ;
ON CLICK ItemsObject:ShowWindow()  ;
WIDTH 50 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,449 IMAGE image4;
PICTURE "image\AGREEMENT.JPG";
ON CLICK OrdersEnterObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,517 LABEL lbl4 ;
VALUE "«· ”ÊÌﬁ" ;
ON CLICK OrdersEnterObject:ShowWindow()  ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,21 IMAGE image7;
PICTURE "image\DISPOSE.JPG";
ON CLICK ProductionObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,93 LABEL lbl7 ;
VALUE "«·«œ«—…" ;
ON CLICK ProductionObject:ShowWindow()  ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
EndIF

HPARENT := GetFormHandle("win1")
HCHILD := GetFormHandle("winLOGO")
myout = CALLDLL32("SetParent","USER32.DLL",HCHILD,HPARENT)
winlogo.Center ( )
Activate Window winlogo nowait
Return Nil
Proc customers
myout = CustomersDataObject:ShowWindow()
Return Nil
Proc sysmenu
POPUP "„·›"
IF UsersObject:CheckPermission(76)
MENUITEM "«·»Ì«‰«  «·«”«”Ì…" Action BasicDataObject:ShowWindow()
ENDIF
MENUITEM "Œ—ÊÃ" Action closesystem()  IMAGE "image\wzclose.bmp"
END POPUP
IF UsersObject:userisadmin = 1
POPUP "‰Ÿ«„"
MENUITEM "«·„” Œœ„Ì‰" Action UsersDataObject:ShowWindow()
END POPUP
ENDIF
IF UsersObject:CheckPermission(1)
POPUP "«·«‘Œ«’"
IF UsersObject:CheckPermission(2)
POPUP "«·„ÊŸ›Ì‰"
MENUITEM "»Ì«‰«  «·„ÊŸ›" Action Employees2DataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ÊŸ›" Action Employees2BrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »«·„ÊŸ›Ì‰" Action Employees2report()
END POPUP
ENDIF
IF UsersObject:CheckPermission(3)
POPUP "«·„œ—»Ì‰"
MENUITEM "»Ì«‰«  «·„œ—»" Action EmployeesDataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰  „œ—»" Action EmployeesBrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »«·„œ—»Ì‰" Action Employeesreport()
END POPUP
ENDIF
IF UsersObject:CheckPermission(4)
POPUP " «·„Ê—œÌ‰"
MENUITEM "»Ì«‰«  «·„Ê—œÌ‰" Action SuppliersDataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „Ê—œ" Action SuppliersBrowseObject:showwindow()
MENUITEM " ﬁ—Ì—  »«·„Ê—œÌ‰" Action Suppliersreport()
END POPUP
ENDIF
IF UsersObject:CheckPermission(5)
POPUP "«·„ œ—»Ì‰"
MENUITEM "»Ì«‰«  «·„ œ—»Ì‰" Action CustomersDataObject:showwindow()
SEPARATOR
MENUITEM "»ÕÀ ⁄‰ „ œ—» »«·«”„" Action CustomersBrowseObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ œ—» »—ﬁ„ «·ÃÊ«·" Action CustomersBrowse2Object:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ œ—» »«Ï Õﬁ·" Action CustomersBrowse3Object:showwindow()
SEPARATOR
MENUITEM " ﬁ—Ì— »«·„ œ—»Ì‰" Action Customersreport()
END POPUP
ENDIF
IF UsersObject:CheckPermission(6)
MENUITEM "ÃœÊ· «·Ã‰”Ì«  " Action Countrydataobject:showwindow()
ENDIF
IF UsersObject:CheckPermission(7)
MENUITEM "ÃœÊ· «”„«¡ «·«ﬁ”«„ " Action GenderDataObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(8)
MENUITEM "ÃœÊ· «‰Ê«⁄ «·⁄„·«¡" Action CustTypeDataObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(9)
MENUITEM "ÃœÊ· ÿ—ﬁ «·”œ«œ" Action PayMethodDataObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(10)
MENUITEM "ÃœÊ· ›∆«  «·⁄„·«¡" Action CustClassDataObject:showwindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(11)
POPUP "„Œ«“‰"
IF UsersObject:CheckPermission(12)
MENUITEM "›∆«  «·«’‰«›" Action ItemsClassesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(13)
MENUITEM "ÊÕœ«  «·«’‰«›" Action ItemsUnitsObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(14)
MENUITEM "„Ã„Ê⁄«  «·«’‰«›" Action ItemsGroupsObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(15)
MENUITEM "„” ÊÌ«  «·«’‰«›" Action ItemsGradesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(16)
MENUITEM "«ÕÃ«„ «·«’‰«›" Action ItemsSizesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(17)
MENUITEM "«·Ê«‰ «·«’‰«›" Action ItemsColorsObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(18)
MENUITEM "„’«œ— «·«’‰«›" Action ItemsSourcesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(19)
MENUITEM "„Œ«“‰ «·«’‰«›" Action ItemsStoresObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(20)
MENUITEM " ⁄—Ì› «·«’‰«›" Action ItemsObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(21)
MENUITEM "≈œŒ«· ’‰› «·Ï «·„Œ“‰" Action ItemsEnterObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(22)
MENUITEM "ÕÃ“ ﬂ„Ì… „‰ ’‰› ·’«·Õ œÊ—…" Action ReserveItemsObject:ShowWindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(23)
POPUP "œÊ—« "
IF UsersObject:CheckPermission(24)
MENUITEM "ÃœÊ· Ê”«∆· „⁄—›… «·⁄„Ì· »«·œÊ—…" Action HowKnowDataObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(25)
MENUITEM "ÃœÊ· «‰Ê«⁄ «·œÊ—« " Action OrderTypesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(26)
MENUITEM "«„«ﬂ‰ «·œÊ—« " Action LocationsObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(27)
MENUITEM " ”ÃÌ· «·œÊ—«  Ê«·„ œ—»Ì‰" Action OrdersEnterObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(28)
MENUITEM "«·„” ›”—Ì‰ ⁄‰ œÊ—…" Action CustFriendsObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(29)
POPUP "„ «»⁄… ”Ì— œÊ—…"
IF UsersObject:CheckPermission(30)
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(31)
MENUITEM " ⁄—Ì› Õ«·«  «·«Ã—«¡" Action ProcessStatusObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(32)
MENUITEM "⁄„·Ì«   ‰›Ì– œÊ—…" Action OrderProcessesObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(33)
MENUITEM "„ «»⁄… «·„ÊŸ›Ì‰" Action ProductionObject:ShowWindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(34)
POPUP " ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡"
IF UsersObject:CheckPermission(35)
MENUITEM "«Œ Ì«—«  «· ﬁÌÌ„ «·⁄«„" Action CustOpinionObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(36)
MENUITEM "«· ﬁÌÌ„ «·⁄«„ „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDisposeObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(37)
MENUITEM "⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action ValueItemsObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(38)
MENUITEM "«· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDispose2Object:ShowWindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(39)
POPUP " ﬁ«—Ì—"
IF UsersObject:CheckPermission(40)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„œ—»Ì‰" Action ListOfEmployeesreport()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(41)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰" Action ListOfEmployees2report()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(42)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„Ê—œÌ‰" Action ListOfSuppliersreport()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(43)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·⁄„·«¡" Action ListOfCustomersreport()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(44)
POPUP " ﬁ«—Ì— «·„Œ«“‰"
IF UsersObject:CheckPermission(45)
MENUITEM " ﬁ—Ì— ›∆«  «·«’‰«›" Action ItemClassesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(46)
MENUITEM " ﬁ—Ì— ÊÕœ«  «·«’‰«›" Action ItemUnitsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(47)
MENUITEM " ﬁ—Ì— „Ã„Ê⁄«  «·«’‰«›" Action ItemGroupsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(48)
MENUITEM " ﬁ—Ì— „” ÊÌ«  «·«’‰«›" Action ItemGradesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(49)
MENUITEM " ﬁ—Ì— «ÕÃ«„ «·«’‰«›" Action ItemSizesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(50)
MENUITEM " ﬁ—Ì— «·Ê«‰ «·«’‰«›" Action ItemColorsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(51)
MENUITEM " ﬁ—Ì— „’«œ— «·«’‰«›" Action ItemSourcesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(52)
MENUITEM " ﬁ—Ì— »«·„Œ«“‰" Action StoresReportObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(53)
MENUITEM " ﬁ—Ì— »«·«’‰«› Ê«·ﬂ„Ì«  «·„ Ê›—…" Action ItemsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(54)
MENUITEM " ﬁ—Ì— »œŒÊ· «’‰«› «·Ï «·„Œ“‰" Action ITEMSENTEREDTOSTORESReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(55)
MENUITEM " ﬁ—Ì— »ÕÃ“ ﬂ„Ì«  „‰ «·«’‰«› ·’«·Õ œÊ—…" Action ReservedItemsReportObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(56)
POPUP " ﬁ«—Ì— «·œÊ—« "
IF UsersObject:CheckPermission(57)
MENUITEM "ﬁ«∆„… »«·œÊ—« " Action ListOfOrdersReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(58)
MENUITEM " ﬁ—Ì— » ›«’Ì· «·œÊ—…" Action OrderDetailsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(59)
MENUITEM "ﬂ—Ê  œÊ—…" Action OrderCardsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(60)
MENUITEM " ﬁ—Ì— »«·œÊ—«  Ê«·„ œ—»Ì‰ Ê«·„” ›”—Ì‰ ⁄‰ œÊ—…" Action CustFriendsReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(61)
MENUITEM "ﬂ‘› Õ÷Ê— Ê≈‰’—«› «·„ œ—»Ì‰" Action CustComeReportObject:ShowWindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(77)
MENUITEM "‘Â«œ… »«··€… «·⁄—»Ì…" Action ShehadaReportObject:ShowWindow()
SEPARATOR
MENUITEM "‘Â«œ… »«··€… «·«‰Ã·Ì“Ì…" Action Shehada2ReportObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(62)
POPUP " ﬁ«—Ì— „ «»⁄… ”Ì— «·œÊ—« "
IF UsersObject:CheckPermission(63)
MENUITEM " ﬁ—Ì— »«Ã—«¡«   «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—…" Action ProcessesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(64)
MENUITEM " ﬁ—Ì— »Õ«·«  «Ã—«¡  ‰›Ì–Ï " Action ProcessStatusReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(65)
MENUITEM " ﬁ—Ì— »„—«Õ· «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—… „Õœœ…" Action OrderProcessesReportObject:ShowWindow()
ENDIF
IF UsersObject:CheckPermission(66)
MENUITEM " ﬁ—Ì— »„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰" Action EmployeesProductionReportObject:ShowWindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(67)
POPUP " ﬁ«—Ì—  ﬁÌÌ„ «·œÊ—« "
MENUITEM " ﬁ—Ì— » ﬁÌÌ„ ⁄«„ ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDisposeReportObject:ShowWindow()
SEPARATOR
MENUITEM "⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action ValueItemsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »œ—Ã«   ﬁÌÌ„ „›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDispose2ReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »„ Ê”ÿ «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDispose3ReportObject:ShowWindow()
MENUITEM "≈” „«—… «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDispose4ReportObject:ShowWindow()
MENUITEM "≈” „«—… «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰ »œÊ‰ «”„ «·„ œ—»" Action CustDispose5ReportObject:ShowWindow()
END POPUP
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(68)
POPUP "«·»—Ìœ «·«·ﬂ —Ê‰Ï"
IF UsersObject:CheckPermission(69)
MENUITEM "«—”«· —”«·…" Action sendmailtooneobject:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(71)
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„œ—»Ì‰" Action sendmailtoallemployeesobject:showwindow()
ENDIF
IF UsersObject:CheckPermission(72)
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„Ê—œÌ‰" Action sendmailtoallSuppliersobject:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(73)
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„ œ—»Ì‰" Action sendmailtoallcustomersobject:showwindow()
ENDIF
IF UsersObject:CheckPermission(74)
MENUITEM "«—”«· —”«·… «·Ï «·„”Ã·Ì‰ ›Ï œÊ—…" Action sendmailtogroupobject:showwindow()
ENDIF
IF UsersObject:CheckPermission(78)
MENUITEM "«—”«· —”«·… «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—…" Action sendmailtogroup2object:showwindow()
ENDIF
IF UsersObject:CheckPermission(79)
MENUITEM "«—”«· —”«·… «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—… Ê«·„”Ã·Ì‰ „‰ ﬁ»· «·„ÊŸ›" Action sendmailtogroup3object:showwindow()
ENDIF
END POPUP
ENDIF
POPUP "«” Ì—«œ «·»Ì«‰« "
IF UsersObject:CheckPermission(75)
MENUITEM "«” Ì—«œ »Ì«‰«  «·⁄„·«¡ „‰ «ﬂ”·" Action importdataobject:showwindow()
SEPARATOR
ENDIF
END POPUP
Return Nil
Proc customersreport
customersreportobject:filter := ""
myout = customersreportobject:ShowWindow()
Return Nil
Proc Employeesreport
Employeesreportobject:filter := ""
myout = Employeesreportobject:ShowWindow()
Return Nil
Proc Suppliersreport
Suppliersreportobject:filter := ""
myout = Suppliersreportobject:ShowWindow()
Return Nil
Proc datesettings
Set cent ON
Set date JAPAN
Return Nil
Proc entersystem
usersobject:manychecks := true
myout = usersobject:connect()
DEFINE MAIN MENU of win1
DO sysmenu
END MENU
DEFINE TOOLBAR Toolbar1;
PARENT win1 ;
BUTTONSIZE 40 , 40 ;
BOLD ;
FLAT ;
BORDER ;
BREAK 

IF UsersObject:CheckPermission(2)
BUTTON toolbaremployeebtn1;
PICTURE "image\EmployeesIcon.bmp" ;
ADJUST ;
ON CLICK EmployeesDataObject:showwindow()  ;
TOOLTIP "»Ì«‰«  «·„œ—»Ì‰" ;
AUTOSIZE 

BUTTON toolbaremployeebtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK EmployeesBrowseObject:showwindow()  ;
TOOLTIP "»ÕÀ ›Ï »Ì«‰«  «·„œ—»Ì‰" ;
AUTOSIZE 

BUTTON toolbaremployeebtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Employeesreport()  ;
TOOLTIP " ﬁ—Ì— »«·„œ—»Ì‰" ;
SEPARATOR ;
AUTOSIZE 

ENDIF
IF UsersObject:CheckPermission(4)
BUTTON toolbarsupplierbtn1;
PICTURE "image\suppliersicon.bmp" ;
ADJUST ;
ON CLICK SuppliersDataObject:showwindow()  ;
TOOLTIP "»Ì«‰«  «·„Ê—œÌ‰" ;
AUTOSIZE 

BUTTON toolbarSuppliersbtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK SuppliersBrowseObject:showwindow()  ;
TOOLTIP "»ÕÀ ›Ï »Ì«‰«  «·„Ê—œÌ‰" ;
AUTOSIZE 

BUTTON toolbarSuppliersbtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Suppliersreport()  ;
TOOLTIP " ﬁ—Ì— »«·„Ê—œÌ‰" ;
SEPARATOR ;
AUTOSIZE 

ENDIF
IF UsersObject:CheckPermission(5)
BUTTON toolbarcustomersbtn1;
PICTURE "image\customersicon.bmp" ;
ADJUST ;
ON CLICK CustomersDataObject:showwindow()  ;
TOOLTIP "»Ì«‰«  «·⁄„·«¡" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK CustomersBrowse3Object:showwindow()  ;
TOOLTIP "»ÕÀ ›Ï »Ì«‰«  «·⁄„·«¡" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Customersreport()  ;
TOOLTIP " ﬁ—Ì— »«·⁄„·«¡" ;
SEPARATOR ;
AUTOSIZE 

ENDIF
BUTTON toolbarshutdown;
PICTURE "image\shutdown.bmp" ;
ADJUST ;
ON CLICK closesystem()  ;
TOOLTIP "≈€·«ﬁ «·‰Ÿ«„" ;
SEPARATOR ;
AUTOSIZE 

END TOOLBAR

myout = usersobject:disconnect()
usersobject:manychecks := false
Return Nil
Proc LOGOSTART
if !iswindowdefined( winLOGOSTART )
DEFINE WINDOW winLOGOSTART ;
AT 10 ,10 ;
WIDTH 530 ;
HEIGHT 336 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "LOGO";
STRETCH ;
WIDTH 530 HEIGHT 336
DEFINE TIMER Timer1 INTERVAL 1500 ;
Action WINLOGOSTART.RELEASE()
@ 13 ,270 LABEL lbl1 ;
VALUE " «—ÌŒ «·«’œ«— :  2012/12/11" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
END WINDOW

WINLOGOSTART.Center ( )
ACTIVATE WINDOW winLOGOSTART
EndIF

Return Nil
Proc listofcustomersreport
ListofCustomersReportObject:filter := ""
myout = ListofCustomersReportObject:ShowWindow()
Return Nil
Proc listofemployeesreport
ListofEmployeesReportObject:filter := ""
myout = ListofEmployeesReportObject:ShowWindow()
Return Nil
Proc listofsuppliersreport
ListofSuppliersReportObject:filter := ""
myout = ListofSuppliersReportObject:ShowWindow()
Return Nil
Proc sysreports
if !iswindowdefined( winsysreports )
DEFINE WINDOW winsysreports ;
AT 10 ,10 ;
WIDTH 690 ;
HEIGHT 437 ;
ICON "PWCTICON" ;
TITLE "«· ﬁ«—Ì— «·‘«∆⁄…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -9 ,-8 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 706 HEIGHT 418
@ 38 ,180 BUTTONEX btn1;
CAPTION " ﬁ—Ì— »«·«’‰«› Ê«·„ Ê›— „‰Â«";
ON CLICK ItemsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 78 ,180 BUTTONEX btn2;
CAPTION " ﬁ—Ì— »«·«’‰«› «· Ï œŒ·  «·„Œ«“‰";
ON CLICK ITEMSENTEREDTOSTORESReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 118 ,180 BUTTONEX btn3;
CAPTION " ﬁ—Ì— »«·«’‰«› «·„’—Ê›… ·’«·Õ œÊ—…";
ON CLICK ReservedItemsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 158 ,180 BUTTONEX btn4;
CAPTION " ›«’Ì· œÊ—…";
ON CLICK OrderDetailsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 238 ,690 BUTTONEX btn5;
CAPTION "«·„Ê«›ﬁ… ⁄·Ï œÊ—…";
ON CLICK AgreementReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 238 ,180 BUTTONEX btn6;
CAPTION "«Ã—«¡«   ‰›Ì– œÊ—…";
ON CLICK OrderProcessesReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 278 ,180 BUTTONEX btn7;
CAPTION "„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰";
ON CLICK EmployeesProductionReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 358 ,710 BUTTONEX btn8;
CAPTION " ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· „”∆Ê· «·ÃÊœ… ";
ON CLICK OrdersDisposeReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,180 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK winsysreports.release()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 198 ,180 BUTTONEX btn9;
CAPTION "ﬂ—Ê  œÊ—…";
ON CLICK OrderCardsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 398 ,710 BUTTONEX btn10;
CAPTION " ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· «·„ œ—»Ì‰";
ON CLICK CustDisposeReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winsysreports.Center ( )
ACTIVATE WINDOW winsysreports
EndIF

Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc Employees2report
Employees2reportobject:filter := ""
myout = Employees2reportobject:ShowWindow()
Return Nil
Proc listofemployees2report
ListofEmployees2ReportObject:filter := ""
myout = ListofEmployees2ReportObject:ShowWindow()
Return Nil
Proc SystemKey
DO logostart
win1.Maximize ( )
DO mylogo
Execute File "installodbc.bat" MINIMIZE
myout = UsersObject:SystemLogin()
DO entersystem
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure datesettings",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Menu Style EXTENDED",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","SET PROGRAMMATIC CHANGE OFF",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers_Data.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Gender_Data.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Country_Data.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers_Browse.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers_Report.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsClasses_Data.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsUnits_Data.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsGroups_Data.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsGrades_Data.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsSizes_Data.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsColors_Data.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsSources_Data.PRG'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsStores_Data.PRG'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees_Data.PRG'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees_Browse.PRG'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees_Report.PRG'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers_Data.PRG'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers_Browse.PRG'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers_Report.PRG'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Items_Data.PRG'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsEnter_Data.PRG'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersEnter_Data.PRG'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Agreement.PRG'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Quality_Data.PRG'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Scheduling_Data.PRG'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Warehouse_Data.PRG'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Finance_Data.PRG'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReserveItems_Data.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Processes_Data.PRG'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProcessStatus_Data.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Production_Data.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderProcesses_Data.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Dispose_Data.PRG'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfCustomers_Report.PRG'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfEmployees_Report.PRG'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfSuppliers_Report.PRG'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMCLASSES_Report.PRG'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMUNITS_Report.PRG'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMGROUPS_Report.PRG'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMGRADES_Report.PRG'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSIZES_Report.PRG'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMCOLORS_Report.PRG'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSOURCES_Report.PRG'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMS_Report.PRG'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'STORES_Report.PRG'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSENTEREDTOSTORES_Report.PRG'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReservedItems_Report.PRG'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfOrders_Report.PRG'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderDetails_Report.PRG'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'QualityOpinions_Report.PRG'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SchedulingOpinions_Report.PRG'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'WarehouseOpinions_Report.PRG'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'FinanceOpinions_Report.PRG'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Agreement_Report.PRG'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Processes_Report.PRG'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProcessStatus_Report.PRG'",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderProcesses_Report.PRG'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EmployeesProduction_Report.PRG'",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersDispose_Report.PRG'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportBase.PRG'",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SystemDatabase_Base.PRG'",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustType_Data.PRG'",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayMethod_Data.PRG'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustClass_Data.PRG'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers_Browse2.PRG'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'HowKnow_Data.PRG'",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderCards_Report.PRG'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose_Data.PRG'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose_Report.PRG'",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustOpinion_Data.PRG'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Locations_Data.PRG'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustFriends_Data.PRG'",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustFriends_Report.PRG'",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMail.PRG'",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToOne.PRG'",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToAllCustomers.PRG'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToAllEmployees.PRG'",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToAllSuppliers.PRG'",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToGroup.PRG'",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers_Browse3.PRG'",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderTypes_Data.PRG'",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustOrders_Data.PRG'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EmpOrders_Data.PRG'",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ValueItems_Data.PRG'",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ValueItems_Report.PRG'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose2_Data.PRG'",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ValueItemsValues_Data.PRG'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose2_Report.PRG'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose3_Report.PRG'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose4_Report.PRG'",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustCome_Report.PRG'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDispose5_Report.PRG'",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Data.PRG'",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Browse.PRG'",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Report.PRG'",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfEmployees2_Report.PRG'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ImportData.PRG'",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BasicData.PRG'",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Shehada_Report.PRG'",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Shehada2_Report.PRG'",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToGroup2.PRG'",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToGroup3.PRG'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object GenderDataObject of Class GenderDataClass",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CountryDataObject of Class CountryDataClass",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsClassesObject of Class ItemsClassesClass",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsUnitsObject of Class ItemsUnitsClass",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsGroupsObject of Class ItemsGroupsClass",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsGradesObject of Class ItemsGradesClass",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsSizesObject of Class ItemsSizesClass",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsColorsObject of Class ItemsColorsClass",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsSourcesObject of Class ItemsSourcesClass",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsStoresObject of Class ItemsStoresClass",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesDataObject of Class EmployeesDataClass",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesBrowseObject of Class EmployeesBrowseClass",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesReportObject of Class EmployeesReportClass",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersDataObject of Class SuppliersDataClass",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersBrowseObject of Class SuppliersBrowseClass",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersReportObject of Class SuppliersReportClass",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsObject of Class ItemsClass",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsEnterObject of Class ItemsEnterClass",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersDataObject of Class UsersClass",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersEnterObject of Class OrdersEnterClass",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AgreementObject of Class AgreementClass",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object QualityObject of Class QualityClass",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SchedulingObject of Class SchedulingClass",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object WarehouseObject of Class WarehouseClass",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object FinanceObject of Class FinanceClass",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReserveItemsObject of Class ReserveItemsClass",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesObject of Class ProcessesClass",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusObject of Class ProcessStatusClass",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProductionObject of Class ProductionClass",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderProcessesObject of Class OrderProcessesClass",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DisposeObject of Class DisposeClass",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofCustomersReportObject of Class ListofCustomersReportClass",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofEmployeesReportObject of Class ListofEmployeesReportClass",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofSuppliersReportObject of Class ListofSuppliersReportClass",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemClassesReportObject of Class ItemClassesReportClass",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemUnitsReportObject of Class ItemUnitsReportClass",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemGROUPSReportObject of Class ItemGROUPSReportClass",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemGRADESReportObject of Class ItemGRADESReportClass",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemSIZESReportObject of Class ItemSIZESReportClass",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemCOLORSReportObject of Class ItemCOLORSReportClass",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemSOURCESReportObject of Class ItemSOURCESReportClass",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsReportObject of Class ItemsReportClass",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object StoresReportObject of Class StoresReportClass",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ITEMSENTEREDTOSTORESReportObject of Class ITEMSENTEREDTOSTORESReportClass",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReservedItemsReportObject of Class ReservedItemsReportClass",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListOfOrdersReportObject of Class ListOfOrdersReportClass",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderDetailsReportObject of Class OrderDetailsReportClass",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object QualityOpinionsReportObject of Class QualityOpinionsReportClass",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SchedulingOpinionsReportObject of Class SchedulingOpinionsReportClass",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object FinanceOpinionsReportObject of Class FinanceOpinionsReportClass",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object WarehouseOpinionsReportObject of Class WarehouseOpinionsReportClass",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AgreementReportObject of Class AgreementReportClass",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesReportObject of Class ProcessesReportClass",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusReportObject of Class ProcessStatusReportClass",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderProcessesReportObject of Class OrderProcessesReportClass",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesProductionReportObject of Class EmployeesProductionReportClass",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersDisposeReportObject of Class OrdersDisposeReportClass",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustTypeDataObject of Class CustTypeDataClass",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMethodDataObject of Class PayMethodDataClass",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustClassDataObject of Class CustClassDataClass",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse2Object of Class CustomersBrowse2Class",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object HowKnowDataObject of Class HowKnowDataClass",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderCardsReportObject of Class OrderCardsReportClass",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDisposeObject of Class CustDisposeClass",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDisposeReportObject of Class CustDisposeReportClass",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustOpinionObject of Class CustOpinionClass",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object LocationsObject of Class LocationsClass",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustFriendsObject of Class CustFriendsClass",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustFriendsReportObject of Class CustFriendsReportClass",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToOneObject of Class SendMailToOneClass",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToAllCustomersObject of Class SendMailToAllCustomersClass",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToAllEmployeesObject of Class SendMailToAllEmployeesClass",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToAllSuppliersObject of Class SendMailToAllSuppliersClass",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToGroupObject of Class SendMailToGroupClass",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse3Object of Class CustomersBrowse3Class",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderTypesObject of Class OrderTypesClass",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustOrdersObject of Class CustOrdersClass",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmpOrdersObject of Class EmpOrdersClass",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ValueItemsObject of Class ValueItemsClass",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ValueItemsReportObject of Class ValueItemsReportClass",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDispose2Object of Class CustDispose2Class",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ValueItemsValuesObject of Class ValueItemsValuesClass",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDispose2ReportObject of Class CustDispose2ReportClass",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDispose3ReportObject of Class CustDispose3ReportClass",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDispose4ReportObject of Class CustDispose4ReportClass",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustComeReportObject of Class CustComeReportClass",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDispose5ReportObject of Class CustDispose5ReportClass",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2DataObject of Class Employees2DataClass",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2BrowseObject of Class Employees2BrowseClass",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2ReportObject of Class Employees2ReportClass",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofEmployees2ReportObject of Class ListofEmployees2ReportClass",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object importdataobject of Class ImportDataClass",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BasicDataObject of Class BasicDataClass",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ShehadaReportObject of Class ShehadaReportClass",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Shehada2ReportObject of Class Shehada2ReportClass",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToGroup2Object of Class SendMailToGroup2Class",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToGroup3Object of Class SendMailToGroup3Class",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»—‰«„Ã «·ﬂÊ—”«  Ê«· œ—Ì»  '",210,214)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action systemkey()",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",216,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",222,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",224,225)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",226,227)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",228,229)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",230,231)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",232,233)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",234,235)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",236,238)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",239,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: '«÷€ÿ ‰⁄„ Õ Ï Ì „ «€·«ﬁ «·‰Ÿ«„ «Ê «÷€·« ·« ·«·€«¡ «·⁄„·Ì…'",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· «‰  „ «ﬂœ ?' Title '≈€·«ﬁ «·‰Ÿ«„' Type: Message Yes/No",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Ready'",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylogo",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlogo ) , Title : 'Window Title'",251,255)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",256,265)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGOALONE'",266,267)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",268,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'image\CUSTOMERS.JPG'",270,271)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersBrowse3Object:showwindow()",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",273,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„»Ì⁄« '",275,276)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersBrowse3Object:showwindow()",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",278,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'image\LEATHER.JPG'",283,284)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsObject:ShowWindow()",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",286,287)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«· ‰”Ìﬁ'",288,289)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsObject:ShowWindow()",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",291,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'image\AGREEMENT.JPG'",296,297)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersEnterObject:ShowWindow()",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",299,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«· ”ÊÌﬁ'",301,302)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersEnterObject:ShowWindow()",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",304,308)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'image\DISPOSE.JPG'",309,310)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ProductionObject:ShowWindow()",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '«·«œ«—…'",314,315)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ProductionObject:ShowWindow()",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",317,321)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",322,324)
SS_ESASTEP("Circuits\Main\Main\Main","HPARENT = Get Window ('win1') Handle",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","HCHILD = Get Window ('winLOGO') Handle",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetParent' , Parameters HCHILD,HPARENT",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","winlogo.Center ( )",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form winlogo No Wait",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure customers",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CustomersDataObject.ShowWindow()",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sysmenu",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(76) )",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·»Ì«‰«  «·«”«”Ì…' )",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )  IMAGE 'image\wzclose.bmp'",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:userisadmin = 1 )",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '‰Ÿ«„'",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·„” Œœ„Ì‰' )",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(1) )",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·«‘Œ«’'",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(2) )",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„ÊŸ›Ì‰'",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„ÊŸ›' )",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „ÊŸ›' )",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·„ÊŸ›Ì‰' )",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(3) )",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„œ—»Ì‰'",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„œ—»' )",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰  „œ—»' )",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·„œ—»Ì‰' )",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(4) )",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' «·„Ê—œÌ‰'",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„Ê—œÌ‰' )",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „Ê—œ' )",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì—  »«·„Ê—œÌ‰' )",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(5) )",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„ œ—»Ì‰'",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„ œ—»Ì‰' )      SEPARATOR",371,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „ œ—» »«·«”„' )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „ œ—» »—ﬁ„ «·ÃÊ«·' )",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „ œ—» »«Ï Õﬁ·' )      SEPARATOR",375,376)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·„ œ—»Ì‰' )",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(6) )",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «·Ã‰”Ì«  ' )",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(7) )",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «”„«¡ «·«ﬁ”«„ ' )",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(8) )",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «‰Ê«⁄ «·⁄„·«¡' )",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(9) )",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· ÿ—ﬁ «·”œ«œ' )",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(10) )",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· ›∆«  «·⁄„·«¡' )",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(11) )",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„Œ«“‰'",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(12) )",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '›∆«  «·«’‰«›' )",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(13) )",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÊÕœ«  «·«’‰«›' )",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(14) )",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„Ã„Ê⁄«  «·«’‰«›' )",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(15) )",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„” ÊÌ«  «·«’‰«›' )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(16) )",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«ÕÃ«„ «·«’‰«›' )",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(17) )",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·Ê«‰ «·«’‰«›' )",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(18) )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„’«œ— «·«’‰«›' )",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(19) )",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„Œ«“‰ «·«’‰«›' )      SEPARATOR",421,422)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(20) )",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ⁄—Ì› «·«’‰«›' )      SEPARATOR",425,426)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(21) )",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '≈œŒ«· ’‰› «·Ï «·„Œ“‰' )      SEPARATOR",429,430)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(22) )",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÃ“ ﬂ„Ì… „‰ ’‰› ·’«·Õ œÊ—…' )",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(23) )",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'œÊ—« '",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(24) )",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· Ê”«∆· „⁄—›… «·⁄„Ì· »«·œÊ—…' )",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(25) )",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «‰Ê«⁄ «·œÊ—« ' )",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(26) )",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«„«ﬂ‰ «·œÊ—« ' )      SEPARATOR",446,447)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(27) )",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ”ÃÌ· «·œÊ—«  Ê«·„ œ—»Ì‰' )",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(28) )",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·„” ›”—Ì‰ ⁄‰ œÊ—…' )      SEPARATOR",453,454)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(29) )",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„ «»⁄… ”Ì— œÊ—…'",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(30) )",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ⁄—Ì› «·«Ã—«¡« ' )",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(31) )",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ⁄—Ì› Õ«·«  «·«Ã—«¡' )      SEPARATOR",464,465)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(32) )",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄„·Ì«   ‰›Ì– œÊ—…' )      SEPARATOR",468,469)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(33) )",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„ «»⁄… «·„ÊŸ›Ì‰' )",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(34) )",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡'",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(35) )",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«Œ Ì«—«  «· ﬁÌÌ„ «·⁄«„' )",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(36) )",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«· ﬁÌÌ„ «·⁄«„ „‰ ﬁ»· «·„ œ—»Ì‰' )      SEPARATOR",482,483)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(37) )",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(38) )",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(39) )",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁ«—Ì—'",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(40) )",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„œ—»Ì‰' )      SEPARATOR",496,497)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(41) )",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰' )      SEPARATOR",500,501)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(42) )",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„Ê—œÌ‰' )      SEPARATOR",504,505)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(43) )",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·⁄„·«¡' )      SEPARATOR",508,509)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(44) )",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁ«—Ì— «·„Œ«“‰'",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(45) )",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— ›∆«  «·«’‰«›' )",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(46) )",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— ÊÕœ«  «·«’‰«›' )",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(47) )",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „Ã„Ê⁄«  «·«’‰«›' )",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(48) )",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „” ÊÌ«  «·«’‰«›' )",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(49) )",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «ÕÃ«„ «·«’‰«›' )",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(50) )",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— «·Ê«‰ «·«’‰«›' )",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(51) )",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „’«œ— «·«’‰«›' )",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(52) )",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·„Œ«“‰' )      SEPARATOR",535,536)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(53) )",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·«’‰«› Ê«·ﬂ„Ì«  «·„ Ê›—…' )",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(54) )",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »œŒÊ· «’‰«› «·Ï «·„Œ“‰' )",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(55) )",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »ÕÃ“ ﬂ„Ì«  „‰ «·«’‰«› ·’«·Õ œÊ—…' )      SEPARATOR",545,546)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(56) )",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁ«—Ì— «·œÊ—« '",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(57) )",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ﬁ«∆„… »«·œÊ—« ' )",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(58) )",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— » ›«’Ì· «·œÊ—…' )",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(59) )",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ﬂ—Ê  œÊ—…' )",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(60) )",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·œÊ—«  Ê«·„ œ—»Ì‰ Ê«·„” ›”—Ì‰ ⁄‰ œÊ—…' )",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(61) )",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ﬂ‘› Õ÷Ê— Ê≈‰’—«› «·„ œ—»Ì‰' )      SEPARATOR",565,566)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(77) )",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘Â«œ… »«··€… «·⁄—»Ì…' )      SEPARATOR",569,570)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘Â«œ… »«··€… «·«‰Ã·Ì“Ì…' )      SEPARATOR",571,572)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(62) )",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁ«—Ì— „ «»⁄… ”Ì— «·œÊ—« '",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(63) )",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«Ã—«¡«   «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—…' )",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(64) )",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Õ«·«  «Ã—«¡  ‰›Ì–Ï ' )",582,582)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",583,583)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(65) )",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »„—«Õ· «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—… „Õœœ…' )",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(66) )",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰' )",588,588)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",589,589)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",590,590)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(67) )",592,592)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' ﬁ«—Ì—  ﬁÌÌ„ «·œÊ—« '",593,593)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— » ﬁÌÌ„ ⁄«„ ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )      SEPARATOR",594,595)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",596,596)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »œ—Ã«   ﬁÌÌ„ „›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",597,597)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »„ Ê”ÿ «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",598,598)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '≈” „«—… «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰' )",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '≈” „«—… «· ﬁÌÌ„ «· ›’Ì·Ï ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰ »œÊ‰ «”„ «·„ œ—»' )",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",602,602)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",603,603)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",604,604)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(68) )",605,605)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·»—Ìœ «·«·ﬂ —Ê‰Ï'",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(69) )",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·…' )      SEPARATOR",608,609)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(71) )",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï ﬂ· «·„œ—»Ì‰' )",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(72) )",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï ﬂ· «·„Ê—œÌ‰' )      SEPARATOR",615,616)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(73) )",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï ﬂ· «·„ œ—»Ì‰' )",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(74) )",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï «·„”Ã·Ì‰ ›Ï œÊ—…' )",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(78) )",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—…' )",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(79) )",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«—”«· —”«·… «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—… Ê«·„”Ã·Ì‰ „‰ ﬁ»· «·„ÊŸ›' )",628,628)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",629,629)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",630,630)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",631,631)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«” Ì—«œ «·»Ì«‰« '",632,632)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(75) )",633,633)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«” Ì—«œ »Ì«‰«  «·⁄„·«¡ „‰ «ﬂ”·' )      SEPARATOR",634,635)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",636,636)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",637,637)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",638,638)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure customersreport",639,639)
SS_ESASTEP("Circuits\Main\Main\Main","customersreportobject.filter = ''",640,640)
SS_ESASTEP("Circuits\Main\Main\Main","myout = customersreportobject.ShowWindow()",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Employeesreport",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","Employeesreportobject.filter = ''",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Employeesreportobject.ShowWindow()",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Suppliersreport",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","Suppliersreportobject.filter = ''",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Suppliersreportobject.ShowWindow()",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure datesettings",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format JAPAN",652,653)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure entersystem",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","usersobject.manychecks = true",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","myout = usersobject.connect()",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sysmenu",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",661,662)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",663,668)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(2) )",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn1 )",670,672)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesDataObject:showwindow()",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",674,676)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn2 )",677,679)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesBrowseObject:showwindow()",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",681,683)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn3 )",684,686)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Employeesreport()",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",688,691)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(4) )",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarsupplierbtn1 )",694,696)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SuppliersDataObject:showwindow()",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",698,700)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarSuppliersbtn2 )",701,703)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SuppliersBrowseObject:showwindow()",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",705,707)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarSuppliersbtn3 )",708,710)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Suppliersreport()",711,711)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",712,715)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",716,716)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(5) )",717,717)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn1 )",718,720)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersDataObject:showwindow()",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",722,724)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn2 )",725,727)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersBrowse3Object:showwindow()",728,728)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",729,731)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn3 )",732,734)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Customersreport()",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",736,739)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",740,740)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarshutdown )",741,743)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",745,748)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",749,750)
SS_ESASTEP("Circuits\Main\Main\Main","myout = usersobject.disconnect()",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","usersobject.manychecks = false",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LOGOSTART",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winLOGOSTART ) , Title : 'Window Title'",755,759)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",760,770)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGO'",771,772)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",773,774)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",775,776)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' «—ÌŒ «·«’œ«— :  2012/12/11'",777,778)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",779,785)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",786,787)
SS_ESASTEP("Circuits\Main\Main\Main","WINLOGOSTART.Center ( )",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",789,791)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofcustomersreport",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","ListofCustomersReportObject.filter = ''",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofCustomersReportObject.ShowWindow()",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofemployeesreport",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","ListofEmployeesReportObject.filter = ''",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofEmployeesReportObject.ShowWindow()",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofsuppliersreport",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","ListofSuppliersReportObject.filter = ''",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofSuppliersReportObject.ShowWindow()",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sysreports",805,805)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winsysreports ) , Title : '«· ﬁ«—Ì— «·‘«∆⁄…'",806,810)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",811,818)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : GetStartUpFolder()+'\Image\back.jpg'",819,820)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",821,822)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ﬁ—Ì— »«·«’‰«› Ê«·„ Ê›— „‰Â«'",823,824)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsReportObject:ShowWindow()",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",826,828)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬁ—Ì— »«·«’‰«› «· Ï œŒ·  «·„Œ«“‰'",829,830)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ITEMSENTEREDTOSTORESReportObject:ShowWindow()",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",832,834)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' ﬁ—Ì— »«·«’‰«› «·„’—Ê›… ·’«·Õ œÊ—…'",835,836)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ReservedItemsReportObject:ShowWindow()",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",838,840)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' ›«’Ì· œÊ—…'",841,842)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderDetailsReportObject:ShowWindow()",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",844,846)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '«·„Ê«›ﬁ… ⁄·Ï œÊ—…'",847,848)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AgreementReportObject:ShowWindow()",849,849)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",850,852)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : '«Ã—«¡«   ‰›Ì– œÊ—…'",853,854)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderProcessesReportObject:ShowWindow()",855,855)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",856,858)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : '„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰'",859,860)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesProductionReportObject:ShowWindow()",861,861)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",862,864)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : ' ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· „”∆Ê· «·ÃÊœ… '",865,866)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersDisposeReportObject:ShowWindow()",867,867)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",868,870)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : '«€·«ﬁ'",871,872)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winsysreports.release()",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",874,876)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'ﬂ—Ê  œÊ—…'",877,878)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderCardsReportObject:ShowWindow()",879,879)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",880,882)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : ' ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· «·„ œ—»Ì‰'",883,884)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustDisposeReportObject:ShowWindow()",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",886,888)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",889,890)
SS_ESASTEP("Circuits\Main\Main\Main","winsysreports.Center ( )",891,891)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",892,894)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",895,895)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",896,896)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",897,897)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",898,898)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000,0x100000)",900,900)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Employees2report",902,902)
SS_ESASTEP("Circuits\Main\Main\Main","Employees2reportobject.filter = ''",903,903)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Employees2reportobject.ShowWindow()",904,904)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",905,905)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofemployees2report",906,906)
SS_ESASTEP("Circuits\Main\Main\Main","ListofEmployees2ReportObject.filter = ''",907,907)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofEmployees2ReportObject.ShowWindow()",908,908)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",909,909)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SystemKey",910,910)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure logostart",911,911)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",912,912)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mylogo",913,913)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc.bat' , MINIMIZE",914,914)
SS_ESASTEP("Circuits\Main\Main\Main","myout = UsersObject.SystemLogin()",915,915)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure entersystem",916,916)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",917,917)
Return
*-------------------------------------------------------------------*
