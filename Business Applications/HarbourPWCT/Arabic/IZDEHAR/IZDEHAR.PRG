*---------------------------------------------------------------------------*
* Time : 05:16:41    Date : 12/10/2010
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


Resistance R_IZDEHAR_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IZDEHAR_15speed1() code
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
Set Procedure to "Users_Data.PRG"
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 907 ;
HEIGHT 718 ;
ON INIT systemlogin()  ;
ICON "PWCTICON" ;
TITLE "≈“œÂ«— - «” ‘«—«  «œ«—Ì… Ê œ—Ì»" ;
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

@ 79 ,644 IMAGE image1;
PICTURE "image\CUSTOMERS.JPG";
ON CLICK customers()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,721 LABEL lbl1 ;
VALUE "«·„ œ—»Ì‰" ;
ACTION customers()  ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,640 IMAGE image2;
PICTURE "image\LEATHER.JPG";
ON CLICK ItemsObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 607 ,705 LABEL lbl2 ;
VALUE "„Œ«“‰" ;
ACTION ItemsObject:ShowWindow()  ;
WIDTH 50 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 79 ,430 IMAGE image3;
PICTURE "image\ORDER.JPG";
ON CLICK OrdersEnterObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,504 LABEL lbl3 ;
VALUE "«·œÊ—« " ;
ACTION OrdersEnterObject:ShowWindow()  ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 79 ,223 IMAGE image5;
PICTURE "image\FACTORY.JPG";
ON CLICK OrderProcessesObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,271 LABEL lbl5 ;
VALUE "„ «»⁄… ”Ì— œÊ—…" ;
ACTION OrderProcessesObject:ShowWindow()  ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,430 IMAGE image6;
PICTURE "image\REPORTS.JPG";
ON CLICK sysreports()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 607 ,488 LABEL lbl6 ;
VALUE " ﬁ«—Ì—" ;
ACTION sysreports()  ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
WIDTH 234 ;
HEIGHT 184 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

@ 8 ,15 IMAGE image1;
PICTURE "LOGOALONE";
WHITEBACKGROUND ;
WIDTH 196 HEIGHT 135
@ 149 ,4 LABEL lbl1 ;
VALUE "  ≈“œÂ«— - «” ‘«—«  «œ«—Ì… Ê œ—Ì»" ;
WIDTH 226 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,64}
END WINDOW
EndIF

