*---------------------------------------------------------------------------*
* Time : 16:09:30    Date : 01/10/2012
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


Resistance R_24_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_24_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 879 ;
HEIGHT 565 ;
ICON "PWCTICON" ;
TITLE "Report" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 73 , 30 , 822 , 430)
oActivex:Load()
@ 13 ,372 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK show()  ;
WIDTH 148 HEIGHT 42 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc show
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


End Of Resistance

INIT PROCEDURE Init_24
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Report'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Report'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action show()",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Date",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = startupfolder+'\data.mdb'",40,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
