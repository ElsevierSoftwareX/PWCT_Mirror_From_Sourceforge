*---------------------------------------------------------------------------*
* Time : 13:15:41    Date : 06/07/2013
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
Function ITEMS_REPORT
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

Resistance R_ITEMS_REPORT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMS_REPORT_18smart1() code
class ITEMSReportClass From Report_Base
Data ReportName init "ITEMS"
Method showwindow
Method closewindow
Method SizeReport
Method CheckChange
EndClass
Method ShowWindow Class ITEMSReportClass
IF .not. UserCan_WinWarehouse = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
if !iswindowdefined( ITEMSReportWindow )
DEFINE WINDOW ITEMSReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Items Report" ;
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
self:oActiveX := TActiveX():New( "ITEMSReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
@ 454 ,377 CHECKBOX check1;
CAPTION "Item Value Less Than : ";
ON CHANGE self:checkchange()  ;
WIDTH 160;
Height 30;
FONT "Arial" SIZE 10 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 454 ,545 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
ITEMSReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMSReportWindow
EndIF
Return 0
Method CloseWindow Class ITEMSReportClass
ITEMSReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMSReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMSReportWindow.Width
tempvar2 := ITEMSReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMSReportWindow.btn1.Row := tempvar2-88
ITEMSReportWindow.btn2.Row := tempvar2-88
ITEMSReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
ITEMSReportWindow.Check1.Row := tempvar2 - 88
ITEMSReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class ITEMSReportClass
Local tvalue
tvalue := ITEMSReportWindow.Check1.Value
IF tvalue = true
tvalue2 := ITEMSReportWindow.text1.Value
tvalue2 = ALLTRIM ( tvalue2 )
self:filter := "val(itemvalue) < " + tvalue2
ELSE
self:filter := "1 = 1"
ENDIF
Return 0

End Of Resistance

*-------------------------------------------------------------------*
