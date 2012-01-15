*---------------------------------------------------------------------------*
* Time : 18:10:53    Date : 01/12/2012
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
Function ACCESSREPORTWITHFILTER
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

Resistance R_ACCESSREPORTWITHFILTER_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ACCESSREPORTWITHFILTER_18smart1() code
class AccessReportWithFilterClass From Report_Base
Data ReportName init "Customers_All"
Data datecolumn init "DateOfBirth"
Data ordercolumn init "ordercolumn"
Data cWindowName init "AccessReportWithFilterWindow"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class AccessReportWithFilterClass
if !iswindowdefined( AccessReportWithFilterWindow )
DEFINE WINDOW AccessReportWithFilterWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 467 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 387 ,909 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,800 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,689 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 357)
self:oActiveX:Load()
@ 391 ,144 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 392 ,298 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 387 ,33 CHECKBOX check1;
CAPTION "Date Range :";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 391 ,189 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 390 ,324 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

AccessReportWithFilterWindow.Maximize ( )
ACTIVATE WINDOW AccessReportWithFilterWindow
EndIF

Return 0
Method CloseWindow Class AccessReportWithFilterClass
AccessReportWithFilterWindow.Release ( )
Return 0
Method SizeReport Class AccessReportWithFilterClass
Local tempvar1,tempvar2
tempvar1 := AccessReportWithFilterWindow.Width
tempvar2 := AccessReportWithFilterWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
AccessReportWithFilterWindow.btn1.Row := tempvar2-88
AccessReportWithFilterWindow.btn2.Row := tempvar2-88
AccessReportWithFilterWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
AccessReportWithFilterWindow.lbl1.Row := tempvar2 - 88
AccessReportWithFilterWindow.lbl2.Row := tempvar2 - 88
AccessReportWithFilterWindow.check1.Row := tempvar2 - 88
AccessReportWithFilterWindow.DatePicker1.Row := tempvar2 - 88
AccessReportWithFilterWindow.DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class AccessReportWithFilterClass
tvalue := AccessReportWithFilterWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := AccessReportWithFilterWindow.Datepicker1.Value
cdate2 := AccessReportWithFilterWindow.Datepicker2.Value
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
