*---------------------------------------------------------------------------*
* Time : 14:27:37    Date : 02/20/2011
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
Function SENDREMITTANCES
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

Resistance R_SENDREMITTANCES_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SENDREMITTANCES_15speed1() code
Set MenuStyle EXTENDED
class SendRemittancesClass From SystemDatabase
Data TableName init "SendRemittances"
Data cSenderName init ""
Data cSenderAddress init ""
Data cSenderPhone init ""
Data cSendingDate init ""
Data cCompanyName init 0
Data CompanyNameItemsIDs init {}
Data CompanyNameItems init {}
Data cCompanyPhone init 0
Data CompanyPhoneItemsIDs init {}
Data CompanyPhoneItems init {}
Data cCompanyAddress init 0
Data CompanyAddressItemsIDs init {}
Data CompanyAddressItems init {}
Data cCompanyPhone1 init 0
Data CompanyPhone1ItemsIDs init {}
Data CompanyPhone1Items init {}
Data cCompanyPhone2 init 0
Data CompanyPhone2ItemsIDs init {}
Data CompanyPhone2Items init {}
Data cCompanyPhone3 init 0
Data CompanyPhone3ItemsIDs init {}
Data CompanyPhone3Items init {}
Data cCountryR init 0
Data CountryRItems init {}
Data CountryRItemsIDs init {}
Data nAmountCurrencyR init 0
Data cCurrencyR init 0
Data CurrencyRItems init {}
Data CurrencyRItemsIDs init {}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method showrecords
EndClass
Method showwindow Class SendRemittancesClass
myout = self:connect()
myout = self:AutoGotoRecord()
myheaders := {}
AADD( myheaders , "SendingDate")
AADD( myheaders , "Sender Name")
AADD( myheaders , "SenderAddress")
AADD( myheaders , "SenderPhone")
AADD( myheaders , "CompanyName")
AADD( myheaders , "CompanyAddress")
AADD( myheaders , "CompanyPhone")
AADD( myheaders , "CompanyPhone1")
AADD( myheaders , "CompanyPhone2")
AADD( myheaders , "CompanyPhone3")
AADD( myheaders , "AmountCurrencyR")
AADD( myheaders , "CurrencyR")
AADD( myheaders , "CountryR")
mywidths := {}
FOR x = 1 TO 13 STEP 1
AADD( mywidths , 110)
Next
if !iswindowdefined( SendRemittancesWindow )
DEFINE WINDOW SendRemittancesWindow ;
AT 0 ,0 ;
WIDTH 1091 ;
HEIGHT 594 ;
ICON "PWCTICON" ;
TITLE "Acounts Managment Program" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani" ;
BACKCOLOR {236,233,216}

