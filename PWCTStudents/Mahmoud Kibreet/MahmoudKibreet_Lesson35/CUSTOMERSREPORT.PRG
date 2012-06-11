*---------------------------------------------------------------------------*
* Time : 01:30:30    Date : 06/02/2012
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
Function CUSTOMERSREPORT
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

Resistance R_CUSTOMERSREPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSREPORT_18smart1() code
class CustomersReportClass From Report_Base
Data ReportName init "Customers_All"
Data cWindowName init "CustomersReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class CustomersReportClass
if !iswindowdefined( CustomersReportWindow )
DEFINE WINDOW CustomersReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 471 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Customers Report" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 396 ,626 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 394 ,141 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 394 ,34 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 357)
self:oActiveX:Load()
@ 395 ,249 BUTTONEX btn4;
CAPTION "Export Web Page";
ON CLICK self:ExportReport()  ;
WIDTH 170 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 396 ,425 BUTTONEX btn5;
CAPTION "Export Excel File";
ON CLICK self:ExportReport2()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustomersReportWindow.Maximize ( )
ACTIVATE WINDOW CustomersReportWindow
EndIF

Return 0
Method CloseWindow Class CustomersReportClass
CustomersReportWindow.Release ( )
Return 0
Method SizeReport Class CustomersReportClass
Local tempvar1,tempvar2
tempvar1 := CustomersReportWindow.Width
tempvar2 := CustomersReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustomersReportWindow.btn1.Row := tempvar2-88
CustomersReportWindow.btn2.Row := tempvar2-88
CustomersReportWindow.btn3.Row := tempvar2-88
CustomersReportWindow.btn4.Row := tempvar2-88
CustomersReportWindow.btn5.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
