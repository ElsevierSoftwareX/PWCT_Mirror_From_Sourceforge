*---------------------------------------------------------------------------*
* Time : 07:17:55    Date : 07/11/2011
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
Function REVIEWERS_DATA
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

Resistance R_REVIEWERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REVIEWERS_DATA_15speed1() code
class ReviewersDataClass From SYSTEMDATABASE
Data TableName init "Reviewers"
Data cname init ""
Data caddress init ""
Data cCity init ""
Data cwebsite init ""
Data cphone init ""
Data cemail init ""
Data cphone2 init ""
Data cfax init ""
Data cmobile init ""
Data czip init ""
Data cmobile2 init ""
Data ccompany init ""
Data cNotes init ""
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
Method showwindow Class ReviewersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ReviewersDataWindow )
DEFINE WINDOW ReviewersDataWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 591 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·„—«Ã⁄Ì‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 49 ,6 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 445
@ 506 ,369 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,239 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,174 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,13 BUTTONEX btnClose;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,305 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,97 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 506 ,532 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 506 ,444 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 506 ,611 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 506 ,678 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,185 LABEL lblTitle ;
VALUE "                                      »Ì«‰«  «·„—«Ã⁄Ì‰  " ;
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

@ 198 ,643 LABEL lblCity ;
VALUE "«·„œÌ‰…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 196 ,428 TEXTBOX textCity;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 239 ,641 LABEL lblWebsite ;
VALUE "„Êﬁ⁄ «·«‰ —‰ " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 239 ,428 TEXTBOX textWebsite;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
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

@ 118 ,644 LABEL lblCompany ;
VALUE "«·Ã«„⁄…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 116 ,117 TEXTBOX textCompany;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 408 ,644 LABEL lblNotes ;
VALUE "„·«ÕŸ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,117 EDITBOX EditNotes;
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
myout = RightToLeftControl ( "ReviewersDataWindow","editnotes" )
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

ReviewersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW ReviewersDataWindow
EndIF

