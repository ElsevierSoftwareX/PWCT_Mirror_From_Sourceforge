*---------------------------------------------------------------------------*
* Time : 14:01:52    Date : 11/12/2011
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


Resistance R_TWOTABS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TWOTABS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 940 ;
HEIGHT 467 ;
ICON "PWCTICON" ;
TITLE "More than one Tabbed Window with ActiveX control in each one" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TAB Tab1;
AT 4 ,11;
WIDTH 911;
HEIGHT 413;
ON CHANGE tabchange()  ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
PAGE "One"
Public oActiveX1
oActiveX1 := TActiveX():New( "Win1", "Internet.Explorer.2" , 34 , 43 , 794 , 359)
oActiveX1:Load()
END PAGE
PAGE "Two"
Public oActiveX2
oActiveX2 := TActiveX():New( "Win1", "Internet.Explorer.2" , 34 , 43 , 794 , 359)
oActiveX2:Load()
END PAGE
END TAB
DO TabChange
oActiveX1:OOLE:Navigate ( "google.com" )
oActiveX2:OOLE:Navigate ( "google.com" )
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc TabChange
nPageTab1 := win1.Tab1.Value
IF nPageTab1 = 1
oActiveX1:Show ( )
oActiveX2:Hide ( )
ELSEIF nPageTab1 = 2
oActiveX2:Show ( )
oActiveX1:Hide ( )
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TWOTABS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'More than one Tabbed Window with ActiveX control in each one'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action tabchange()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'One' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX1 )",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Two' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX2 )",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure TabChange",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX1.Navigate ( 'google.com' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX2.Navigate ( 'google.com' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure TabChange",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","nPageTab1 = win1.Tab1.Value",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nPageTab1 = 1 )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX1.Show ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX2.Hide ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nPageTab1 = 2 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX2.Show ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oActiveX1.Hide ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
Return
*-------------------------------------------------------------------*
