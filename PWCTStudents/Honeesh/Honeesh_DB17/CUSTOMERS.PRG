*---------------------------------------------------------------------------*
* Time : 16:58:37    Date : 06/14/2012
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
class CustomersClass From SystemDatabase
Data cWindowName init "CustomersWindow"
Data TableName init "Customers"
Data nCountryID init 0
Data aCountryItems init {}
Data aCountryItemsIDs init {}
Data cName init ""
Data cAddress init ""
Data cPhone init ""
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
Method TotalBalance
EndClass
Method showwindow Class CustomersClass
IF UsersObject:CheckPermission(1)=False
MyOut := MSGBOX("Access is denied ","Sorry ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Customers Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 42 ,1 IMAGE image1;
PICTURE "images\Back.jpg";
STRETCH ;
WIDTH 758 HEIGHT 321
@ 8 ,6 LABEL lblTitle ;
VALUE "Customers Window" ;
WIDTH 553 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 376 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 376 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 376 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 376 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 376 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 78 ,40 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 204 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 129 ,36 LABEL lbl2 ;
VALUE "Adress " ;
WIDTH 200 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 181 ,34 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 201 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 77 ,213 TEXTBOX textName;
HEIGHT 37 ;
WIDTH 325 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 128 ,210 TEXTBOX textAddress;
HEIGHT 36 ;
WIDTH 327 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 180 ,208 TEXTBOX textPhone;
HEIGHT 38 ;
WIDTH 218 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = Self:LoadLookupTable("Country","Country",@Self:aCountryItems,"ID",@Self:aCountryItemsIDs)
@ 230 ,206 COMBOBOX comboCountry;
WIDTH 220 ;
HEIGHT 420;
ITEMS Self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,31 LABEL lbl4 ;
VALUE "Country " ;
WIDTH 199 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,33 LABEL lbl5 ;
VALUE "Balance " ;
WIDTH 197 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 271 ,206 TEXTBOX textBalance;
HEIGHT 33 ;
WIDTH 203 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 7 ,587 BUTTONEX btnTotalBalance;
CAPTION "Total Balance ";
ON CLICK Self:TotalBalance()  ;
WIDTH 129 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class CustomersClass
Self:cName := &(self:cWindowName).textName.Value
Self:cAddress := &(self:cWindowName).textAddress.Value
Self:cPhone := &(self:cWindowName).textPhone.Value
Self:nCountryID := &(self:cWindowName).comboCountry.Value
Self:nCountryID := Self:aCountryItemsIDs[Self:nCountryID]
Self:nBalance := &(self:cWindowName).textBalance.Value
Self:nBalance = VAL ( Self:nBalance )
Return 0
Method Class2ADO Class CustomersClass
Self:oRS:fields:item(alltrim("CustName ")):value := Self:cName
Self:oRS:fields:item(alltrim("CustAddress ")):value := Self:cAddress
Self:oRS:fields:item(alltrim("CustPhone ")):value := Self:cPhone
Self:oRS:fields:item(alltrim("CountryID ")):value := Self:nCountryID
Self:oRS:fields:item(alltrim(" Balance")):value := Self:nBalance
Return 0
Method ADO2Class Class CustomersClass
Self:cName := Self:oRS:fields:item(alltrim("CustName")):value
Self:cAddress := Self:oRS:fields:item(alltrim("CustAddress")):value
Self:cPhone := Self:oRS:fields:item(alltrim("CustPhone")):value
Self:nCountryID := Self:oRS:fields:item(alltrim(" CountryID")):value
Self:nBalance := Self:oRS:fields:item(alltrim("Balance ")):value
Return 0
Method Class2UserInterface Class CustomersClass
&(self:cWindowName).textName.Value := Self:cName
&(self:cWindowName).textAddress.Value := Self:cAddress
&(self:cWindowName).textPhone.Value := Self:cPhone
nIndex = Self:LookupIDToIndex(Self:nCountryID,Self:aCountryItemsIDs)
&(self:cWindowName).comboCountry.Value := nIndex
cBalance = STR ( Self:nBalance )
&(self:cWindowName).textBalance.Value := cBalance
cBalance = ALLTRIM ( cBalance )
Return 0
Method ClearRecord Class CustomersClass
Self:cName := ""
Self:cAddress := ""
Self:cPhone := ""
Self:nCountryID := 0
Self:nBalance := 0
Return 0
Method setmode(p1) Class CustomersClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textName.Enabled := True
&(self:cWindowName).textAddress.Enabled := True
&(self:cWindowName).textPhone.Enabled := True
&(self:cWindowName).comboCountry.Enabled := False
&(self:cWindowName).textBalance.Enabled := True
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textName.Enabled := False
&(self:cWindowName).textAddress.Enabled := False
&(self:cWindowName).textPhone.Enabled := False
&(self:cWindowName).comboCountry.Enabled := False
&(self:cWindowName).textBalance.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class CustomersClass
Local IRet,cName,nCountry
IRet := True
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF cName==""
MyOut := MSGBOX("Please Enter Customer Name ","Sorry ")
IRet := False
ENDIF
nCountry := &(self:cWindowName).comboCountry.Value
IF nCountry=0
MyOut := MSGBOX("Please Select The Country ","Sorry ")
IRet := False
ENDIF
Return IRet
Method TotalBalance Class CustomersClass
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := Self:oCon
myoRS:open ( "Select * from TotalBalance",Self:oCon,3,3 )
myoRS:MOVEFIRST()
nBalance := myoRS:fields:item(alltrim("SumOfBalance ")):value
MyOut := MSGBOX(nBalance,"Balance ")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := Self:oCon
myoRS:open ( "SELECT Sum(Customers.Balance) AS SumOfBalance from Customers",Self:oCon,3,3 )
myoRS:MOVEFIRST()
nBalance := myoRS:fields:item(alltrim("SumOfBalance ")):value
MyOut := MSGBOX(nBalance,"Balance ")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := Self:oCon
myoRS:open ( "Select * from Customers",Self:oCon,3,3 )
nTotal := 0
nMax := myoRS:RecordCount
IF nMax > 0
myoRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
nCustBalance := myoRS:fields:item(alltrim(" Balance")):value
nTotal := nTotal+nCustBalance
myoRS:MOVENEXT()
Next
ENDIF
MyOut := MSGBOX(nTotal,"Balance ")
Return 0
Method closewindow Class CustomersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class CustomersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
