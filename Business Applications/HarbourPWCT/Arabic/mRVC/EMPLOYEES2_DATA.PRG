*---------------------------------------------------------------------------*
* Time : 13:53:08    Date : 09/17/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
Function EMPLOYEES2_DATA
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

Resistance R_EMPLOYEES2_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOYEES2_DATA_18smart1() code
class Employees2DataClass From SYSTEMDATABASE
Data TableName init "Employees"
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
Method CustOrders
EndClass
Method showwindow Class Employees2DataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( Employees2DataWindow )
DEFINE WINDOW Employees2DataWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 644 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·„ÊŸ›Ì‰" ;
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
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
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
@ 8 ,185 LABEL lblTitle ;
VALUE "                                      »Ì«‰«  «·„ÊŸ›Ì‰  " ;
WIDTH 570 ;
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

myout = self:LoadLookupTable("Department","f_Department",@self:GenderItems,"id",@self:GenderItemsIDS)
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

myout = self:LoadLookupTable("Country","f_Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 239 ,644 LABEL lblCountry ;
VALUE "«·Ã‰”Ì…" ;
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
WIDTH 143 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
myout = RightToLeftControl ( "Employees2DataWindow","combogender" )
myout = RightToLeftControl ( "Employees2DataWindow","combocountry" )
myout = RightToLeftControl ( "Employees2DataWindow","editnotes" )
@ 7 ,790 BUTTONEX btnCustOrders;
CAPTION "œÊ—«  «·„œ—»";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:custOrders()  ;
WIDTH 143 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

Employees2DataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW Employees2DataWindow
EndIF

Return 0
Method UserInterface2Class Class Employees2DataClass
self:cName := Employees2DataWindow.textName.Value
self:cGender := Employees2DataWindow.ComboGender.Value
self:cAge := Employees2DataWindow.textAge.Value
self:cAddress := Employees2DataWindow.textAddress.Value
self:cCity := Employees2DataWindow.textCity.Value
self:cWebsite := Employees2DataWindow.textWebsite.Value
self:cCountry := Employees2DataWindow.comboCountry.Value
self:cPhone := Employees2DataWindow.textPhone.Value
self:cEMAIL := Employees2DataWindow.textEMAIL.Value
self:cPHONE2 := Employees2DataWindow.textPHONE2.Value
self:cFax := Employees2DataWindow.textFax.Value
self:cMobile := Employees2DataWindow.textMobile.Value
self:cZip := Employees2DataWindow.textZip.Value
self:cMobile2 := Employees2DataWindow.textMobile2.Value
self:cCompany := Employees2DataWindow.textCompany.Value
self:cNotes := Employees2DataWindow.editNotes.Value
self:cGender := self:GenderItemsids[self:cGender]
self:cCountry := self:CountryItemsIDS[self:cCountry]
Return 0
Method Class2ADO Class Employees2DataClass
self:oRS:fields:item("f_name"):value := self:cName
self:oRS:fields:item("f_department"):value := self:cGender
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
Method ADO2Class Class Employees2DataClass
self:cname := self:oRS:fields:item("f_name"):value
self:cgender := self:oRS:fields:item("f_department"):value
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
Method Class2UserInterface Class Employees2DataClass
Employees2DataWindow.textName.Value := self:cname
self:cGender = self:LookupIDToIndex(self:cGender,@self:GenderItemsids)
Employees2DataWindow.comboGender.Value := self:cGender
Employees2DataWindow.textAge.Value := self:cage
Employees2DataWindow.textAddress.Value := self:cAddress
Employees2DataWindow.textCity.Value := self:cCity
Employees2DataWindow.textWebsite.Value := self:cWebsite
self:cCountry = self:LookupIDToIndex(self:cCountry,@self:CountryItemsIDS)
Employees2DataWindow.comboCountry.Value := self:cCountry
Employees2DataWindow.textPhone.Value := self:cPhone
Employees2DataWindow.texteMail.Value := self:ceMail
Employees2DataWindow.textPhone2.Value := self:cphone2
Employees2DataWindow.textFax.Value := self:cFax
Employees2DataWindow.textMobile.Value := self:cMobile
Employees2DataWindow.textZip.Value := self:cZip
Employees2DataWindow.textMobile2.Value := self:cMobile2
Employees2DataWindow.textCompany.Value := self:cCompany
Employees2DataWindow.editNotes.Value := self:cNotes
Return 0
Method ClearRecord Class Employees2DataClass
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
Method PrintData Class Employees2DataClass
Local myid,myout
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
Employees2reportobject:filter := "id = "+myid
myout = Employees2reportobject:ShowWindow()
Return 0
Method CustOrders Class Employees2DataClass
Local myid
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
EmpOrdersObject:CustID := myid
myout = EmpOrdersObject:ShowWindow()
Return 0
Method closewindow Class Employees2DataClass
myout = self:disconnect()
Employees2DataWindow.Release ( )
Return 0
Method setmode(p1) Class Employees2DataClass
IF p1 = 1
Employees2DataWindow.btnfirst.Enabled := false
Employees2DataWindow.btnnext.Enabled := false
Employees2DataWindow.btnprev.Enabled := false
Employees2DataWindow.btnlast.Enabled := false
Employees2DataWindow.btndel.Enabled := false
Employees2DataWindow.btnclose.Enabled := false
Employees2DataWindow.btnsave.Enabled := true
Employees2DataWindow.btncancel.Enabled := true
Employees2DataWindow.btnedit.Enabled := false
Employees2DataWindow.btnadd.Enabled := false
Employees2DataWindow.textName.Enabled := true
Employees2DataWindow.textCity.Enabled := true
Employees2DataWindow.textAddress.Enabled := true
Employees2DataWindow.textZip.Enabled := true
Employees2DataWindow.textFax.Enabled := true
Employees2DataWindow.texteMail.Enabled := true
Employees2DataWindow.textAge.Enabled := true
Employees2DataWindow.textCompany.Enabled := true
Employees2DataWindow.textWebsite.Enabled := true
Employees2DataWindow.textPhone.Enabled := true
Employees2DataWindow.textphone2.Enabled := true
Employees2DataWindow.textmobile.Enabled := true
Employees2DataWindow.textmobile2.Enabled := true
Employees2DataWindow.comboGender.Enabled := true
Employees2DataWindow.comboCountry.Enabled := true
Employees2DataWindow.editNotes.Enabled := true
ENDIF
IF p1 = 2
Employees2DataWindow.btnfirst.Enabled := true
Employees2DataWindow.btnnext.Enabled := true
Employees2DataWindow.btnprev.Enabled := true
Employees2DataWindow.btnlast.Enabled := true
Employees2DataWindow.btndel.Enabled := true
Employees2DataWindow.btnclose.Enabled := true
Employees2DataWindow.btnsave.Enabled := false
Employees2DataWindow.btncancel.Enabled := false
Employees2DataWindow.btnedit.Enabled := true
Employees2DataWindow.btnadd.Enabled := true
Employees2DataWindow.textName.Enabled := false
Employees2DataWindow.textCity.Enabled := false
Employees2DataWindow.textAddress.Enabled := false
Employees2DataWindow.textZip.Enabled := false
Employees2DataWindow.textFax.Enabled := false
Employees2DataWindow.texteMail.Enabled := false
Employees2DataWindow.textAge.Enabled := false
Employees2DataWindow.textCompany.Enabled := false
Employees2DataWindow.textWebsite.Enabled := false
Employees2DataWindow.textPhone.Enabled := false
Employees2DataWindow.textphone2.Enabled := false
Employees2DataWindow.textmobile.Enabled := false
Employees2DataWindow.textmobile2.Enabled := false
Employees2DataWindow.comboGender.Enabled := false
Employees2DataWindow.comboCountry.Enabled := false
Employees2DataWindow.editNotes.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class Employees2DataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( Employees2DataWindow )
myout = self:showrecord()
Employees2DataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
