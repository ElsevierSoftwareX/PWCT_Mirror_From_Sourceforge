*---------------------------------------------------------------------------*
* Time : 09:46:04    Date : 01/13/2012
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
class OrderReportClass From Report_Base
Data ReportName init "Orders_All"
Data cWindowName init "OrderReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class OrderReportClass
if !iswindowdefined( OrderReportWindow )
DEFINE WINDOW OrderReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 471 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Orders Report" ;
CHILD ;
BACKCOLOR {239,239,239}

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
END WINDOW

OrderReportWindow.Maximize ( )
ACTIVATE WINDOW OrderReportWindow
EndIF

Return 0
Method CloseWindow Class OrderReportClass
OrderReportWindow.Release ( )
Return 0
Method SizeReport Class OrderReportClass
Local tempvar1,tempvar2
tempvar1 := OrderReportWindow.Width
tempvar2 := OrderReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
OrderReportWindow.btn1.Row := tempvar2-88
OrderReportWindow.btn2.Row := tempvar2-88
OrderReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
