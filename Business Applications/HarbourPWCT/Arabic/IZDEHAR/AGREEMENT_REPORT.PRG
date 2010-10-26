*---------------------------------------------------------------------------*
* Time : 15:25:20    Date : 10/25/2010
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
Function AGREEMENT_REPORT
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

Resistance R_AGREEMENT_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AGREEMENT_REPORT_15speed1() code
class AgreementReportClass From Report_Base
Data ReportName init "OrderAgreement"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class AgreementReportClass
IF .not. UserCan_WinAgreement = 2
MyOut := MSGBOX("ÇáÏÎæá áåĞå ÇáäÇİĞÉ ÛíÑ ãÕÑÍ Èå","ÚİæÇ")
Return 0
ENDIF
if !iswindowdefined( AgreementReportWindow )
DEFINE WINDOW AgreementReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 541 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÊŞÑíÑ ÈÇáãæÇİŞÉ Úáì ÏæÑÉ" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 451 ,663 BUTTONEX btn1;
CAPTION "ÇÛáÇŞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 451 ,775 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 451 ,888 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "AgreementReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 417)
self:oActiveX:Load()
@ 458 ,489 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,343 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 452 ,543 CHECKBOX check1;
CAPTION "ÇáÊÇÑíÎ";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 455 ,383 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,235 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,48 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 451 ,123 CHECKBOX check2;
CAPTION "ÑŞã ÇáÏæÑÉ";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

AgreementReportWindow.Maximize ( )
ACTIVATE WINDOW AgreementReportWindow
EndIF

Return 0
Method CloseWindow Class AgreementReportClass
AgreementReportWindow.Release ( )
Return 0
Method SizeReport Class AgreementReportClass
Local tempvar1,tempvar2
tempvar1 := AgreementReportWindow.Width
tempvar2 := AgreementReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
AgreementReportWindow.btn1.Row := tempvar2-88
AgreementReportWindow.btn2.Row := tempvar2-88
AgreementReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
AgreementReportWindow.lbl1.Row := tempvar2 - 88
AgreementReportWindow.lbl2.Row := tempvar2 - 88
AgreementReportWindow.check1.Row := tempvar2 - 88
AgreementReportWindow.DatePicker1.Row := tempvar2 - 88
AgreementReportWindow.DatePicker2.Row := tempvar2 - 88
AgreementReportWindow.check2.Row := tempvar2 - 88
AgreementReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class AgreementReportClass
tvalue := AgreementReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := AgreementReportWindow.Datepicker1.Value
cdate2 := AgreementReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Orders.OrderDate) >= cdate('" + cdate1 + "') and cdate(Orders.OrderDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := AgreementReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := AgreementReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
