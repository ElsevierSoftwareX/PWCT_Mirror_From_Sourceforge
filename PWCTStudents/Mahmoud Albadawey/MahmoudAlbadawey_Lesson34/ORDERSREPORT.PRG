*---------------------------------------------------------------------------*
* Time : 23:36:47    Date : 02/15/2012
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
Function ORDERSREPORT
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

Resistance R_ORDERSREPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSREPORT_18smart1() code
class OrdersReportClass From Report_Base
Data ReportName init "orders_all"
Data cWindowName init "OrdersReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class OrdersReportClass
if !iswindowdefined( OrdersReportWindow )
DEFINE WINDOW OrdersReportWindow ;
AT 10 ,10 ;
WIDTH 753 ;
HEIGHT 511 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Orders Report" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 394 ,248 BUTTONEX btn1;
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
@ 400 ,541 BUTTONEX btn4;
CAPTION "Export To HTML ";
ON CLICK CALL RESISTANCE ExportReport()  ;
WIDTH 150 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 401 ,385 BUTTONEX btn5;
CAPTION "Export To Excel ";
ON CLICK CALL RESISTANCE ExportReport2()  ;
WIDTH 150 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

OrdersReportWindow.Maximize ( )
ACTIVATE WINDOW OrdersReportWindow
EndIF

Return 0
Method CloseWindow Class OrdersReportClass
OrdersReportWindow.Release ( )
Return 0
Method SizeReport Class OrdersReportClass
Local tempvar1,tempvar2
tempvar1 := OrdersReportWindow.Width
tempvar2 := OrdersReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
OrdersReportWindow.btn1.Row := tempvar2-88
OrdersReportWindow.btn2.Row := tempvar2-88
OrdersReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
OrdersReportWindow.btn4.Row := tempvar2-88
OrdersReportWindow.btn5.Row := tempvar2-88
Return 0



End Of Resistance

*-------------------------------------------------------------------*
