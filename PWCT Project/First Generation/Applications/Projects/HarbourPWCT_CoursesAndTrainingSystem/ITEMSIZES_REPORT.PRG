*---------------------------------------------------------------------------*
* Time : 16:02:15    Date : 12/11/2012
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
Function ITEMSIZES_REPORT
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

Resistance R_ITEMSIZES_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSIZES_REPORT_18smart1() code
class ITEMSIZESReportClass From Report_Base
Data ReportName init "ITEMSSIZES"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ITEMSIZESReportClass
if !iswindowdefined( ITEMSIZESReportWindow )
DEFINE WINDOW ITEMSIZESReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "√ÕÃ«„ «·«’‰«›" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 450 ,33 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,144 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,258 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ITEMSIZESReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

ITEMSIZESReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMSIZESReportWindow
EndIF

Return 0
Method CloseWindow Class ITEMSIZESReportClass
ITEMSIZESReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMSIZESReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMSIZESReportWindow.Width
tempvar2 := ITEMSIZESReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMSIZESReportWindow.btn1.Row := tempvar2-88
ITEMSIZESReportWindow.btn2.Row := tempvar2-88
ITEMSIZESReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