SendRemittancesWindow.Center ( )
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close" Action self:closewindow()
END POPUP
POPUP "Add New"
MENUITEM "Add New Company" Action AddNewCompanyObject:ShowWindow()
SEPARATOR
MENUITEM "Add Country" Action AddCountryRObject:ShowWindow()
END POPUP
END MENU
@ 429 ,742 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
PICTURE "images/First.BMP";
ON CLICK self:firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 465 ,742 BUTTONEX btnNext;
CAPTION "Next";
BACKCOLOR {240,240,240};
PICTURE "images/Next.BMP";
ON CLICK self:nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 429 ,886 BUTTONEX btnLast;
CAPTION "Last";
BACKCOLOR {240,240,240};
PICTURE "images/Last.BMP";
ON CLICK self:lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 465 ,886 BUTTONEX btnPrev;
CAPTION "Prev ";
BACKCOLOR {240,240,240};
PICTURE "images/Prev.BMP";
ON CLICK self:prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 465 ,500 BUTTONEX btnClose;
CAPTION "OK";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,0};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 428 ,500 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
PICTURE "images/delete.BMP";
ON CLICK self:delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP "Delete"
@ 428 ,266 BUTTONEX btnsave;
CAPTION "Save";
BACKCOLOR {240,240,240};
PICTURE "images/save.BMP";
LEFTTEXT ;
ON CLICK self:saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 465 ,265 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 465 ,141 BUTTONEX btnedit;
CAPTION "Edit";
BACKCOLOR {240,240,240};
PICTURE "images/edit.BMP";
ON CLICK self:editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 428 ,141 BUTTONEX btnadd;
CAPTION "Add New";
ON CLICK self:addrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 464 ,383 BUTTONEX btnCalculator;
CAPTION "Calculator";
PICTURE "images\Calculator.BMP";
ON CLICK Calculator()  ;
WIDTH 98 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 429 ,382 BUTTONEX btnShow;
CAPTION "Show";
ON CLICK self:showrecords()  ;
WIDTH 98 HEIGHT 29 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
@ 27 ,194 LABEL lblSendingDate ;
VALUE "  Sending Date" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 57 ,194 LABEL lblSenderName ;
VALUE "  Sender Name" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 117 ,194 LABEL lblSenderAddress ;
VALUE "  Sender Address" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 87 ,194 LABEL lblSenderPhone ;
VALUE "  Sender Phone" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 27 ,339 DATEPICKER SendingDate;
WIDTH 188 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 57 ,339 TEXTBOX textSenderName;
HEIGHT 24 ;
WIDTH 188 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 117 ,339 TEXTBOX textSenderAddress;
HEIGHT 24 ;
WIDTH 188 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 87 ,339 TEXTBOX textSenderPhone;
HEIGHT 25 ;
WIDTH 188 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Company","CompanyName",@self:CompanyNameItems,"id",@self:CompanyNameItemsIDS)
@ 27 ,550 LABEL lblCompanyName ;
VALUE "  Company Name" ;
WIDTH 144 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 27 ,701 COMBOBOX comboCompanyName;
ON CHANGE proCompanyName()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyNameitems ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Company","CompanyAddress",@self:CompanyAddressItems,"id",@self:CompanyAddressItemsIDS)
@ 57 ,550 LABEL lblCompanyAddress ;
VALUE "  Company Address" ;
WIDTH 144 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 57 ,701 COMBOBOX comboCompanyAddress;
ON CHANGE proCompanyAddress()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyAddressitems ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Company","CompanyPhone",@self:CompanyPhoneItems,"id",@self:CompanyPhoneItemsIDS)
@ 87 ,550 LABEL lblCompanyPhone ;
VALUE "  Company Phone" ;
WIDTH 144 ;
HEIGHT 27 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 87 ,701 COMBOBOX comboCompanyPhone;
ON CHANGE proCompanyPhone()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyPhoneitems ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Company","CompanyPhone1",@self:CompanyPhone1Items,"id",@self:CompanyPhone1ItemsIDS)
@ 117 ,550 LABEL lblCompanyPhone1 ;
VALUE "  Company Phone1" ;
WIDTH 144 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 117 ,701 COMBOBOX comboCompanyPhone1;
ON CHANGE proCompanyPhone1()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyPhone1items ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Company","CompanyPhone2",@self:CompanyPhone2Items,"id",@self:CompanyPhone2ItemsIDS)
@ 147 ,550 LABEL lblCompanyPhone2 ;
VALUE "  Company Phone2" ;
WIDTH 144 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 147 ,701 COMBOBOX comboCompanyPhone2;
ON CHANGE proCompanyPhone2()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyPhone2items ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Company","CompanyPhone3",@self:CompanyPhone3Items,"id",@self:CompanyPhone3ItemsIDS)
@ 177 ,550 LABEL lblCompanyPhone3 ;
VALUE "  Company Phone3" ;
WIDTH 144 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 177 ,701 COMBOBOX comboCompanyPhone3;
ON CHANGE proCompanyPhone3()  ;
WIDTH 188 ;
HEIGHT 100;
ITEMS self:CompanyPhone3items ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("CountryR","CountryR",@self:CountryRItems,"id",@self:CountryRItemsIDS)
@ 177 ,194 LABEL lblCountryR ;
VALUE "  Country" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 177 ,340 COMBOBOX comboCountryR;
WIDTH 200 ;
HEIGHT 300;
ITEMS self:CountryRitems ;
VALUE 1 ;
FONT "arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("CurrencyR","CurrencyR",@self:CurrencyRItems,"id",@self:CurrencyRItemsIDS)
@ 147 ,423 COMBOBOX comboCurrencyR;
WIDTH 104 ;
HEIGHT 300;
ITEMS self:CurrencyRitems ;
VALUE 1 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 147 ,194 LABEL lblCurrencyR ;
VALUE "  Currency" ;
WIDTH 141 ;
HEIGHT 25 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 147 ,341 TEXTBOX textAmountCurrencyR;
HEIGHT 25 ;
WIDTH 74 ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 241 ,11 GRID Grid1;
WIDTH 1059 ;
HEIGHT 160 ;
HEADERS myheaders;
WIDTHS mywidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

