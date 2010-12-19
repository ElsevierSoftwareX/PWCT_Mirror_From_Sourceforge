*---------------------------------------------------------------------------*
* Time : 14:04:12    Date : 11/26/2010
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
Function VALUEITEMS_REPORT
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

Resistance R_VALUEITEMS_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VALUEITEMS_REPORT_15speed1() code
class ValueItemsReportClass From Report_Base
Data ReportName init "ValueItems"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ValueItemsReportClass
if !iswindowdefined( ValueItemsReportWindow )
DEFINE WINDOW ValueItemsReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "⁄‰«’— «· ﬁÌÌ„ «·„›’· ··œÊ—… „‰ ﬁ»· «·„ œ—»Ì‰" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 450 ,33 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,145 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,257 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ValueItemsReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

ValueItemsReportWindow.Maximize ( )
ACTIVATE WINDOW ValueItemsReportWindow
EndIF

Return 0
Method CloseWindow Class ValueItemsReportClass
ValueItemsReportWindow.Release ( )
Return 0
Method SizeReport Class ValueItemsReportClass
Local tempvar1,tempvar2
tempvar1 := ValueItemsReportWindow.Width
tempvar2 := ValueItemsReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ValueItemsReportWindow.btn1.Row := tempvar2-88
ValueItemsReportWindow.btn2.Row := tempvar2-88
ValueItemsReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
