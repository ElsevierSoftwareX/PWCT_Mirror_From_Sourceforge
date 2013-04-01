*---------------------------------------------------------------------------*
* Time : 17:09:16    Date : 12/11/2012
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
Function SCHEDULINGOPINIONS_REPORT
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

Resistance R_SCHEDULINGOPINIONS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SCHEDULINGOPINIONS_REPORT_18smart1() code
class SchedulingOpinionsReportClass From Report_Base
Data ReportName init "SchedulingOpinions"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class SchedulingOpinionsReportClass
if !iswindowdefined( SchedulingOpinionsReportWindow )
DEFINE WINDOW SchedulingOpinionsReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "«—«¡ „”∆Ê· «·ÃœÊ·… Ê«·„ «»⁄…" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 454 ,33 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,149 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,261 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "SchedulingOpinionsReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

SchedulingOpinionsReportWindow.Maximize ( )
ACTIVATE WINDOW SchedulingOpinionsReportWindow
EndIF

Return 0
Method CloseWindow Class SchedulingOpinionsReportClass
SchedulingOpinionsReportWindow.Release ( )
Return 0
Method SizeReport Class SchedulingOpinionsReportClass
Local tempvar1,tempvar2
tempvar1 := SchedulingOpinionsReportWindow.Width
tempvar2 := SchedulingOpinionsReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
SchedulingOpinionsReportWindow.btn1.Row := tempvar2-88
SchedulingOpinionsReportWindow.btn2.Row := tempvar2-88
SchedulingOpinionsReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
