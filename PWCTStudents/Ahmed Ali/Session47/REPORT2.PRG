*---------------------------------------------------------------------------*
* Time : 20:04:04    Date : 11/30/2011
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
Function REPORT2
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

Resistance R_REPORT2_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORT2_15speed1() code
class Report2Class From Report_Base
Data ReportName init "Customers_All"
Data datecolumn init "DateOfBirth"
Data ordercolumn init "ordercolumn"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class Report2Class
if !iswindowdefined( Report2Window )
DEFINE WINDOW Report2Window ;
AT 10 ,10 ;
WIDTH 824 ;
HEIGHT 538 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {255,128,128}

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
self:oActiveX := TActiveX():New( "Report2Window", "snpvw.Snapshot Viewer Control.1" , 21 , 33 , 761 , 416)
self:oActiveX:Load()
@ 457 ,486 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 457 ,644 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,372 CHECKBOX check1;
CAPTION "Date Range :";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 456 ,535 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 454 ,689 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

Report2Window.Maximize ( )
ACTIVATE WINDOW Report2Window
EndIF

Return 0
Method CloseWindow Class Report2Class
Report2Window.Release ( )
Return 0
Method SizeReport Class Report2Class
Local tempvar1,tempvar2
tempvar1 := Report2Window.Width
tempvar2 := Report2Window.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
Report2Window.btn1.Row := tempvar2-88
Report2Window.btn2.Row := tempvar2-88
Report2Window.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Report2Window.lbl1.Row := tempvar2 - 88
Report2Window.lbl2.Row := tempvar2 - 88
Report2Window.check1.Row := tempvar2 - 88
Report2Window.DatePicker1.Row := tempvar2 - 88
Report2Window.DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class Report2Class
tvalue := Report2Window.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := Report2Window.Datepicker1.Value
cdate2 := Report2Window.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate("+self:datecolumn+") >= cdate('" + cdate1 + "') and cdate("+self:datecolumn+") <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
