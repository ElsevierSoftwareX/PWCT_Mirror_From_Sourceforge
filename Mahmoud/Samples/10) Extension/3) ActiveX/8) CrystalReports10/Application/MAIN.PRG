#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:55:17    Date : 05/03/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.2 (Expert) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance R2547434359_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R2547434359_1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 760 ;
HEIGHT 477 ;
ICON "PWCTICON" ;
TITLE "Crystal Reports 10 Sample" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 10 , 10 , 726 , 364)
oActiveX:Load()
@ 390 ,225 BUTTONEX btn1;
CAPTION "View Report";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 390 ,335 BUTTONEX btn2;
CAPTION "View Report (Simple Method)";
ON CLICK mywork2()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.Center ( )
ACTIVATE WINDOW win1

Proc mywork
Public myobj,myreport
myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
myreport := myobj:openreport ( "Report1.rpt" )
oactivex:OOLE:reportsource := myreport
oactivex:OOLE:viewreport ( )
Return Nil
Proc mywork2
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.RPT" )
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",10,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Public myobj,myreport",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object myobj of Type 'CrystalDesignRuntime.Application'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object myreport of Type 'CrystalDesignRuntime.Report'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","myreport = myobj.openreport ( 'Report1.rpt' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.reportsource := myreport",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.viewreport ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork2",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.RPT'",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
