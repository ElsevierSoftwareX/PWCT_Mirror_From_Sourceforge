*---------------------------------------------------------------------------*
* Time : 14:22:30    Date : 10/13/2010
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
Function SUPPLIERS_DATA
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

Resistance R_SUPPLIERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUPPLIERS_DATA_15speed1() code
class SuppliersDataClass From SystemDatabase
Data TableName init "Suppliers"
Data cname init ""
Data cgender init ""
Data cage init ""
Data caddress init ""
Data cCity init ""
Data cwebsite init ""
Data ccountry init ""
Data cphone init ""
Data cemail init ""
Data cphone2 init ""
Data cfax init ""
Data cmobile init ""
Data czip init ""
Data cmobile2 init ""
Data ccompany init ""
Data cNotes init ""
Data genderitemsids init {}
Data genderitems init {}
Data countryitemsids init {}
Data countryitems init {}
Data nItemGroup init 0
Data ItemGroupItems init {}
Data ItemGroupItemsIDs init {}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method printdata
EndClass
Method showwindow Class SuppliersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( SuppliersDataWindow )
DEFINE WINDOW SuppliersDataWindow ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 685 ;
ICON "PWCTICON" ;
TITLE "Suppliers - Data Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE "image\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 535
@ 596 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 596 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 596 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 596 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 596 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,6 LABEL lblTitle ;
VALUE "    Suppliers Data" ;
WIDTH 480 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 77 ,43 LABEL lblname ;
VALUE "Name" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 75 ,179 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Gender","Gender",@self:GenderItems,"id",@self:GenderItemsIDS)
@ 118 ,44 LABEL lblGender ;
VALUE "Gender" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 116 ,180 COMBOBOX combogender;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:genderitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 116 ,401 LABEL lblAge ;
VALUE "Age" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 115 ,488 TEXTBOX textAge;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 249 ,44 LABEL lblAddress ;
VALUE "Address" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 247 ,179 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 290 ,44 LABEL lblCity ;
VALUE "City" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 287 ,179 TEXTBOX textCity;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 287 ,401 LABEL lblWebsite ;
VALUE "Website" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 287 ,488 TEXTBOX textWebsite;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 329 ,44 LABEL lblCountry ;
VALUE "Country" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 329 ,180 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:countryitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 329 ,401 LABEL lblPhone ;
VALUE "Phone" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 329 ,488 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 370 ,44 LABEL lbleMail ;
VALUE "eMail" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 370 ,179 TEXTBOX textEMAIL;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 370 ,401 LABEL lblPhone2 ;
VALUE "Phone2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 370 ,488 TEXTBOX textPhone2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 409 ,44 LABEL lblFax ;
VALUE "Fax" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,179 TEXTBOX textFax;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 409 ,401 LABEL lblMobile ;
VALUE "Mobile" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,488 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 452 ,44 LABEL lblZip ;
VALUE "Zip" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 452 ,179 TEXTBOX textZip;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 452 ,401 LABEL lblMobile2 ;
VALUE "Mobile2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 453 ,488 TEXTBOX textMobile2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 158 ,44 LABEL lblCompany ;
VALUE "Company" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 156 ,179 TEXTBOX textCompany;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 498 ,44 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 499 ,179 EDITBOX EditNotes;
WIDTH 510 ;
HEIGHT 70;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 7 ,490 BUTTONEX btnPrint;
CAPTION "Print Supplier Data";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:printdata()  ;
WIDTH 203 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
myout = self:LoadLookupTable("ItemsGroups","GroupName",@self:ItemGroupItems,"id",@self:ItemGroupItemsIDS)
@ 208 ,44 LABEL lblItemGroup ;
VALUE "Item Supplied" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 206 ,180 COMBOBOX comboitemGroup;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:itemGroupItems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

SuppliersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW SuppliersDataWindow
EndIF

