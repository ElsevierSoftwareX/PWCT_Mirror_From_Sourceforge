*---------------------------------------------------------------------------*
* Time : 16:55:15    Date : 10/17/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.15
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
Set Procedure to "SystemDatabase_Base.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
oUsers = UsersClass()
UserPermissionsObject = UserPermissionsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pSysStart()  ;
ICON "PWCTICON" ;
TITLE "‰Ÿ«„ «œ—… «·„⁄·Ê„« " ;
MAIN ;
BACKCOLOR {255,255,255} 
win1.Maximize ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "»Ì«‰«  «·„” Œœ„Ì‰" Action oUsers:ShowWindow()
MENUITEM "«€·«ﬁ «·‰Ÿ«„" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 
STATUSITEM "Ã«Â“"
KEYBOARD
CLOCK
END STATUSBAR
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc closesystem
win1.Release ( )
Return Nil
procedure pSysStart()
myout = oUsers:SystemLogin()
return
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SystemDatabase_Base.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oUsers of Class UsersClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '‰Ÿ«„ «œ—… «·„⁄·Ê„« '",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pSysStart",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„” Œœ„Ì‰' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«€·«ﬁ «·‰Ÿ«„' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSysStart - Event : INIT",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oUsers.SystemLogin()",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
Return
*-------------------------------------------------------------------*
