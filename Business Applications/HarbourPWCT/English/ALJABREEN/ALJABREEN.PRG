*---------------------------------------------------------------------------*
* Time : 17:47:16    Date : 12/04/2010
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


Resistance R_ALJABREEN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALJABREEN_15speed1() code
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
Set Procedure to "EmpDetails_Data.PRG"
Set Procedure to "EmpDetailsValues_Data.PRG"
Set Procedure to "Vacations_Data.PRG"
Set Procedure to "ItemDetails_Data.PRG"
Set Procedure to "ItemsDetailsValues_Data.PRG"
Set Procedure to "SelectItem.PRG"
Set Procedure to "ProductionMan_Data.PRG"
Set Procedure to "Warehousereportbase.PRG"
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
EmpDetailsDataObject = EmpDetailsDataClass()
EmpDetailsValuesDataBrowseObject = EmpDetailsValuesDataBrowseClass()
VacationsDataBrowseObject = VacationsDataBrowseClass()
ItemDetailsDataObject = ItemDetailsDataClass()
ItemDetailsValuesDataBrowseObject = ItemDetailsValuesDataBrowseClass()
SelectItemMasterDetailsObject = SelectItemMasterDetailsClass()
ProductionManObject = ProductionManClass()
systemdatabaseobject = systemdatabase()
Public sys_warehousearray
sys_warehousearray := {}
AADD( sys_warehousearray , "Skin Warehouse")
AADD( sys_warehousearray , "Wet blue 1 Warehouse")
AADD( sys_warehousearray , "Wet blue 2 Warehouse")
AADD( sys_warehousearray , "Crust Warehouse")
AADD( sys_warehousearray , "Finish Warehouse")
AADD( sys_warehousearray , "Chemicals Warehouse")
AADD( sys_warehousearray , "Shoes Row Materials Warehouse")
AADD( sys_warehousearray , "Jacket Row Materials Warehouse")
AADD( sys_warehousearray , "General Warehouse")
AADD( sys_warehousearray , "Shoes Warehouse")
AADD( sys_warehousearray , "Jacket Warehouse")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 869 ;
HEIGHT 718 ;
ON INIT systemlogin()  ;
ICON "PWCTICON" ;
TITLE "AL-JABREEN LEATHER IND. FACTORY - Production Follow up System" ;
MAIN ;
NOSHOW ;
BACKCOLOR {255,255,255} 

DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK;
WIDTH 100;
AMPM 

END STATUSBAR

DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 40 , 40 ;
BOLD ;
FLAT ;
BORDER ;
BREAK 

BUTTON toolbaremployeebtn1;
PICTURE "image\EmployeesIcon.bmp" ;
ADJUST ;
ON CLICK EmployeesDataObject:showwindow()  ;
TOOLTIP "Employees" ;
AUTOSIZE 

BUTTON toolbaremployeebtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK EmployeesBrowseObject:showwindow()  ;
TOOLTIP "Search in Employees" ;
AUTOSIZE 

BUTTON toolbaremployeebtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Employeesreport()  ;
TOOLTIP "Employees  Report" ;
SEPARATOR ;
AUTOSIZE 

BUTTON toolbarsupplierbtn1;
PICTURE "image\suppliersicon.bmp" ;
ADJUST ;
ON CLICK SuppliersDataObject:showwindow()  ;
TOOLTIP "Suppliers" ;
AUTOSIZE 

BUTTON toolbarSuppliersbtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK SuppliersBrowseObject:showwindow()  ;
TOOLTIP "Search in Suppliers" ;
AUTOSIZE 

BUTTON toolbarSuppliersbtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Suppliersreport()  ;
TOOLTIP "Suppliers Report" ;
SEPARATOR ;
AUTOSIZE 

BUTTON toolbarcustomersbtn1;
PICTURE "image\customersicon.bmp" ;
ADJUST ;
ON CLICK CustomersDataObject:showwindow()  ;
TOOLTIP "Customers" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn2;
PICTURE "image\searchicon.bmp" ;
ADJUST ;
ON CLICK CustomersBrowseObject:showwindow()  ;
TOOLTIP "Search in Customers" ;
AUTOSIZE 

