*---------------------------------------------------------------------------*
* Time : 14:54:13    Date : 01/19/2012
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
Function REPORT
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

Resistance R_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORT_18smart1() code
Class windowprint
Data cWindowName init "PrintWindow"
Data reportname init "report1.rpt"
Data databasename init "data.mdb"
Data oActiveX init 0
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
BACKCOLOR {192,192,192} 

@ 382 ,531 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "winprint", "CrystalReports10.ActiveXReportViewer.1" , 53 , 12 , 651 , 324)
self:oActiveX:Load()
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
self:oActivex:OOLE:reportsource := T_myreport
self:oActivex:OOLE:viewreport ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