SendRemittancesWindow.grid1.Width := SendRemittancesWindow.grid1.width + 1
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW SendRemittancesWindow
EndIF

Return 0
Method UserInterface2Class Class SendRemittancesClass
self:cSenderName := SendRemittancesWindow.textSenderName.Value
self:cSenderAddress := SendRemittancesWindow.textSenderAddress.Value
self:cSenderPhone := SendRemittancesWindow.textSenderPhone.Value
self:cCompanyName := SendRemittancesWindow.comboCompanyName.Value
self:cCompanyName := self:CompanyNameItemsIDs[Self:cCompanyName]
self:cCompanyAddress := SendRemittancesWindow.comboCompanyAddress.Value
self:cCompanyAddress := self:CompanyAddressItemsIDs[Self:cCompanyAddress]
self:cCompanyPhone := SendRemittancesWindow.comboCompanyPhone.Value
self:cCompanyPhone := self:CompanyPhoneItemsIDs[Self:cCompanyPhone]
self:cCompanyPhone1 := SendRemittancesWindow.comboCompanyPhone1.Value
self:cCompanyPhone1 := self:CompanyPhone1ItemsIDs[Self:cCompanyPhone1]
self:cCompanyPhone2 := SendRemittancesWindow.comboCompanyPhone2.Value
self:cCompanyPhone2 := self:CompanyPhone2ItemsIDs[Self:cCompanyPhone2]
self:cCompanyPhone3 := SendRemittancesWindow.comboCompanyPhone3.Value
self:cCompanyPhone3 := self:CompanyPhone3ItemsIDs[Self:cCompanyPhone3]
self:cCountryR := SendRemittancesWindow.comboCountryR.Value
self:cCountryR := self:CountryRItemsIDs[Self:cCountryR]
self:cSendingDate := SendRemittancesWindow.SendingDate.Value
self:cSendingDate = DTOC ( self:cSendingDate )
self:cCurrencyR := SendRemittancesWindow.comboCurrencyR.Value
self:cCurrencyR := self:CurrencyRItemsIDs[Self:cCurrencyR]
self:nAmountCurrencyR := SendRemittancesWindow.textAmountCurrencyR.Value
self:nAmountCurrencyR = VAL ( self:nAmountCurrencyR )
Return 0
Method Class2ADO Class SendRemittancesClass
self:oRS:fields:item("CustSenderName"):value := self:cSenderName
self:oRS:fields:item("CustSenderAddress"):value := self:cSenderAddress
self:oRS:fields:item("CustSenderPhone"):value := self:cSenderPhone
self:oRS:fields:item("SendingDate"):value := self:cSendingDate
self:oRS:fields:item("CustCompanyName"):value := self:cCompanyName
self:oRS:fields:item("CustCompanyPhone"):value := self:cCompanyPhone
self:oRS:fields:item("CustCompanyAddress"):value := self:cCompanyAddress
self:oRS:fields:item("CustCompanyPhone1"):value := self:cCompanyPhone1
self:oRS:fields:item("CustCompanyPhone2"):value := self:cCompanyPhone2
self:oRS:fields:item("CustCompanyPhone3"):value := self:cCompanyPhone3
self:oRS:fields:item("CustCountryR"):value := self:cCountryR
self:oRS:fields:item("CustCurrencyR"):value := self:cCurrencyR
self:oRS:fields:item("AmountCurrencyR"):value := self:nAmountCurrencyR
Return 0
Method ADO2Class Class SendRemittancesClass
self:cSenderName := self:oRS:fields:item("CustSenderName"):value
self:cSenderAddress := self:oRS:fields:item("CustSenderAddress"):value
self:cSenderPhone := self:oRS:fields:item("CustSenderPhone"):value
self:cSendingDate := self:oRS:fields:item("SendingDate"):value
self:cCompanyName := self:oRS:fields:item("CustCompanyName"):value
self:cCompanyPhone := self:oRS:fields:item("CustCompanyPhone"):value
self:cCompanyAddress := self:oRS:fields:item("CustCompanyAddress"):value
self:cCountryR := self:oRS:fields:item("CustCountryR"):value
self:cCompanyPhone1 := self:oRS:fields:item("CustCompanyPhone1"):value
self:cCompanyPhone2 := self:oRS:fields:item("CustCompanyPhone2"):value
self:cCompanyPhone3 := self:oRS:fields:item("CustCompanyPhone3"):value
self:cCurrencyR := self:oRS:fields:item("CustCurrencyR"):value
self:nAmountCurrencyR := self:oRS:fields:item("AmountCurrencyR"):value
Return 0
Method Class2UserInterface Class SendRemittancesClass
SendRemittancesWindow.textSenderName.Value := self:cSenderName
SendRemittancesWindow.textSenderAddress.Value := self:cSenderAddress
SendRemittancesWindow.textSenderPhone.Value := self:cSenderPhone
self:cCountryR = self:LookupIDToIndex(self:cCountryR,@self:CountryRItemsIDS)
SendRemittancesWindow.comboCountryR.Value := self:cCountryR
self:cCompanyName = self:LookupIDToIndex(self:cCompanyName,@self:CompanyNameItemsIDS)
SendRemittancesWindow.comboCompanyName.Value := self:cCompanyName
self:cCompanyAddress = self:LookupIDToIndex(self:cCompanyAddress,@self:CompanyAddressItemsIDS)
SendRemittancesWindow.comboCompanyAddress.Value := self:cCompanyAddress
self:cCompanyPhone = self:LookupIDToIndex(self:cCompanyPhone,@self:CompanyPhoneItemsIDS)
SendRemittancesWindow.comboCompanyPhone.Value := self:cCompanyPhone
self:cCompanyPhone1 = self:LookupIDToIndex(self:cCompanyPhone1,@self:CompanyPhone1ItemsIDS)
SendRemittancesWindow.comboCompanyPhone1.Value := self:cCompanyPhone1
self:cCompanyPhone2 = self:LookupIDToIndex(self:cCompanyPhone2,@self:CompanyPhone2ItemsIDS)
SendRemittancesWindow.comboCompanyPhone2.Value := self:cCompanyPhone2
self:cCompanyPhone3 = self:LookupIDToIndex(self:cCompanyPhone3,@self:CompanyPhone3ItemsIDS)
SendRemittancesWindow.comboCompanyPhone.Value := self:cCompanyPhone
SendRemittancesWindow.SendingDate.Value := ctod(self:cSendingDate)
self:cCurrencyR = self:LookupIDToIndex(self:cCurrencyR,@self:CurrencyRItemsIDS)
SendRemittancesWindow.comboCurrencyR.Value := self:cCurrencyR
cAmountCurrencyR = STR ( self:nAmountCurrencyR )
cAmountCurrencyR = ALLTRIM ( cAmountCurrencyR )
SendRemittancesWindow.textAmountCurrencyR.Value := cAmountCurrencyR
Return 0
Method ClearRecord Class SendRemittancesClass
self:cSenderName := ""
self:cSenderAddress := ""
self:cSenderPhone := 0
self:cCompanyName := 0
self:cCompanyAddress := 0
self:cCompanyPhone := 0
self:cCompanyPhone1 := 0
self:cCompanyPhone2 := 0
self:cCompanyPhone3 := 0
self:cCountryR := 0
self:cSendingDate := ""
self:cCurrencyR := 0
self:nAmountCurrencyR := 0
Return 0
Method closewindow Class SendRemittancesClass
myout = self:disconnect()
SendRemittancesWindow.Release ( )
Return 0
Method AutoGotoRecord Class SendRemittancesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( SendRemittancesWindow )
myout = self:showrecord()
SendRemittancesWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method setmode(p1) Class SendRemittancesClass
IF p1 = 1
SendRemittancesWindow.btnfirst.Enabled := true
SendRemittancesWindow.btnnext.Enabled := true
SendRemittancesWindow.btnprev.Enabled := true
SendRemittancesWindow.btnlast.Enabled := true
SendRemittancesWindow.btndel.Enabled := false
SendRemittancesWindow.btnclose.Enabled := false
SendRemittancesWindow.btnsave.Enabled := true
SendRemittancesWindow.btncancel.Enabled := true
SendRemittancesWindow.btnedit.Enabled := false
SendRemittancesWindow.btnadd.Enabled := false
SendRemittancesWindow.textSenderName.Enabled := true
SendRemittancesWindow.textSenderAddress.Enabled := true
SendRemittancesWindow.textSenderPhone.Enabled := true
SendRemittancesWindow.SendingDate.Enabled := true
SendRemittancesWindow.comboCompanyName.Enabled := true
SendRemittancesWindow.comboCompanyPhone.Enabled := true
SendRemittancesWindow.comboCompanyAddress.Enabled := true
SendRemittancesWindow.comboCompanyPhone1.Enabled := true
SendRemittancesWindow.comboCompanyPhone2.Enabled := true
SendRemittancesWindow.comboCompanyPhone3.Enabled := true
SendRemittancesWindow.comboCountryR.Enabled := true
SendRemittancesWindow.textAmountCurrencyR.Enabled := true
SendRemittancesWindow.comboCurrencyR.Enabled := true
ENDIF
IF p1 = 2
SendRemittancesWindow.btnfirst.Enabled := true
SendRemittancesWindow.btnnext.Enabled := true
SendRemittancesWindow.btnprev.Enabled := true
SendRemittancesWindow.btnlast.Enabled := true
SendRemittancesWindow.btndel.Enabled := true
SendRemittancesWindow.btnclose.Enabled := true
SendRemittancesWindow.btnsave.Enabled := false
SendRemittancesWindow.btncancel.Enabled := false
SendRemittancesWindow.btnedit.Enabled := true
SendRemittancesWindow.btnadd.Enabled := true
SendRemittancesWindow.textSenderName.Enabled := false
SendRemittancesWindow.textSenderAddress.Enabled := false
SendRemittancesWindow.textSenderPhone.Enabled := false
SendRemittancesWindow.SendingDate.Enabled := false
SendRemittancesWindow.comboCompanyName.Enabled := false
SendRemittancesWindow.comboCompanyPhone.Enabled := false
SendRemittancesWindow.comboCompanyAddress.Enabled := false
SendRemittancesWindow.comboCompanyPhone1.Enabled := false
SendRemittancesWindow.comboCompanyPhone2.Enabled := false
SendRemittancesWindow.comboCompanyPhone3.Enabled := false
SendRemittancesWindow.comboCountryR.Enabled := false
SendRemittancesWindow.textAmountCurrencyR.Enabled := false
SendRemittancesWindow.comboCurrencyR.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method showrecords Class SendRemittancesClass
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from SendRemittances_Grid",self:oCon,3,3 )
mymax := oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("There are no Record Show","Sorry")
Return 0
ENDIF
oRS:MOVEFIRST()
SendRemittancesWindow.grid1.DeleteAllItems ( )
SendRemittancesWindow.grid1.SetFocus ( )
FOR x = 1 TO mymax STEP 1
cSenderName := oRS:fields:item("CustSenderName"):value
cSenderAddress := oRS:fields:item("CustSenderAddress"):value
cSenderPhone := oRS:fields:item("CustSenderPhone"):value
cCountryR := oRS:fields:item("CountryR"):value
cCurrencyR := oRS:fields:item("CurrencyR"):value
nAmountCurrencyR := oRS:fields:item("AmountCurrencyR"):value
cSendingDate := oRS:fields:item("SendingDate"):value
cCompanyName := oRS:fields:item("CompanyName"):value
cCompanyAddress := oRS:fields:item("CompanyAddress"):value
cCompanyPhone := oRS:fields:item("CompanyPhone"):value
cCompanyPhone1 := oRS:fields:item("CompanyPhone1"):value
cCompanyPhone2 := oRS:fields:item("CompanyPhone2"):value
cCompanyPhone3 := oRS:fields:item("CompanyPhone3"):value
oRS:MOVENEXT()
myrecord := {}
nAmountCurrencyR = STR ( nAmountCurrencyR )
AADD( myrecord , cSendingDate)
AADD( myrecord , cSenderName)
AADD( myrecord , cSenderPhone)
AADD( myrecord , cSenderAddress)
AADD( myrecord , cCompanyName)
AADD( myrecord , cCompanyAddress)
AADD( myrecord , cCompanyPhone)
AADD( myrecord , cCompanyPhone1)
AADD( myrecord , cCompanyPhone2)
AADD( myrecord , cCompanyPhone3)
AADD( myrecord , nAmountCurrencyR)
AADD( myrecord , cCurrencyR)
AADD( myrecord , cCountryR)
SendRemittancesWindow.grid1.AddItem ( myrecord )
Next
Return 0
Proc Calculator
Execute File "back\calc.exe"
Return Nil
Proc proCompanyName
nValue := SendRemittancesWindow.comboCompanyName.Value
SendRemittancesWindow.comboCompanyAddress.Value := nValue
SendRemittancesWindow.comboCompanyPhone.Value := nValue
SendRemittancesWindow.comboCompanyPhone1.Value := nValue
SendRemittancesWindow.comboCompanyPhone2.Value := nValue
SendRemittancesWindow.comboCompanyPhone3.Value := nValue
Return Nil
Proc proCompanyAddress
nValue := SendRemittancesWindow.comboCompanyAddress.Value
SendRemittancesWindow.comboCompanyName.Value := nValue
SendRemittancesWindow.comboCompanyPhone.Value := nValue
SendRemittancesWindow.comboCompanyPhone1.Value := nValue
SendRemittancesWindow.comboCompanyPhone2.Value := nValue
SendRemittancesWindow.comboCompanyPhone3.Value := nValue
Return Nil
Proc proCompanyPhone
nValue := SendRemittancesWindow.comboCompanyPhone.Value
SendRemittancesWindow.comboCompanyName.Value := nValue
SendRemittancesWindow.comboCompanyAddress.Value := nValue
SendRemittancesWindow.comboCompanyPhone1.Value := nValue
SendRemittancesWindow.comboCompanyPhone2.Value := nValue
SendRemittancesWindow.comboCompanyPhone3.Value := nValue
Return Nil
Proc proCompanyPhone1
nValue := SendRemittancesWindow.comboCompanyPhone1.Value
SendRemittancesWindow.comboCompanyName.Value := nValue
SendRemittancesWindow.comboCompanyAddress.Value := nValue
SendRemittancesWindow.comboCompanyPhone.Value := nValue
SendRemittancesWindow.comboCompanyPhone2.Value := nValue
SendRemittancesWindow.comboCompanyPhone3.Value := nValue
Return Nil
Proc proCompanyPhone2
nValue := SendRemittancesWindow.comboCompanyPhone2.Value
SendRemittancesWindow.comboCompanyName.Value := nValue
SendRemittancesWindow.comboCompanyAddress.Value := nValue
SendRemittancesWindow.comboCompanyPhone.Value := nValue
SendRemittancesWindow.comboCompanyPhone1.Value := nValue
SendRemittancesWindow.comboCompanyPhone3.Value := nValue
Return Nil
Proc proCompanyPhone3
nValue := SendRemittancesWindow.comboCompanyPhone3.Value
SendRemittancesWindow.comboCompanyName.Value := nValue
SendRemittancesWindow.comboCompanyAddress.Value := nValue
SendRemittancesWindow.comboCompanyPhone.Value := nValue
SendRemittancesWindow.comboCompanyPhone1.Value := nValue
SendRemittancesWindow.comboCompanyPhone2.Value := nValue
Return Nil



End Of Resistance

*-------------------------------------------------------------------*
