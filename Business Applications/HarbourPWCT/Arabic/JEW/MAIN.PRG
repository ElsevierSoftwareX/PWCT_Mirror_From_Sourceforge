*---------------------------------------------------------------------------*
* Time : 02:31:31    Date : 09/16/2012
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
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Suppliers.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
Set Procedure to "ReportBase.PRG"
Set Procedure to "EMPLOYEES_DATA.PRG"
Set Procedure to "EMPLOYEES_BROWSE.PRG"
Set Procedure to "EMPLOYEES_REPORT.PRG"
Set Procedure to "Country_Data.PRG"
Set Procedure to "Department_Data.PRG"
Set Procedure to "ITEMSCLASSES_DATA.PRG"
Set Procedure to "Items_Data.PRG"
AboutObject = AboutClass()
SuppliersObject = SuppliersClass()
CustomersObject = CustomersClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
UsersWindowObject = UsersClass()
EmployeesDataObject = EmployeesDataClass()
EmployeesBrowseObject = EmployeesBrowseClass()
EmployeesReportObject = EmployeesReportClass()
CountryDataObject = CountryDataClass()
DepartmentDataObject = DepartmentDataClass()
ItemsClassesObject = ItemsClassesClass()
ItemsObject = ItemsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «·„ÃÊÂ—« " ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
POPUP "«·„ÊŸ›Ì‰ "
MENUITEM "»Ì«‰«  «·„ÊŸ›Ì‰ " Action EmployeesDataObject:ShowWindow()
MENUITEM "»ÕÀ ›Ï »Ì«‰«  «·„ÊŸ›Ì‰ " Action EmployeesBrowseObject:ShowWindow()
MENUITEM " ﬁ—Ì— ⁄‰ «·„ÊŸ›Ì‰ " Action EmployeesReportObject:ShowWindow()
MENUITEM "ÃœÊ· «”„«¡ «·œÊ· " Action CountryDataObject:ShowWindow()
MENUITEM "ÃœÊ· √”„«¡ «·√ﬁ”«„ " Action DepartmentDataObject:ShowWindow()
END POPUP
MENUITEM "«·„” Œœ„Ì‰" Action UsersWindowObject:ShowWindow()
MENUITEM "ÕÊ· «·»—‰«„Ã" Action AboutObject:ShowWindow()
MENUITEM "Œ—ÊÃ" Action closesystem()
END POPUP
POPUP "»Ì«‰« "
MENUITEM "»Ì«‰«  «·„Ê—œÌ‰ " Action SuppliersObject:ShowWindow()
MENUITEM "»Ì«‰«  «·⁄„·«¡ " Action CustomersObject:ShowWindow()
MENUITEM "√‰Ê«⁄ «·ﬁÿ⁄" Action ItemsClassesObject:ShowWindow()
MENUITEM "»Ì«‰«  «·√’‰«›" Action ItemsObject:ShowWindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

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
procedure SysStart()
Execute File "installodbc.bat" MINIMIZE
myout = usersobject:connect()
myout = UsersObject:SystemLogin()
return
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Function  FileToStream ( cFileName )
Local sStream,oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:type := 1
oMyObj:open ( )
oMyObj:LoadFromFile ( cFileName )
sStream := oMyObj:Read (  )
oMyObj:close ( )
Return sStream
Function  StreamToFile ( sStream,cFileName )
Local oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:type := 1
oMyObj:open ( )
oMyObj:write ( sStream )
oMyObj:SaveToFile ( cFileName,1 )
oMyObj:close ( )
Return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportBase.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EMPLOYEES_DATA.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EMPLOYEES_BROWSE.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'EMPLOYEES_REPORT.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Country_Data.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Department_Data.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ITEMSCLASSES_DATA.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Items_Data.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersWindowObject of Class UsersClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesDataObject of Class EmployeesDataClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesBrowseObject of Class EmployeesBrowseClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object EmployeesReportObject of Class EmployeesReportClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CountryDataObject of Class CountryDataClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DepartmentDataObject of Class DepartmentDataClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsClassesObject of Class ItemsClassesClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsObject of Class ItemsClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»—‰«„Ã «·„ÃÊÂ—« '",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„ÊŸ›Ì‰ '",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„ÊŸ›Ì‰ ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ›Ï »Ì«‰«  «·„ÊŸ›Ì‰ ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— ⁄‰ «·„ÊŸ›Ì‰ ' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «”„«¡ «·œÊ· ' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· √”„«¡ «·√ﬁ”«„ ' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·„” Œœ„Ì‰' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÊ· «·»—‰«„Ã' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '»Ì«‰« '",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„Ê—œÌ‰ ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·⁄„·«¡ ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '√‰Ê«⁄ «·ﬁÿ⁄' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·√’‰«›' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc.bat' , MINIMIZE",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","myout = usersobject.connect()",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","myout = UsersObject.SystemLogin()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function FileToStream ( cFileName )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Local sStream,oMyObj",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.LoadFromFile ( cFileName )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","sStream = oMyObj.Read ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return sStream)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function StreamToFile ( sStream,cFileName )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Local oMyObj",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.write ( sStream )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.SaveToFile ( cFileName,1 )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",109,109)
Return
*-------------------------------------------------------------------*
