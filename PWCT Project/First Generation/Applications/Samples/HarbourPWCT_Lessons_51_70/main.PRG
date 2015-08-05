*---------------------------------------------------------------------------*
* Time : 11:05:04    Date : 07/27/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
Set Procedure to "about.PRG"
Set Procedure to "DataBase.PRG"
Set Procedure to "customers.PRG"
Set Procedure to "customersbrowser.PRG"
Set Procedure to "CustomerDataBrowse.PRG"
Set Procedure to "customersbrowsebycountry.PRG"
Set Procedure to "ReportPerant.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "orders.PRG"
Set Procedure to "SELECTITEMS.PRG"
Set Procedure to "CustomerReportsWithFilter.PRG"
Set Procedure to "OrdersReport.PRG"
Set Procedure to "USERS_DATA.PRG"
Set Procedure to "USERPERMISSIONS_DATA.PRG"
objabout = AboutClass()
custobj = customersClass()
CustomersObject = customersBrowseClass()
CustomerDataBrowseobj = CustomerDataBrowseClass()
CustomersReportobj = CustomersReportClass()
orderObj = ordersClass()
customersbrowsebycountryobj = customersbrowsebycountryClass()
selectitemsobj = selectitemsClass()
CustomerReportsWithFilterobj = CustomerReportsWithFilterClass()
OrdersReportobj = OrdersReportClass()
usersobj = UsersClass()
UserPermissionsObject = UserPermissionsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1290 ;
HEIGHT 794 ;
ON INIT Start()  ;
ICON "PWCTICON" ;
TITLE "Customers Data System" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "System"
MENUITEM "DataBase " Action custobj:showwindow()
MENUITEM "orders " Action orderObj:showwindow()
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "Reports "
MENUITEM "Customer Report " Action CustomersReportobj:showwindow()
MENUITEM "report By Date " Action CustomerReportsWithFilterobj:showwindow()
MENUITEM "Orders Report " Action OrdersReportobj:showwindow()
END POPUP
POPUP "Search "
MENUITEM "CustomerDataBrowse " Action CustomerDataBrowseobj:showwindow()
MENUITEM "Browse by country " Action customersbrowsebycountryobj:showwindow()
MENUITEM "search" Action CustomersObject:showWindow()
END POPUP
POPUP "Help "
MENUITEM "about" Action objabout:showwindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Reem Mohammed Basheer" ;
RAISED 

KEYBOARD

CLOCK

END STATUSBAR