BUTTON toolbarcustomersbtn3;
PICTURE "image\reporticon.bmp" ;
ADJUST ;
ON CLICK Customersreport()  ;
TOOLTIP "Customers Report" ;
SEPARATOR ;
AUTOSIZE 

BUTTON toolbarshutdown;
PICTURE "image\shutdown.bmp" ;
ADJUST ;
ON CLICK closesystem()  ;
TOOLTIP "Close" ;
SEPARATOR ;
AUTOSIZE 

END TOOLBAR

@ 84 ,950 LABEL lblUserName ;
VALUE "User Name : " ;
WIDTH 293 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.statusbar.item(1) := "Click Yes to Close the System or Click No to Cancel"
MyOut := MSGYESNO("Are you sure ?","Close System")
IF myout = true
win1.Release ( )
ENDIF
win1.statusbar.item(1) := "Ready"
Return Nil
Proc mylogo
if !iswindowdefined( winlogo )
DEFINE WINDOW winlogo ;
AT 10 ,10 ;
WIDTH 333 ;
HEIGHT 319 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

@ 83 ,96 IMAGE image1;
PICTURE "LOGOALONE";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 141 HEIGHT 153
@ 262 ,23 LABEL lbl1 ;
VALUE "AL-JABREEN Factory" ;
WIDTH 291 ;
HEIGHT 45 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {0,255,128}
@ 2 ,24 LABEL lbl2 ;
VALUE "        ãÕäÚ ÇáÌÈÑíä" ;
WIDTH 291 ;
HEIGHT 45 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {0,255,128}
END WINDOW
EndIF

