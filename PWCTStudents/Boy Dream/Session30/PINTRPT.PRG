*---------------------------------------------------------------------------*
* Time : 10:08:43    Date : 01/05/2012
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
Function PINTRPT
Public True,False 
True = .T. 
False = .F. 
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_PINTRPT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PINTRPT_18smart1() code
Class PrintRpt
Data DBB init ""
Data Rpt init ""
Method ShowRpt
Method WinRpt
EndClass
Method ShowRpt Class PrintRpt
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( StartUpFolder+self:Rpt )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartUpFolder+self:DBB
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return 0
Method WinRpt Class PrintRpt
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 956 ;
HEIGHT 703 ;
ICON "PWCTICON" ;
TITLE "View Report" ;
CHILD ;
BACKCOLOR {239,239,239} 

Public oActivex
oActivex := TActiveX():New( "win2", "CrystalReports10.ActiveXReportViewer.1" , 48 , 0 , 942 , 613)
oActivex:Load()
@ 4 ,3 BUTTONEX btn1;
CAPTION "Reconnect";
ON CLICK self:ShowRpt()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

self:ShowRpt ()
ACTIVATE WINDOW win2
EndIF

Return 0


End Of Resistance

*-------------------------------------------------------------------*
