*---------------------------------------------------------------------------*
* Time : 00:26:05    Date : 08/26/2010
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
Class SuppliersDataClass
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data DatabaseName init ""
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
Data username init "systemdatabase"
Data password init "systemdatabase123"
Method showwindow
Method closewindow
Method ShowRecord
Method connect
Method disconnect
Method firstrecord
Method lastrecord
Method nextrecord
Method prevrecord
Method delrecord
Method SetMode
Method EditRecord
Method SaveRecord
Method CancelRecord
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method addrecord
Method ClearRecord
Method AutoGotoRecord
Method loadlookuptable
Method lookupidtoindex
Method printdata
EndClass
Method showwindow Class SuppliersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( SuppliersDataWindow )
DEFINE WINDOW SuppliersDataWindow ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 644 ;
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
WIDTH 750 HEIGHT 495
@ 556 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 556 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 556 ,8 BUTTONEX btnadd;
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
@ 77 ,73 LABEL lblname ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 75 ,179 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
myout = self:LoadLookupTable("Gender","Gender",@self:GenderItems,"id",@self:GenderItemsIDS)
@ 118 ,74 LABEL lblGender ;
VALUE "Gender" ;
WIDTH 100 ;
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
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 159 ,74 LABEL lblAddress ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 157 ,179 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 200 ,74 LABEL lblCity ;
VALUE "City" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 197 ,179 TEXTBOX textCity;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 197 ,401 LABEL lblWebsite ;
VALUE "Website" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 197 ,488 TEXTBOX textWebsite;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 239 ,74 LABEL lblCountry ;
VALUE "Country" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 239 ,180 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:countryitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 239 ,401 LABEL lblPhone ;
VALUE "Phone" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 239 ,488 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 280 ,74 LABEL lbleMail ;
VALUE "eMail" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,179 TEXTBOX textEMAIL;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 280 ,401 LABEL lblPhone2 ;
VALUE "Phone2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,488 TEXTBOX textPhone2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 319 ,74 LABEL lblFax ;
VALUE "Fax" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 319 ,179 TEXTBOX textFax;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 319 ,401 LABEL lblMobile ;
VALUE "Mobile" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 319 ,488 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 362 ,74 LABEL lblZip ;
VALUE "Zip" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 362 ,179 TEXTBOX textZip;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 362 ,401 LABEL lblMobile2 ;
VALUE "Mobile2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 363 ,488 TEXTBOX textMobile2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 408 ,74 LABEL lblCompany ;
VALUE "Company" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 406 ,179 TEXTBOX textCompany;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 448 ,74 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,179 EDITBOX EditNotes;
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
Method LoadLookupTable(cTableName,cColumnName,aArrayNameRef,cColumnName2,aArrayNameRef2) Class SuppliersDataClass
Local x,nMax,temp_value,temp_value2,oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from " + cTableName,oCon,3,3 )
nMAX := oRS:RecordCount
aArrayNameRef := {}
aArrayNameRef2 := {}
FOR x = 1 TO nMax STEP 1
temp_value := oRS:fields:item(cColumnName):value
temp_value2 := oRS:fields:item(cColumnName2):value
AADD( aArrayNameRef , temp_value)
AADD( aArrayNameRef2 , temp_value2)
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return 0
Method LookupIDtoIndex(IDVar,ArrayRef) Class SuppliersDataClass
Local nMax,x
myindex := 1
nMax  = LEN(ArrayRef)
FOR x = 1 TO nMax STEP 1
IF ArrayRef[x]= IDVar
myindex := x
Exit
ENDIF
Next
Return myindex
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
Method ShowRecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class SuppliersDataClass
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class SuppliersDataClass
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure ?","Delete")
IF myout = false
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
ENDIF
ENDIF
myout = self:showrecord()
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
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
Method EditRecord Class SuppliersDataClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class SuppliersDataClass
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
IF self:addrec = true
self:oRS:MOVELAST()
ENDIF
self:addrec := false
Return 0
Method CancelRecord Class SuppliersDataClass
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class SuppliersDataClass
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
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
