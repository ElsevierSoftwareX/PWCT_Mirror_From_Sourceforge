*---------------------------------------------------------------------------*
* Time : 14:36:29    Date : 12/11/2012
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
Function CUSTFRIENDS_REPORT
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

Resistance R_CUSTFRIENDS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTFRIENDS_REPORT_18smart1() code
class CustFriendsReportClass From Report_Base
Data ReportName init "CustFriends"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class CustFriendsReportClass
if !iswindowdefined( CustFriendsReportWindow )
DEFINE WINDOW CustFriendsReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 534 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ãÑÔÍíä ÇáÚãáÇÁ" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 450 ,30 BUTTONEX btn1;
CAPTION "ÇÛáÇŞ";
ON CLICK self:CloseWindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,118 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,206 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "CustFriendsReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 417)
self:oActiveX:Load()
@ 449 ,847 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,693 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 450 ,904 CHECKBOX check1;
CAPTION "ÇáÊÇÑíÎ";
ON CHANGE self:checkchange()  ;
WIDTH 102;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,733 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,587 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 449 ,389 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 449 ,468 CHECKBOX check2;
CAPTION "ÑŞã ÇáÏæÑÉ";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 450 ,294 BUTTONEX btn4;
CAPTION "ÊÕÏíÑ";
ON CLICK self:ExportReport2()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustFriendsReportWindow.Maximize ( )
ACTIVATE WINDOW CustFriendsReportWindow
EndIF

Return 0
Method CloseWindow Class CustFriendsReportClass
CustFriendsReportWindow.Release ( )
Return 0
Method SizeReport Class CustFriendsReportClass
Local tempvar1,tempvar2
tempvar1 := CustFriendsReportWindow.Width
tempvar2 := CustFriendsReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustFriendsReportWindow.btn1.Row := tempvar2-88
CustFriendsReportWindow.btn2.Row := tempvar2-88
CustFriendsReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
CustFriendsReportWindow.lbl1.Row := tempvar2 - 88
CustFriendsReportWindow.lbl2.Row := tempvar2 - 88
CustFriendsReportWindow.check1.Row := tempvar2 - 88
CustFriendsReportWindow.DatePicker1.Row := tempvar2 - 88
CustFriendsReportWindow.DatePicker2.Row := tempvar2 - 88
CustFriendsReportWindow.check2.Row := tempvar2 - 88
CustFriendsReportWindow.text1.Row := tempvar2 - 88
CustFriendsReportWindow.btn4.Row := tempvar2-88
Return 0
Method CheckChange Class CustFriendsReportClass
tvalue := CustFriendsReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := CustFriendsReportWindow.Datepicker1.Value
cdate2 := CustFriendsReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Orders.OrderDate) >= cdate('" + cdate1 + "') and cdate(Orders.OrderDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := CustFriendsReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := CustFriendsReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
