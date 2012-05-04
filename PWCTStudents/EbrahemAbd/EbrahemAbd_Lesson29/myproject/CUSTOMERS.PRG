*---------------------------------------------------------------------------*
* Time : 12:00:21    Date : 04/09/2012
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
if !iswindowdefined( CustomersDataWindow )
DEFINE WINDOW CustomersDataWindow ;
AT 10 ,10 ;
WIDTH 881 ;
HEIGHT 474 ;
ICON "PWCTICON" ;
TITLE "‘«‘… «·⁄„·«¡ " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "IMAGES\ABN.ANI" ;
BACKCOLOR {64,0,64}

@ 1 ,1 IMAGE image1;
PICTURE "IMAGES\PIC1.JPG";
STRETCH ;
WIDTH 871 HEIGHT 433
@ 110 ,245 TEXTBOX textName;
HEIGHT 43 ;
WIDTH 243 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 170 ,245 TEXTBOX textAddress;
HEIGHT 43 ;
WIDTH 247 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 229 ,245 TEXTBOX textPhone;
HEIGHT 43 ;
WIDTH 245 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 106 ,680 BUTTONEX btnFirst;
CAPTION "«·√Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\F.ICO";
ON CLICK self:firstrecord()  ;
WIDTH 151 HEIGHT 45 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 175 ,680 BUTTONEX btnNext;
CAPTION "«· «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\NEX.ICO";
ON CLICK self:nextrecord()  ;
WIDTH 151 HEIGHT 45 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,680 BUTTONEX btnLast;
CAPTION "«·√ŒÌ—";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\END.ICO";
ON CLICK self:lastrecord()  ;
WIDTH 151 HEIGHT 45 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 328 ,46 BUTTONEX btnClose;
CAPTION "«·Œ—ÊÃ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:closewindow()  ;
WIDTH 127 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 249 ,680 BUTTONEX btnPrev;
CAPTION "«·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\LAST.ICO";
ON CLICK self:prevrecord()  ;
WIDTH 151 HEIGHT 45 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 259 ,45 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
PICTURE "IMAGES\DELETE.BMP";
ON CLICK self:delrecord()  ;
WIDTH 127 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 385 ,478 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:saverecord()  ;
WIDTH 121 HEIGHT 42 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 385 ,268 BUTTONEX btncancel;
CAPTION "«·€«¡";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:cancelrecord()  ;
WIDTH 115 HEIGHT 42 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 186 ,46 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:editrecord()  ;
WIDTH 127 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 117 ,47 BUTTONEX btnadd;
CAPTION "«÷«›…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:addrecord()  ;
WIDTH 127 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 289 ,244 COMBOBOX comboCountry;
WIDTH 245 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 336 ,245 DATEPICKER dateofBirth;
WIDTH 246 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("CustomersDataWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("CustomersDataWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW CustomersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cCustName := CustomersDataWindow.textName.Value
self:cCustAddress := CustomersDataWindow.textAddress.Value
self:cCustPhone := CustomersDataWindow.textPhone.Value
self:ncountry := CustomersDataWindow.comboCountry.Value
self:nCountry := self:CountryItemsIDs[Self:nCountry]
self:cDateOfBirth := CustomersDataWindow.dateofBirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
Return 0
Method Class2ADO Class CustomersDataClass
Self:oRS:fields:item(alltrim("CustName ")):value := Self:cCustName
Self:oRS:fields:item(alltrim("CustAddress ")):value := Self:cCustAddress
Self:oRS:fields:item(alltrim("CustPhone ")):value := Self:cCustPhone
Self:oRS:fields:item(alltrim("CountryID")):value := Self:nCountry
Self:oRS:fields:item(alltrim("DateOfBirth")):value := Self:cDateOfBirth
Return 0
Method ADO2Class Class CustomersDataClass
Self:cCustName := Self:oRS:fields:item(alltrim("CustName ")):value
Self:cCustAddress := Self:oRS:fields:item(alltrim("CustAddress")):value
Self:cCustPhone := Self:oRS:fields:item(alltrim("CustPhone")):value
Self:nCountry := Self:oRS:fields:item(alltrim("CountryID")):value
Self:cDateOfBirth := Self:oRS:fields:item(alltrim("DateOfBirth")):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.textName.Value := Self:cCustName
CustomersDataWindow.textAddress.Value := Self:cCustAddress
CustomersDataWindow.textPhone.Value := Self:cCustPhone
Self:nCountry = Self:LookupIDToindex(Self:nCountry,@self:CountryitemsIDs)
CustomersDataWindow.comboCountry.Value := self:nCountry
CustomersDataWindow.dateofBirth.Value := ctod(Self:cDateOfBirth)
Return 0
Method ClearRecord Class CustomersDataClass
Self:cCustName := ""
Self:cCustAddress := ""
Self:cCustPhone := ""
Self:nCountry := 0
Self:cDateOfBirth := ""
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
CustomersDataWindow.textName.SetFocus ( )
CustomersDataWindow.comboCountry.Enabled := true
CustomersDataWindow.dateofBirth.Enabled := true
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
CustomersDataWindow.comboCountry.Enabled := false
CustomersDataWindow.dateofBirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
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
