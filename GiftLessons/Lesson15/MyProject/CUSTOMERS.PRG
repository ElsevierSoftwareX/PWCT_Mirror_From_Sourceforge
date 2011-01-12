*---------------------------------------------------------------------------*
* Time : 18:11:47    Date : 12/03/2010
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

Resistance R_CUSTOMERS_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_15speed1() code
class CustomersDataClass From SystemDatabase
Data TableName init "Customers"
Data cCustName init ""
Data cCustAddress init ""
Data cCustPhone init ""
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Data cDateOfBirth init ""
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
IF UsersObject:CheckPermission(1) = false
MyOut := MSGBOX("Access is Denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomersDataWindow )
DEFINE WINDOW CustomersDataWindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 417 ;
ICON "PWCTICON" ;
TITLE "Customers Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "images\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 275
@ 336 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 336 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 336 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 336 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,6 LABEL lblTitle ;
VALUE "  Customers Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 62 ,82 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 117 ,82 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 172 ,82 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 61 ,222 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 480 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 114 ,222 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 480 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 167 ,222 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 227 ,82 LABEL lblCountry ;
VALUE "Country" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 226 ,222 COMBOBOX comboCountry;
WIDTH 200 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 275 ,82 LABEL lbl4 ;
VALUE "Date of Birth" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 278 ,222 DATEPICKER dateofBirth;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
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
self:nCountry := CustomersDataWindow.ComboCountry.Value
self:nCountry := self:CountryItemsIDs[Self:nCountry]
self:cDateOfBirth := CustomersDataWindow.dateOfBirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item("CustName"):value := Self:cCustName
self:oRS:fields:item("CustAddress"):value := Self:cCustAddress
self:oRS:fields:item("CustPhone"):value := Self:cCustPhone
self:oRS:fields:item("CountryID"):value := self:nCountry
self:oRS:fields:item("DateOfBirth"):value := self:cDateOfBirth
Return 0
Method ADO2Class Class CustomersDataClass
self:cCustName := self:oRS:fields:item("CustName"):value
self:cCustAddress := self:oRS:fields:item("CustAddress"):value
self:cCustPhone := self:oRS:fields:item("CustPhone"):value
Self:nCountry := self:oRS:fields:item("CountryID"):value
self:cDateOfBirth := self:oRS:fields:item("DateOfBirth"):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.textName.Value := self:cCustName
CustomersDataWindow.textAddress.Value := self:cCustAddress
CustomersDataWindow.textPhone.Value := self:cCustPhone
self:nCountry = self:LookupIDToIndex(self:nCountry,@self:CountryItemsIDS)
CustomersDataWindow.comboCountry.Value := self:nCountry
CustomersDataWindow.DateOfBirth.Value := ctod(self:cDateofBirth)
Return 0
Method ClearRecord Class CustomersDataClass
self:cCustName := ""
self:cCustAddress := ""
self:cCustPhone := ""
self:nCountry := 0
self:cDateOfBirth := ""
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
CustomersDataWindow.textName.Enabled := true
CustomersDataWindow.textAddress.Enabled := true
CustomersDataWindow.textPhone.Enabled := true
CustomersDataWindow.ComboCountry.Enabled := true
CustomersDataWindow.DateOfBirth.Enabled := true
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
CustomersDataWindow.textName.Enabled := false
CustomersDataWindow.textAddress.Enabled := false
CustomersDataWindow.textPhone.Enabled := false
CustomersDataWindow.ComboCountry.Enabled := false
CustomersDataWindow.DateOfBirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class CustomersDataClass
Local myret,cName,nCountry
cName := CustomersDataWindow.textName.Value
cName = ALLTRIM ( cName )
IF cName == ""
MyOut := MSGBOX("Please Enter Customer Name","Sorry")
myret := false
ENDIF
nCountry := CustomersDataWindow.ComboCountry.Value
IF nCountry = 0
MyOut := MSGBOX("Please Select the Country","Sorry")
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
