*---------------------------------------------------------------------------*
* Time : 17:16:03    Date : 04/10/2014
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


Resistance R_ALJABREEN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALJABREEN_19art1() code
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 907 ;
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

@ 79 ,24 IMAGE image1;
PICTURE "image\CUSTOMERS.JPG";
ON CLICK customers()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,71 LABEL lbl1 ;
VALUE "Customers" ;
ON CLICK customers()  ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,23 IMAGE image2;
PICTURE "image\LEATHER.JPG";
ON CLICK ItemsObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 607 ,65 LABEL lbl2 ;
VALUE "Warehouse" ;
ON CLICK ItemsObject:ShowWindow()  ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 79 ,225 IMAGE image3;
PICTURE "image\ORDER.JPG";
ON CLICK OrdersEnterObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,294 LABEL lbl3 ;
VALUE "Orders" ;
ON CLICK OrdersEnterObject:ShowWindow()  ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,225 IMAGE image4;
PICTURE "image\AGREEMENT.JPG";
ON CLICK AgreementObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 607 ,274 LABEL lbl4 ;
VALUE "Agreement" ;
ON CLICK AgreementObject:ShowWindow()  ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 79 ,430 IMAGE image5;
PICTURE "image\FACTORY.JPG";
ON CLICK OrderProcessesObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,470 LABEL lbl5 ;
VALUE "Production" ;
ON CLICK OrderProcessesObject:ShowWindow()  ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 83 ,644 IMAGE image6;
PICTURE "image\REPORTS.JPG";
ON CLICK sysreports()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 316 ,706 LABEL lbl6 ;
VALUE "Reports" ;
ON CLICK sysreports()  ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,430 IMAGE image7;
PICTURE "image\DISPOSE.JPG";
ON CLICK DisposeObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 607 ,484 LABEL lbl7 ;
VALUE "Dispose" ;
ON CLICK DisposeObject:ShowWindow()  ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
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
BACKGROUNDCOLOR {255,255,255}  ;
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
MENUITEM "Set Items Groups" Action ItemsGroupsObject:ShowWindow()
MENUITEM "Set Items Grades" Action ItemsGradesObject:ShowWindow()
MENUITEM "Set Items Sizes" Action ItemsSizesObject:ShowWindow()
MENUITEM "Set Items Colors" Action ItemsColorsObject:ShowWindow()
MENUITEM "Set Items Sources" Action ItemsSourcesObject:ShowWindow()
SEPARATOR
MENUITEM "Item Details" Action ItemDetailsDataObject:ShowWindow()
MENUITEM "Define Items" Action ItemsObject:ShowWindow()
SEPARATOR
MENUITEM "Set Items Stores" Action ItemsStoresObject:ShowWindow()
MENUITEM "Enter Items to Store" Action ItemsEnterObject:ShowWindow()
SEPARATOR
MENUITEM "Reserve Items For Order" Action ReserveItemsObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinOrders = 2 .or. UserCan_WinAgreement = 2
POPUP "Orders"
IF UserCan_WinOrders = 2
MENUITEM "Enter Order" Action OrdersEnterObject:ShowWindow()
SEPARATOR
ENDIF
IF UserCan_WinAgreement = 2
MENUITEM "Quality Manager Opinions" Action QualityObject:ShowWindow()
MENUITEM "Scheduling Manager Opinions" Action SchedulingObject:ShowWindow()
MENUITEM "Warehouse Manager Opinions" Action WarehouseObject:ShowWindow()
MENUITEM "Finance Manager Opinions" Action FinanceObject:ShowWindow()
MENUITEM "Production Manager Opinions" Action ProductionManObject:ShowWindow()
MENUITEM "Agreement" Action AgreementObject:ShowWindow()
ENDIF
END POPUP
ENDIF
IF UserCan_WinProduction = 2
POPUP "Production"
MENUITEM "Define Processes" Action ProcessesObject:ShowWindow()
MENUITEM "Define Processes Status" Action ProcessStatusObject:ShowWindow()
SEPARATOR
MENUITEM "Order Processes" Action OrderProcessesObject:ShowWindow()
SEPARATOR
MENUITEM "Employees Production" Action ProductionObject:ShowWindow()
END POPUP
ENDIF
IF UserCan_WinDispose = 2
POPUP "Dispose"
MENUITEM "Dispose and Quality Manager Opinion" Action DisposeObject:ShowWindow()
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
MENUITEM "Items Report" Action ItemsReportObject:ShowWindow()
SEPARATOR
MENUITEM "Stores Report" Action StoresReportObject:ShowWindow()
MENUITEM "Items Entered to Stores Report" Action ITEMSENTEREDTOSTORESReportObject:ShowWindow()
MENUITEM "Reserved Items Report" Action ReservedItemsReportObject:ShowWindow()
SEPARATOR
ENDIF
IF UserCan_WinOrders = 2
MENUITEM "List Of Orders Report" Action ListOfOrdersReportObject:ShowWindow()
MENUITEM "Order Details Report" Action OrderDetailsReportObject:ShowWindow()
ENDIF
IF UserCan_WinAgreement = 2
MENUITEM "Quality Manager Opinions Report" Action QualityOpinionsReportObject:ShowWindow()
MENUITEM "Scheduling Manager Opinions Report" Action SchedulingOpinionsReportObject:ShowWindow()
MENUITEM "Warehouse Manager Opinions Report" Action WarehouseOpinionsReportObject:ShowWindow()
MENUITEM "Finance Manager Opinions Report" Action FinanceOpinionsReportObject:ShowWindow()
MENUITEM "Agreement Report" Action AgreementReportObject:ShowWindow()
SEPARATOR
ENDIF
IF UserCan_WinProduction = 2
MENUITEM "Processes Report" Action ProcessesReportObject:ShowWindow()
MENUITEM "Process Status Report" Action ProcessStatusReportObject:ShowWindow()
MENUITEM "Order Processes Report" Action OrderProcessesReportObject:ShowWindow()
MENUITEM "Employees Production Report" Action EmployeesProductionReportObject:ShowWindow()
ENDIF
IF UserCan_WinDispose = 2
MENUITEM "Orders Dispose Report" Action OrdersDisposeReportObject:ShowWindow()
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
myhandle = getcontrolhandle ( "image1","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image2","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image3","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image4","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image5","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image6","win1" )
DO sethandcursor WITH myhandle
myhandle = getcontrolhandle ( "image7","win1" )
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
FONTCOLOR {0,0,0} 

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
IF mymax > 0
oRS:MOVEFIRST()
FOR x = 1 TO MYMAX STEP 1
cName := oRS:fields:item(alltrim("UserName")):value
cName = ALLTRIM ( cName )
IF cName = EnteredUserName
cPassword := oRS:fields:item(alltrim("Password")):value
cPassword = ALLTRIM ( cPassword )
IF cPassword == EnteredPassWord
openworld := true
UserCan_Admin := oRS:fields:item(alltrim("SystemAdmin")):value
UserCan_AgreementRole := oRS:fields:item(alltrim("AgreementRole")):value
UserCan_WinEmployees := oRS:fields:item(alltrim("WinEmployees")):value
UserCan_WinSuppliers := oRS:fields:item(alltrim("WinSuppliers")):value
UserCan_WinCustomers := oRS:fields:item(alltrim("WinCustomers")):value
UserCan_WinWarehouse := oRS:fields:item(alltrim("WinWarehouse")):value
UserCan_WinOrders := oRS:fields:item(alltrim("WinOrders")):value
UserCan_WinAgreement := oRS:fields:item(alltrim("WinAgreement")):value
UserCan_WinProduction := oRS:fields:item(alltrim("WinProduction")):value
UserCan_WinDispose := oRS:fields:item(alltrim("WinDispose")):value
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
VALUE "System Vesion Date :  2010/10/20" ;
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


