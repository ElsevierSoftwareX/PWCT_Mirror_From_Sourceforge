*---------------------------------------------------------------------------*
* Time : 15:53:08    Date : 03/28/2012
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
class CustomersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "Customer"
Data cCustname init 0
Data cCustaddress init 0
Data cCustphone init 0
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Data cDateOfBirth init ""
Data nBalance init 0
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method CheckData
Method GetTotalBalance
EndClass
Method showwindow Class CustomersDataClass
IF UsersObject:CheckPermission(1) = false
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomersDataWindow )
DEFINE WINDOW CustomersDataWindow ;
AT 10 ,10 ;
WIDTH 831 ;
HEIGHT 517 ;
ICON "PWCTICON" ;
TITLE "Customer Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 48 ,5 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 812 HEIGHT 337
@ 8 ,6 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 675 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 404 ,348 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,411 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,540 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,695 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,477 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,609 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 404 ,184 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 404 ,256 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 404 ,113 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 404 ,30 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 65 ,181 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 140 ,180 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 206 ,179 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 62 ,390 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 133 ,390 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 201 ,392 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

Myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 255 ,180 LABEL lbl4 ;
VALUE "Country" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 246 ,391 COMBOBOX comboCountry;
WIDTH 203 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 296 ,184 LABEL lbl5 ;
VALUE "Date Of Birth" ;
WIDTH 198 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,255,128}
@ 295 ,393 DATEPICKER dateofbirth;
WIDTH 203 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 340 ,184 LABEL lblBalance ;
VALUE "Balance" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 338 ,394 TEXTBOX textBalance;
HEIGHT 27 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 6 ,691 BUTTONEX btnTotalBalance;
CAPTION "Get Total Balance";
ON CLICK self:GetTotalBalance()  ;
WIDTH 121 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

CustomersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CustomersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:cCustname := CustomersDataWindow.text1.Value
self:cCustaddress := CustomersDataWindow.text2.Value
self:cCustphone := CustomersDataWindow.text3.Value
self:nCountry := CustomersDataWindow.ComboCountry.Value
self:nCountry := self:CountryItemsIDS[self:nCountry]
self:cDateOfBirth := CustomersDataWindow.dateofbirth.Value
self:cDateOfBirth = DTOC ( self:cDateOfBirth )
self:nBalance := CustomersDataWindow.textBalance.Value
self:nBalance = VAL ( self:nBalance )
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item("CustName"):value := self:cCustname
self:oRS:fields:item("CustAddress"):value := self:cCustaddress
self:oRS:fields:item("CustPhone"):value := self:cCustphone
self:oRS:fields:item("CountryID"):value := self:nCountry
self:oRS:fields:item("DateOfBirth"):value := self:cDateOfBirth
self:oRS:fields:item("Balance"):value := self:nBalance
Return 0
Method ADO2Class Class CustomersDataClass
self:cCustname := self:oRS:fields:item("CustName"):value
self:cCustaddress := self:oRS:fields:item("CustAddress"):value
self:cCustphone := self:oRS:fields:item("CustPhone"):value
self:nCountry := self:oRS:fields:item("CountryID"):value
self:cDateOfBirth := self:oRS:fields:item("DateOfBirth"):value
self:nBalance := self:oRS:fields:item("Balance"):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomersDataWindow.text1.Value := self:cCustname
CustomersDataWindow.text2.Value := self:cCustaddress
CustomersDataWindow.text3.Value := self:cCustphone
self:nCountry = self:LookupIDToIndex(self:nCountry,@self:CountryItemsIDS)
CustomersDataWindow.ComboCountry.Value := self:nCountry
CustomersDataWindow.dateofbirth.Value := ctod(self:cDateOfBirth)
cBalance = STR ( self:nBalance )
cBalance = ALLTRIM ( cBalance )
CustomersDataWindow.textBalance.Value := cBalance
Return 0
Method ClearRecord Class CustomersDataClass
self:cCustname := ""
self:cCustaddress := ""
self:cCustphone := ""
self:nCountry := ""
self:self:cDateOfBirth := ""
self:nBalance := 0
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
CustomersDataWindow.text1.Enabled := true
CustomersDataWindow.text2.Enabled := true
CustomersDataWindow.text3.Enabled := true
CustomersDataWindow.ComboCountry.Enabled := true
CustomersDataWindow.dateofbirth.Enabled := true
CustomersDataWindow.textBalance.Enabled := true
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
CustomersDataWindow.text1.Enabled := false
CustomersDataWindow.text2.Enabled := false
CustomersDataWindow.text3.Enabled := false
CustomersDataWindow.ComboCountry.Enabled := false
CustomersDataWindow.dateofbirth.Enabled := false
CustomersDataWindow.textBalance.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class CustomersDataClass
Local myret,cName,nCountry
cName := CustomersDataWindow.text1.Value
cName = ALLTRIM ( cName )
IF cName == ""
MyOut := MSGBOX("Please Enter Customer Name","Sorry")
myret := false
ENDIF
nCountry := CustomersDataWindow.comboCountry.Value
IF nCountry = 0
MyOut := MSGBOX("Please Select the Country","Sorry")
myret := false
ENDIF
Return myret
Method GetTotalBalance Class CustomersDataClass
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from TotalBalance",self:oCon,3,3 )
nBalance := myoRS:fields:item("SumOfbalance"):value
cBalance = STR ( nBalance )
MyOut := MSGBOX(cBalance,"Total Balance")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "SELECT Sum(Customer.balance) AS SumOfbalance from customer",self:oCon,3,3 )
nBalance := myoRS:fields:item("SumOfbalance"):value
cBalance = STR ( nBalance )
MyOut := MSGBOX(cBalance,"Total Balance")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from customer",self:oCon,3,3 )
nBalance := 0
nMax := myoRS:RecordCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
CustBalance := myoRS:fields:item("Balance"):value
nBalance := nBalance + CustBalance
myoRS:MOVENEXT()
Next
ENDIF
cBalance = STR ( nBalance )
MyOut := MSGBOX(cBalance,"Total Balance")
myoRS:Close()
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
