*---------------------------------------------------------------------------*
* Time : 12:54:22    Date : 12/10/2010
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
Function CUSTOMERS_DATA
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

Resistance R_CUSTOMERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_DATA_15speed1() code
class CustomersDataClass From SYSTEMDATABASE
Data TableName init "Customers"
Data cName init ""
Data cMobile init ""
Data ceMail init ""
Data cCardNum init ""
Data cCardFinish init ""
Data cCompany init ""
Data cJob init ""
Data cLevel init ""
Data cPhoneWork init ""
Data cFax init ""
Data cCity init ""
Data cPayMethod init ""
Data cworkdomain init ""
Data cbranches init ""
Data cinst init ""
Data ccompanyemail init ""
Data ccompanyphone init ""
Data ccompanytrans init ""
Data ccompanyfax init ""
Data countryitemsids init {}
Data countryitems init {}
Data cCountry init ""
Data cPayMethod init ""
Data PayMethoditemsids init {}
Data PayMethoditems init {}
Data cCustType init ""
Data CustTypeitemsids init {}
Data CustTypeitems init {}
Data cCustClass init ""
Data CustClassitemsids init {}
Data CustClassitems init {}
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
Method CheckData
Method CustOrders
EndClass
Method showwindow Class CustomersDataClass
IF .not. UserCan_WinCustomers = 2
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomersDataWindow )
DEFINE WINDOW CustomersDataWindow ;
AT 10 ,10 ;
WIDTH 1061 ;
HEIGHT 531 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·„ œ—»Ì‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\Back.jpg";
STRETCH ;
WIDTH 1040 HEIGHT 385
@ 446 ,519 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,389 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,324 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,163 BUTTONEX btnClose;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,455 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,247 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 446 ,682 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 446 ,594 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 446 ,761 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 446 ,828 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,246 LABEL lblTitle ;
VALUE "                                          »Ì«‰«  «·„ œ—»Ì‰" ;
WIDTH 520 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 58 ,926 LABEL lblname ;
VALUE "«·«”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 57 ,398 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("paymethod","paymethod",@self:paymethodItems,"id",@self:paymethodItemsIDS)
@ 264 ,926 LABEL lblpaymethod ;
VALUE "ÿ—Ìﬁ… «·”œ«œ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,708 COMBOBOX combopaymethod;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:paymethoditems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 138 ,267 LABEL lblcardFinishDate ;
VALUE " «—ÌŒ «‰ Â«¡ «·ÂÊÌ…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 138 ,55 DATEPICKER dateCardFinish;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 138 ,610 LABEL lblcardnum ;
VALUE "—ﬁ„ «·»ÿ«ﬁ…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 138 ,398 TEXTBOX textCardnum;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 227 ,273 LABEL lblCity ;
VALUE "«·„œÌ‰…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 225 ,55 TEXTBOX textCity;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 177 ,621 LABEL lbljob ;
VALUE "«·ÊŸÌ›…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 177 ,398 TEXTBOX textJob;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 138 ,926 LABEL lblCountry ;
VALUE "«·œÊ·…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 138 ,708 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:countryitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 177 ,275 LABEL lbllevel ;
VALUE "„ƒÂ·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 177 ,55 TEXTBOX textLevel;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 96 ,612 LABEL lbleMail ;
VALUE "»—Ìœ «·ﬂ —Ê‰Ï" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,398 TEXTBOX textEMAIL;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 218 ,926 LABEL lblworkphone ;
VALUE "Â« › «·⁄„·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 219 ,708 TEXTBOX textphonework;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 222 ,621 LABEL lblFax ;
VALUE "›«ﬂ”" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 222 ,398 TEXTBOX textFax;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 96 ,926 LABEL lblMobile ;
VALUE "ÃÊ«·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,708 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 304 ,926 LABEL lblworkdomain ;
VALUE "‰‘«ÿ «·‘—ﬂ…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 304 ,708 TEXTBOX textWorkDomain;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 177 ,926 LABEL lblCompany ;
VALUE "ÃÂ… «·⁄„·" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 177 ,708 TEXTBOX textCompany;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
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
@ 304 ,604 LABEL lblbranches ;
VALUE "⁄œœ «·›—Ê⁄" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 304 ,459 TEXTBOX textbranches;
HEIGHT 30 ;
WIDTH 130 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 304 ,280 LABEL lblinst ;
VALUE "«·„”∆Ê· ⁄‰ «· œ—Ì»" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 304 ,55 TEXTBOX textinst;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 348 ,926 LABEL lblcompanyemail ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 348 ,708 TEXTBOX textcompanyemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 348 ,601 LABEL lblcompanyphone ;
VALUE "Â« ›" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 348 ,388 TEXTBOX textcompanyphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 348 ,280 LABEL lblcompanytrans ;
VALUE " ÕÊÌ·…" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 348 ,55 TEXTBOX textcompanytrans;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 389 ,926 LABEL lblcompanyfax ;
VALUE "›«ﬂ”" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 393 ,708 TEXTBOX textcompanyfax;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("custclass","custclass",@self:custclassItems,"id",@self:custclassItemsIDS)
@ 96 ,272 LABEL lblcustclass ;
VALUE "›∆… «·⁄„Ì·" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,56 COMBOBOX combocustclass;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:custclassitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("custtype","custtype",@self:custtypeItems,"id",@self:custtypeItemsIDS)
@ 55 ,272 LABEL lblcusttype ;
VALUE "‰Ê⁄ «·⁄„Ì·" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 55 ,56 COMBOBOX combocusttype;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:custtypeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DO RightToLeftControl WITH "CustomersDataWindow","combocusttype"
DO RightToLeftControl WITH "CustomersDataWindow","combocustclass"
DO RightToLeftControl WITH "CustomersDataWindow","combocountry"
DO RightToLeftControl WITH "CustomersDataWindow","combopaymethod"
@ 7 ,770 BUTTONEX btnCustOrders;
CAPTION "œÊ—«  „‘ —ﬂ »Â« «Ê «” ›”— ⁄‰Â« «·„ œ—»";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:custOrders()  ;
WIDTH 283 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

CustomersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CustomersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cName := CustomersDataWindow.textName.Value
self:cMobile := CustomersDataWindow.textMobile.Value
self:ceMail := CustomersDataWindow.texteMail.Value
self:cCardNum := CustomersDataWindow.textCardNum.Value
self:cCardFinish := CustomersDataWindow.dateCardFinish.Value
self:cCompany := CustomersDataWindow.textCompany.Value
self:cjob := CustomersDataWindow.textjob.Value
self:clevel := CustomersDataWindow.textlevel.Value
self:cphonework := CustomersDataWindow.textphonework.Value
self:cfax := CustomersDataWindow.textfax.Value
self:cCity := CustomersDataWindow.textCity.Value
self:cworkdomain := CustomersDataWindow.textworkdomain.Value
self:cbranches := CustomersDataWindow.textbranches.Value
self:cinst := CustomersDataWindow.textinst.Value
self:ccompanyemail := CustomersDataWindow.textcompanyemail.Value
self:ccompanyphone := CustomersDataWindow.textCompanyphone.Value
self:ccompanytrans := CustomersDataWindow.textcompanytrans.Value
self:cCompanyFax := CustomersDataWindow.textCompanyFax.Value
self:cCustType := CustomersDataWindow.comboCustType.Value
self:cCustType := self:CustTypeItemsIDS[self:cCustType]
self:cCustClass := CustomersDataWindow.comboCustClass.Value
self:cCustClass := self:CustClassItemsIDS[self:cCustClass]
self:cPayMethod := CustomersDataWindow.ComboPayMethod.Value
self:cPayMethod := self:PayMethodItemsids[self:cPayMethod]
self:cCountry := CustomersDataWindow.comboCountry.Value
self:cCountry := self:CountryItemsIDS[self:cCountry]
self:cCardFinish := dtoc(self:cCardFinish)
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item("f_name"):value := self:cName
self:oRS:fields:item("f_mobile"):value := self:cMobile
self:oRS:fields:item("f_eMail"):value := self:ceMail
self:oRS:fields:item("f_Country"):value := self:cCountry
self:oRS:fields:item("f_CardNum"):value := self:cCardNum
self:oRS:fields:item("f_CardFinish"):value := self:cCardFinish
self:oRS:fields:item("f_CustType"):value := self:cCustType
self:oRS:fields:item("f_CustClass"):value := self:cCustClass
self:oRS:fields:item("f_Company"):value := self:cCompany
self:oRS:fields:item("f_job"):value := self:cjob
self:oRS:fields:item("f_level"):value := self:clevel
self:oRS:fields:item("f_phonework"):value := self:cphonework
self:oRS:fields:item("f_fax"):value := self:cfax
self:oRS:fields:item("f_City"):value := self:cCity
self:oRS:fields:item("f_paymethod"):value := self:cpaymethod
self:oRS:fields:item("f_workdomain"):value := self:cWorkdomain
self:oRS:fields:item("f_branches"):value := self:cbranches
self:oRS:fields:item("f_inst"):value := self:cinst
self:oRS:fields:item("f_companyemail"):value := self:cCompanyemail
self:oRS:fields:item("f_companyphone"):value := self:cCompanyphone
self:oRS:fields:item("f_companytrans"):value := self:cCompanytrans
self:oRS:fields:item("f_companyfax"):value := self:cCompanyfax
Return 0
Method ADO2Class Class CustomersDataClass
self:cname := self:oRS:fields:item("f_name"):value
self:cMobile := self:oRS:fields:item("f_mobile"):value
self:ceMail := self:oRS:fields:item("f_eMail"):value
self:cCountry := self:oRS:fields:item("f_Country"):value
self:cCardNum := self:oRS:fields:item("f_CardNum"):value
self:cCardFinish := self:oRS:fields:item("f_CardFinish"):value
self:cCustType := self:oRS:fields:item("f_CustType"):value
self:cCustClass := self:oRS:fields:item("f_CustClass"):value
self:cCompany := self:oRS:fields:item("f_Company"):value
self:cjob := self:oRS:fields:item("f_job"):value
self:cLevel := self:oRS:fields:item("f_Level"):value
self:cphonework := self:oRS:fields:item("f_phonework"):value
self:ccity := self:oRS:fields:item("f_city"):value
self:cpaymethod := self:oRS:fields:item("f_paymethod"):value
self:cWorkDomain := self:oRS:fields:item("f_workdomain"):value
self:cBranches := self:oRS:fields:item("f_Branches"):value
self:cInst := self:oRS:fields:item("f_Inst"):value
self:cCompanyeMail := self:oRS:fields:item("f_CompanyEmail"):value
self:cCompanyphone := self:oRS:fields:item("f_Companyphone"):value
self:cCompanytrans := self:oRS:fields:item("f_Companytrans"):value
self:cCompanyFax := self:oRS:fields:item("f_CompanyFax"):value
self:cFax := self:oRS:fields:item("f_Fax"):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.textName.Value := self:cname
CustomersDataWindow.textMobile.Value := self:cMobile
CustomersDataWindow.textemail.Value := self:cemail
CustomersDataWindow.textCardNum.Value := self:cCardNum
CustomersDataWindow.dateCardFinish.Value := ctod(self:cCardFinish)
CustomersDataWindow.textCompany.Value := self:cCompany
CustomersDataWindow.textjob.Value := self:cjob
CustomersDataWindow.textlevel.Value := self:clevel
CustomersDataWindow.textphonework.Value := self:cphonework
CustomersDataWindow.textfax.Value := self:cfax
CustomersDataWindow.textCity.Value := self:cCity
CustomersDataWindow.textWorkDomain.Value := self:cWorkDomain
CustomersDataWindow.textBranches.Value := self:cBranches
CustomersDataWindow.textinst.Value := self:cinst
self:cCustType = self:LookupIDToIndex(self:cCustType,@self:CustTypeItemsids)
CustomersDataWindow.comboCustType.Value := self:cCustType
self:cCountry = self:LookupIDToIndex(self:cCountry,@self:CountryItemsIDS)
CustomersDataWindow.comboCountry.Value := self:cCountry
self:cCustClass = self:LookupIDToIndex(self:cCustClass,@self:CustClassItemsids)
CustomersDataWindow.comboCustClass.Value := self:cCustClass
self:cPayMethod = self:LookupIDToIndex(self:cPayMethod,@self:PayMethodItemsids)
CustomersDataWindow.comboPayMethod.Value := self:cPayMethod
CustomersDataWindow.textCompanyeMail.Value := self:cCompanyeMail
CustomersDataWindow.textCompanyphone.Value := self:cCompanyphone
CustomersDataWindow.textCompanytrans.Value := self:cCompanytrans
CustomersDataWindow.textCompanyfax.Value := self:cCompanyfax
Return 0
Method ClearRecord Class CustomersDataClass
self:cname := ""
self:cPayMethod := 0
self:cMobile := ""
self:ceMail := ""
self:cCardNum := ""
self:cCardFinish := ""
self:cCompany := ""
self:cJob := ""
self:cLevel := ""
self:cPhoneWork := ""
self:cFax := ""
self:cCity := ""
self:cWorkDomain := ""
self:cBranches := ""
self:cinst := ""
self:cCompanyeMail := ""
self:cCustType := 0
self:cCustClass := 0
self:cCompanyphone := ""
self:cCompanytrans := ""
self:cCompanyFax := ""
self:cCountry := 0
Return 0
Method PrintData Class CustomersDataClass
Local myid,myout
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
Customersreportobject:filter := "id = "+myid
myout = Customersreportobject:ShowWindow()
Return 0
Method CheckData Class CustomersDataClass
Local myRet,cName,nMax
myRet := True
cName := CustomersDataWindow.textName.Value
cName = ALLTRIM ( cName )
IF cName == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· «”„ «·„ œ—»","⁄›Ê«")
myRet := False
ENDIF
cMobile := CustomersDataWindow.textMobile.Value
cMobile = ALLTRIM ( cMobile )
IF cMobile == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· —ﬁ„ «·ÃÊ«·","⁄›Ê«")
myRet := False
ELSE
IF len(cMobile) < 12
MyOut := MSGBOX("—ﬁ„ «·ÃÊ«· ÌÃ» «‰ ·«Ìﬁ· ⁄‰ 12 —ﬁ„","⁄›Ê«")
myRet := False
ELSE
public myoRS
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from Customers where f_Mobile = '" + cMobile + "'",self:oCon,3,3 )
nMax := myoRS:RecordCount
IF nMax > 0 .and. self:addrec = True
MyOut := MSGBOX("Â–« «·ÃÊ«· „”Ã· „‰ ﬁ»·","⁄›Ê«")
myRet := False
ENDIF
IF nMax > 1 .and. self:addrec = False
MyOut := MSGBOX("Â–« «·ÃÊ«· „”Ã· „‰ ﬁ»·","⁄›Ê«")
myRet := False
ENDIF
myoRS:Close()
ENDIF
ENDIF
ceMail := CustomersDataWindow.texteMail.Value
ceMail = ALLTRIM ( ceMail )
IF ceMail == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· «·»—Ìœ «·«·ﬂ —Ê‰Ï","⁄›Ê«")
myRet := False
ELSE
nTest = AT("@",ceMail)
nTest2 = AT(".",ceMail)
IF ntest = 0 .or. ntest2 = 0
MyOut := MSGBOX("’Ì€… «·»—Ìœ «·«·ﬂ —Ê‰Ï €Ì— ’ÕÌÕ…","⁄›Ê«")
myRet := False
ELSE
public myoRS
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from Customers where f_eMail = '" + ceMail + "'",self:oCon,3,3 )
nMax := myoRS:RecordCount
IF nMax > 0 .and. self:addrec = True
MyOut := MSGBOX("Â–« «·»—Ìœ «·«·ﬂ —Ê‰Ï „”Ã· „‰ ﬁ»·","⁄›Ê«")
myRet := False
ENDIF
IF nMax > 1 .and. self:addrec = False
MyOut := MSGBOX("Â–« «·»—Ìœ «·«·ﬂ —Ê‰Ï „”Ã· „‰ ﬁ»·","⁄›Ê«")
myRet := False
ENDIF
myoRS:Close()
ENDIF
ENDIF
Return myRet
Method CustOrders Class CustomersDataClass
Local myid
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
CustOrdersObject:CustID := myid
myout = CustOrdersObject:ShowWindow()
Return 0
Method closewindow Class CustomersDataClass
myout = self:disconnect()
CustomersDataWindow.Release ( )
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
CustomersDataWindow.textMobile.Enabled := true
CustomersDataWindow.texteMail.Enabled := true
CustomersDataWindow.textCardNum.Enabled := true
CustomersDataWindow.dateCardFinish.Enabled := true
CustomersDataWindow.textCompany.Enabled := true
CustomersDataWindow.textJob.Enabled := true
CustomersDataWindow.textLevel.Enabled := true
CustomersDataWindow.textPhoneWork.Enabled := true
CustomersDataWindow.textFax.Enabled := true
CustomersDataWindow.textCity.Enabled := true
CustomersDataWindow.textbranches.Enabled := true
CustomersDataWindow.textinst.Enabled := true
CustomersDataWindow.combopaymethod.Enabled := true
CustomersDataWindow.comboCountry.Enabled := true
CustomersDataWindow.textworkdomain.Enabled := true
CustomersDataWindow.combocusttype.Enabled := true
CustomersDataWindow.combocustClass.Enabled := true
CustomersDataWindow.textcompanyemail.Enabled := true
CustomersDataWindow.textcompanyphone.Enabled := true
CustomersDataWindow.textcompanytrans.Enabled := true
CustomersDataWindow.textcompanyfax.Enabled := true
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
CustomersDataWindow.textMobile.Enabled := false
CustomersDataWindow.texteMail.Enabled := false
CustomersDataWindow.textCardNum.Enabled := false
CustomersDataWindow.dateCardFinish.Enabled := false
CustomersDataWindow.textCompany.Enabled := false
CustomersDataWindow.textJob.Enabled := false
CustomersDataWindow.textLevel.Enabled := false
CustomersDataWindow.textPhoneWork.Enabled := false
CustomersDataWindow.textFax.Enabled := false
CustomersDataWindow.textCity.Enabled := false
CustomersDataWindow.textbranches.Enabled := false
CustomersDataWindow.textinst.Enabled := false
CustomersDataWindow.combopaymethod.Enabled := false
CustomersDataWindow.comboCountry.Enabled := false
CustomersDataWindow.textworkdomain.Enabled := false
CustomersDataWindow.combocusttype.Enabled := false
CustomersDataWindow.combocustClass.Enabled := false
CustomersDataWindow.textcompanyemail.Enabled := false
CustomersDataWindow.textcompanyphone.Enabled := false
CustomersDataWindow.textcompanytrans.Enabled := false
CustomersDataWindow.textcompanyfax.Enabled := false
ENDIF
self:OperationMode := p1
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
