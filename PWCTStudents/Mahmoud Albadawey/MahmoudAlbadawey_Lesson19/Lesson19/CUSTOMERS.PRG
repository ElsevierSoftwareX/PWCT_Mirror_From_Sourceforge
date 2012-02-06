*---------------------------------------------------------------------------*
* Time : 16:27:51    Date : 02/04/2012
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
Function CUSTOMERS
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

Resistance R_CUSTOMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_18smart1() code
class customersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "customers"
Data ccustname init ""
Data ccustaddress init ""
Data ccustphone init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
EndClass
Method showwindow Class customersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( customersdatawindow )
DEFINE WINDOW customersdatawindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "Customers Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "img\16.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 8 ,6 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 316 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 108 ,105 LABEL lbl1 ;
VALUE "Name : " ;
WIDTH 75 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 156 ,105 LABEL lbl2 ;
VALUE "Address : " ;
WIDTH 90 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 203 ,105 LABEL lbl3 ;
VALUE "Phone : " ;
WIDTH 73 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 95 ,212 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 146 ,212 TEXTBOX txtaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 198 ,212 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

customersdatawindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW customersdatawindow
EndIF

Return 0
Method UserInterface2Class Class customersDataClass
self:ccustname := customersdatawindow.txtname.Value
self:ccustaddress := customersdatawindow.txtaddress.Value
self:ccustphone := customersdatawindow.txtphone.Value
Return 0
Method Class2ADO Class customersDataClass
self:oRS:fields:item("custname"):value := self:ccustname
self:oRS:fields:item("custaddress"):value := self:ccustaddress
self:oRS:fields:item("custphone"):value := self:ccustphone
Return 0
Method ADO2Class Class customersDataClass
self:ccustname := self:oRS:fields:item("custname"):value
self:ccustaddress := self:oRS:fields:item("custaddress"):value
self:ccustphone := self:oRS:fields:item("custphone"):value
Return 0
Method Class2UserInterface Class customersDataClass
customersdatawindow.txtname.Value := self:ccustname
customersdatawindow.txtaddress.Value := self:ccustaddress
customersdatawindow.txtphone.Value := self:ccustphone
Return 0
Method ClearRecord Class customersDataClass
self:ccustname := ""
self:ccustaddress := ""
self:ccustphone := ""
Return 0
Method setmode(p1) Class customersDataClass
IF p1 = 1
customersdatawindow.btnfirst.Enabled := false
customersdatawindow.btnnext.Enabled := false
customersdatawindow.btnprev.Enabled := false
customersdatawindow.btnlast.Enabled := false
customersdatawindow.btndel.Enabled := false
customersdatawindow.btnclose.Enabled := false
customersdatawindow.btnsave.Enabled := true
customersdatawindow.btncancel.Enabled := true
customersdatawindow.btnedit.Enabled := false
customersdatawindow.btnadd.Enabled := false
ENDIF
IF p1 = 2
customersdatawindow.btnfirst.Enabled := true
customersdatawindow.btnnext.Enabled := true
customersdatawindow.btnprev.Enabled := true
customersdatawindow.btnlast.Enabled := true
customersdatawindow.btndel.Enabled := true
customersdatawindow.btnclose.Enabled := true
customersdatawindow.btnsave.Enabled := false
customersdatawindow.btncancel.Enabled := false
customersdatawindow.btnedit.Enabled := true
customersdatawindow.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class customersDataClass
myout = self:disconnect()
customersdatawindow.Release ( )
Return 0
Method AutoGotoRecord Class customersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( customersdatawindow )
myout = self:showrecord()
customersdatawindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
