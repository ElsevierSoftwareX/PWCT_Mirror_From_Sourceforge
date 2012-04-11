*---------------------------------------------------------------------------*
* Time : 19:27:24    Date : 04/07/2012
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
class customersClassWindow From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "Customers"
Data cCustPhone init ""
Data cCustName init ""
Data cCustAddress init ""
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Data DateOfBirth init ""
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
Method showwindow Class customersClassWindow
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CoustmersdataWindow )
DEFINE WINDOW CoustmersdataWindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "Data Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "image\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 8 ,6 LABEL lblTitle ;
VALUE " Customers Data Window" ;
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
@ 79 ,56 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 123 ,56 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 167 ,56 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 211 ,56 LABEL lbl4 ;
VALUE "Country" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 250 ,56 LABEL lbl5 ;
VALUE "Date Of Birth" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 79 ,189 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 123 ,189 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 510 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 167 ,189 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookUpTable("country","country",@self:countryitems,"id",@self:countryitemsids)
@ 211 ,189 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 300;
ITEMS self:countryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 250 ,189 DATEPICKER datepickerOfBirth;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CoustmersdataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CoustmersdataWindow
EndIF

Return 0
Method UserInterface2Class Class customersClassWindow
self:cCustName := CoustmersdataWindow.textName.Value
self:cCustAddress := CoustmersdataWindow.textAddress.Value
self:cCustPhone := CoustmersdataWindow.textPhone.Value
self:ncountry := CoustmersdataWindow.combocountry.Value
self:ncountry := self:countryItemsIds[self:ncountry]
self:DateOfBirth := CoustmersdataWindow.datepickerOfBirth.Value
self:DateOfBirth = DTOC ( self:DateOfBirth )
Return 0
Method Class2ADO Class customersClassWindow
self:oRS:fields:item(alltrim("CustName")):value := self:cCustName
self:oRS:fields:item(alltrim("CustAddress")):value := self:cCustAddress
self:oRS:fields:item(alltrim("CustPhone")):value := self:cCustPhone
self:oRS:fields:item(alltrim("countryid")):value := self:ncountry
self:oRS:fields:item(alltrim("DateOfBirth")):value := self:DateOfBirth
Return 0
Method ADO2Class Class customersClassWindow
self:cCustName := self:oRS:fields:item(alltrim("CustName ")):value
self:cCustAddress := self:oRS:fields:item(alltrim("CustAddress ")):value
self:cCustPhone := self:oRS:fields:item(alltrim("CustPhone ")):value
self:ncountry := self:oRS:fields:item(alltrim("Countryid ")):value
self:DateOfBirth := self:oRS:fields:item(alltrim("Dateofbirth")):value
Return 0
Method Class2UserInterface Class customersClassWindow
CoustmersdataWindow.textName.Value := self:cCustName
CoustmersdataWindow.textAddress.Value := self:cCustAddress
CoustmersdataWindow.textPhone.Value := self:cCustPhone
self:ncountry = self:LookUpidtoindex(self:nCountry,self:countryitemsids)
CoustmersdataWindow.combocountry.Value := self:ncountry
CoustmersdataWindow.datepickerOfBirth.Value := ctod(self:dateOfBirth)
Return 0
Method ClearRecord Class customersClassWindow
self:cCustName := ""
self:cCustPhone := ""
self:cCustAddress := ""
self:ncountry := 0
self:DateOfBirth := ""
Return 0
Method setmode(p1) Class customersClassWindow
IF p1 = 1
CoustmersdataWindow.btnfirst.Enabled := false
CoustmersdataWindow.btnnext.Enabled := false
CoustmersdataWindow.btnprev.Enabled := false
CoustmersdataWindow.btnlast.Enabled := false
CoustmersdataWindow.btndel.Enabled := false
CoustmersdataWindow.btnclose.Enabled := false
CoustmersdataWindow.btnsave.Enabled := true
CoustmersdataWindow.btncancel.Enabled := true
CoustmersdataWindow.btnedit.Enabled := false
CoustmersdataWindow.btnadd.Enabled := false
CoustmersdataWindow.textName.Enabled := true
CoustmersdataWindow.textAddress.Enabled := true
CoustmersdataWindow.textPhone.Enabled := true
CoustmersdataWindow.combocountry.Enabled := true
CoustmersdataWindow.datepickerOfBirth.Enabled := true
ENDIF
IF p1 = 2
CoustmersdataWindow.btnfirst.Enabled := true
CoustmersdataWindow.btnnext.Enabled := true
CoustmersdataWindow.btnprev.Enabled := true
CoustmersdataWindow.btnlast.Enabled := true
CoustmersdataWindow.btndel.Enabled := true
CoustmersdataWindow.btnclose.Enabled := true
CoustmersdataWindow.btnsave.Enabled := false
CoustmersdataWindow.btncancel.Enabled := false
CoustmersdataWindow.btnedit.Enabled := true
CoustmersdataWindow.btnadd.Enabled := true
CoustmersdataWindow.textName.Enabled := false
CoustmersdataWindow.textAddress.Enabled := false
CoustmersdataWindow.textPhone.Enabled := false
CoustmersdataWindow.combocountry.Enabled := false
CoustmersdataWindow.datepickerOfBirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class customersClassWindow
myout = self:disconnect()
CoustmersdataWindow.Release ( )
Return 0
Method AutoGotoRecord Class customersClassWindow
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CoustmersdataWindow )
myout = self:showrecord()
CoustmersdataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
