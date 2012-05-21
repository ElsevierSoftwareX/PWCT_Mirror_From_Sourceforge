*---------------------------------------------------------------------------*
* Time : 23:19:16    Date : 05/09/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 720 ;
HEIGHT 467 ;
ICON "PWCTICON" ;
TITLE "Report" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 41 , 1 , 705 , 336)
oActivex:Load()
@ 3 ,264 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK showreport()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,607 BUTTONEX btn2;
CAPTION "Quit";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Releasewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc showreport
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\data.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return Nil
Proc Releasewindow
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Report'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Report'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showreport()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Quit'",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Releasewindow()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showreport",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = startupfolder+'\data.mdb'",36,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Releasewindow",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
