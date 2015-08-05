*---------------------------------------------------------------------------*
* Time : 04:54:08    Date : 07/21/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadcustomerreportswithfilter
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_customerreportswithfilter_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customerreportswithfilter_19art1() code
class CustomerReportsWithFilterClass From Report_Base
Data ReportName init "Customers"
Data datecolumn init "dateofbirth"
Data cWindowName init "CustomerReportsWithFilterWindow"
Method showwindow
Method closewindow
Method SizeReport
Method checkchange
EndClass
Method ShowWindow Class CustomerReportsWithFilterClass
IF usersobj:checkpermission(1)=False
MyOut := MSGBOX("Access is denied "," ")
Return 0
ENDIF
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1031 ;
HEIGHT 467 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {255,255,255} 

@ 387 ,909 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,800 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,689 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 979 , 357)
self:oActiveX:Load()
@ 391 ,144 LABEL lbl1 ;
VALUE "From" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 392 ,298 LABEL lbl2 ;
VALUE "To" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 387 ,33 CHECKBOX check1;
CAPTION "Date Range :";
ON CHANGE self:checkchange()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 391 ,189 DATEPICKER datepicker1;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 390 ,324 DATEPICKER datepicker2;
ON CHANGE self:checkchange()  ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Maximize ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method CloseWindow Class CustomerReportsWithFilterClass
&(self:cWindowName).Release ( )
Return 0
Method SizeReport Class CustomerReportsWithFilterClass
Local tempvar1,tempvar2
tempvar1 := &(self:cWindowName).Width
tempvar2 := &(self:cWindowName).Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
&(self:cWindowName).btn1.Row := tempvar2-88
&(self:cWindowName).btn2.Row := tempvar2-88
&(self:cWindowName).btn3.Row := tempvar2-88
self:oactivex:Show ( )
&(self:cWindowName).lbl1.Row := tempvar2 - 88
&(self:cWindowName).lbl2.Row := tempvar2 - 88
&(self:cWindowName).check1.Row := tempvar2 - 88
&(self:cWindowName).DatePicker1.Row := tempvar2 - 88
&(self:cWindowName).DatePicker2.Row := tempvar2 - 88
Return 0
Method CheckChange Class CustomerReportsWithFilterClass
tvalue := &(self:cWindowName).Check1.Value
self:filter := ""
IF tvalue = true
cdate1 := &(self:cWindowName).Datepicker1.Value
cdate2 := &(self:cWindowName).Datepicker2.Value
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
