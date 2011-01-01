*---------------------------------------------------------------------------*
* Time : 10:02:01    Date : 11/26/2010
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
class SuppliersDataClass From SYSTEMDATABASE
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
WIDTH 777 ;
HEIGHT 644 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·„Ê—œÌ‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 495
@ 556 ,369 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,239 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,174 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,13 BUTTONEX btnClose;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,305 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,97 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,532 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,444 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,611 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,678 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,246 LABEL lblTitle ;
VALUE "                                                                     »Ì«‰«  «·„Ê—œÌ‰" ;
WIDTH 510 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 77 ,643 LABEL lblname ;
VALUE "«·«”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 76 ,117 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Gender","Gender",@self:GenderItems,"id",@self:GenderItemsIDS)
@ 118 ,644 LABEL lblGender ;
VALUE "«·ﬁ”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 118 ,429 COMBOBOX combogender;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:genderitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 118 ,330 LABEL lblAge ;
VALUE "«·⁄„—" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 118 ,117 TEXTBOX textAge;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 159 ,644 LABEL lblAddress ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 158 ,117 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 200 ,644 LABEL lblCity ;
VALUE "«·„œÌ‰…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 198 ,429 TEXTBOX textCity;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 198 ,330 LABEL lblWebsite ;
VALUE "«·„Êﬁ⁄" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 198 ,117 TEXTBOX textWebsite;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 239 ,644 LABEL lblCountry ;
VALUE "«·œÊ·…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 239 ,429 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:countryitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 239 ,330 LABEL lblPhone ;
VALUE "Â« ›" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 239 ,117 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 280 ,644 LABEL lbleMail ;
VALUE "»—Ìœ «·ﬂ —Ê‰Ï" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,429 TEXTBOX textEMAIL;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 280 ,330 LABEL lblPhone2 ;
VALUE "Â« › 2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,117 TEXTBOX textPhone2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 319 ,644 LABEL lblFax ;
VALUE "›«ﬂ”" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 319 ,429 TEXTBOX textFax;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 319 ,330 LABEL lblMobile ;
VALUE "ÃÊ«·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 319 ,117 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 362 ,644 LABEL lblZip ;
VALUE "—„“ «·»—Ìœ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 362 ,429 TEXTBOX textZip;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 362 ,330 LABEL lblMobile2 ;
VALUE "ÃÊ«· 2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 362 ,117 TEXTBOX textMobile2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 408 ,644 LABEL lblCompany ;
VALUE "«·‘—ﬂ…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 406 ,117 TEXTBOX textCompany;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 448 ,644 LABEL lblNotes ;
VALUE "„·«ÕŸ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,117 EDITBOX EditNotes;
WIDTH 510 ;
HEIGHT 70;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 7 ,30 BUTTONEX btnPrint;
CAPTION "ÿ»«⁄… «·»Ì«‰« ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:printdata()  ;
WIDTH 203 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
myout = RightToLeftControl ( "SuppliersDataWindow","combogender" )
myout = RightToLeftControl ( "SuppliersDataWindow","combocountry" )
myout = RightToLeftControl ( "SuppliersDataWindow","EditNotes" )
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
Return 0
Method PrintData Class SuppliersDataClass
Local myid,myout
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
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
