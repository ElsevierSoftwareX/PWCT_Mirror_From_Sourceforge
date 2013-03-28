*---------------------------------------------------------------------------*
* Time : 12:10:24    Date : 10/23/2011
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
myarray := {"one","two","three"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hello" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 44 ,64 COMBOBOX combo1;
WIDTH 380 ;
HEIGHT 100;
ITEMS myarray ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 78 ,64 LISTBOX list1;
WIDTH 380 ;
HEIGHT 200 ;
ITEMS myarray ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DO RightToLeftControl WITH "win1","list1"
DO RightToLeftControl WITH "win1","combo1"
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","myarray = {'one','two','three'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : myarray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : myarray",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','list1'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','combo1'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000,0x100000)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
