*---------------------------------------------------------------------------*
* Time : 18:55:43    Date : 07/25/2011
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
EndClass
Method showwindow Class CustomersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CusomersDataWindow )
DEFINE WINDOW CusomersDataWindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 324 ;
ICON "PWCTICON" ;
TITLE "Cusromers Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 750 HEIGHT 175
@ 236 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 236 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 236 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 236 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,6 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 56 ,125 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,125 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,125 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 54 ,275 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 89 ,275 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 124 ,275 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:countryItems,"ID",@self:countryItemsIDs)
@ 163 ,125 LABEL lblCountry ;
VALUE "Country" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 159 ,275 COMBOBOX comboCountry;
WIDTH 100 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 192 ,125 LABEL lbl4 ;
VALUE "Date Of Birth" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 189 ,275 DATEPICKER dateOfBirth;
WIDTH 100 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CusomersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CusomersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cCustName := CusomersDataWindow.textName.Value
self:cCustAddress := CusomersDataWindow.textAddress.Value
self:cCustPhone := CusomersDataWindow.textPhone.Value
self:nCountry := CusomersDataWindow.Combocountry.Value
self:nCountry := self:CountryItemsIDs[self:nCountry]
self:cDateOfBirth := CusomersDataWindow.DateOfBirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item("custName"):value := self:cCustName
self:oRS:fields:item("custAddress"):value := self:cCustAddress
self:oRS:fields:item("custPhone"):value := self:cCustPhone
self:oRS:fields:item("CountryID"):value := self:nCountry
self:oRS:fields:item("DateOfBirth"):value := self:cDateOfBirth
Return 0
Method ADO2Class Class CustomersDataClass
self:cCustName := self:oRS:fields:item("custName"):value
self:cCustAddress := self:oRS:fields:item("custAddress"):value
self:cCustPhone := self:oRS:fields:item("custPhone"):value
self:nCountry := self:oRS:fields:item("CountryID"):value
self:cDateOfBirth := self:oRS:fields:item("DateOfBirth"):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CusomersDataWindow.textName.Value := self:cCustName
CusomersDataWindow.textAddress.Value := self:cCustAddress
CusomersDataWindow.textPhone.Value := self:cCustPhone
self:nCountry = self:LookUpIDtoIndex(self:nCountry,@self:CountryItemsIDs)
CusomersDataWindow.comboCountry.Value := self:nCountry
CusomersDataWindow.DateOfBirth.Value := ctod(self:cDateOfBirth)
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
CusomersDataWindow.btnfirst.Enabled := false
CusomersDataWindow.btnnext.Enabled := false
CusomersDataWindow.btnprev.Enabled := false
CusomersDataWindow.btnlast.Enabled := false
CusomersDataWindow.btndel.Enabled := false
CusomersDataWindow.btnclose.Enabled := false
CusomersDataWindow.btnsave.Enabled := true
CusomersDataWindow.btncancel.Enabled := true
CusomersDataWindow.btnedit.Enabled := false
CusomersDataWindow.btnadd.Enabled := false
CusomersDataWindow.textName.Enabled := true
CusomersDataWindow.textAddress.Enabled := true
CusomersDataWindow.textPhone.Enabled := true
CusomersDataWindow.comboCountry.Enabled := true
CusomersDataWindow.dateOfBirth.Enabled := true
ENDIF
IF p1 = 2
CusomersDataWindow.btnfirst.Enabled := true
CusomersDataWindow.btnnext.Enabled := true
CusomersDataWindow.btnprev.Enabled := true
CusomersDataWindow.btnlast.Enabled := true
CusomersDataWindow.btndel.Enabled := true
CusomersDataWindow.btnclose.Enabled := true
CusomersDataWindow.btnsave.Enabled := false
CusomersDataWindow.btncancel.Enabled := false
CusomersDataWindow.btnedit.Enabled := true
CusomersDataWindow.btnadd.Enabled := true
CusomersDataWindow.textName.Enabled := false
CusomersDataWindow.textAddress.Enabled := false
CusomersDataWindow.textPhone.Enabled := false
CusomersDataWindow.comboCountry.Enabled := false
CusomersDataWindow.dateOfBirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustomersDataClass
myout = self:disconnect()
CusomersDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustomersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CusomersDataWindow )
myout = self:showrecord()
CusomersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
