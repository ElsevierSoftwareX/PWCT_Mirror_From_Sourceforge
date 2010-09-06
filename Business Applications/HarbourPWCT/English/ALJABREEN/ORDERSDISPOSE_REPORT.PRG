*---------------------------------------------------------------------------*
* Time : 22:16:47    Date : 08/24/2010
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
Function ORDERSDISPOSE_REPORT
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

Resistance R_ORDERSDISPOSE_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSDISPOSE_REPORT_15speed1() code
class OrdersDisposeReportClass From Report_Base
Data ReportName init "OrdersDispose"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class OrdersDisposeReportClass
if !iswindowdefined( OrdersDisposeReportWindow )
DEFINE WINDOW OrdersDisposeReportWindow ;
AT 10 ,10 ;
WIDTH 1094 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Orders Dispose Report" ;
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
self:oActiveX := TActiveX():New( "OrdersDisposeReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 1029 , 417)
self:oActiveX:Load()
@ 457 ,556 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 457 ,714 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,372 CHECKBOX check1;
CAPTION "Order (Finish Date) Range";
ON CHANGE self:checkchange()  ;
WIDTH 180;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,605 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,759 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 451 ,983 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 452 ,868 CHECKBOX check2;
CAPTION "Order Number";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

OrdersDisposeReportWindow.Maximize ( )
ACTIVATE WINDOW OrdersDisposeReportWindow
EndIF

Return 0
Method CloseWindow Class OrdersDisposeReportClass
OrdersDisposeReportWindow.Release ( )
Return 0
Method SizeReport Class OrdersDisposeReportClass
Local tempvar1,tempvar2
tempvar1 := OrdersDisposeReportWindow.Width
tempvar2 := OrdersDisposeReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
OrdersDisposeReportWindow.btn1.Row := tempvar2-88
OrdersDisposeReportWindow.btn2.Row := tempvar2-88
OrdersDisposeReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
OrdersDisposeReportWindow.lbl1.Row := tempvar2 - 88
OrdersDisposeReportWindow.lbl2.Row := tempvar2 - 88
OrdersDisposeReportWindow.check1.Row := tempvar2 - 88
OrdersDisposeReportWindow.DatePicker1.Row := tempvar2 - 88
OrdersDisposeReportWindow.DatePicker2.Row := tempvar2 - 88
OrdersDisposeReportWindow.check2.Row := tempvar2 - 88
OrdersDisposeReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class OrdersDisposeReportClass
tvalue := OrdersDisposeReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := OrdersDisposeReportWindow.Datepicker1.Value
cdate2 := OrdersDisposeReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Orders.FinishDate) >= cdate('" + cdate1 + "') and cdate(Orders.FinishDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := OrdersDisposeReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := OrdersDisposeReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