@ 18 ,255 IMAGE imageCustomers;
PICTURE "IMAGES\CUSTOMERS.PNG";
STRETCH ;
WIDTH 775 HEIGHT 169
@ 216 ,536 IMAGE image1;
PICTURE "Images\database.PNG";
ON CLICK custobj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 350 ,529 LABEL lbl1 ;
VALUE "DataBase" ;
WIDTH 107 ;
HEIGHT 26 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 213 ,772 IMAGE image2;
PICTURE "Images\search.PNG";
ON CLICK CustomersObject:showWindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 346 ,785 LABEL lbl2 ;
VALUE "Search" ;
WIDTH 81 ;
HEIGHT 27 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 344 ,986 LABEL lbl3 ;
VALUE "Customer Data Browse" ;
WIDTH 250 ;
HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 221 ,1035 IMAGE image3;
PICTURE "Images\browse.PNG";
ON CLICK CustomerDataBrowseobj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 500 ,772 IMAGE image4;
PICTURE "Images\about.PNG";
ON CLICK objabout:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 623 ,787 LABEL lblAbout ;
VALUE "About" ;
WIDTH 76 ;
HEIGHT 32 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 500 ,1041 IMAGE image5;
PICTURE "Images\close.PNG";
ON CLICK closesystem()  ;
STRETCH ;
WIDTH 104 HEIGHT 103
@ 623 ,1029 LABEL lbl5 ;
VALUE "Close System" ;
WIDTH 148 ;
HEIGHT 36 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 500 ,88 IMAGE image6;
PICTURE "Images\byCountry.PNG";
ON CLICK customersbrowsebycountryobj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 623 ,83 LABEL lbl6 ;
VALUE "Country Browser" ;
WIDTH 174 ;
HEIGHT 31 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 500 ,536 IMAGE image7;
PICTURE "Images\Report.PNG";
ON CLICK showReports()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 623 ,540 LABEL lbl7 ;
VALUE "Reports" ;
WIDTH 86 ;
HEIGHT 35 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 500 ,311 IMAGE image8;
PICTURE "Images\orders.PNG";
ON CLICK orderObj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 623 ,325 LABEL lbl8 ;
VALUE "Orders" ;
WIDTH 86 ;
HEIGHT 35 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 213 ,312 IMAGE image10;
PICTURE "Images\users.PNG";
ON CLICK usersobj:showwindow()  ;
STRETCH ;
WIDTH 99 HEIGHT 100
@ 341 ,324 LABEL lbl10 ;
VALUE "Users" ;
WIDTH 71 ;
HEIGHT 31 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 213 ,88 IMAGE image9;
PICTURE "Images\login.PNG";
ON CLICK usersobj:systemLogin()  ;
STRETCH ;
WIDTH 99 HEIGHT 100
@ 344 ,104 LABEL lbl9 ;
VALUE "Log in" ;
WIDTH 71 ;
HEIGHT 31 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
Proc showReports
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 639 ;
HEIGHT 477 ;
ICON "PWCTICON" ;
TITLE "Reports" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 81 ,397 IMAGE imagedatereport;
PICTURE "IMAGES\DATEREPORT.PNG";
ON CLICK CustomerReportsWithFilterobj:showWindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 196 ,379 LABEL lblbydate ;
VALUE "Reports By Date " ;
WIDTH 158 ;
HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 81 ,53 IMAGE imagecustreport;
PICTURE "IMAGES\CUSTREPORTS.PNG";
ON CLICK CustomersReportobj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 196 ,21 LABEL lblcustreport ;
VALUE "Customer Report " ;
WIDTH 168 ;
HEIGHT 32 ;
FONT "Arial Rounded MT Bold" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 282 ,53 IMAGE imageOrderReports;
PICTURE "IMAGES\ORDERSREPORT.PNG";
ON CLICK OrdersReportobj:showwindow()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 399 ,26 LABEL lblordersREport ;
VALUE "Orders Report " ;
WIDTH 148 ;
HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc Start
out = usersobj:systemLogin()
Return Nil


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'about.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DataBase.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'customersbrowser.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomerDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'customersbrowsebycountry.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportPerant.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'orders.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SELECTITEMS.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomerReportsWithFilter.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERS_DATA.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERPERMISSIONS_DATA.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objabout of Class AboutClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object custobj of Class customersClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class customersBrowseClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerDataBrowseobj of Class CustomerDataBrowseClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportobj of Class CustomersReportClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object orderObj of Class ordersClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersbrowsebycountryobj of Class customersbrowsebycountryClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object selectitemsobj of Class selectitemsClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerReportsWithFilterobj of Class CustomerReportsWithFilterClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportobj of Class OrdersReportClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object usersobj of Class UsersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers Data System'",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action Start",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'System'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'DataBase ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'orders ' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Reports '",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer Report ' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'report By Date ' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search '",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomerDataBrowse ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse by country ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'search' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help '",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'about' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Items",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Reem Mohammed Basheer' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imageCustomers ) , Image : 'IMAGES\CUSTOMERS.PNG'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\database.PNG'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action custobj:showwindow()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'DataBase'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Images\search.PNG'",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersObject:showWindow()",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Customer Data Browse'",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",105,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'Images\browse.PNG'",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomerDataBrowseobj:showwindow()",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'Images\about.PNG'",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action objabout:showwindow()",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblAbout ) , Caption : 'About'",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",123,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'Images\close.PNG'",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Close System'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'Images\byCountry.PNG'",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action customersbrowsebycountryobj:showwindow()",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",145,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Country Browser'",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",149,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'Images\Report.PNG'",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showReports()",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Reports'",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",162,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image8 ) , Image : 'Images\orders.PNG'",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action orderObj:showwindow()",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",171,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Orders'",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",175,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image10 ) , Image : 'Images\users.PNG'",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action usersobj:showwindow()",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",184,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Users'",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",188,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image9 ) , Image : 'Images\login.PNG'",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action usersobj:systemLogin()",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Log in'",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",201,206)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",207,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",210,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showReports",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Reports'",217,221)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",222,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagedatereport ) , Image : 'IMAGES\DATEREPORT.PNG'",230,231)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomerReportsWithFilterobj:showWindow()",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",233,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblbydate ) , Caption : 'Reports By Date '",235,236)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",237,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagecustreport ) , Image : 'IMAGES\CUSTREPORTS.PNG'",243,244)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CustomersReportobj:showwindow()",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",246,247)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcustreport ) , Caption : 'Customer Report '",248,249)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",250,255)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imageOrderReports ) , Image : 'IMAGES\ORDERSREPORT.PNG'",256,257)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OrdersReportobj:showwindow()",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",259,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblordersREport ) , Caption : 'Orders Report '",261,262)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",263,268)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",269,270)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",271,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Start",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","out = usersobj.systemLogin()",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",277,277)
Return
*-------------------------------------------------------------------*
