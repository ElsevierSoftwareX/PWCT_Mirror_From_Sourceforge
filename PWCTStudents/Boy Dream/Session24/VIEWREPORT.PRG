*---------------------------------------------------------------------------*
* Time : 19:02:16    Date : 01/03/2012
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


Resistance R_VIEWREPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VIEWREPORT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 599 ;
HEIGHT 485 ;
ICON "PWCTICON" ;
TITLE "View Report" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 48 , 0 , 588 , 396)
oActivex:Load()
@ 4 ,3 BUTTONEX btn1;
CAPTION "View Rport";
ON CLICK ViewReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc ViewReport
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( StartUpFolder+"\Rpt\Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartUpFolder+"\DB\Phone.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_VIEWREPORT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'View Report'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'View Rport'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ViewReport",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ViewReport",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report StartUpFolder+'\Rpt\Report1.rpt' , Database Location = StartUpFolder+'\DB\Phone.mdb'",27,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
