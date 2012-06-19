*---------------------------------------------------------------------------*
* Time : 05:36:16    Date : 06/19/2012
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
Function RESUPPLIERS
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

Resistance R_RESUPPLIERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RESUPPLIERS_18smart1() code
class ReSuppliersClass From Report_Base
Data ReportName init "ReSuppliers"
Data cWindowName init "ReSuppliersReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class ReSuppliersClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 471 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 391 ,409 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 102 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,141 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 102 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,34 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 102 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 17 , 32 , 659 , 357)
self:oActiveX:Load()
@ 392 ,252 BUTTONEX btn4;
CAPTION "Export To HTML ";
ON CLICK Self:ExportReport()  ;
WIDTH 152 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Maximize ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method CloseWindow Class ReSuppliersClass
&(self:cWindowName).Release ( )
Return 0
Method SizeReport Class ReSuppliersClass
Local tempvar1,tempvar2
tempvar1 := &(self:cWindowName).Width
tempvar2 := &(self:cWindowName).Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
&(self:cWindowName).btn1.Row := tempvar2-88
&(self:cWindowName).btn2.Row := tempvar2-88
&(self:cWindowName).btn3.Row := tempvar2-88
&(self:cWindowName).btn4.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
