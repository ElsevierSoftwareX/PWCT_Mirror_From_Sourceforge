*---------------------------------------------------------------------------*
* Time : 16:06:42    Date : 02/05/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.15
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


Resistance R_test_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_test_19art1() code
myarray := {"one","two","three"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 797 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hello" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TAB Tab1;
AT 4 ,1;
WIDTH 779;
HEIGHT 350;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
PAGE "Page1"
@ 76 ,73 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END PAGE
PAGE "Page2"
@ 81 ,115 BUTTONEX btn1;
CAPTION "test ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END PAGE
PAGE "Page3"
@ 87 ,120 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END PAGE
END TAB
DO RightToLeftControl WITH "win1","list1"
DO RightToLeftControl WITH "win1","combo1"
DO RightToLeftControl WITH "win1","tab1"
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

INIT PROCEDURE Init_test
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","myarray = {'one','two','three'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",12,15)
SS_ESASTEP("Circuits\Main\Main\Main","Tab Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Page1' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Page2' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'test '",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Page3' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','list1'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','combo1'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','tab1'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000,0x100000)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