HPARENT := GetFormHandle("win1")
HCHILD := GetFormHandle("winLOGO")
myout = CALLDLL32("SetParent","USER32.DLL",HCHILD,HPARENT)
winlogo.Col := 50
winlogo.Row := 450
Activate Window winlogo nowait
Return Nil
Proc customers
myout = CustomersDataObject:ShowWindow()
Return Nil
Proc sysmenu
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action closesystem()  IMAGE "image\wzclose.bmp"
END POPUP
IF UserCan_Admin = 2
POPUP "‰Ÿ«„"
MENUITEM "«·„” Œœ„Ì‰" Action UsersDataObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinEmployees = 2 .or. UserCan_WinSuppliers = 2 .or. UserCan_WinCustomers = 2
POPUP "«·«‘Œ«’"
IF UserCan_WinEmployees = 2
POPUP "«·„œ—»Ì‰"
MENUITEM "»Ì«‰«  «·„œ—»" Action EmployeesDataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰  „œ—»" Action EmployeesBrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »«·„œ—»Ì‰" Action Employeesreport()
END POPUP
POPUP "«·„ÊŸ›Ì‰"
MENUITEM "»Ì«‰«  «·„ÊŸ›" Action Employees2DataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ÊŸ›" Action Employees2BrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »«·„ÊŸ›Ì‰" Action Employees2report()
END POPUP
ENDIF
IF UserCan_WinCustomers = 2
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
IF UserCan_WinSuppliers = 2
POPUP " «·„Ê—œÌ‰"
MENUITEM "»Ì«‰«  «·„Ê—œÌ‰" Action SuppliersDataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „Ê—œ" Action SuppliersBrowseObject:showwindow()
MENUITEM " ﬁ—Ì—  »«·„Ê—œÌ‰" Action Suppliersreport()
END POPUP
ENDIF
MENUITEM "ÃœÊ· «”„«¡ «·œÊ· " Action Countrydataobject:showwindow()
MENUITEM "ÃœÊ· «”„«¡ «·«ﬁ”«„ " Action GenderDataObject:showwindow()
MENUITEM "ÃœÊ· «‰Ê«⁄ «·⁄„·«¡" Action CustTypeDataObject:showwindow()
MENUITEM "ÃœÊ· ÿ—ﬁ «·”œ«œ" Action PayMethodDataObject:showwindow()
MENUITEM "ÃœÊ· ›∆«  «·⁄„·«¡" Action CustClassDataObject:showwindow()
END POPUP
ENDIF
IF UserCan_WinWarehouse = 2
POPUP "„Œ«“‰"
MENUITEM "›∆«  «·«’‰«›" Action ItemsClassesObject:ShowWindow()
MENUITEM "ÊÕœ«  «·«’‰«›" Action ItemsUnitsObject:ShowWindow()
MENUITEM "„Ã„Ê⁄«  «·«’‰«›" Action ItemsGroupsObject:ShowWindow()
MENUITEM "„” ÊÌ«  «·«’‰«›" Action ItemsGradesObject:ShowWindow()
MENUITEM "«ÕÃ«„ «·«’‰«›" Action ItemsSizesObject:ShowWindow()
MENUITEM "«·Ê«‰ «·«’‰«›" Action ItemsColorsObject:ShowWindow()
MENUITEM "„’«œ— «·«’‰«›" Action ItemsSourcesObject:ShowWindow()
MENUITEM "„Œ«“‰ «·«’‰«›" Action ItemsStoresObject:ShowWindow()
SEPARATOR
MENUITEM " ⁄—Ì› «·«’‰«›" Action ItemsObject:ShowWindow()
SEPARATOR
MENUITEM "≈œŒ«· ’‰› «·Ï «·„Œ“‰" Action ItemsEnterObject:ShowWindow()
SEPARATOR
MENUITEM "ÕÃ“ ﬂ„Ì… „‰ ’‰› ·’«·Õ œÊ—…" Action ReserveItemsObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinOrders = 2 .or. UserCan_WinAgreement = 2
POPUP "œÊ—« "
IF UserCan_WinOrders = 2
MENUITEM "ÃœÊ· Ê”«∆· „⁄—›… «·⁄„Ì· »«·œÊ—…" Action HowKnowDataObject:ShowWindow()
MENUITEM "ÃœÊ· «‰Ê«⁄ «·œÊ—« " Action OrderTypesObject:ShowWindow()
MENUITEM "«„«ﬂ‰ «·œÊ—« " Action LocationsObject:ShowWindow()
SEPARATOR
MENUITEM " ”ÃÌ· œÊ—…" Action OrdersEnterObject:ShowWindow()
MENUITEM "«·„” ›”—Ì‰ ⁄‰ œÊ—…" Action CustFriendsObject:ShowWindow()
SEPARATOR
ENDIF
IF UserCan_WinAgreement = 2
ENDIF
END POPUP
ENDIF
IF UserCan_WinProduction = 2
POPUP "„ «»⁄… ”Ì— œÊ—…"
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject:ShowWindow()
MENUITEM " ⁄—Ì› Õ«·«  «·«Ã—«¡" Action ProcessStatusObject:ShowWindow()
SEPARATOR
MENUITEM "⁄„·Ì«   ‰›Ì– œÊ—…" Action OrderProcessesObject:ShowWindow()
SEPARATOR
MENUITEM "„ «»⁄… «·„ÊŸ›Ì‰" Action ProductionObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinDispose = 2
POPUP " ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡"
MENUITEM "«Œ Ì«—«  «· ﬁÌÌ„ «·⁄«„" Action CustOpinionObject:ShowWindow()
MENUITEM "«· ﬁÌÌ„ «·⁄«„ „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDisposeObject:ShowWindow()
SEPARATOR
MENUITEM "⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action ValueItemsObject:ShowWindow()
MENUITEM "«· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" Action CustDispose2Object:ShowWindow()
END POPUP
ENDIF
POPUP " ﬁ«—Ì—"
IF UserCan_WinEmployees = 2
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰" Action ListOfEmployeesreport()
ENDIF
IF UserCan_WinSuppliers = 2
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„Ê—œÌ‰" Action ListOfSuppliersreport()
ENDIF
IF UserCan_WinCustomers = 2
MENUITEM " ﬁ—Ì— »Ì«‰«  «·⁄„·«¡" Action ListOfCustomersreport()
SEPARATOR
ENDIF
IF UserCan_WinWarehouse = 2
POPUP " ﬁ«—Ì— «·„Œ«“‰"
MENUITEM " ﬁ—Ì— ›∆«  «·«’‰«›" Action ItemClassesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— ÊÕœ«  «·«’‰«›" Action ItemUnitsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— „Ã„Ê⁄«  «·«’‰«›" Action ItemGroupsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— „” ÊÌ«  «·«’‰«›" Action ItemGradesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— «ÕÃ«„ «·«’‰«›" Action ItemSizesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— «·Ê«‰ «·«’‰«›" Action ItemColorsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— „’«œ— «·«’‰«›" Action ItemSourcesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »«·„Œ«“‰" Action StoresReportObject:ShowWindow()
SEPARATOR
MENUITEM " ﬁ—Ì— »«·«’‰«›" Action ItemsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »œŒÊ· «’‰«› «·Ï «·„Œ“‰" Action ITEMSENTEREDTOSTORESReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »ÕÃ“ ﬂ„Ì«  „‰ «·«’‰«› ·’«·Õ œÊ—…" Action ReservedItemsReportObject:ShowWindow()
SEPARATOR
END POPUP
ENDIF
IF UserCan_WinOrders = 2 .or. UserCan_WinAgreement = 2
POPUP " ﬁ«—Ì— «·œÊ—« "
MENUITEM "ﬁ«∆„… »«·œÊ—« " Action ListOfOrdersReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— » ›«’Ì· «·œÊ—…" Action OrderDetailsReportObject:ShowWindow()
MENUITEM "ﬂ—Ê  œÊ—…" Action OrderCardsReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »«·œÊ—«  Ê«·„ œ—»Ì‰ Ê«·„” ›”—Ì‰ ⁄‰ œÊ—…" Action CustFriendsReportObject:ShowWindow()
MENUITEM "ﬂ‘› Õ÷Ê— Ê≈‰’—«› «·„ œ—»Ì‰" Action CustComeReportObject:ShowWindow()
SEPARATOR
IF UserCan_WinAgreement = 2
ENDIF
END POPUP
ENDIF
IF UserCan_WinProduction = 2
POPUP " ﬁ«—Ì— „ «»⁄… ”Ì— «·œÊ—« "
MENUITEM " ﬁ—Ì— »«Ã—«¡«   «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—…" Action ProcessesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »Õ«·«  «Ã—«¡  ‰›Ì–Ï " Action ProcessStatusReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »„—«Õ· «· ÃÂÌ“ Ê«· ‰›Ì– ·œÊ—… „Õœœ…" Action OrderProcessesReportObject:ShowWindow()
MENUITEM " ﬁ—Ì— »„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰" Action EmployeesProductionReportObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinDispose = 2
POPUP " ﬁ«—Ì—  ﬁÌÌ„ «·œÊ—« "
MENUITEM " ﬁ—Ì— » ﬁÌÌ„ ⁄«„ ··œÊ—… „‰ ﬁ»· „œÌ— «·ÃÊœ…" Action OrdersDisposeReportObject:ShowWindow()
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
POPUP "«·»—Ìœ «·«·ﬂ —Ê‰Ï"
MENUITEM "«—”«· —”«·…" Action sendmailtooneobject:showwindow()
SEPARATOR
IF UserCan_WinEmployees = 2
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„ÊŸ›Ì‰" Action sendmailtoallemployeesobject:showwindow()
ENDIF
IF UserCan_WinCustomers = 2
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„ œ—»Ì‰" Action sendmailtoallcustomersobject:showwindow()
ENDIF
IF UserCan_WinSuppliers = 2
MENUITEM "«—”«· —”«·… «·Ï ﬂ· «·„Ê—œÌ‰" Action sendmailtoallSuppliersobject:showwindow()
SEPARATOR
ENDIF
IF UserCan_WinOrders = 2
MENUITEM "«—”«· —”«·… «·Ï «·„”Ã·Ì‰ ›Ï œÊ—…" Action sendmailtogroupobject:showwindow()
ENDIF
END POPUP
DEFINE TOOLBAR Toolbar1;
PARENT win1 ;
BUTTONSIZE 40 , 40 ;
BOLD ;
FLAT ;
BORDER ;
BREAK 

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