Return 0
Method UserInterface2Class Class SuppliersDataClass
self:cName := SuppliersDataWindow.textName.Value
self:cGender := SuppliersDataWindow.ComboGender.Value
self:cAge := SuppliersDataWindow.textAge.Value
self:cAddress := SuppliersDataWindow.textAddress.Value
self:cCity := SuppliersDataWindow.textCity.Value
self:cWebsite := SuppliersDataWindow.textWebsite.Value
self:cCountry := SuppliersDataWindow.comboCountry.Value
self:cPhone := SuppliersDataWindow.textPhone.Value
self:cEMAIL := SuppliersDataWindow.textEMAIL.Value
self:cPHONE2 := SuppliersDataWindow.textPHONE2.Value
self:cFax := SuppliersDataWindow.textFax.Value
self:cMobile := SuppliersDataWindow.textMobile.Value
self:cZip := SuppliersDataWindow.textZip.Value
self:cMobile2 := SuppliersDataWindow.textMobile2.Value
self:cCompany := SuppliersDataWindow.textCompany.Value
self:cNotes := SuppliersDataWindow.editNotes.Value
self:cGender := self:GenderItemsids[self:cGender]
self:cCountry := self:CountryItemsIDS[self:cCountry]
self:nItemGroup := SuppliersDataWindow.ComboItemGroup.Value
self:nItemGroup := self:ItemGroupItemsids[self:nItemGroup]
Return 0
Method Class2ADO Class SuppliersDataClass
self:oRS:fields:item("f_name"):value := self:cName
self:oRS:fields:item("f_gender"):value := self:cGender
self:oRS:fields:item("f_age"):value := self:cAge
self:oRS:fields:item("f_Address"):value := self:cAddress
self:oRS:fields:item("f_city"):value := self:cCity
self:oRS:fields:item("f_Website"):value := self:cWebsite
self:oRS:fields:item("f_country"):value := self:cCountry
self:oRS:fields:item("f_phone"):value := self:cPhone
self:oRS:fields:item("f_email"):value := self:ceMail
self:oRS:fields:item("f_phone2"):value := self:cPhone2
self:oRS:fields:item("f_fax"):value := self:cFax
self:oRS:fields:item("f_mobile"):value := self:cMobile
self:oRS:fields:item("f_zip"):value := self:czip
self:oRS:fields:item("f_Mobile2"):value := self:cMobile2
self:oRS:fields:item("f_company"):value := self:cCompany
self:oRS:fields:item("f_notes"):value := self:cNotes
self:oRS:fields:item("ItemGroup"):value := self:nItemGroup
Return 0
Method ADO2Class Class SuppliersDataClass
self:cname := self:oRS:fields:item("f_name"):value
self:cgender := self:oRS:fields:item("f_gender"):value
self:cage := self:oRS:fields:item("f_age"):value
self:caddress := self:oRS:fields:item("f_address"):value
self:cCity := self:oRS:fields:item("f_city"):value
self:cwebsite := self:oRS:fields:item("f_website"):value
self:ccountry := self:oRS:fields:item("f_country"):value
self:cphone := self:oRS:fields:item("f_phone"):value
self:cemail := self:oRS:fields:item("f_email"):value
self:cphone2 := self:oRS:fields:item("f_phone2"):value
self:cfax := self:oRS:fields:item("f_fax"):value
self:cmobile := self:oRS:fields:item("f_mobile"):value
self:czip := self:oRS:fields:item("f_zip"):value
self:cmobile2 := self:oRS:fields:item("f_mobile2"):value
self:ccompany := self:oRS:fields:item("f_company"):value
self:cNotes := self:oRS:fields:item("f_notes"):value
self:nItemGroup := self:oRS:fields:item("ItemGroup"):value
Return 0
Method Class2UserInterface Class SuppliersDataClass
SuppliersDataWindow.textName.Value := self:cname
self:cGender = self:LookupIDToIndex(self:cGender,@self:GenderItemsids)
SuppliersDataWindow.comboGender.Value := self:cGender
SuppliersDataWindow.textAge.Value := self:cage
SuppliersDataWindow.textAddress.Value := self:cAddress
SuppliersDataWindow.textCity.Value := self:cCity
SuppliersDataWindow.textWebsite.Value := self:cWebsite
self:cCountry = self:LookupIDToIndex(self:cCountry,@self:CountryItemsIDS)
SuppliersDataWindow.comboCountry.Value := self:cCountry
SuppliersDataWindow.textPhone.Value := self:cPhone
SuppliersDataWindow.texteMail.Value := self:ceMail
SuppliersDataWindow.textPhone2.Value := self:cphone2
SuppliersDataWindow.textFax.Value := self:cFax
SuppliersDataWindow.textMobile.Value := self:cMobile
SuppliersDataWindow.textZip.Value := self:cZip
SuppliersDataWindow.textMobile2.Value := self:cMobile2
SuppliersDataWindow.textCompany.Value := self:cCompany
SuppliersDataWindow.editNotes.Value := self:cNotes
self:nItemGroup = self:LookupIDToIndex(self:nItemGroup,@self:ItemGroupItemsids)
SuppliersDataWindow.comboItemGroup.Value := self:nItemGroup
Return 0
Method ClearRecord Class SuppliersDataClass
self:cname := ""
self:cGender := 0
self:cAge := ""
self:cAddress := ""
self:cCity := ""
self:cWebsite := ""
self:cCountry := 0
self:cPhone := ""
self:cEmail := ""
self:cPhone2 := ""
self:cFax := ""
self:cMobile := ""
self:cZip := ""
self:cMobile2 := ""
self:cCompany := ""
self:cNotes := ""
self:nItemGroup := 0
Return 0
Method PrintData Class SuppliersDataClass
Local myid,myout
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No Record to Print","Sorry")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
Suppliersreportobject:filter := "id = "+myid
myout = Suppliersreportobject:ShowWindow()
Return 0
Method closewindow Class SuppliersDataClass
myout = self:disconnect()
SuppliersDataWindow.Release ( )
Return 0
Method setmode(p1) Class SuppliersDataClass
IF p1 = 1
SuppliersDataWindow.btnfirst.Enabled := false
SuppliersDataWindow.btnnext.Enabled := false
SuppliersDataWindow.btnprev.Enabled := false
SuppliersDataWindow.btnlast.Enabled := false
SuppliersDataWindow.btndel.Enabled := false
SuppliersDataWindow.btnclose.Enabled := false
SuppliersDataWindow.btnsave.Enabled := true
SuppliersDataWindow.btncancel.Enabled := true
SuppliersDataWindow.btnedit.Enabled := false
SuppliersDataWindow.btnadd.Enabled := false
SuppliersDataWindow.textName.Enabled := true
SuppliersDataWindow.textCity.Enabled := true
SuppliersDataWindow.textAddress.Enabled := true
SuppliersDataWindow.textZip.Enabled := true
SuppliersDataWindow.textFax.Enabled := true
SuppliersDataWindow.texteMail.Enabled := true
SuppliersDataWindow.textAge.Enabled := true
SuppliersDataWindow.textCompany.Enabled := true
SuppliersDataWindow.textWebsite.Enabled := true
SuppliersDataWindow.textPhone.Enabled := true
SuppliersDataWindow.textphone2.Enabled := true
SuppliersDataWindow.textmobile.Enabled := true
SuppliersDataWindow.textmobile2.Enabled := true
SuppliersDataWindow.comboGender.Enabled := true
SuppliersDataWindow.comboCountry.Enabled := true
SuppliersDataWindow.editNotes.Enabled := true
SuppliersDataWindow.comboItemGroup.Enabled := true
ENDIF
IF p1 = 2
SuppliersDataWindow.btnfirst.Enabled := true
SuppliersDataWindow.btnnext.Enabled := true
SuppliersDataWindow.btnprev.Enabled := true
SuppliersDataWindow.btnlast.Enabled := true
SuppliersDataWindow.btndel.Enabled := true
SuppliersDataWindow.btnclose.Enabled := true
SuppliersDataWindow.btnsave.Enabled := false
SuppliersDataWindow.btncancel.Enabled := false
SuppliersDataWindow.btnedit.Enabled := true
SuppliersDataWindow.btnadd.Enabled := true
SuppliersDataWindow.textName.Enabled := false
SuppliersDataWindow.textCity.Enabled := false
SuppliersDataWindow.textAddress.Enabled := false
SuppliersDataWindow.textZip.Enabled := false
SuppliersDataWindow.textFax.Enabled := false
SuppliersDataWindow.texteMail.Enabled := false
SuppliersDataWindow.textAge.Enabled := false
SuppliersDataWindow.textCompany.Enabled := false
SuppliersDataWindow.textWebsite.Enabled := false
SuppliersDataWindow.textPhone.Enabled := false
SuppliersDataWindow.textphone2.Enabled := false
SuppliersDataWindow.textmobile.Enabled := false
SuppliersDataWindow.textmobile2.Enabled := false
SuppliersDataWindow.comboGender.Enabled := false
SuppliersDataWindow.comboCountry.Enabled := false
SuppliersDataWindow.editNotes.Enabled := false
SuppliersDataWindow.comboItemGroup.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class SuppliersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( SuppliersDataWindow )
myout = self:showrecord()
SuppliersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
