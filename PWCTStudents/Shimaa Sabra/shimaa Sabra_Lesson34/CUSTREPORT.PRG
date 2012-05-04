*---------------------------------------------------------------------------*
* Time : 22:06:54    Date : 03/13/2012
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
Function CUSTREPORT
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

Resistance R_CUSTREPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTREPORT_18smart1() code
class CustReportClass From Report_Base
Data ReportName init "cust_All"
Data datecolumn init "DateOfBirth"
Data ordercolumn init "ordercolumn"
Data cWindowName init "CustReportWindow "
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class CustReportClass
if !iswindowdefined( CustReportWindow )
DEFINE WINDOW CustReportWindow ;
AT 10 ,10 ;
WIDTH 802 ;
HEIGHT 456 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Customers Report" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 373 ,679 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 374 ,576 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 375 ,473 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 12 , 9 , 769 , 356)
self:oActiveX:Load()
@ 382 ,119 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 383 ,273 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 378 ,9 CHECKBOX check1;
CAPTION "Date Range :";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 382 ,164 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 381 ,299 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustReportWindow.Maximize ( )
ACTIVATE WINDOW CustReportWindow
EndIF

Return 0
Method CloseWindow Class CustReportClass
CustReportWindow.Release ( )
Return 0
Method SizeReport Class CustReportClass
Local tempvar1,tempvar2
tempvar1 := CustReportWindow.Width
tempvar2 := CustReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustReportWindow.btn1.Row := tempvar2-88
CustReportWindow.btn2.Row := tempvar2-88
CustReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
CustReportWindow.lbl1.Row := tempvar2 - 88
CustReportWindow.lbl2.Row := tempvar2 - 88
CustReportWindow.check1.Row := tempvar2 - 88
CustReportWindow.DatePicker1.Row := tempvar2 - 88
CustReportWindow.DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class CustReportClass
tvalue := CustReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := CustReportWindow.Datepicker1.Value
cdate2 := CustReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate("+self:datecolumn+") >= cdate('" + cdate1 + "') and cdate("+self:datecolumn+") <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
