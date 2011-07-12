*---------------------------------------------------------------------------*
* Time : 03:01:52    Date : 07/12/2011
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
Function PROJECTREVIEWS_REPORT
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

Resistance R_PROJECTREVIEWS_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROJECTREVIEWS_REPORT_15speed1() code
class ProjectReviewsReportClass From Report_Base
Data ReportName init "ProjectReviews"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ProjectReviewsReportClass
if !iswindowdefined( ProjectReviewsReportWindow )
DEFINE WINDOW ProjectReviewsReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "„—«Ã⁄… «·„‘«—Ì⁄" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 453 ,33 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,141 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,249 BUTTONEX btn3;
CAPTION " ÕœÌÀ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ProjectReviewsReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

ProjectReviewsReportWindow.Maximize ( )
ACTIVATE WINDOW ProjectReviewsReportWindow
EndIF

Return 0
Method CloseWindow Class ProjectReviewsReportClass
ProjectReviewsReportWindow.Release ( )
Return 0
Method SizeReport Class ProjectReviewsReportClass
Local tempvar1,tempvar2
tempvar1 := ProjectReviewsReportWindow.Width
tempvar2 := ProjectReviewsReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ProjectReviewsReportWindow.btn1.Row := tempvar2-88
ProjectReviewsReportWindow.btn2.Row := tempvar2-88
ProjectReviewsReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
