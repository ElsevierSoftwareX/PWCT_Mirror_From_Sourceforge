*---------------------------------------------------------------------------*
* Time : 13:59:09    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function ORDERPROCESSES_REPORT
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

Resistance R_ORDERPROCESSES_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERPROCESSES_REPORT_18smart1() code
class OrderProcessesReportClass From Report_Base
Data ReportName init "OrderProcesses"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class OrderProcessesReportClass
IF .not. UserCan_WinProduction = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
if !iswindowdefined( OrderProcessesReportWindow )
DEFINE WINDOW OrderProcessesReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Order Processes Report" ;
CHILD ;
BACKCOLOR {64,0,64} 
@ 455 ,251 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 455 ,141 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 455 ,31 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "OrderProcessesReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 417)
self:oActiveX:Load()
@ 457 ,486 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 457 ,644 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,372 CHECKBOX check1;
CAPTION "Date Range :";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,535 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,689 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 451 ,913 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 452 ,798 CHECKBOX check2;
CAPTION "Order Number";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW
OrderProcessesReportWindow.Maximize ( )
ACTIVATE WINDOW OrderProcessesReportWindow
EndIF
Return 0
Method CloseWindow Class OrderProcessesReportClass
OrderProcessesReportWindow.Release ( )
Return 0
Method SizeReport Class OrderProcessesReportClass
Local tempvar1,tempvar2
tempvar1 := OrderProcessesReportWindow.Width
tempvar2 := OrderProcessesReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
OrderProcessesReportWindow.btn1.Row := tempvar2-88
OrderProcessesReportWindow.btn2.Row := tempvar2-88
OrderProcessesReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
OrderProcessesReportWindow.lbl1.Row := tempvar2 - 88
OrderProcessesReportWindow.lbl2.Row := tempvar2 - 88
OrderProcessesReportWindow.check1.Row := tempvar2 - 88
OrderProcessesReportWindow.DatePicker1.Row := tempvar2 - 88
OrderProcessesReportWindow.DatePicker2.Row := tempvar2 - 88
OrderProcessesReportWindow.check2.Row := tempvar2 - 88
OrderProcessesReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class OrderProcessesReportClass
tvalue := OrderProcessesReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := OrderProcessesReportWindow.Datepicker1.Value
cdate2 := OrderProcessesReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Orders.OrderDate) >= cdate('" + cdate1 + "') and cdate(Orders.OrderDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := OrderProcessesReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := OrderProcessesReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0

End Of Resistance

*-------------------------------------------------------------------*
