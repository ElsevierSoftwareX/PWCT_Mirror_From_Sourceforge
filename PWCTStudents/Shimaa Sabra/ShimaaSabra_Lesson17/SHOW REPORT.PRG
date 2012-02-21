*---------------------------------------------------------------------------*
* Time : 22:48:26    Date : 02/20/2012
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


Resistance R_SHOW_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHOW_REPORT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 464 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "Show Report " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 44 , 14 , 427 , 262)
oActivex:Load()
@ 315 ,262 BUTTONEX btn1;
CAPTION "Show ";
ON CLICK show()  ;
WIDTH 88 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 315 ,355 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 88 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 9 ,9 LABEL lbl1 ;
VALUE "The report ......" ;
WIDTH 136 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
procedure show()
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\persdata.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
return


End Of Resistance

INIT PROCEDURE Init_SHOW_REPORT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Show Report '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action show",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The report ......'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = startupfolder+'",47,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
Return
*-------------------------------------------------------------------*
