*---------------------------------------------------------------------------*
* Time : 14:56:30    Date : 07/05/2011
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


Resistance R_RVC_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RVC_15speed1() code
DO datesettings
SET PROGRAMMATICCHANGE OFF
Set Procedure to "SystemDatabase_Base.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
Set Procedure to "Employees2_Data.PRG"
Set Procedure to "Employees2_Browse.PRG"
Set Procedure to "ReportBase.PRG"
Set Procedure to "Employees2_Report.PRG"
Set Procedure to "ListOfEmployees2_Report.PRG"
Set Procedure to "Country_data.PRG"
Set Procedure to "STREAMFUNCS.PRG"
Set Procedure to "Projects_Data.PRG"
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
Employees2DataObject = Employees2DataClass()
Employees2BrowseObject = Employees2BrowseClass()
Employees2ReportObject = Employees2ReportClass()
ListofEmployees2ReportObject = ListofEmployees2ReportClass()
CountryDataObject = CountryDataClass()
ProjectsObject = ProjectsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1338 ;
HEIGHT 718 ;
ON INIT systemkey()  ;
ICON "PWCTICON" ;
TITLE "‘—ﬂ… Ê«œÏ «·—Ì«÷" ;
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

@ 48 ,314 IMAGE image1;
PICTURE "LOGOALONE";
WHITEBACKGROUND ;
WIDTH 282 HEIGHT 104
@ 200 ,682 IMAGE image3;
PICTURE "image\p1.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,669 LABEL lbl3 ;
VALUE "Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« " ;
WIDTH 230 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,234 IMAGE image2;
PICTURE "image\p2.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,248 LABEL lbl2 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì… " ;
WIDTH 170 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,458 IMAGE image4;
PICTURE "image\p3.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,476 LABEL lbl4 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,10 IMAGE image7;
PICTURE "image\p4.JPG";
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,32 LABEL lbl7 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…" ;
WIDTH 150 ;
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
Proc sysmenu
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action closesystem()  IMAGE "image\wzclose.bmp"
END POPUP
IF UsersObject:userisadmin = 1
POPUP "‰Ÿ«„"
MENUITEM "«·„” Œœ„Ì‰" Action UsersObject:ShowWindow()
END POPUP
ENDIF
POPUP "«·„ÊŸ›Ì‰"
MENUITEM "»Ì«‰«  «·„ÊŸ›" Action Employees2DataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ÊŸ›" Action Employees2BrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »«·„ÊŸ›Ì‰" Action Employees2ReportObject:ShowWindow()
MENUITEM "ÃœÊ· «·Ã‰”Ì«  " Action Countrydataobject:showwindow()
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰" Action ListofEmployees2ReportObject:ShowWindow()
SEPARATOR
END POPUP
POPUP "Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„« "
MENUITEM "«·„‘«—Ì⁄" Action ProjectsObject:showwindow()
END POPUP
Return Nil
Proc datesettings
set date japan
set cent on
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
TITLE "‘—ﬂ… Ê«œÏ «·—Ì«÷" ;
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
VALUE " «—ÌŒ «·«’œ«— :  2011/7/1" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 252 ,135 LABEL lbl2 ;
VALUE "»—‰«„Ã „ «»⁄… «·„‘«—Ì⁄" ;
WIDTH 260 ;
HEIGHT 50 ;
FONT "Arial" SIZE 24  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

WINLOGOSTART.Center ( )
ACTIVATE WINDOW winLOGOSTART
EndIF

Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc SystemKey
DO logostart
win1.Maximize ( )
DO mylogo
myout = UsersObject:SystemLogin()
DO entersystem
Return Nil


End Of Resistance

INIT PROCEDURE Init_RVC
START DOUBLES
Return
*-------------------------------------------------------------------*