BUTTON toolbarcustomersbtn1;
PICTURE "image\customersicon.bmp" ;
ADJUST ;
ON CLICK CustomersDataObject:showwindow()  ;
TOOLTIP "»Ì«‰«  «·⁄„·«¡" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK CustomersBrowseObject:showwindow()  ;
TOOLTIP "»ÕÀ ›Ï »Ì«‰«  «·⁄„·«¡" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Customersreport()  ;
TOOLTIP " ﬁ—Ì— »«·⁄„·«¡" ;
SEPARATOR ;
AUTOSIZE 

BUTTON toolbarshutdown;
PICTURE "image\shutdown.bmp" ;
ADJUST ;
ON CLICK closesystem()  ;
TOOLTIP "≈€·«ﬁ «·‰Ÿ«„" ;
SEPARATOR ;
AUTOSIZE 

END TOOLBAR

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
set date japan
set cent on
Return Nil
Proc systemlogin
win1.Hide ( )
DO LOGOSTART
myhandle = getcontrolhandle ( "image1","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image2","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image3","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image5","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image6","win1" )
DO sethandcursor WITH myhandle
win1.Maximize ( )
win1.Show ( )
DO mylogo
if !iswindowdefined( winlogin )
DEFINE WINDOW winlogin ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 267 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MODAL ;
NOAUTORELEASE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {255,255,255} 

