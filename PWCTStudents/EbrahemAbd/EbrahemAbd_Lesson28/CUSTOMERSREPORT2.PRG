*---------------------------------------------------------------------------*
* Time : 10:08:51    Date : 04/16/2012
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
Function CUSTOMERSREPORT2
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

Resistance R_CUSTOMERSREPORT2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSREPORT2_18smart1() code
class CustomersReport2Class From Report_Base
Data ReportName init "Customers_All"
Data datecolumn init "DateOfBirth"
Data cWindowName init "CustomersReport2Window"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class CustomersReport2Class
if !iswindowdefined( CustomersReport2Window )
DEFINE WINDOW CustomersReport2Window ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 467 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 386 ,30 BUTTONEX btn1;
CAPTION "ÎÑæÌ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 387 ,140 BUTTONEX btn2;
CAPTION "ØÈÇÚÉ";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,249 BUTTONEX btn3;
CAPTION "ÊÍÏíË";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 31 , 979 , 357)
self:oActiveX:Load()
@ 389 ,865 LABEL lbl1 ;
VALUE "ãä" ;
WIDTH 40 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 389 ,718 LABEL lbl2 ;
VALUE "Çáì" ;
WIDTH 30 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 386 ,901 CHECKBOX check1;
CAPTION ":ãÚíÇÑ ÇáÊÇÑíÎ ";
ON CHANGE self:checkchange()  ;
WIDTH 128;
Height 32;
FONT "Arial" SIZE 14 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 389 ,750 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 389 ,594 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersReport2Window.Maximize ( )
ACTIVATE WINDOW CustomersReport2Window
EndIF

Return 0
Method CloseWindow Class CustomersReport2Class
CustomersReport2Window.Release ( )
Return 0
Method SizeReport Class CustomersReport2Class
Local tempvar1,tempvar2
tempvar1 := CustomersReport2Window.Width
tempvar2 := CustomersReport2Window.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
CustomersReport2Window.btn1.Row := tempvar2-88
CustomersReport2Window.btn2.Row := tempvar2-88
CustomersReport2Window.btn3.Row := tempvar2-88
self:oactivex:Show ( )
CustomersReport2Window.lbl1.Row := tempvar2 - 88
CustomersReport2Window.lbl2.Row := tempvar2 - 88
CustomersReport2Window.check1.Row := tempvar2 - 88
CustomersReport2Window.DatePicker1.Row := tempvar2 - 88
CustomersReport2Window.DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class CustomersReport2Class
tvalue := CustomersReport2Window.Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := CustomersReport2Window.Datepicker1.Value
cdate2 := CustomersReport2Window.Datepicker2.Value
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
