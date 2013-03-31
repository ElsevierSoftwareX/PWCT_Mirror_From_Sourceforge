*---------------------------------------------------------------------------*
* Time : 11:43:26    Date : 10/23/2011
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


Resistance R_PDFTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PDFTEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 725 ;
HEIGHT 544 ;
ICON "PWCTICON" ;
TITLE "ActiveX (Internet.Explorer.2) - Show PDF" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "Internet.Explorer.2" , 48 , 11 , 669 , 417)
oActiveX:Load()
@ 10 ,11 BUTTONEX btn1;
CAPTION "Show PDF File";
ON CLICK mypdf()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mypdf
StartUpFolder := GetStartUpFolder()
oactivex:OOLE:navigate ( startupfolder + "\test.pdf" )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PDFTEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ActiveX (Internet.Explorer.2) - Show PDF'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show PDF File'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mypdf()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypdf",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.navigate ( startupfolder + '\test.pdf' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",28,28)
Return
*-------------------------------------------------------------------*