@ 40 ,0 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 530 HEIGHT 120
@ 36 ,307 LABEL lbl1 ;
VALUE " :  «”„ «·„” Œœ„" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 93 ,310 LABEL lbl2 ;
VALUE ":  ﬂ·„… «·”—" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 33 ,92 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 91 ,92 TEXTBOX text2;
ON ENTER OpenSystem()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 182 ,283 BUTTONEX btn1;
CAPTION "„Ê«›ﬁ";
ON CLICK OpenSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
TOOLTIP ""
@ 181 ,149 BUTTONEX btn2;
CAPTION "«€·«ﬁ";
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winlogin.Center ( )
ACTIVATE WINDOW winlogin
EndIF

Return Nil
Proc closelogin
winlogin.Release ( )
Return Nil
Proc entersystem
DEFINE MAIN MENU of win1
DO sysmenu
END MENU
winlogin.Release ( )
Return Nil
Proc OpenSystem
Local oCon,oRS,OpenWorld,mymax,x,cName,cPassword
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=IZDEHARDATA;uid=systemdatabase;pwd=systemdatabase123";Initial Catalog=' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Users",oCon,3,3 )
mymax := oRS:RecordCount
openworld := false
Public EnteredUserName,EnteredPassword,UserCan_Admin,UserCan_EmpID
EnteredUserName := winlogin.text1.Value
EnteredPassword := winlogin.text2.Value
Public UserCan_WinEmployees
Public UserCan_WinSuppliers
Public UserCan_WinCustomers
Public UserCan_WinWarehouse
Public UserCan_WinOrders
Public UserCan_WinAgreement
Public UserCan_WinProduction
Public UserCan_WinDispose
IF mymax > 0
oRS:MOVEFIRST()
FOR x = 1 TO MYMAX STEP 1
cName := oRS:fields:item("UserName"):value
cName = ALLTRIM ( cName )
IF cName = EnteredUserName
cPassword := oRS:fields:item("Password"):value
cPassword = ALLTRIM ( cPassword )
IF cPassword == EnteredPassWord
openworld := true
UserCan_Admin := oRS:fields:item("SystemAdmin"):value
UserCan_EmpID := oRS:fields:item("EmpID"):value
UserCan_WinEmployees := oRS:fields:item("WinEmployees"):value
UserCan_WinSuppliers := oRS:fields:item("WinSuppliers"):value
UserCan_WinCustomers := oRS:fields:item("WinCustomers"):value
UserCan_WinWarehouse := oRS:fields:item("WinWarehouse"):value
UserCan_WinOrders := oRS:fields:item("WinOrders"):value
UserCan_WinAgreement := oRS:fields:item("WinAgreement"):value
UserCan_WinProduction := oRS:fields:item("WinProduction"):value
UserCan_WinDispose := oRS:fields:item("WinDispose"):value
ELSE
MyOut := MSGBOX("ﬂ·„… «·”— €Ì— ’ÕÌÕ…","⁄›Ê«")
Return 0
ENDIF
ENDIF
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGINFO("·«ÌÊÃœ „” Œœ„Ì‰ ›Ï ﬁ«⁄œ… »Ì«‰«  «·‰Ÿ«„","⁄›Ê«")
Return 0
ENDIF
IF openworld = true
DO EnterSystem
ELSE
MyOut := MSGBOX("Œÿ« ›Ï «”„ «·„” Œœ„","⁄›Ê«")
ENDIF
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
VALUE " «—ÌŒ «·«’œ«— :  2010/12/17" ;
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
HEIGHT 546 ;
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
WIDTH 706 HEIGHT 528
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
@ 238 ,180 BUTTONEX btn5;
CAPTION "«·„Ê«›ﬁ… ⁄·Ï œÊ—…";
ON CLICK AgreementReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 278 ,180 BUTTONEX btn6;
CAPTION "«Ã—«¡«   ‰›Ì– œÊ—…";
ON CLICK OrderProcessesReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,180 BUTTONEX btn7;
CAPTION "„ «»⁄… «‰Ã«“ «·„ÊŸ›Ì‰";
ON CLICK EmployeesProductionReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 358 ,180 BUTTONEX btn8;
CAPTION " ﬁÌÌ„ œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· „”∆Ê· «·ÃÊœ… ";
ON CLICK OrdersDisposeReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 438 ,180 BUTTONEX btnClose;
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
@ 398 ,180 BUTTONEX btn10;
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


End Of Resistance

INIT PROCEDURE Init_IZDEHAR
START DOUBLES
Return
*-------------------------------------------------------------------*