Return 0
Method UserInterface2Class Class ReviewersDataClass
self:cName := ReviewersDataWindow.textName.Value
self:cAddress := ReviewersDataWindow.textAddress.Value
self:cCity := ReviewersDataWindow.textCity.Value
self:cWebsite := ReviewersDataWindow.textWebsite.Value
self:cPhone := ReviewersDataWindow.textPhone.Value
self:cEMAIL := ReviewersDataWindow.textEMAIL.Value
self:cPHONE2 := ReviewersDataWindow.textPHONE2.Value
self:cFax := ReviewersDataWindow.textFax.Value
self:cMobile := ReviewersDataWindow.textMobile.Value
self:cZip := ReviewersDataWindow.textZip.Value
self:cMobile2 := ReviewersDataWindow.textMobile2.Value
self:cCompany := ReviewersDataWindow.textCompany.Value
self:cNotes := ReviewersDataWindow.editNotes.Value
Return 0
Method Class2ADO Class ReviewersDataClass
self:oRS:fields:item("f_name"):value := self:cName
self:oRS:fields:item("f_Address"):value := self:cAddress
self:oRS:fields:item("f_city"):value := self:cCity
self:oRS:fields:item("f_Website"):value := self:cWebsite
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
Method ADO2Class Class ReviewersDataClass
self:cname := self:oRS:fields:item("f_name"):value
self:caddress := self:oRS:fields:item("f_address"):value
self:cCity := self:oRS:fields:item("f_city"):value
self:cwebsite := self:oRS:fields:item("f_website"):value
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
Method Class2UserInterface Class ReviewersDataClass
ReviewersDataWindow.textName.Value := self:cname
ReviewersDataWindow.textAddress.Value := self:cAddress
ReviewersDataWindow.textCity.Value := self:cCity
ReviewersDataWindow.textWebsite.Value := self:cWebsite
ReviewersDataWindow.textPhone.Value := self:cPhone
ReviewersDataWindow.texteMail.Value := self:ceMail
ReviewersDataWindow.textPhone2.Value := self:cphone2
ReviewersDataWindow.textFax.Value := self:cFax
ReviewersDataWindow.textMobile.Value := self:cMobile
ReviewersDataWindow.textZip.Value := self:cZip
ReviewersDataWindow.textMobile2.Value := self:cMobile2
ReviewersDataWindow.textCompany.Value := self:cCompany
ReviewersDataWindow.editNotes.Value := self:cNotes
Return 0
Method ClearRecord Class ReviewersDataClass
self:cname := ""
self:cAddress := ""
self:cCity := ""
self:cWebsite := ""
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
Method PrintData Class ReviewersDataClass
Local myid,myout
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
Reviewersreportobject:filter := "id = "+myid
myout = Reviewersreportobject:ShowWindow()
Return 0
Method closewindow Class ReviewersDataClass
myout = self:disconnect()
ReviewersDataWindow.Release ( )
Return 0
Method setmode(p1) Class ReviewersDataClass
IF p1 = 1
ReviewersDataWindow.btnfirst.Enabled := false
ReviewersDataWindow.btnnext.Enabled := false
ReviewersDataWindow.btnprev.Enabled := false
ReviewersDataWindow.btnlast.Enabled := false
ReviewersDataWindow.btndel.Enabled := false
ReviewersDataWindow.btnclose.Enabled := false
ReviewersDataWindow.btnsave.Enabled := true
ReviewersDataWindow.btncancel.Enabled := true
ReviewersDataWindow.btnedit.Enabled := false
ReviewersDataWindow.btnadd.Enabled := false
ReviewersDataWindow.textName.Enabled := true
ReviewersDataWindow.textCity.Enabled := true
ReviewersDataWindow.textAddress.Enabled := true
ReviewersDataWindow.textZip.Enabled := true
ReviewersDataWindow.textFax.Enabled := true
ReviewersDataWindow.texteMail.Enabled := true
ReviewersDataWindow.textCompany.Enabled := true
ReviewersDataWindow.textWebsite.Enabled := true
ReviewersDataWindow.textPhone.Enabled := true
ReviewersDataWindow.textphone2.Enabled := true
ReviewersDataWindow.textmobile.Enabled := true
ReviewersDataWindow.textmobile2.Enabled := true
ReviewersDataWindow.editNotes.Enabled := true
ENDIF
IF p1 = 2
ReviewersDataWindow.btnfirst.Enabled := true
ReviewersDataWindow.btnnext.Enabled := true
ReviewersDataWindow.btnprev.Enabled := true
ReviewersDataWindow.btnlast.Enabled := true
ReviewersDataWindow.btndel.Enabled := true
ReviewersDataWindow.btnclose.Enabled := true
ReviewersDataWindow.btnsave.Enabled := false
ReviewersDataWindow.btncancel.Enabled := false
ReviewersDataWindow.btnedit.Enabled := true
ReviewersDataWindow.btnadd.Enabled := true
ReviewersDataWindow.textName.Enabled := false
ReviewersDataWindow.textCity.Enabled := false
ReviewersDataWindow.textAddress.Enabled := false
ReviewersDataWindow.textZip.Enabled := false
ReviewersDataWindow.textFax.Enabled := false
ReviewersDataWindow.texteMail.Enabled := false
ReviewersDataWindow.textCompany.Enabled := false
ReviewersDataWindow.textWebsite.Enabled := false
ReviewersDataWindow.textPhone.Enabled := false
ReviewersDataWindow.textphone2.Enabled := false
ReviewersDataWindow.textmobile.Enabled := false
ReviewersDataWindow.textmobile2.Enabled := false
ReviewersDataWindow.editNotes.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class ReviewersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ReviewersDataWindow )
myout = self:showrecord()
ReviewersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
