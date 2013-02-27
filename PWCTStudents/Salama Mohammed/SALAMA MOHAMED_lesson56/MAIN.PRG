*---------------------------------------------------------------------------*
* Time : 22:47:29    Date : 02/18/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
aboutObject = AboutClass()
CustomersObject = CustomersClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1535 ;
HEIGHT 1385 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -3 ,-4 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 1280 HEIGHT 930
DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Customers " Action CustomersObject:ShowWindow()
MENUITEM "Customers Search by Name " Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers DataBrowse " Action CustDataBrowseObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
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
procedure SysStart()
Execute File "odbc.bat" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutObject of Class AboutClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\back.jpg'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Name ' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers DataBrowse ' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'odbc.bat' , MINIMIZE",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
Return
*-------------------------------------------------------------------*
