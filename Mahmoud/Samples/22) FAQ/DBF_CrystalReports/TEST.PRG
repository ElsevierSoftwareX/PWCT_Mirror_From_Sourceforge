*---------------------------------------------------------------------------*
* Time : 06:18:01    Date : 05/30/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
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
Return
*-------------------------------------------------------------------*
