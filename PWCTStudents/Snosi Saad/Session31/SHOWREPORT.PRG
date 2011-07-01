*---------------------------------------------------------------------------*
* Time : 19:51:50    Date : 06/29/2011
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
Class WindowPrint
Data reportname init "report1.rpt"
Data databasename init "data.mdb"
Method ShowWindow
Method CloseWindow
Method ShowReport
EndClass
Method ShowWindow Class windowprint
if !iswindowdefined( WinPrint )
DEFINE WINDOW WinPrint ;
AT 10 ,10 ;
WIDTH 687 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÿ»«⁄… «· ﬁ—Ì—" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {26,142,230} 

@ 14 ,288 BUTTONEX btnShowReport;
CAPTION "⁄—÷ «· ﬁ—Ì—";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "WinPrint", "CrystalReports10.ActiveXreportViewer.1" , 55 , 7 , 661 , 297)
oActiveX:Load()
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("WinPrint"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("WinPrint"), -20),0x400000,0x100000))
WinPrint.Center ( )
ACTIVATE WINDOW WinPrint
EndIF

Return 0
Method CloseWindow Class windowprint
WinPrint.Release ( )
Return 0
Method ShowReport Class windowprint
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
