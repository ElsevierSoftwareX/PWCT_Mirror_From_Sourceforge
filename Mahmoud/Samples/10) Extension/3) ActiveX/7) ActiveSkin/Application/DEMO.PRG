*---------------------------------------------------------------------------*
* Time : 21:44:20    Date : 10/13/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 472 ;
HEIGHT 398 ;
ON INIT myskin()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

oActiveX := TActiveX():New( "Win1", "ActiveSkin4.Skin2.1" , 10 , 10 , 1 , 1)
oActiveX:Load()
DEFINE MAIN MENU
POPUP "Text Here"
MENUITEM "Text Here" Action MSGINFO( "Text Here" )
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Text Here"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myskin
filename := "winaqua.skn"
oactivex:OOLE:loadskin ( filename )
myhandle := getformhandle('win1')
oactivex:OOLE:applyskin ( myhandle )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action myskin()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Text Here'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Text Here' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Text Here' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myskin",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","filename = 'winaqua.skn'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.loadskin ( filename )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = getformhandle('win1')",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.applyskin ( myhandle )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",35,35)
Return
*-------------------------------------------------------------------*
