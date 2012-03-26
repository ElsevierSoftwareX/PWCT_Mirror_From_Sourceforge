*---------------------------------------------------------------------------*
* Time : 12:15:32    Date : 03/25/2012
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
Method showwindow Class customersDataClass
IF UsersObject:CheckPermission(1) = false
MyOut := MSGBOX("Access is Denied ","sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( customersDataWindow )
DEFINE WINDOW customersDataWindow ;
AT 10 ,10 ;
WIDTH 780 ;
HEIGHT 438 ;
ICON "PWCTICON" ;
TITLE "customers Data " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 7 ,2 LABEL lblTitle ;
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
@ 75 ,16 LABEL lbl1 ;
VALUE "name " ;
WIDTH 80 ;
HEIGHT 49 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 146 ,17 LABEL lbl2 ;
VALUE "address " ;
WIDTH 79 ;
HEIGHT 49 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 213 ,18 LABEL lbl3 ;
VALUE "phone " ;
WIDTH 79 ;
HEIGHT 49 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 77 ,142 TEXTBOX text1;
HEIGHT 51 ;
WIDTH 204 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}

@ 143 ,141 TEXTBOX text2;
HEIGHT 51 ;
WIDTH 204 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}

@ 212 ,141 TEXTBOX text3;
HEIGHT 51 ;
WIDTH 204 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:Countryitems,"id",@self:CountryitemsIDS)
@ 79 ,373 LABEL lbl4 ;
VALUE "country " ;
WIDTH 128 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 78 ,512 COMBOBOX combo1;
WIDTH 198 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 134 ,372 LABEL lbl5 ;
VALUE "Date Of Birth" ;
WIDTH 133 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,192} ;
BORDER ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 130 ,511 DATEPICKER dateofBirth;
WIDTH 198 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

customersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW customersDataWindow
EndIF

Return 0
Method UserInterface2Class Class customersDataClass
self:ccustname := customersDataWindow.text1.Value
self:ccustaddress := customersDataWindow.text2.Value
self:ccustphone := customersDataWindow.text3.Value
self:nCountry := customersDataWindow.combo1.Value
self:nCountry := self:CountryItemsIDS[self:nCountry]
self:cDateOfBirth := customersDataWindow.dateofBirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
Return 0
Method Class2ADO Class customersDataClass
self:oRS:fields:item(alltrim("custname")):value := self:ccustname
self:oRS:fields:item(alltrim("custaddress")):value := self:ccustaddress
self:oRS:fields:item(alltrim("custphone")):value := self:ccustphone
self:oRS:fields:item(alltrim("Countryid")):value := self:nCountry
self:oRS:fields:item(alltrim("DateOfBirth")):value := self:cDateOfBirth
Return 0
Method ADO2Class Class customersDataClass
self:ccustname := self:oRS:fields:item(alltrim("custname")):value
self:ccustaddress := self:oRS:fields:item(alltrim("custaddress")):value
self:ccustphone := self:oRS:fields:item(alltrim("custphone")):value
self:nCountry := self:oRS:fields:item(alltrim("countryID")):value
self:cDateOfBirth := self:oRS:fields:item(alltrim("DateOfBirth")):value
Return 0
Method Class2UserInterface Class customersDataClass
customersDataWindow.text1.Value := self:ccustname
customersDataWindow.text2.Value := self:ccustaddress
customersDataWindow.text3.Value := self:ccustphone
self:nCountry = self:LookupIDToindex(self:nCountry,@self:CountryitemsIDS)
customersDataWindow.combo1.Value := self:nCountry
customersDataWindow.dateofBirth.Value := ctod(self:cDateOfBirth)
Return 0
Method ClearRecord Class customersDataClass
self:ccustname := ""
self:ccustaddress := ""
self:ccustphone := ""
self:nCountry := ""
self:cDateOfBirth := ""
Return 0
Method setmode(p1) Class customersDataClass
IF p1 = 1
customersDataWindow.btnfirst.Enabled := false
customersDataWindow.btnnext.Enabled := false
customersDataWindow.btnprev.Enabled := false
customersDataWindow.btnlast.Enabled := false
customersDataWindow.btndel.Enabled := false
customersDataWindow.btnclose.Enabled := false
customersDataWindow.btnsave.Enabled := true
customersDataWindow.btncancel.Enabled := true
customersDataWindow.btnedit.Enabled := false
customersDataWindow.btnadd.Enabled := false
customersDataWindow.text1.Enabled := true
customersDataWindow.text2.Enabled := true
customersDataWindow.text3.Enabled := true
customersDataWindow.combo1.Enabled := true
customersDataWindow.dateofBirth.Enabled := true
ENDIF
IF p1 = 2
customersDataWindow.btnfirst.Enabled := true
customersDataWindow.btnnext.Enabled := true
customersDataWindow.btnprev.Enabled := true
customersDataWindow.btnlast.Enabled := true
customersDataWindow.btndel.Enabled := true
customersDataWindow.btnclose.Enabled := true
customersDataWindow.btnsave.Enabled := false
customersDataWindow.btncancel.Enabled := false
customersDataWindow.btnedit.Enabled := true
customersDataWindow.btnadd.Enabled := true
customersDataWindow.text1.Enabled := false
customersDataWindow.text2.Enabled := false
customersDataWindow.text3.Enabled := false
customersDataWindow.combo1.Enabled := false
customersDataWindow.dateofBirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class customersDataClass
myout = self:disconnect()
customersDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class customersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( customersDataWindow )
myout = self:showrecord()
customersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
