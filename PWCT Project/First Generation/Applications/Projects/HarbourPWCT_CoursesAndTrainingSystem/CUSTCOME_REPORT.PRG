*---------------------------------------------------------------------------*
* Time : 14:20:14    Date : 12/11/2012
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
Function CUSTCOME_REPORT
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

Resistance R_CUSTCOME_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTCOME_REPORT_18smart1() code
class CustComeReportClass From Report_Base
Data ReportName init "CustCome"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class CustComeReportClass
IF .not. usersobject:CheckPermission(61)
MyOut := MSGBOX("ÇáÏÎæá áåĞå ÇáäÇİĞÉ ÛíÑ ãÕÑÍ Èå","ÚİæÇ")
Return 0
ENDIF
if !iswindowdefined( CustComeReportWindow )
DEFINE WINDOW CustComeReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 534 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÅÓÊãÇÑÉ ÇáÊŞííã  ÇáÊİÕíáì ááÏæÑÉ ãä ŞÈá ÇáãÊÏÑÈßÔİ ÊÓÌíá ÍÖæÑ æÅäÕÑÇİ ÇáãÊÏÑÈíä" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 449 ,666 BUTTONEX btn1;
CAPTION "ÇÛáÇŞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 449 ,774 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 449 ,880 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "CustComeReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 417)
self:oActiveX:Load()
@ 449 ,487 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,333 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,544 CHECKBOX check1;
CAPTION "ÇáÊÇÑíÎ";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,373 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,227 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,29 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 449 ,108 CHECKBOX check2;
CAPTION "ÑŞã ÇáÏæÑÉ";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

CustComeReportWindow.Maximize ( )
ACTIVATE WINDOW CustComeReportWindow
EndIF

Return 0
Method CloseWindow Class CustComeReportClass
CustComeReportWindow.Release ( )
Return 0
Method SizeReport Class CustComeReportClass
Local tempvar1,tempvar2
tempvar1 := CustComeReportWindow.Width
tempvar2 := CustComeReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustComeReportWindow.btn1.Row := tempvar2-88
CustComeReportWindow.btn2.Row := tempvar2-88
CustComeReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
CustComeReportWindow.lbl1.Row := tempvar2 - 88
CustComeReportWindow.lbl2.Row := tempvar2 - 88
CustComeReportWindow.check1.Row := tempvar2 - 88
CustComeReportWindow.DatePicker1.Row := tempvar2 - 88
CustComeReportWindow.DatePicker2.Row := tempvar2 - 88
CustComeReportWindow.check2.Row := tempvar2 - 88
CustComeReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class CustComeReportClass
tvalue := CustComeReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := CustComeReportWindow.Datepicker1.Value
cdate2 := CustComeReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Orders.OrderDate) >= cdate('" + cdate1 + "') and cdate(Orders.OrderDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := CustComeReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := CustComeReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
