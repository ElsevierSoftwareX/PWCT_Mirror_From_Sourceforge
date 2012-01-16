*---------------------------------------------------------------------------*
* Time : 11:06:13    Date : 01/15/2012
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


Resistance R_25_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_25_18smart1() code
Set Procedure to "sub.PRG"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·Œ«„” Ê«·⁄‘—Ê‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Welcom" Action callwelcome()
MENUITEM "About" Action callabout()
MENUITEM "Close" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc callwelcome
myobj = windowwelcome()
myout = myobj:showwindow()
Return Nil
Proc callabout
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 333 ;
HEIGHT 359 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 223,93 HYPERLINK Hyper1;
VALUE "PWCT Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 147 ;
HEIGHT 45 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 48,50 HYPERLINK Hyper2;
VALUE "PWCT FaceBook Group" ;
ADDRESS "https://www.facebook.com/groups/doublesvsoop/";
WIDTH 233 ;
HEIGHT 48 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 136,53 HYPERLINK Hyper3;
VALUE "PWCT On Sourceforge" ;
ADDRESS "http://sourceforge.net/projects/doublesvsoop/";
WIDTH 228 ;
HEIGHT 46 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

END WINDOW

win3.Center ( )
ACTIVATE WINDOW win3
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_25
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sub.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·Œ«„” Ê«·⁄‘—Ê‰'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcom' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Date",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowwelcome",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.showwindow()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callabout",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'About'",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",50,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",59,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper2 )",69,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper3 )",79,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Center ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
