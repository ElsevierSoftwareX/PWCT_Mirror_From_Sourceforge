*---------------------------------------------------------------------------*
* Time : 16:28:17    Date : 12/11/2012
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

Resistance R_ORDERSDISPOSE_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSDISPOSE_REPORT_18smart1() code
class OrdersDisposeReportClass From Report_Base
Data ReportName init "OrdersDispose"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class OrdersDisposeReportClass
IF .not. UserCan_WinDispose = 2
MyOut := MSGBOX("ÇáÏÎæá áåĞå ÇáäÇİĞÉ ÛíÑ ãÕÑÍ Èå","ÚİæÇ")
Return 0
ENDIF
if !iswindowdefined( OrdersDisposeReportWindow )
DEFINE WINDOW OrdersDisposeReportWindow ;
AT 10 ,10 ;
WIDTH 1094 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÊŞííã ÏæÑÉ ÈÚÏ ÇáÇäÊåÇÁ" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 454 ,711 BUTTONEX btn1;
CAPTION "ÇÛáÇŞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,826 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,936 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "OrdersDisposeReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 1029 , 417)
self:oActiveX:Load()
@ 454 ,475 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,329 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,524 CHECKBOX check1;
CAPTION "ÊÇÑíÎ ÇáÇäÊåÇÁ";
ON CHANGE self:checkchange()  ;
WIDTH 180;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,367 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,226 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,31 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 454 ,110 CHECKBOX check2;
CAPTION "ÑŞã ÇáÏæÑÉ";
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
