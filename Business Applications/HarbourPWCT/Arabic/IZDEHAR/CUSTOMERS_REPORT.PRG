*---------------------------------------------------------------------------*
* Time : 10:20:45    Date : 11/26/2010
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
Function CUSTOMERS_REPORT
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

Resistance R_CUSTOMERS_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_REPORT_15speed1() code
class CustomersReportClass From Report_Base
Data ReportName init "Customers"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class CustomersReportClass
IF .not. UsersObject:CheckPermission(43)
MyOut := MSGBOX("«·œŒÊ· „„‰Ê⁄ ","⁄›Ê«")
Return 0
ENDIF
if !iswindowdefined( CustomersReportWindow )
DEFINE WINDOW CustomersReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE " ﬁ—Ì— Ì‘ „· »Ì«‰«  «·„ œ—»Ì‰" ;
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
self:oActiveX := TActiveX():New( "CustomersReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

CustomersReportWindow.Maximize ( )
ACTIVATE WINDOW CustomersReportWindow
EndIF

Return 0
Method CloseWindow Class CustomersReportClass
CustomersReportWindow.Release ( )
Return 0
Method SizeReport Class CustomersReportClass
Local tempvar1,tempvar2
tempvar1 := CustomersReportWindow.Width
tempvar2 := CustomersReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustomersReportWindow.btn1.Row := tempvar2-88
CustomersReportWindow.btn2.Row := tempvar2-88
CustomersReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
