*---------------------------------------------------------------------------*
* Time : 18:02:23    Date : 04/15/2012
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
Function CUSTOMERSREPORT
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

Resistance R_CUSTOMERSREPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSREPORT_18smart1() code
class CustomersReportClass From Report_Base
Data ReportName init "Customers_All"
Data cWindowName init "CustomersReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class CustomersReportClass
if !iswindowdefined( CustomersReportWindow )
DEFINE WINDOW CustomersReportWindow ;
AT 10 ,10 ;
WIDTH 753 ;
HEIGHT 511 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE " ﬁ—Ì— «·⁄„·«¡" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 392 ,28 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:CloseWindow()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,139 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,254 BUTTONEX btn3;
CAPTION " ÕœÌÀ «· ﬁ—Ì—";
ON CLICK self:ShowReport()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 357)
self:oActiveX:Load()
END WINDOW

CustomersReportWindow.Maximize ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("CustomersReportWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("CustomersReportWindow"), -20),0x400000,0x100000))
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
