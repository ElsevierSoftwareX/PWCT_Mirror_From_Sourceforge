*---------------------------------------------------------------------------*
* Time : 16:08:28    Date : 10/22/2011
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


Resistance R_TEST2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL", GetFormHandle ("Win1"),-20),0x800000))

calldll32("SetLayeredWindowAttributes","USER32.DLL",GetFormHandle ("Win1"), 0, 150, 2)



Proc mystart
myhandle := GetFormHandle("win1")
p1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
p1 = NUMOR (p1 , 0x80000)
p1 = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,p1)
p2 = CALLDLL32("SetLayeredWindowAttributes","USER32.DLL",myhandle,0,150,2)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mystart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Get Window ('win1') Handle",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = p1 OR 0x80000",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,p1",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = Call DLL 'USER32.DLL' , Function 'SetLayeredWindowAttributes' , Parameters myhandle,0,150,2",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",30,30)
Return
*-------------------------------------------------------------------*
