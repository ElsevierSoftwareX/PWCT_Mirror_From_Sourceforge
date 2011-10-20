*---------------------------------------------------------------------------*
* Time : 21:30:40    Date : 10/13/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 760 ;
HEIGHT 477 ;
ICON "PWCTICON" ;
TITLE "Crystal Reports 10 Sample" ;
MAIN ;
BACKCOLOR {236,233,216} 

oActiveX := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 10 , 10 , 726 , 364)
oActiveX:Load()
@ 390 ,225 BUTTONEX btn1;
CAPTION "View Report";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.Center ( )
ACTIVATE WINDOW win1
EndIF

Proc mywork
Public myobj,myreport
myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
myreport := myobj:openreport ( "Report1.rpt" )
oactivex:OOLE:reportsource := myreport
oactivex:OOLE:viewreport ( )


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Crystal Reports 10 Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'View Report'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Public myobj,myreport",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object myobj of Type 'CrystalDesignRuntime.Application'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object myreport of Type 'CrystalDesignRuntime.Report'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","myreport = myobj.openreport ( 'Report1.rpt' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.reportsource := myreport",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.viewreport ( )",31,31)
Return
*-------------------------------------------------------------------*