End Of Resistance

INIT PROCEDURE Init_ALJABREEN
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersEnter_Data.PRG'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Agreement.PRG'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Quality_Data.PRG'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Scheduling_Data.PRG'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Warehouse_Data.PRG'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Finance_Data.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReserveItems_Data.PRG'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Processes_Data.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProcessStatus_Data.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Production_Data.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderProcesses_Data.PRG'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Dispose_Data.PRG'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfCustomers_Report.PRG'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfEmployees_Report.PRG'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfSuppliers_Report.PRG'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMCLASSES_Report.PRG'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMUNITS_Report.PRG'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMGROUPS_Report.PRG'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMGRADES_Report.PRG'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSIZES_Report.PRG'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMCOLORS_Report.PRG'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSOURCES_Report.PRG'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMS_Report.PRG'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'STORES_Report.PRG'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSENTEREDTOSTORES_Report.PRG'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReservedItems_Report.PRG'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfOrders_Report.PRG'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderDetails_Report.PRG'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'QualityOpinions_Report.PRG'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SchedulingOpinions_Report.PRG'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'WarehouseOpinions_Report.PRG'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'FinanceOpinions_Report.PRG'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Agreement_Report.PRG'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Processes_Report.PRG'",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProcessStatus_Report.PRG'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrderProcesses_Report.PRG'",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EmployeesProduction_Report.PRG'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersDispose_Report.PRG'",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportBase.PRG'",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SystemDatabase_Base.PRG'",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EmpDetails_Data.PRG'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EmpDetailsValues_Data.PRG'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Vacations_Data.PRG'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemDetails_Data.PRG'",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ItemsDetailsValues_Data.PRG'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProductionMan_Data.PRG'",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object GenderDataObject of Class GenderDataClass",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CountryDataObject of Class CountryDataClass",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsClassesObject of Class ItemsClassesClass",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsUnitsObject of Class ItemsUnitsClass",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsGroupsObject of Class ItemsGroupsClass",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsGradesObject of Class ItemsGradesClass",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsSizesObject of Class ItemsSizesClass",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsColorsObject of Class ItemsColorsClass",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsSourcesObject of Class ItemsSourcesClass",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsStoresObject of Class ItemsStoresClass",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesDataObject of Class EmployeesDataClass",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesBrowseObject of Class EmployeesBrowseClass",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesReportObject of Class EmployeesReportClass",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersDataObject of Class SuppliersDataClass",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersBrowseObject of Class SuppliersBrowseClass",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersReportObject of Class SuppliersReportClass",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsObject of Class ItemsClass",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsEnterObject of Class ItemsEnterClass",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersDataObject of Class UsersClass",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersEnterObject of Class OrdersEnterClass",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AgreementObject of Class AgreementClass",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object QualityObject of Class QualityClass",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SchedulingObject of Class SchedulingClass",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object WarehouseObject of Class WarehouseClass",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object FinanceObject of Class FinanceClass",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReserveItemsObject of Class ReserveItemsClass",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesObject of Class ProcessesClass",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusObject of Class ProcessStatusClass",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProductionObject of Class ProductionClass",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderProcessesObject of Class OrderProcessesClass",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DisposeObject of Class DisposeClass",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofCustomersReportObject of Class ListofCustomersReportClass",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofEmployeesReportObject of Class ListofEmployeesReportClass",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofSuppliersReportObject of Class ListofSuppliersReportClass",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemClassesReportObject of Class ItemClassesReportClass",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemUnitsReportObject of Class ItemUnitsReportClass",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemGROUPSReportObject of Class ItemGROUPSReportClass",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemGRADESReportObject of Class ItemGRADESReportClass",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemSIZESReportObject of Class ItemSIZESReportClass",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemCOLORSReportObject of Class ItemCOLORSReportClass",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemSOURCESReportObject of Class ItemSOURCESReportClass",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsReportObject of Class ItemsReportClass",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object StoresReportObject of Class StoresReportClass",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ITEMSENTEREDTOSTORESReportObject of Class ITEMSENTEREDTOSTORESReportClass",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReservedItemsReportObject of Class ReservedItemsReportClass",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListOfOrdersReportObject of Class ListOfOrdersReportClass",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderDetailsReportObject of Class OrderDetailsReportClass",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object QualityOpinionsReportObject of Class QualityOpinionsReportClass",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SchedulingOpinionsReportObject of Class SchedulingOpinionsReportClass",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object FinanceOpinionsReportObject of Class FinanceOpinionsReportClass",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object WarehouseOpinionsReportObject of Class WarehouseOpinionsReportClass",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AgreementReportObject of Class AgreementReportClass",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesReportObject of Class ProcessesReportClass",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusReportObject of Class ProcessStatusReportClass",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderProcessesReportObject of Class OrderProcessesReportClass",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesProductionReportObject of Class EmployeesProductionReportClass",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersDisposeReportObject of Class OrdersDisposeReportClass",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmpDetailsDataObject of Class EmpDetailsDataClass",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmpDetailsValuesDataBrowseObject of Class EmpDetailsValuesDataBrowseClass",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object VacationsDataBrowseObject of Class VacationsDataBrowseClass",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemDetailsDataObject of Class ItemDetailsDataClass",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemDetailsValuesDataBrowseObject of Class ItemDetailsValuesDataBrowseClass",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemMasterDetailsObject of Class SelectItemMasterDetailsClass",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProductionManObject of Class ProductionManClass",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'AL-JABREEN LEATHER IND. FACTORY - Production Follow up System'",140,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action systemlogin()",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",146,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",165,170)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn1 )",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesDataObject:showwindow()",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",175,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn2 )",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesBrowseObject:showwindow()",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbaremployeebtn3 )",185,187)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Employeesreport()",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",189,192)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarsupplierbtn1 )",193,195)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SuppliersDataObject:showwindow()",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",197,199)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarSuppliersbtn2 )",200,202)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SuppliersBrowseObject:showwindow()",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarSuppliersbtn3 )",207,209)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Suppliersreport()",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",211,214)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn1 )",215,217)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersDataObject:showwindow()",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",219,221)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn2 )",222,224)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersBrowseObject:showwindow()",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",226,228)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarcustomersbtn3 )",229,231)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Customersreport()",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",233,236)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarshutdown )",237,239)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",241,244)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",245,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\CUSTOMERS.JPG'",247,248)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action customers()",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",250,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Customers'",252,253)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action customers()",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",255,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'image\LEATHER.JPG'",260,261)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsObject:ShowWindow()",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",263,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Warehouse'",265,266)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsObject:ShowWindow()",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",268,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'image\ORDER.JPG'",273,274)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersEnterObject:ShowWindow()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",276,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Orders'",278,279)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersEnterObject:ShowWindow()",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",281,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'image\AGREEMENT.JPG'",286,287)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AgreementObject:ShowWindow()",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",289,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Agreement'",291,292)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AgreementObject:ShowWindow()",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",294,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'image\FACTORY.JPG'",299,300)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderProcessesObject:ShowWindow()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",302,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Production'",304,305)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderProcessesObject:ShowWindow()",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",307,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'image\REPORTS.JPG'",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sysreports()",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",315,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Reports'",317,318)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sysreports()",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",320,324)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'image\DISPOSE.JPG'",325,326)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DisposeObject:ShowWindow()",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",328,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Dispose'",330,331)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DisposeObject:ShowWindow()",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",333,337)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",338,339)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",340,342)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Click Yes to Close the System or Click No to Cancel'",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ?' Title 'Close System' Type: Message Yes/No",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Ready'",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylogo",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlogo ) , Title : 'Window Title'",352,356)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",357,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGOALONE'",367,368)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",369,371)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'AL-JABREEN Factory'",372,373)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",374,378)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '        ãÕäÚ ÇáÌÈÑíä'",379,380)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",381,385)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",386,388)
SS_ESASTEP("Circuits\Main\Main\Main","HPARENT = Get Window ('win1') Handle",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","HCHILD = Get Window ('winLOGO') Handle",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetParent' , Parameters HCHILD,HPARENT",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","winlogo.Center ( )",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","winlogo.Col := (win1.width) - (winlogo.width) - (100 )",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","winlogo.Row := 200",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form winlogo No Wait",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure customers",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CustomersDataObject.ShowWindow()",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sysmenu",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )  IMAGE 'image\wzclose.bmp'",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_Admin = 2 )",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'System'",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users' )",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Human Resource'",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinEmployees = 2 )",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Employees'",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employees Data' )",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employees Search/Browse By Name' )",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employees Report' )",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employee Details' )",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinSuppliers = 2 )",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Suppliers'",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers Data' )",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers Search/Browse By Name' )",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers Report' )",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Groups' )",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinCustomers = 2 )",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Customers'",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data' )",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search/Browse By Name' )",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinEmployees = 2 .or. UserCan_WinSuppliers = 2 .or. UserCan_WinCustomers = 2 )",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Lookup Table : Country' )",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Lookup Table : Gender' )",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinWarehouse = 2 )",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Warehouse'",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Classes' )",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Units' )",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Groups' )",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Grades' )",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Sizes' )",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Colors' )",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Sources' )      SEPARATOR",447,448)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Item Details' )",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Define Items' )      SEPARATOR",450,451)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Set Items Stores' )",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Enter Items to Store' )      SEPARATOR",453,454)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Reserve Items For Order' )",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinOrders = 2 .or. UserCan_WinAgreement = 2 )",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Orders'",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinOrders = 2 )",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Enter Order' )      SEPARATOR",461,462)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinAgreement = 2 )",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Quality Manager Opinions' )",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Scheduling Manager Opinions' )",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Warehouse Manager Opinions' )",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Finance Manager Opinions' )",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Production Manager Opinions' )",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Agreement' )",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinProduction = 2 )",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Production'",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Define Processes' )",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Define Processes Status' )      SEPARATOR",477,478)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Order Processes' )      SEPARATOR",479,480)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employees Production' )",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinDispose = 2 )",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Dispose'",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Dispose and Quality Manager Opinion' )",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Reports'",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinEmployees = 2 )",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'List of Employees Report' )",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinSuppliers = 2 )",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'List of Suppliers Report' )",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinCustomers = 2 )",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'List of Customers Report' )      SEPARATOR",497,498)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinWarehouse = 2 )",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Classes Report' )",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Units Report' )",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Groups Report' )",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Grades Report' )",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Sizes Report' )",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Colors Report' )",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Sources Report' )",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Report' )      SEPARATOR",508,509)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Stores Report' )",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Entered to Stores Report' )",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Reserved Items Report' )      SEPARATOR",512,513)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinOrders = 2 )",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'List Of Orders Report' )",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Order Details Report' )",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinAgreement = 2 )",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Quality Manager Opinions Report' )",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Scheduling Manager Opinions Report' )",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Warehouse Manager Opinions Report' )",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Finance Manager Opinions Report' )",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Agreement Report' )      SEPARATOR",524,525)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinProduction = 2 )",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Processes Report' )",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Process Status Report' )",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Order Processes Report' )",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Employees Production Report' )",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserCan_WinDispose = 2 )",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Dispose Report' )",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure customersreport",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","customersreportobject.filter = ''",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","myout = customersreportobject.ShowWindow()",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Employeesreport",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","Employeesreportobject.filter = ''",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Employeesreportobject.ShowWindow()",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Suppliersreport",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","Suppliersreportobject.filter = ''",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Suppliersreportobject.ShowWindow()",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure datesettings",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","mycode",551,552)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure systemlogin",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Hide ( )",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LOGOSTART",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image1','win1' )",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image2','win1' )",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image3','win1' )",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image4','win1' )",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image5','win1' )",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image6','win1' )",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function getcontrolhandle ( 'image7','win1' )",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sethandcursor Parameters myhandle",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mylogo",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlogin ) , Title : 'Login'",574,578)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",579,586)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Image\back.jpg'",587,588)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",589,590)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name : '",591,592)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",593,598)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Password : '",599,600)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",601,606)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",608,612)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action OpenSystem()",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",615,620)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ok'",621,622)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OpenSystem()",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",624,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",628,629)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",630,630)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",631,633)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",634,635)
SS_ESASTEP("Circuits\Main\Main\Main","winlogin.Center ( )",636,636)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",637,639)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",640,640)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closelogin",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","winlogin.Release ( )",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure entersystem",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sysmenu",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","winlogin.Release ( )",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure OpenSystem",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","Local oCon,oRS,OpenWorld,mymax,x,cName,cPassword",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",652,652)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties='dsn=FACTORYDATA;uid=systemdatabase;pwd=systemdatabase123';Initial Catalog='",653,653)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Users'",655,657)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","openworld = false",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","Public EnteredUserName,EnteredPassword,UserCan_Admin,UserCan_AgreementRole",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","EnteredUserName = winlogin.text1.Value",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","EnteredPassword = winlogin.text2.Value",662,662)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinEmployees",663,663)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinSuppliers",664,664)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinCustomers",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinWarehouse",666,666)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinOrders",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinAgreement",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinProduction",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","Public UserCan_WinDispose",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",672,672)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To MYMAX Step 1)",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (oRS) Get Field ('UserName') Value",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","cName = All Trim cName",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cName = EnteredUserName )",676,676)
SS_ESASTEP("Circuits\Main\Main\Main","cPassword = ADODB RecordSet (oRS) Get Field ('Password') Value",677,677)
SS_ESASTEP("Circuits\Main\Main\Main","cPassword = All Trim cPassword",678,678)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cPassword == EnteredPassWord )",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","openworld = true",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_Admin = ADODB RecordSet (oRS) Get Field ('SystemAdmin') Value",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_AgreementRole = ADODB RecordSet (oRS) Get Field ('AgreementRole') Value",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinEmployees = ADODB RecordSet (oRS) Get Field ('WinEmployees') Value",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinSuppliers = ADODB RecordSet (oRS) Get Field ('WinSuppliers') Value",684,684)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinCustomers = ADODB RecordSet (oRS) Get Field ('WinCustomers') Value",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinWarehouse = ADODB RecordSet (oRS) Get Field ('WinWarehouse') Value",686,686)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinOrders = ADODB RecordSet (oRS) Get Field ('WinOrders') Value",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinAgreement = ADODB RecordSet (oRS) Get Field ('WinAgreement') Value",688,688)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinProduction = ADODB RecordSet (oRS) Get Field ('WinProduction') Value",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","UserCan_WinDispose = ADODB RecordSet (oRS) Get Field ('WinDispose') Value",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",691,691)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Invalid Password' Title 'Error' Type: Message Box",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",695,695)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",696,696)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",698,698)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Users in System Database' Title 'Error' Type: Message Info",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",700,700)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",701,701)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( openworld = true )",702,702)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure EnterSystem",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Invalid Username' Title 'Error' Type: Message Box",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LOGOSTART",708,708)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winLOGOSTART ) , Title : 'Window Title'",709,713)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",714,724)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGO'",725,726)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",727,728)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",729,730)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'System Vesion Date :  2010/10/20'",731,732)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",733,738)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",739,740)
SS_ESASTEP("Circuits\Main\Main\Main","WINLOGOSTART.Center ( )",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",742,744)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofcustomersreport",746,746)
SS_ESASTEP("Circuits\Main\Main\Main","ListofCustomersReportObject.filter = ''",747,747)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofCustomersReportObject.ShowWindow()",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofemployeesreport",750,750)
SS_ESASTEP("Circuits\Main\Main\Main","ListofEmployeesReportObject.filter = ''",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofEmployeesReportObject.ShowWindow()",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure listofsuppliersreport",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","ListofSuppliersReportObject.filter = ''",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","myout = ListofSuppliersReportObject.ShowWindow()",756,756)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sysreports",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winsysreports ) , Title : 'Common Reports'",759,763)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",764,771)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Image\back.jpg'",772,773)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",774,775)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Items Report'",776,777)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ItemsReportObject:ShowWindow()",778,778)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",779,781)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Items Entered to Store'",782,783)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ITEMSENTEREDTOSTORESReportObject:ShowWindow()",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",785,787)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Reserved Items'",788,789)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ReservedItemsReportObject:ShowWindow()",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",791,793)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Order Details'",794,795)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderDetailsReportObject:ShowWindow()",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",797,799)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Order Agreement'",800,801)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AgreementReportObject:ShowWindow()",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",803,805)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Order Processes'",806,807)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrderProcessesReportObject:ShowWindow()",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",809,811)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Employees Production'",812,813)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EmployeesProductionReportObject:ShowWindow()",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",815,817)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Order Dispose'",818,819)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersDisposeReportObject:ShowWindow()",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",821,823)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Window'",824,825)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winsysreports.release()",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",827,829)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",830,831)
SS_ESASTEP("Circuits\Main\Main\Main","winsysreports.Center ( )",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",833,835)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aboutsystem",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winAbout ) , Title : 'About'",838,842)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",843,850)
SS_ESASTEP("Circuits\Main\Main\Main","winabout.Center ( )",851,851)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : getstartupfolder()+'\Image\back.jpg'",852,853)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",854,855)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Programmer/Eng.Mahmoud Fayed'",856,857)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",858,863)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'System Analyst/Eng.Nasr M. Hibah'",864,865)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",866,871)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ok'",872,873)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winAbout.Release()",874,874)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",875,877)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",878,879)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",880,882)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",883,883)
Return
*-------------------------------------------------------------------*
