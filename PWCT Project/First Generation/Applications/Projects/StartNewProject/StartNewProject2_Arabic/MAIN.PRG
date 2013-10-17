*---------------------------------------------------------------------------*
* Time : 17:49:39    Date : 10/17/2013
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
win1.Minimize ( )
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
DO LogoStart
win1.Maximize ( )
myout = oUsers:SystemLogin()
DO MainOptions
return
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc MainOptions
if !iswindowdefined( winMainOptions )
DEFINE WINDOW winMainOptions ;
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
@ 100 ,568 IMAGE image3;
PICTURE "image\data.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 343 ,595 LABEL lbl3 ;
VALUE " ⁄—Ì› «·„⁄·Ê„« " ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 100 ,134 IMAGE image2;
PICTURE "image\reports.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 343 ,182 LABEL lbl2 ;
VALUE "«·»ÕÀ Ê«· ﬁ«—Ì—" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 100 ,348 IMAGE image4;
PICTURE "image\enter.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 343 ,386 LABEL lbl4 ;
VALUE "≈œŒ«· «·»Ì«‰« " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
EndIF
HPARENT := GetFormHandle("win1")
HCHILD := GetFormHandle("winMainOptions")
myout = CALLDLL32("SetParent","USER32.DLL",HCHILD,HPARENT)
winMainOptions.Center ( )
Activate Window winMainOptions nowait
Return Nil
Proc LOGOSTART
if !iswindowdefined( winLogoSTART )
DEFINE WINDOW winLogoSTART ;
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
PICTURE "image\logostart.jpg";
STRETCH ;
WIDTH 530 HEIGHT 336
DEFINE TIMER Timer1 INTERVAL 1500 ;
Action WINLOGOSTART.RELEASE()
@ 13 ,270 LABEL lbl1 ;
VALUE " «—ÌŒ «·«’œ«— :  2013/10/17" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
END WINDOW
winLogoSTART.Center ( )
ACTIVATE WINDOW winLogoSTART
EndIF
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
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",17,17)
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
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LogoStart",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oUsers.SystemLogin()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MainOptions",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MainOptions",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winMainOptions ) , Title : 'Window Title'",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",63,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'image\data.JPG'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' ⁄—Ì› «·„⁄·Ê„« '",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'image\reports.JPG'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·»ÕÀ Ê«· ﬁ«—Ì—'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'image\enter.JPG'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '≈œŒ«· «·»Ì«‰« '",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","HPARENT = Get Window ('win1') Handle",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","HCHILD = Get Window ('winMainOptions') Handle",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetParent' , Parameters HCHILD,HPARENT",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","winMainOptions.Center ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form winMainOptions No Wait",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LOGOSTART",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winLogoSTART ) , Title : 'Window Title'",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",121,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\logostart.jpg'",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' «—ÌŒ «·«’œ«— :  2013/10/17'",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",140,146)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","winLogoSTART.Center ( )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
Return
*-------------------------------------------------------------------*
