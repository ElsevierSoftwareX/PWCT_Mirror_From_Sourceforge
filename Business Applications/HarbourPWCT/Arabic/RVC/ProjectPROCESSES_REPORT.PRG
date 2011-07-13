*---------------------------------------------------------------------------*
* Time : 09:20:23    Date : 07/13/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function PROJECTPROCESSES_REPORT
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

Resistance R_PROJECTPROCESSES_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROJECTPROCESSES_REPORT_15speed1() code
class ProjectProcessesReportClass From Report_Base
Data ReportName init "ProjectProcesses"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class ProjectProcessesReportClass
if !iswindowdefined( ProjectProcessesReportWindow )
DEFINE WINDOW ProjectProcessesReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 540 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÇÌÑÇÁÇÊ ÇáãÔÑæÚ" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 453 ,630 BUTTONEX btn1;
CAPTION "ÇÛáÇÞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,735 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,842 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ProjectProcessesReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 969 , 417)
self:oActiveX:Load()
@ 453 ,467 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 453 ,327 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 453 ,523 CHECKBOX check1;
CAPTION "ÇáÊÇÑíÎ";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 453 ,363 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 453 ,223 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 453 ,29 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 453 ,104 CHECKBOX check2;
CAPTION "ßæÏ ÇáãÔÑæÚ";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ProjectProcessesReportWindow.Maximize ( )
ACTIVATE WINDOW ProjectProcessesReportWindow
EndIF

Return 0
Method CloseWindow Class ProjectProcessesReportClass
ProjectProcessesReportWindow.Release ( )
Return 0
Method SizeReport Class ProjectProcessesReportClass
Local tempvar1,tempvar2
tempvar1 := ProjectProcessesReportWindow.Width
tempvar2 := ProjectProcessesReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ProjectProcessesReportWindow.btn1.Row := tempvar2-88
ProjectProcessesReportWindow.btn2.Row := tempvar2-88
ProjectProcessesReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
ProjectProcessesReportWindow.lbl1.Row := tempvar2 - 88
ProjectProcessesReportWindow.lbl2.Row := tempvar2 - 88
ProjectProcessesReportWindow.check1.Row := tempvar2 - 88
ProjectProcessesReportWindow.DatePicker1.Row := tempvar2 - 88
ProjectProcessesReportWindow.DatePicker2.Row := tempvar2 - 88
ProjectProcessesReportWindow.check2.Row := tempvar2 - 88
ProjectProcessesReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class ProjectProcessesReportClass
tvalue := ProjectProcessesReportWindow.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := ProjectProcessesReportWindow.Datepicker1.Value
cdate2 := ProjectProcessesReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(Projects.ReceiveDate) >= cdate('" + cdate1 + "') and cdate(Projects.ReceiveDate) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
tvalue2 := ProjectProcessesReportWindow.Check2.Value
IF tvalue2 = true
IF tvalue = true
self:filter := self:filter + " and "
ELSE
self:filter := ""
ENDIF
cOrderNumber := ProjectProcessesReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " Projects.ID = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
