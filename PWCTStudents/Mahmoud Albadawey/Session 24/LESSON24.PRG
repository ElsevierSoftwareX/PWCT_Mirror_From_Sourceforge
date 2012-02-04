*---------------------------------------------------------------------------*
* Time : 03:40:19    Date : 02/03/2012
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


Resistance R_LESSON24_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON24_18smart1() code
Public mode
mode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 375 ;
HEIGHT 127 ;
ICON "PWCTICON" ;
TITLE "Lesson 24" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Public oActivex1
oActivex1 := TActiveX():New( "Win1", "CrystalReports10.activexReportviewer.1" , 96 , 13 , 591 , 322)
oActivex1:Load()
@ 60 ,134 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK setwindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 5 ,134 LABEL lbl1 ;
VALUE "Reports" ;
WIDTH 100 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
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
oDBT:Location = startupfolder+"\db.mdb"
oActivex1:OOLE:reportsource := T_myreport
oActivex1:OOLE:viewreport ( )
Return Nil
Proc setwindow
IF mode = 1
win1.Width := 627
win1.Height := 466
DO showreport
win1.btn1.Col := 250
win1.lbl1.Col := 250
win1.btn1.Caption := "Undo"
mode := 2
ELSEIF mode = 2
win1.Width := 355
win1.Height := 127
win1.btn1.Col := 134
win1.lbl1.Col := 134
win1.btn1.Caption := "Show Report"
mode := 1
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON24
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public mode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","mode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 24'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,14)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex1 )",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Report'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setwindow",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Reports'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showreport",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex1, View Report 'Report1.rpt' , Database Location = startupfolder+'\db.mdb'",40,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setwindow",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mode = 1 )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Width := 627",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Height := 466",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showreport",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := 250",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := 250",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := 'Undo'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","mode = 2",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( mode = 2 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Width := 355",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Height := 127",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := 134",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := 134",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := 'Show Report'",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mode = 1",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
