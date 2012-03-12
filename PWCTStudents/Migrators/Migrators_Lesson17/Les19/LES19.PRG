*---------------------------------------------------------------------------*
* Time : 16:22:27    Date : 03/06/2012
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


Resistance R_LES19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES19_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1027 ;
HEIGHT 410 ;
ICON "PWCTICON" ;
TITLE "Report" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 12 ,35 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK showReport()  ;
WIDTH 166 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActivex1
oActivex1 := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 57 , 7 , 1000 , 305)
oActivex1:Load()
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc showReport
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\data.mdb"
oActivex1:OOLE:reportsource := T_myreport
oActivex1:OOLE:viewreport ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Report'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Report'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showReport",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex1 )",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showReport",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex1, View Report 'Report1.rpt' , Database Location = startupfolder+'\data.mdb'",27,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
