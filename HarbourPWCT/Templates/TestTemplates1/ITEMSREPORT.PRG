*---------------------------------------------------------------------------*
* Time : 22:34:24    Date : 07/31/2010
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
Function ITEMSREPORT
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

Resistance R_ITEMSREPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSREPORT_15speed1() code
Class accessreportITEMS
Data database init GetStartUpFolder()+"\data.mdb"
Data outputfile init GetStartUpFolder()+"\tempfile.html"
Data ReportName init "ITEMS"
Method showwindow
Method closewindow
Method showreport
Method printreport
Method SizeReport
EndClass
Method ShowWindow Class accessreportITEMS
if !iswindowdefined( winReportItems )
DEFINE WINDOW winReportItems ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "winReportItems", "shell.explorer.2" , 18 , 32 , 659 , 417)
oActiveX:Load()
@ 454 ,456 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,316 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,176 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winReportItems
EndIF

Return 0
Method CloseWindow Class accessreportITEMS
winReportItems.Release ( )
Return 0
Method ShowReport Class accessreportITEMS
StartUpFolder := GetStartUpFolder()
myaccessobj := TOLEAUTO():NEW( "Access.Application" )
myaccessobj:OpenCurrentDatabase ( self:database,false )
myaccessobj:DoCmd:OutputTo ( 3,self:ReportName,"HTML (*.html)",self:outputfile )

myaccessobj:Quit ( )
oactivex:OOLE:navigate ( self:outputfile )
oactivex:nHeight := oactivex:nheight + 10
oactivex:nWidth := oactivex:nwidth + 10
Return 0
Method PrintReport Class accessreportITEMS
StartUpFolder := GetStartUpFolder()
myaccessobj := TOLEAUTO():NEW( "Access.Application" )
myaccessobj:OpenCurrentDatabase ( self:database,false )
myaccessobj:DoCmd:OpenReport ( self:ReportName )
myaccessobj:Quit ( )
Return 0
Method SizeReport Class accessreportITEMS
Local tempvar1,tempvar2
tempvar1 := winReportItems.Width
tempvar2 := winReportItems.Height
oactivex:nWidth := tempvar1 - 84
oactivex:nHeight := tempvar2 - 125
winReportItems.btn1.Row := tempvar2-88
winReportItems.btn2.Row := tempvar2-88
winReportItems.btn3.Row := tempvar2-88
oactivex:Show ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
