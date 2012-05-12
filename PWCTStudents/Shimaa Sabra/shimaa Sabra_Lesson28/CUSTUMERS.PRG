*---------------------------------------------------------------------------*
* Time : 00:17:04    Date : 03/22/2012
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
Function CUSTUMERS
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

Resistance R_CUSTUMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTUMERS_18smart1() code
class CustomersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "custdata"
Data cName init ""
Data cMobile init ""
Data cEmail init ""
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
WIDTH 482 ;
HEIGHT 396 ;
ICON "PWCTICON" ;
TITLE "Custumers Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ -12 ,-21 IMAGE image1;
PICTURE "GRAY-1.JPG";
STRETCH ;
WIDTH 791 HEIGHT 371
@ 9 ,15 LABEL lbl5 ;
VALUE " Data Custumers " ;
WIDTH 167 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 278 ,202 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,203 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,273 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,364 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,273 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,364 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,27 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,104 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,104 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,27 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 57 ,69 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 74 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 102 ,69 LABEL lbl2 ;
VALUE "Mobile No" ;
WIDTH 91 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 141 ,71 LABEL lbl3 ;
VALUE "Email" ;
WIDTH 81 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 53 ,180 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 201 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 95 ,180 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 201 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 135 ,180 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 201 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 178 ,70 LABEL lbl6 ;
VALUE "Country " ;
WIDTH 59 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 174 ,180 COMBOBOX comboCountry;
WIDTH 201 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 215 ,69 LABEL lbl7 ;
VALUE "Date Of Birth" ;
WIDTH 101 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 212 ,180 DATEPICKER DateOfBirth;
WIDTH 201 ;
FONT "arial" SIZE 12 ;
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
self:cName := CustomersDataWindow.TextName.Value
self:cMobile := CustomersDataWindow.TextMobile.Value
self:cEmail := CustomersDataWindow.TextEmail.Value
self:nCountry := CustomersDataWindow.ComboCountry.Value
self:nCountry := self:CountryItemsIDs[self:nCountry]
self:cDateOfBirth := CustomersDataWindow.dateOfBirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item("Name"):value := self:cName
self:oRS:fields:item("MobileNo"):value := self:cMobile
self:oRS:fields:item("Email"):value := self:cEmail
self:oRS:fields:item("CountryID"):value := self:nCountry
self:oRS:fields:item("DateOfBirth"):value := self:cDateOfBirth
Return 0
Method ADO2Class Class CustomersDataClass
self:cName := self:oRS:fields:item("Name"):value
self:cMobile := self:oRS:fields:item("MobileNo"):value
self:cEmail := self:oRS:fields:item("Email"):value
self:nCountry := self:oRS:fields:item("CountryID"):value
self:cDateOfBirth := self:oRS:fields:item("DateOfBirth"):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.TextName.Value := self:cName
CustomersDataWindow.TextMobile.Value := self:cMobile
CustomersDataWindow.TextEmail.Value := self:cEmail
self:nCountry = self:LookupIDToIndex(self:nCountry,@self:CountryItemsIDs)
CustomersDataWindow.ComboCountry.Value := self:nCountry
CustomersDataWindow.DateOfBirth.Value := ctod(self:cDateOfBirth)
Return 0
Method ClearRecord Class CustomersDataClass
self:cName := ""
self:cMobile := ""
self:cEmail := ""
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
CustomersDataWindow.TextName.Enabled := true
CustomersDataWindow.TextMobile.Enabled := true
CustomersDataWindow.TextEmail.Enabled := true
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
CustomersDataWindow.TextName.Enabled := false
CustomersDataWindow.TextMobile.Enabled := false
CustomersDataWindow.TextEmail.Enabled := false
CustomersDataWindow.ComboCountry.Enabled := false
CustomersDataWindow.DateOfBirth.Enabled := false
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
