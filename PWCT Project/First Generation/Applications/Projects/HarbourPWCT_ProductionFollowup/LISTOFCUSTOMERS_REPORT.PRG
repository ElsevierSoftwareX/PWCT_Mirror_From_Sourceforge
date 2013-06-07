*---------------------------------------------------------------------------*
* Time : 14:00:57    Date : 06/07/2013
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
Function LISTOFCUSTOMERS_REPORT
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

Resistance R_LISTOFCUSTOMERS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LISTOFCUSTOMERS_REPORT_18smart1() code
class ListOfCustomersReportClass From Report_Base
Data ReportName init "ListOfCustomers"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ListOfCustomersReportClass
IF .not. UserCan_WinCustomers = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
if !iswindowdefined( ListOfCustomersReportWindow )
DEFINE WINDOW ListOfCustomersReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "List of Customers Report" ;
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
self:oActiveX := TActiveX():New( "ListOfCustomersReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW
ListOfCustomersReportWindow.Maximize ( )
ACTIVATE WINDOW ListOfCustomersReportWindow
EndIF
Return 0
Method CloseWindow Class ListOfCustomersReportClass
ListOfCustomersReportWindow.Release ( )
Return 0
Method SizeReport Class ListOfCustomersReportClass
Local tempvar1,tempvar2
tempvar1 := ListOfCustomersReportWindow.Width
tempvar2 := ListOfCustomersReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ListOfCustomersReportWindow.btn1.Row := tempvar2-88
ListOfCustomersReportWindow.btn2.Row := tempvar2-88
ListOfCustomersReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0

End Of Resistance

*-------------------------------------------------------------------*
