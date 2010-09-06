*---------------------------------------------------------------------------*
* Time : 04:13:34    Date : 08/24/2010
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

Resistance R_FINANCEOPINIONS_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FINANCEOPINIONS_REPORT_15speed1() code
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
TITLE "Finance Manager Opinions" ;
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
