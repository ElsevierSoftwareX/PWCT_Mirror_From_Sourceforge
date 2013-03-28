*---------------------------------------------------------------------------*
* Time : 21:56:53    Date : 06/04/2010
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
Function SHOWREPORT
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_SHOWREPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHOWREPORT_15speed1() code
Class windowprint
Data reportname init "report1.rpt"
Data databasename init "data.mdb"
Method showwindow
Method closewindow
Method showreport
EndClass
Method showwindow Class windowprint
if !iswindowdefined( winprint )
DEFINE WINDOW winprint ;
AT 10 ,10 ;
WIDTH 709 ;
HEIGHT 458 ;
ICON "PWCTICON" ;
TITLE "Print Report" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 382 ,531 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Winprint", "CrystalReports10.ActiveXReportViewer.1" , 53 , 12 , 651 , 324)
oActiveX:Load()
@ 11 ,259 BUTTONEX btn1;
CAPTION "Show Report";
ON CLICK self:showreport()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winprint.Center ( )
ACTIVATE WINDOW winprint
EndIF

Return 0
Method closewindow Class windowprint
winprint.Release ( )
Return 0
Method showreport Class windowprint
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( self:reportname )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\"+self:databasename
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
