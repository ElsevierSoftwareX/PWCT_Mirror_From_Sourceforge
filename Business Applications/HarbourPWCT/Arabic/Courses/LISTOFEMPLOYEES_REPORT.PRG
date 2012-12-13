*---------------------------------------------------------------------------*
* Time : 16:13:50    Date : 12/11/2012
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
#include "xhb.ch"
Function LISTOFEMPLOYEES_REPORT
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

Resistance R_LISTOFEMPLOYEES_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LISTOFEMPLOYEES_REPORT_18smart1() code
class ListOfEmployeesReportClass From Report_Base
Data ReportName init "ListOfEmployees"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ListOfEmployeesReportClass
if !iswindowdefined( ListOfEmployeesReportWindow )
DEFINE WINDOW ListOfEmployeesReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "«·„œ—»Ì‰" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 452 ,30 BUTTONEX btn1;
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
@ 453 ,252 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ListOfEmployeesReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

ListOfEmployeesReportWindow.Maximize ( )
ACTIVATE WINDOW ListOfEmployeesReportWindow
EndIF

Return 0
Method CloseWindow Class ListOfEmployeesReportClass
ListOfEmployeesReportWindow.Release ( )
Return 0
Method SizeReport Class ListOfEmployeesReportClass
Local tempvar1,tempvar2
tempvar1 := ListOfEmployeesReportWindow.Width
tempvar2 := ListOfEmployeesReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ListOfEmployeesReportWindow.btn1.Row := tempvar2-88
ListOfEmployeesReportWindow.btn2.Row := tempvar2-88
ListOfEmployeesReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
