*---------------------------------------------------------------------------*
* Time : 15:15:48    Date : 12/11/2012
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
Function EMPLOYEESPRODUCTION_REPORT
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

Resistance R_EMPLOYEESPRODUCTION_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOYEESPRODUCTION_REPORT_18smart1() code
class EmployeesProductionReportClass From Report_Base
Data ReportName init "Production"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class EmployeesProductionReportClass
IF .not. UsersObject:CheckPermission(66)
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
if !iswindowdefined( EmployeesProductionReportWindow )
DEFINE WINDOW EmployeesProductionReportWindow ;
AT 10 ,10 ;
WIDTH 1093 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ãÊÇÈÚÉ ÇäÌÇÒÇÊ ÇáãæÙÝíä" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 456 ,737 BUTTONEX btn1;
CAPTION "ÇÛáÇÞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 456 ,848 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 456 ,956 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "EmployeesProductionReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 1029 , 417)
self:oActiveX:Load()
@ 456 ,486 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,329 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,556 CHECKBOX check1;
CAPTION "ÊÇÑíÎ ÇáÇäÌÇÒ";
ON CHANGE self:checkchange()  ;
WIDTH 170;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,374 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,217 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,21 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 456 ,100 CHECKBOX check2;
CAPTION "ÑÞã ÇáÏæÑÉ";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

EmployeesProductionReportWindow.Maximize ( )
ACTIVATE WINDOW EmployeesProductionReportWindow
EndIF

Return 0
Method CloseWindow Class EmployeesProductionReportClass
EmployeesProductionReportWindow.Release ( )
Return 0
Method SizeReport Class EmployeesProductionReportClass
Local tempvar1,tempvar2
tempvar1 := EmployeesProductionReportWindow.Width
tempvar2 := EmployeesProductionReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
EmployeesProductionReportWindow.btn1.Row := tempvar2-88
EmployeesProductionReportWindow.btn2.Row := tempvar2-88
EmployeesProductionReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
EmployeesProductionReportWindow.lbl1.Row := tempvar2 - 88
EmployeesProductionReportWindow.lbl2.Row := tempvar2 - 88
EmployeesProductionReportWindow.check1.Row := tempvar2 - 88
EmployeesProductionReportWindow.DatePicker1.Row := tempvar2 - 88
EmployeesProductionReportWindow.DatePicker2.Row := tempvar2 - 88
EmployeesProductionReportWindow.check2.Row := tempvar2 - 88
EmployeesProductionReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class EmployeesProductionReportClass
tvalue := EmployeesProductionReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := EmployeesProductionReportWindow.Datepicker1.Value
cdate2 := EmployeesProductionReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Production.DateOfInput) >= cdate('" + cdate1 + "') and cdate(Production.DateOfInput) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := EmployeesProductionReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := EmployeesProductionReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
