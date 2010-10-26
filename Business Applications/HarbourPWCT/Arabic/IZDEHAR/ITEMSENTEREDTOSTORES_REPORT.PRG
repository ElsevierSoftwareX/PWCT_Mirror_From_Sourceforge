*---------------------------------------------------------------------------*
* Time : 15:21:52    Date : 10/25/2010
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
Function ITEMSENTEREDTOSTORES_REPORT
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

Resistance R_ITEMSENTEREDTOSTORES_REPORT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSENTEREDTOSTORES_REPORT_15speed1() code
class ITEMSENTEREDTOSTORESReportClass From Report_Base
Data ReportName init "ItemsEntered"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class ITEMSENTEREDTOSTORESReportClass
IF .not. UserCan_WinWarehouse = 2
MyOut := MSGBOX("ÇáÏÎæá áåĞå ÇáäÇİĞÉ ÛíÑ ãÕÑÍ Èå","ÚİæÇ")
Return 0
ENDIF
if !iswindowdefined( ITEMSENTEREDTOSTORESReportWindow )
DEFINE WINDOW ITEMSENTEREDTOSTORESReportWindow ;
AT 10 ,10 ;
WIDTH 966 ;
HEIGHT 541 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "ÇáÇÕäÇİ ÇáÊì ÏÎáÊ ÇáãÎÒä" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 458 ,499 BUTTONEX btn1;
CAPTION "ÇÛáÇŞ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 458 ,616 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 458 ,726 BUTTONEX btn3;
CAPTION "ÚÑÖ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( "ITEMSENTEREDTOSTORESReportWindow", "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 899 , 417)
self:oActiveX:Load()
@ 458 ,295 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 458 ,143 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 458 ,367 CHECKBOX check1;
CAPTION "ÇáÊÇÑíÎ";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 458 ,189 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 458 ,32 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ITEMSENTEREDTOSTORESReportWindow.Maximize ( )
ACTIVATE WINDOW ITEMSENTEREDTOSTORESReportWindow
EndIF

Return 0
Method CloseWindow Class ITEMSENTEREDTOSTORESReportClass
ITEMSENTEREDTOSTORESReportWindow.Release ( )
Return 0
Method SizeReport Class ITEMSENTEREDTOSTORESReportClass
Local tempvar1,tempvar2
tempvar1 := ITEMSENTEREDTOSTORESReportWindow.Width
tempvar2 := ITEMSENTEREDTOSTORESReportWindow.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ITEMSENTEREDTOSTORESReportWindow.btn1.Row := tempvar2-88
ITEMSENTEREDTOSTORESReportWindow.btn2.Row := tempvar2-88
ITEMSENTEREDTOSTORESReportWindow.btn3.Row := tempvar2-88
self:oactivex:Show ( )
ITEMSENTEREDTOSTORESReportWindow.lbl1.Row := tempvar2 - 88
ITEMSENTEREDTOSTORESReportWindow.lbl2.Row := tempvar2 - 88
ITEMSENTEREDTOSTORESReportWindow.check1.Row := tempvar2 - 88
ITEMSENTEREDTOSTORESReportWindow.DatePicker1.Row := tempvar2 - 88
ITEMSENTEREDTOSTORESReportWindow.DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class ITEMSENTEREDTOSTORESReportClass
tvalue := ITEMSENTEREDTOSTORESReportWindow.Check1.Value
IF tvalue = true
cdate1 := ITEMSENTEREDTOSTORESReportWindow.Datepicker1.Value
cdate2 := ITEMSENTEREDTOSTORESReportWindow.Datepicker2.Value
cdate1 = DTOC ( cdate1 )
cdate2 = DTOC ( cdate2 )
cdate1 = ALLTRIM ( cdate1 )
cdate2 = ALLTRIM ( cdate2 )
self:filter := "cdate(itemsenter.dateofinput) >= cdate('" + cdate1 + "') and cdate(itemsenter.dateofinput ) <= cdate('" + cdate2 + "')"
ELSE
self:filter := "1 = 1"
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
