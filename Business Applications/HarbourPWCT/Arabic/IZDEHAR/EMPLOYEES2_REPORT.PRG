*---------------------------------------------------------------------------*
* Time : 10:22:17    Date : 11/26/2010
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
Function EMPLOYEES2_REPORT
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

Resistance R_EMPLOYEES2_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOYEES2_REPORT_15speed1() code
class Employees2ReportClass From Report_Base
Data ReportName init "Employees2"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class Employees2ReportClass
IF .not. UsersObject:CheckPermission(41)
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
if !iswindowdefined( Employees2ReportWindow )
DEFINE WINDOW Employees2ReportWindow ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE " ﬁ—Ì— Ì‘ „· »Ì«‰«  «·„ÊŸ›Ì‰" ;
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
self:oActiveX := TActiveX():New( "Employees2ReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
END WINDOW

Employees2ReportWindow.Maximize ( )
ACTIVATE WINDOW Employees2ReportWindow
EndIF

Return 0
Method CloseWindow Class Employees2ReportClass
Employees2ReportWindow.Release ( )
Return 0
Method SizeReport Class Employees2ReportClass
Local tempvar1,tempvar2
tempvar1 := Employees2ReportWindow.Width
tempvar2 := Employees2ReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
Employees2ReportWindow.btn1.Row := tempvar2-88
Employees2ReportWindow.btn2.Row := tempvar2-88
Employees2ReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
