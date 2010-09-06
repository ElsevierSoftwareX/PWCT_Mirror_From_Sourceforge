*---------------------------------------------------------------------------*
* Time : 06:18:12    Date : 09/04/2010
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
Function ITEMUNITS_REPORT
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

Resistance R_ITEMUNITS_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMUNITS_REPORT_15speed1() code
class ITEMUNITSReportClass From Report_Base
Data ReportName init "ITEMSUNITS"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ITEMUNITSReportClass
if !iswindowdefined( ITEMUNITSReportWindow )
DEFINE WINDOW ITEMUNITSReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÊÕœ«  «·«’‰«›" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 453 ,34 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,152 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 453 ,272 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ITEMUNITSReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

ITEMUNITSReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMUNITSReportWindow
EndIF

Return 0
Method CloseWindow Class ITEMUNITSReportClass
ITEMUNITSReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMUNITSReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMUNITSReportWindow.Width
tempvar2 := ITEMUNITSReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMUNITSReportWindow.btn1.Row := tempvar2-88
ITEMUNITSReportWindow.btn2.Row := tempvar2-88
ITEMUNITSReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
