*---------------------------------------------------------------------------*
* Time : 23:22:16    Date : 09/29/2011
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
			Atom Test                          
				Shell K                             
					SubShell P                             
						Variable name Value "Mahmoud"
						Variable Address
						Variable Phone
						Variable Fax
						Variable Notes
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 434 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Welcome to PWCT" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 111 ,127 LABEL lbl1 ;
VALUE "Welcome to PWCT" ;
WIDTH 170 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 145 ,128 BUTTONEX btn1;
CAPTION "Close Window";
ON CLICK myclose()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
myobj = myclass()
myout = myobj:mymethod()
Return Nil
Class myclass
Method mymethod
EndClass
Method mymethod Class myclass
Select Address test:k:s
Load Active SubShell From Memory
MyOut := MSGBOX(x,"Text Here")
MyOut := MSGBOX(name,"Text Here")
Return 0


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",59)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome to PWCT'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to PWCT'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class myclass",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.mymethod()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Select Address test:k:s",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Load Active SubShell From Memory",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message x Title 'Text Here' Type: Message Box",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message name Title 'Text Here' Type: Message Box",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",41,41)
Return
*-------------------------------------------------------------------*
