*---------------------------------------------------------------------------*
* Time : 15:20:26    Date : 12/11/2012
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
Function FINANCEOPINIONS_REPORT
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

Resistance R_FINANCEOPINIONS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FINANCEOPINIONS_REPORT_18smart1() code
class FinanceOpinionsReportClass From Report_Base
Data ReportName init "FinanceOpinions"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class FinanceOpinionsReportClass
if !iswindowdefined( FinanceOpinionsReportWindow )
DEFINE WINDOW FinanceOpinionsReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "«—«¡ „”∆Ê· «·„«·Ì…" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 457 ,34 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 457 ,149 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 457 ,264 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "FinanceOpinionsReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

FinanceOpinionsReportWindow.Maximize ( )
ACTIVATE WINDOW FinanceOpinionsReportWindow
EndIF

Return 0
Method CloseWindow Class FinanceOpinionsReportClass
FinanceOpinionsReportWindow.Release ( )
Return 0
Method SizeReport Class FinanceOpinionsReportClass
Local tempvar1,tempvar2
tempvar1 := FinanceOpinionsReportWindow.Width
tempvar2 := FinanceOpinionsReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
FinanceOpinionsReportWindow.btn1.Row := tempvar2-88
FinanceOpinionsReportWindow.btn2.Row := tempvar2-88
FinanceOpinionsReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
