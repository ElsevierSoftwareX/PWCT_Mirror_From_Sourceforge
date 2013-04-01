*---------------------------------------------------------------------------*
* Time : 11:39:09    Date : 02/07/2011
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
Function SHEHADA2_REPORT
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

Resistance R_SHEHADA2_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHEHADA2_REPORT_15speed1() code
class Shehada2ReportClass From Report_Base
Data ReportName init "Shehadaenglish"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class Shehada2ReportClass
if !iswindowdefined( Shehada2ReportWindow )
DEFINE WINDOW Shehada2ReportWindow ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 538 ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "«·‘Â«œ« " ;
CHILD ;
BACKCOLOR {64,0,64}

@ 449 ,666 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 449 ,774 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 449 ,880 BUTTONEX btn3;
CAPTION "⁄—÷";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "Shehada2ReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 417)
self:oActiveX:Load()
@ 449 ,29 TEXTBOX text1;
ON CHANGE self:checkchange()  ;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 449 ,108 CHECKBOX check2;
CAPTION "—ﬁ„ «·œÊ—…";
ON CHANGE self:checkchange()  ;
WIDTH 110;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

Shehada2ReportWindow.Maximize ( )
ACTIVATE WINDOW Shehada2ReportWindow
EndIF

Return 0
Method CloseWindow Class Shehada2ReportClass
Shehada2ReportWindow.Release ( )
Return 0
Method SizeReport Class Shehada2ReportClass
Local tempvar1,tempvar2
tempvar1 := Shehada2ReportWindow.Width
tempvar2 := Shehada2ReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
Shehada2ReportWindow.btn1.Row := tempvar2-88
Shehada2ReportWindow.btn2.Row := tempvar2-88
Shehada2ReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Shehada2ReportWindow.check2.Row := tempvar2 - 88
Shehada2ReportWindow.text1.Row := tempvar2 - 88
Return 0
Method CheckChange Class Shehada2ReportClass
self:filter := ""
tvalue2 := Shehada2ReportWindow.Check2.Value
IF tvalue2 = true
cOrderNumber := Shehada2ReportWindow.text1.Value
cOrderNumber = ALLTRIM ( cOrderNumber )
self:filter := self:filter + " orders.ordernumber = " + cordernumber
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
