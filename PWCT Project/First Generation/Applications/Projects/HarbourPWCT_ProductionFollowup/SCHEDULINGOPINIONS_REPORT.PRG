*---------------------------------------------------------------------------*
* Time : 14:14:03    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
TITLE "Scheduling Manager Opinions" ;
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
