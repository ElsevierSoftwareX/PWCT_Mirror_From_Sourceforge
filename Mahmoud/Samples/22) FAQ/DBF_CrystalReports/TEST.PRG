*---------------------------------------------------------------------------*
* Time : 04:32:57    Date : 10/23/2011
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
 * (Noun) *
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
Set Exclusive Off
Use tel
myobj = myclassname()
myout = myobj:ShowWindow()
Class MyClassName
Data reportname init "report1.rpt"
Data databasename init "tel.dbf"
Data oActiveX init 0
Method showwindow
Method closewindow
Method showreport
EndClass
Method showwindow Class MyClassName
if !iswindowdefined( MyWindowName )
DEFINE WINDOW MyWindowName ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 477 ;
ON INIT self:showreport()  ;
ICON "PWCTICON" ;
TITLE "Print Report" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 404 ,531 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "MyWindowName", "CrystalReports10.ActiveXReportViewer.1" , 181 , 11 , 651 , 214)
self:oActiveX:Load()
@ 402 ,11 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK self:showreport()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
TRANS_TEMP = "tel"
@ 10 ,11 ;
BROWSE browse1 ;
WIDTH 651 ;
HEIGHT 164 ;
HEADERS {"name","address","phone"} ;
WIDTHS {200,200,200} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"name","address","phone"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
LOCK ;
IMAGE "" 

END WINDOW

MyWindowName.Center ( )
ACTIVATE WINDOW MyWindowName
EndIF

Return 0
Method closewindow Class MyClassName
MyWindowName.Release ( )
Return 0
Method showreport Class MyClassName
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( self:reportname )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\"+self:databasename
self:oActivex:OOLE:reportsource := T_myreport
self:oActivex:OOLE:viewreport ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Exclusive Off",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class myclassname",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.ShowWindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClassName",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data reportname Init Value 'report1.rpt'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data databasename Init Value 'tel.dbf'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data oActiveX Init Value 0",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method showreport",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class MyClassName",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( MyWindowName )",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose )",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( self:oActiveX )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",42,53)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.Center ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class MyClassName",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.Release ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showreport Class MyClassName",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object self:oActivex, View Report self:reportname , Database Location = startupfolder+'\'+self:databasename",70,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",80,80)
Return
*-------------------------------------------------------------------*
