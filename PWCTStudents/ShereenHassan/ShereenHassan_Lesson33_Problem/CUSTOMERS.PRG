*---------------------------------------------------------------------------*
* Time : 21:44:40    Date : 05/05/2012
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
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Data cDateOfBirth init ""
Data nBalance init 0
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method CheckData
EndClass
Method showwindow Class CustomersDataClass
IF UsersObject:CheckPermission(1)=false
MyOut := MSGBOX("Access Is Denied ","Sorry ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomersDataWindow )
DEFINE WINDOW CustomersDataWindow ;
AT 10 ,10 ;
WIDTH 787 ;
HEIGHT 460 ;
ICON "PWCTICON" ;
TITLE "Customer Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ -4 ,-14 IMAGE image1;
PICTURE "images\back.jpg";
STRETCH ;
WIDTH 838 HEIGHT 437
@ 9 ,221 LABEL lblTitle ;
VALUE "Customers Data" ;
WIDTH 341 ;
HEIGHT 60 ;
FONT "Arial" SIZE 30  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 366 ,327 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 366 ,239 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 366 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 366 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 58 ,22 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 82 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 117 ,19 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 83 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 167 ,19 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 60 ,147 TEXTBOX textName;
HEIGHT 33 ;
WIDTH 527 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 114 ,147 TEXTBOX textAddress;
HEIGHT 33 ;
WIDTH 527 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 166 ,147 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 220 ,19 LABEL lblCountry ;
VALUE "Country " ;
WIDTH 74 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
TOOLTIP ""  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 221 ,147 COMBOBOX comboCountry;
WIDTH 100 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 271 ,18 LABEL lbl5 ;
VALUE "Date Of Birth " ;
WIDTH 124 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 270 ,147 DATEPICKER dateofbirth;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 311 ,21 LABEL lblBalance ;
VALUE "Balance " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 309 ,146 TEXTBOX textBalance;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

CustomersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CustomersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cCustName := CustomersDataWindow.textName.Value
self:cCustAddress := CustomersDataWindow.textAddress.Value
self:cCustPhone := CustomersDataWindow.textPhone.Value
self:nCountry := CustomersDataWindow.comboCountry.Value
self:nCountry := self:CountryItemsIDs[self:nCountry]
self:cDateOfBirth := CustomersDataWindow.dateofbirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
self:nBalance := CustomersDataWindow.textBalance.Value
self:nBalance = VAL ( self:nBalance )
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item(alltrim("custname")):value := self:cCustName
self:oRS:fields:item(alltrim("custaddress")):value := self:cCustAddress
self:oRS:fields:item(alltrim("custphone")):value := self:cCustPhone
self:oRS:fields:item(alltrim("countryid")):value := self:nCountry
self:oRS:fields:item(alltrim("DateOfBirth")):value := self:cDateOfBirth
self:oRS:fields:item(alltrim("Balance")):value := self:nBalance
Return 0
Method ADO2Class Class CustomersDataClass
self:cCustName := self:oRS:fields:item(alltrim("custname")):value
self:cCustAddress := self:oRS:fields:item(alltrim("custaddress")):value
self:cCustPhone := self:oRS:fields:item(alltrim("custphone")):value
self:nCountry := self:oRS:fields:item(alltrim("countryid")):value
self:cDateOfBirth := self:oRS:fields:item(alltrim("DateOfBirth")):value
self:nBalance := self:oRS:fields:item(alltrim("Balance")):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.textName.Value := self:cCustName
CustomersDataWindow.textAddress.Value := self:cCustAddress
CustomersDataWindow.textPhone.Value := self:cCustPhone
self:nCountry = self:LookupIDToIndex(self:nCountry,@self:CountryItemsIDs)
CustomersDataWindow.comboCountry.Value := self:nCountry
CustomersDataWindow.dateofbirth.Value := ctod(self:cDateOfBirth)
cBalance = STR ( self:nBalance )
cBalance = ALLTRIM ( cBalance )
CustomersDataWindow.textBalance.Value := cBalance
Return 0
Method ClearRecord Class CustomersDataClass
self:cCustName := ""
self:cCustAddress := ""
self:cCustPhone := ""
self:nCountry := 0
self:cDateOfBirth := ""
self:nBalance := 0
Return 0
Method setmode(p1) Class CustomersDataClass
IF p1 = 1
CustomersDataWindow.btnfirst.Enabled := false
CustomersDataWindow.btnnext.Enabled := false
CustomersDataWindow.btnprev.Enabled := false
CustomersDataWindow.btnlast.Enabled := false
CustomersDataWindow.btndel.Enabled := false
CustomersDataWindow.btnclose.Enabled := false
CustomersDataWindow.btnsave.Enabled := true
CustomersDataWindow.btncancel.Enabled := true
CustomersDataWindow.btnedit.Enabled := false
CustomersDataWindow.btnadd.Enabled := false
CustomersDataWindow.textName.Enabled := True
CustomersDataWindow.textPhone.Enabled := True
CustomersDataWindow.textAddress.Enabled := True
CustomersDataWindow.comboCountry.Enabled := True
CustomersDataWindow.dateofbirth.Enabled := True
CustomersDataWindow.textBalance.Enabled := True
ENDIF
IF p1 = 2
CustomersDataWindow.btnfirst.Enabled := true
CustomersDataWindow.btnnext.Enabled := true
CustomersDataWindow.btnprev.Enabled := true
CustomersDataWindow.btnlast.Enabled := true
CustomersDataWindow.btndel.Enabled := true
CustomersDataWindow.btnclose.Enabled := true
CustomersDataWindow.btnsave.Enabled := false
CustomersDataWindow.btncancel.Enabled := false
CustomersDataWindow.btnedit.Enabled := true
CustomersDataWindow.btnadd.Enabled := true
CustomersDataWindow.textName.Enabled := False
CustomersDataWindow.textPhone.Enabled := False
CustomersDataWindow.textAddress.Enabled := False
CustomersDataWindow.comboCountry.Enabled := False
CustomersDataWindow.dateofbirth.Enabled := False
CustomersDataWindow.textBalance.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class CustomersDataClass
Local myret,cName,nCountry,cAddress
cName := CustomersDataWindow.textName.Value
cName = ALLTRIM ( cName )
IF cName==""
MyOut := MSGBOX("Please Enter Customer Name ","Sorry ")
myret := false
ENDIF
nCountry := CustomersDataWindow.comboCountry.Value
IF nCountry=0
MyOut := MSGBOX("Please Select The Country "," Sorry")
myret := false
ENDIF
cAddress := CustomersDataWindow.textAddress.Value
cAddress = ALLTRIM ( cAddress )
IF cAddress==""
MyOut := MSGBOX("Please Enter Customer Address ","Sorry ")
myret := false
ENDIF
Return myret
Method closewindow Class CustomersDataClass
myout = self:disconnect()
CustomersDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustomersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustomersDataWindow )
myout = self:showrecord()
CustomersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
