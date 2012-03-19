*---------------------------------------------------------------------------*
* Time : 23:48:19    Date : 03/18/2012
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


Resistance R_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 623 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "Report  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 390 ,258 BUTTONEX btn1;
CAPTION "Show Report ";
ON CLICK ShowReport()  ;
WIDTH 119 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 57 , 8 , 592 , 322)
oActivex:Load()
@ 10 ,10 LABEL lbl1 ;
VALUE "The Phone Numbers Report " ;
WIDTH 226 ;
HEIGHT 21 ;
FONT "Arial" SIZE 13  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,160}
@ 390 ,424 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure ShowReport()
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartUpFolder+"/phonebook.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
return
procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_REPORT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Report  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Report '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowReport",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The Phone Numbers Report '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowReport ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = StartUpFolder+'/phonebook.mdb'",44,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
Return
*-------------------------------------------------------------------*