HPARENT := GetFormHandle("win1")
HCHILD := GetFormHandle("winLOGO")
myout = CALLDLL32("SetParent","USER32.DLL",HCHILD,HPARENT)
winlogo.Center ( )
winlogo.Col := (win1.width) - (winlogo.width) - (100 )
winlogo.Row := 200
win1.lblusername.Col := (win1.width) - (winlogo.width) - (73 )
Activate Window winlogo nowait
Return Nil
Proc customers
myout = CustomersDataObject:ShowWindow()
Return Nil
Proc sysmenu
POPUP "File"
MENUITEM "About" Action aboutsystem()
MENUITEM "Close System" Action closesystem()  IMAGE "image\wzclose.bmp"
END POPUP
IF UserCan_Admin = 2
POPUP "System"
MENUITEM "Users" Action UsersDataObject:ShowWindow()
END POPUP
ENDIF
POPUP "Human Resource"
IF UserCan_WinEmployees = 2
POPUP "Employees"
MENUITEM "Employees Data" Action EmployeesDataObject:showwindow()
MENUITEM "Employees Search/Browse By Name" Action EmployeesBrowseObject:showwindow()
MENUITEM "Employees Report" Action Employeesreport()
MENUITEM "Employee Details" Action EmpDetailsDataObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinSuppliers = 2
POPUP "Suppliers"
MENUITEM "Suppliers Data" Action SuppliersDataObject:showwindow()
MENUITEM "Suppliers Search/Browse By Name" Action SuppliersBrowseObject:showwindow()
MENUITEM "Suppliers Report" Action Suppliersreport()
MENUITEM "Set Items Groups" Action ItemsGroupsObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinCustomers = 2
POPUP "Customers"
MENUITEM "Customers Data" Action CustomersDataObject:showwindow()
MENUITEM "Customers Search/Browse By Name" Action CustomersBrowseObject:showwindow()
MENUITEM "Customers Report" Action Customersreport()
END POPUP
ENDIF
IF UserCan_WinEmployees = 2 .or. UserCan_WinSuppliers = 2 .or. UserCan_WinCustomers = 2
MENUITEM "Lookup Table : Country" Action Countrydataobject:showwindow()
MENUITEM "Lookup Table : Gender" Action genderdataobject:showwindow()
ENDIF
END POPUP
IF UserCan_WinWarehouse = 2
POPUP "Warehouse"
MENUITEM "Set Items Classes" Action ItemsClassesObject:ShowWindow()
MENUITEM "Set Items Units" Action ItemsUnitsObject:ShowWindow()
MENUITEM "Set Items Grades" Action ItemsGradesObject:ShowWindow()
MENUITEM "Set Items Sizes" Action ItemsSizesObject:ShowWindow()
MENUITEM "Set Items Colors" Action ItemsColorsObject:ShowWindow()
MENUITEM "Set Items Sources" Action ItemsSourcesObject:ShowWindow()
MENUITEM "Set Item Stores" Action ItemsStoresObject:ShowWindow()
SEPARATOR
MENUITEM "Item Details" Action ItemDetailsDataObject:ShowWindow()
POPUP "Items Warehouse"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action mywarehouse(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action mywarehouse(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action mywarehouse(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action mywarehouse(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action mywarehouse(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action mywarehouse(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action mywarehouse(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action mywarehouse(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action mywarehouse(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action mywarehouse(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action mywarehouse(11)
ENDIF
END POPUP
POPUP "Import Items to Warehouse"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action myenterwarehouse(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action myenterwarehouse(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action myenterwarehouse(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action myenterwarehouse(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action myenterwarehouse(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action myenterwarehouse(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action myenterwarehouse(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action myenterwarehouse(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action myenterwarehouse(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action myenterwarehouse(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action myenterwarehouse(11)
ENDIF
END POPUP
POPUP "Export Items from warehouse"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action myreservewarehouse(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action myreservewarehouse(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action myenterwarehouse(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action myreservewarehouse(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action myreservewarehouse(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action myreservewarehouse(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action myreservewarehouse(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action myreservewarehouse(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action myreservewarehouse(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action myreservewarehouse(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action myreservewarehouse(11)
ENDIF
END POPUP
END POPUP
ENDIF
POPUP "Reports"
IF UserCan_WinEmployees = 2
MENUITEM "List of Employees Report" Action ListOfEmployeesreport()
ENDIF
IF UserCan_WinSuppliers = 2
MENUITEM "List of Suppliers Report" Action ListOfSuppliersreport()
ENDIF
IF UserCan_WinCustomers = 2
MENUITEM "List of Customers Report" Action ListOfCustomersreport()
SEPARATOR
ENDIF
IF UserCan_WinWarehouse = 2
MENUITEM "Items Classes Report" Action ItemClassesReportObject:ShowWindow()
MENUITEM "Items Units Report" Action ItemUnitsReportObject:ShowWindow()
MENUITEM "Items Groups Report" Action ItemGroupsReportObject:ShowWindow()
MENUITEM "Items Grades Report" Action ItemGradesReportObject:ShowWindow()
MENUITEM "Items Sizes Report" Action ItemSizesReportObject:ShowWindow()
MENUITEM "Items Colors Report" Action ItemColorsReportObject:ShowWindow()
MENUITEM "Items Sources Report" Action ItemSourcesReportObject:ShowWindow()
MENUITEM "Stores Report" Action StoresReportObject:ShowWindow()
SEPARATOR
POPUP "Warehouse Items Report"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action myitemsreport(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action myitemsreport(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action myitemsreport(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action myitemsreport(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action myitemsreport(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action myitemsreport(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action myitemsreport(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action myitemsreport(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action myitemsreport(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action myitemsreport(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action myitemsreport(11)
ENDIF
END POPUP
POPUP "Import Items To Warehouse Report"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action myitemsenterreport(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action myitemsenterreport(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action myitemsenterreport(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action myitemsenterreport(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action myitemsenterreport(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action myitemsenterreport(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action myitemsenterreport(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action myitemsenterreport(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action myitemsenterreport(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action myitemsenterreport(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action myitemsenterreport(11)
ENDIF
END POPUP
POPUP "Export Items From Warehouse Report"
IF UserCan_nWarehouse1 = 2
MENUITEM "Skin Warehouse" Action myitemsoutreport(1)
SEPARATOR
ENDIF
IF UserCan_nWarehouse2 = 2
MENUITEM "Wet blue 1 Warehouse" Action myitemsoutreport(2)
SEPARATOR
ENDIF
IF UserCan_nWarehouse3 = 2
MENUITEM "Wet blue 2 Warehouse" Action myitemsoutreport(3)
SEPARATOR
ENDIF
IF UserCan_nWarehouse4 = 2
MENUITEM "Crust Warehouse" Action myitemsoutreport(4)
SEPARATOR
ENDIF
IF UserCan_nWarehouse5 = 2
MENUITEM "Finish Warehouse" Action myitemsoutreport(5)
SEPARATOR
ENDIF
IF UserCan_nWarehouse6 = 2
MENUITEM "Chemicals Warehouse" Action myitemsoutreport(6)
SEPARATOR
ENDIF
IF UserCan_nWarehouse7 = 2
MENUITEM "Shoes Row Materials Warehouse" Action myitemsoutreport(7)
SEPARATOR
ENDIF
IF UserCan_nWarehouse8 = 2
MENUITEM "Jacket Row Materials Warehouse" Action myitemsoutreport(8)
SEPARATOR
ENDIF
IF UserCan_nWarehouse9 = 2
MENUITEM "General Warehouse" Action myitemsoutreport(9)
SEPARATOR
ENDIF
IF UserCan_nWarehouse10 = 2
MENUITEM "Shoes products Warehouse" Action myitemsoutreport(10)
SEPARATOR
ENDIF
IF UserCan_nWarehouse11 = 2
MENUITEM "Jacket Products Warehouse" Action myitemsoutreport(11)
ENDIF
END POPUP
separator
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
set date japan
set cent on
Return Nil
Proc systemlogin
win1.Hide ( )
DO LOGOSTART
win1.Maximize ( )
win1.Show ( )
DO mylogo
if !iswindowdefined( winlogin )
DEFINE WINDOW winlogin ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 267 ;
ICON "PWCTICON" ;
TITLE "Login" ;
MODAL ;
NOAUTORELEASE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {255,255,255} 

@ 40 ,0 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 530 HEIGHT 120
@ 36 ,90 LABEL lbl1 ;
VALUE "User Name : " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 93 ,90 LABEL lbl2 ;
VALUE "Password : " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 33 ,232 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 91 ,232 TEXTBOX text2;
ON ENTER OpenSystem()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 182 ,153 BUTTONEX btn1;
CAPTION "Ok";
ON CLICK OpenSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
DEFAULT ;
TOOLTIP ""
@ 181 ,269 BUTTONEX btn2;
CAPTION "Close";
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
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
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid=systemdatabase;pwd=systemdatabase123";Initial Catalog=' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Users",oCon,3,3 )
mymax := oRS:RecordCount
openworld := false
Public EnteredUserName,EnteredPassword,UserCan_Admin,UserCan_AgreementRole
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
Public UserCan_nWarehouse1
Public UserCan_nWarehouse2
Public UserCan_nWarehouse3
Public UserCan_nWarehouse4
Public UserCan_nWarehouse5
Public UserCan_nWarehouse6
Public UserCan_nWarehouse7
Public UserCan_nWarehouse8
Public UserCan_nWarehouse9
Public UserCan_nWarehouse10
Public UserCan_nWarehouse11
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
UserCan_AgreementRole := oRS:fields:item("AgreementRole"):value
UserCan_WinEmployees := oRS:fields:item("WinEmployees"):value
UserCan_WinSuppliers := oRS:fields:item("WinSuppliers"):value
UserCan_WinCustomers := oRS:fields:item("WinCustomers"):value
UserCan_WinWarehouse := oRS:fields:item("WinWarehouse"):value
UserCan_WinOrders := oRS:fields:item("WinOrders"):value
UserCan_WinAgreement := oRS:fields:item("WinAgreement"):value
UserCan_WinProduction := oRS:fields:item("WinProduction"):value
UserCan_WinDispose := oRS:fields:item("WinDispose"):value
UserCan_nWarehouse1 := oRS:fields:item("nWarehouse1"):value
UserCan_nWarehouse2 := oRS:fields:item("nWarehouse2"):value
UserCan_nWarehouse3 := oRS:fields:item("nWarehouse3"):value
UserCan_nWarehouse4 := oRS:fields:item("nWarehouse4"):value
UserCan_nWarehouse5 := oRS:fields:item("nWarehouse5"):value
UserCan_nWarehouse6 := oRS:fields:item("nWarehouse6"):value
UserCan_nWarehouse7 := oRS:fields:item("nWarehouse7"):value
UserCan_nWarehouse8 := oRS:fields:item("nWarehouse8"):value
UserCan_nWarehouse9 := oRS:fields:item("nWarehouse9"):value
UserCan_nWarehouse10 := oRS:fields:item("nWarehouse10"):value
UserCan_nWarehouse11 := oRS:fields:item("nWarehouse11"):value
win1.lblusername.Value := "User Name : "    + cName
ELSE
MyOut := MSGBOX("Invalid Password","Error")
Return 0
ENDIF
ENDIF
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGINFO("No Users in System Database","Error")
Return 0
ENDIF
IF openworld = true
DO EnterSystem
ELSE
MyOut := MSGBOX("Invalid Username","Error")
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
@ 13 ,17 LABEL lbl1 ;
VALUE "System Vesion Date :  2010/12/07" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
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
HEIGHT 481 ;
ICON "PWCTICON" ;
TITLE "Common Reports" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -9 ,-8 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 706 HEIGHT 488
@ 17 ,180 BUTTONEX btn1;
CAPTION "Items Report";
ON CLICK ItemsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 64 ,180 BUTTONEX btn2;
CAPTION "Items Entered to Store";
ON CLICK ITEMSENTEREDTOSTORESReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 111 ,180 BUTTONEX btn3;
CAPTION "Reserved Items";
ON CLICK ReservedItemsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 158 ,180 BUTTONEX btn4;
CAPTION "Order Details";
ON CLICK OrderDetailsReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 205 ,180 BUTTONEX btn5;
CAPTION "Order Agreement";
ON CLICK AgreementReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 252 ,180 BUTTONEX btn6;
CAPTION "Order Processes";
ON CLICK OrderProcessesReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 299 ,180 BUTTONEX btn7;
CAPTION "Employees Production";
ON CLICK EmployeesProductionReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 346 ,180 BUTTONEX btn8;
CAPTION "Order Dispose";
ON CLICK OrdersDisposeReportObject:ShowWindow()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 393 ,180 BUTTONEX btnClose;
CAPTION "Close Window";
ON CLICK winsysreports.release()  ;
WIDTH 320 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winsysreports.Center ( )
ACTIVATE WINDOW winsysreports
EndIF

Return Nil
Proc aboutsystem
if !iswindowdefined( winAbout )
DEFINE WINDOW winAbout ;
AT 10 ,10 ;
WIDTH 419 ;
HEIGHT 197 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

winabout.Center ( )
@ -10 ,-10 IMAGE image1;
PICTURE getstartupfolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 440 HEIGHT 120
@ 57 ,54 LABEL lbl1 ;
VALUE "Programmer/Eng.Mahmoud Fayed" ;
WIDTH 300 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 17 ,54 LABEL lbl2 ;
VALUE "System Analyst/Eng.Nasr M. Hibah" ;
WIDTH 300 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 120 ,150 BUTTONEX btn1;
CAPTION "Ok";
ON CLICK winAbout.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winAbout
EndIF

Return Nil
Proc mywarehouse( p1 )
itemsobject:warehousecode := p1
myout = ItemsObject:ShowWindow()
Return Nil
Proc myenterwarehouse( p1 )
itemsenterobject:warehousecode := p1
myout = ItemsEnterObject:ShowWindow()
Return Nil
Proc myreservewarehouse( p1 )
ReserveItemsObject:warehousecode := p1
myout = ReserveItemsObject:ShowWindow()
Return Nil
Proc myitemsreport( p1 )
ItemsReportObject:nWarehouse := p1
myout = ItemsReportObject:ShowWindow()
Return Nil
Proc myitemsenterreport( p1 )
ITEMSENTEREDTOSTORESReportObject:nWarehouse := p1
myout = ITEMSENTEREDTOSTORESReportObject:ShowWindow()
Return Nil
Proc myitemsoutreport( p1 )
ReservedItemsReportObject:nWarehouse := p1
myout = ReservedItemsReportObject:ShowWindow()
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALJABREEN
START DOUBLES
Return
*-------------------------------------------------------------------*
