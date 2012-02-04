*---------------------------------------------------------------------------*
* Time : 19:59:26    Date : 02/03/2012
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
* Get parameters from command line
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
Set Procedure to "Sub.PRG"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 375 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "Main  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,255} 

DEFINE MAIN MENU
POPUP "File "
MENUITEM "welcome " Action callwelcome()
MENUITEM "Close " Action closesystem()
END POPUP
END MENU
@ 32 ,5 LABEL lbl2 ;
VALUE "Programming Without Coding Technology" ;
WIDTH 354 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 103 ,87 LABEL lbl3 ;
VALUE "Mahmoud Albadawey " ;
WIDTH 190 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 142 ,50 LABEL lbl4 ;
VALUE "Oracle Developer and Instructor " ;
WIDTH 265 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

win1.Center ( )
ACTIVATE WINDOW win1
EndIF

Proc callwelcome
myobject = windowwelcome()
myout = myobject:showwindow()
Return Nil
Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'welcome ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close ' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Programming Without Coding Technology'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Mahmoud Albadawey '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Oracle Developer and Instructor '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject of Class windowwelcome",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobject.showwindow()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
