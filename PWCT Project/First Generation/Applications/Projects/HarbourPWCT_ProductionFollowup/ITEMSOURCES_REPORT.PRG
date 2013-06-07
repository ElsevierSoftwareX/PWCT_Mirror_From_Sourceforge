*---------------------------------------------------------------------------*
* Time : 13:48:13    Date : 06/07/2013
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
Function ITEMSOURCES_REPORT
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

Resistance R_ITEMSOURCES_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSOURCES_REPORT_18smart1() code
class ITEMSOURCESReportClass From Report_Base
Data ReportName init "ITEMSSOURCES"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ITEMSOURCESReportClass
if !iswindowdefined( ITEMSOURCESReportWindow )
DEFINE WINDOW ITEMSOURCESReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Items Sources Report" ;
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
self:oActiveX := TActiveX():New( "ITEMSOURCESReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW
ITEMSOURCESReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMSOURCESReportWindow
EndIF
Return 0
Method CloseWindow Class ITEMSOURCESReportClass
ITEMSOURCESReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMSOURCESReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMSOURCESReportWindow.Width
tempvar2 := ITEMSOURCESReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMSOURCESReportWindow.btn1.Row := tempvar2-88
ITEMSOURCESReportWindow.btn2.Row := tempvar2-88
ITEMSOURCESReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0

End Of Resistance

*-------------------------------------------------------------------*
