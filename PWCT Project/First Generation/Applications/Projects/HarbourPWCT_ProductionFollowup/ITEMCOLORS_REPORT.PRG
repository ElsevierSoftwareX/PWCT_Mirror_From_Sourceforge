*---------------------------------------------------------------------------*
* Time : 13:24:57    Date : 06/07/2013
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
Function ITEMCOLORS_REPORT
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

Resistance R_ITEMCOLORS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMCOLORS_REPORT_18smart1() code
class ITEMCOLORSReportClass From Report_Base
Data ReportName init "ITEMSCOLORS"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ITEMCOLORSReportClass
if !iswindowdefined( ITEMCOLORSReportWindow )
DEFINE WINDOW ITEMCOLORSReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Items Colors Report" ;
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
self:oActiveX := TActiveX():New( "ITEMCOLORSReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW
ITEMCOLORSReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMCOLORSReportWindow
EndIF
Return 0
Method CloseWindow Class ITEMCOLORSReportClass
ITEMCOLORSReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMCOLORSReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMCOLORSReportWindow.Width
tempvar2 := ITEMCOLORSReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMCOLORSReportWindow.btn1.Row := tempvar2-88
ITEMCOLORSReportWindow.btn2.Row := tempvar2-88
ITEMCOLORSReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0

End Of Resistance

*-------------------------------------------------------------------*
