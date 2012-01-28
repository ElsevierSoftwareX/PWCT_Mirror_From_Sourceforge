*---------------------------------------------------------------------------*
* Time : 12:33:59    Date : 01/26/2011
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
Function CUSTOMER
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

Resistance R_CUSTOMER_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMER_18smart1() code
class customerDataClass From SystemDatabase
Data cWindowName init "Customers"
Data TableName init "Customers"
Data cCustname init ""
Data cCustAddress init ""
Data cCustPhone init ""
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
Method showwindow Class customerDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( customerdatawindow )
DEFINE WINDOW customerdatawindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 420 ;
ICON "PWCTICON" ;
TITLE "Customer Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192}

@ 8 ,6 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {255,255,255}
DEFINE STATUSBAR

STATUSITEM "PWCT By Ahmed Attya"

DATE

CLOCK

END STATUSBAR

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
@ 70 ,185 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 70 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 130 ,185 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 94 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 194 ,185 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 76 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 66 ,267 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 277 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}

@ 128 ,267 TEXTBOX textAddress;
HEIGHT 37 ;
WIDTH 277 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}

@ 191 ,267 TEXTBOX textPhone;
HEIGHT 33 ;
WIDTH 282 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}

END WINDOW

customerdatawindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW customerdatawindow
EndIF

Return 0
Method UserInterface2Class Class customerDataClass
self:cCustName := customerdatawindow.textName.Value
self:cCustAddress := customerdatawindow.textAddress.Value
self:cCustPhone := customerdatawindow.textPhone.Value
Return 0
Method Class2ADO Class customerDataClass
self:oRS:fields:item("CustName"):value := Self:cCustName
self:oRS:fields:item("CustAddress"):value := Self:cCustAddress
self:oRS:fields:item("CustPhone"):value := Self:cCustPhone
Return 0
Method ADO2Class Class customerDataClass
Self:cCustName := self:oRS:fields:item("CustName"):value
Self:cCustAddress := self:oRS:fields:item("CustAddress"):value
Self:cCustPhone := self:oRS:fields:item("CustPhone"):value
Return 0
Method Class2UserInterface Class customerDataClass
customerdatawindow.textName.Value := self:cCustName
customerdatawindow.textAddress.Value := self:cCustAddress
customerdatawindow.textPhone.Value := self:cCustPhone
Return 0
Method ClearRecord Class customerDataClass
self:cCustName := ""
self:cCustAddress := ""
self:cCustPhone := ""
Return 0
Method setmode(p1) Class customerDataClass
IF p1 = 1
customerdatawindow.btnfirst.Enabled := false
customerdatawindow.btnnext.Enabled := false
customerdatawindow.btnprev.Enabled := false
customerdatawindow.btnlast.Enabled := false
customerdatawindow.btndel.Enabled := false
customerdatawindow.btnclose.Enabled := false
customerdatawindow.btnsave.Enabled := true
customerdatawindow.btncancel.Enabled := true
customerdatawindow.btnedit.Enabled := false
customerdatawindow.btnadd.Enabled := false
customerdatawindow.textName.Enabled := true
customerdatawindow.textAddress.Enabled := true
customerdatawindow.textPhone.Enabled := true
ENDIF
IF p1 = 2
customerdatawindow.btnfirst.Enabled := true
customerdatawindow.btnnext.Enabled := true
customerdatawindow.btnprev.Enabled := true
customerdatawindow.btnlast.Enabled := true
customerdatawindow.btndel.Enabled := true
customerdatawindow.btnclose.Enabled := true
customerdatawindow.btnsave.Enabled := false
customerdatawindow.btncancel.Enabled := false
customerdatawindow.btnedit.Enabled := true
customerdatawindow.btnadd.Enabled := true
customerdatawindow.textName.Enabled := false
customerdatawindow.textAddress.Enabled := false
customerdatawindow.textPhone.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class customerDataClass
myout = self:disconnect()
customerdatawindow.Release ( )
Return 0
Method AutoGotoRecord Class customerDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( customerdatawindow )
myout = self:showrecord()
customerdatawindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
