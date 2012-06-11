*---------------------------------------------------------------------------*
* Time : 02:03:54    Date : 06/09/2012
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
class CustomersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "Customers"
Data cCustName init ""
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
Method showwindow Class CustomersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomersWindow )
DEFINE WINDOW CustomersWindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "Customers Data" ;
CHILD ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "image\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 5 ,-4 LABEL lblTitle ;
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
@ 64 ,19 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 110 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 108 ,15 LABEL lbl2 ;
VALUE "Address :" ;
WIDTH 110 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 150 ,19 LABEL lbl3 ;
VALUE "Phone :" ;
WIDTH 110 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 60 ,115 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 517 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 106 ,115 TEXTBOX textAddress;
HEIGHT 31 ;
WIDTH 517 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 150 ,115 TEXTBOX textPhone;
HEIGHT 33 ;
WIDTH 258 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

CustomersWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CustomersWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cCustName := CustomersWindow.textName.Value
self:cCustAddress := CustomersWindow.textAddress.Value
self:cCustPhone := CustomersWindow.textPhone.Value
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item(alltrim("CustName")):value := self:cCustName
self:oRS:fields:item(alltrim("CustAddress")):value := self:cCustAddress
self:oRS:fields:item(alltrim("CustPhone")):value := self:cCustPhone
Return 0
Method ADO2Class Class CustomersDataClass
self:cCustName := self:oRS:fields:item(alltrim("CustName")):value
self:cCustAddress := self:oRS:fields:item(alltrim("CustAddress")):value
self:cCustPhone := self:oRS:fields:item(alltrim("CustAddress")):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersWindow.textName.Value := self:cCustName
CustomersWindow.textAddress.Value := self:cCustAddress
CustomersWindow.textPhone.Value := self:cCustPhone
Return 0
Method ClearRecord Class CustomersDataClass
self:cCustName := ""
self:cCustAddress := ""
self:cCustPhone := ""
Return 0
Method setmode(p1) Class CustomersDataClass
IF p1 = 1
CustomersWindow.btnfirst.Enabled := false
CustomersWindow.btnnext.Enabled := false
CustomersWindow.btnprev.Enabled := false
CustomersWindow.btnlast.Enabled := false
CustomersWindow.btndel.Enabled := false
CustomersWindow.btnclose.Enabled := false
CustomersWindow.btnsave.Enabled := true
CustomersWindow.btncancel.Enabled := true
CustomersWindow.btnedit.Enabled := false
CustomersWindow.btnadd.Enabled := false
CustomersWindow.textName.Enabled := true
CustomersWindow.textAddress.Enabled := true
CustomersWindow.textPhone.Enabled := true
ENDIF
IF p1 = 2
CustomersWindow.btnfirst.Enabled := true
CustomersWindow.btnnext.Enabled := true
CustomersWindow.btnprev.Enabled := true
CustomersWindow.btnlast.Enabled := true
CustomersWindow.btndel.Enabled := true
CustomersWindow.btnclose.Enabled := true
CustomersWindow.btnsave.Enabled := false
CustomersWindow.btncancel.Enabled := false
CustomersWindow.btnedit.Enabled := true
CustomersWindow.btnadd.Enabled := true
CustomersWindow.textName.Enabled := false
CustomersWindow.textAddress.Enabled := false
CustomersWindow.textPhone.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustomersDataClass
myout = self:disconnect()
CustomersWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustomersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustomersWindow )
myout = self:showrecord()
CustomersWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
