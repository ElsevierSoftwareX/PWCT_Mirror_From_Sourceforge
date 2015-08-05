*---------------------------------------------------------------------------*
* Time : 03:46:49    Date : 07/21/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadcustomers
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_customers_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customers_19art1() code
class CustomersClass From SystemDatabase
Data cWindowName init "customersName"
Data cName init ""
Data cAdress init ""
Data cPhone init ""
Data nCountryID init 0
Data aCountryItems init {}
Data aCountryItemsID init {}
Data dDateOfBirth init Date()
Data nBalance init 0
Data TableName init "customers"
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method checkData
Method TotalBalance
EndClass
Method showwindow Class CustomersClass
IF usersobj:checkpermission(1)=False
MyOut := MSGBOX("Access is denied "," ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
out = self:LoadLookupTable("country","country",@self:acountryItems,"ID",@self:acountryItemsID)
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 835 ;
HEIGHT 422 ;
ICON "PWCTICON" ;
TITLE "Data Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,225,255} 

@ 43 ,15 IMAGE image1;
PICTURE "images\PWCT.PNG";
STRETCH ;
WIDTH 677 HEIGHT 287
@ 8 ,8 LABEL lblTitle ;
VALUE "Customers" ;
WIDTH 129 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {128,128,0}
@ 340 ,44 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,192};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,107 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,192};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,233 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,192};
ON CLICK self:lastrecord()  ;
WIDTH 66 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 343 ,721 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,170 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,192};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 244 ,712 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 160 ,712 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 202 ,712 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 118 ,712 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 76 ,712 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 286 ,695 BUTTONEX btnTotalBalance;
CAPTION "TotalBalance";
ON CLICK self:TotalBalance()  ;
WIDTH 120 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 68 ,26 LABEL lblName ;
VALUE "Name " ;
WIDTH 58 ;
HEIGHT 20 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 108 ,26 LABEL lblAdress ;
VALUE "Adress " ;
WIDTH 63 ;
HEIGHT 22 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 150 ,26 LABEL lblphone ;
VALUE "phone " ;
WIDTH 58 ;
HEIGHT 20 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 62 ,134 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0} 

@ 104 ,134 TEXTBOX textAdress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0} 

@ 146 ,134 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0} 

@ 190 ,26 LABEL lbl5 ;
VALUE "Country" ;
WIDTH 65 ;
HEIGHT 22 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 188 ,134 COMBOBOX combocountry;
WIDTH 200 ;
HEIGHT 300;
ITEMS self:acountryitems ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0}
@ 225 ,134 DATEPICKER DateOfBirth;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0}
@ 232 ,26 LABEL lblBirth ;
VALUE "Birth Date " ;
WIDTH 84 ;
HEIGHT 24 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 262 ,134 TEXTBOX textBalance;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,210} ;
FONTCOLOR {0,0,0} 

@ 265 ,26 LABEL lblBalance ;
VALUE "Balance " ;
WIDTH 72 ;
HEIGHT 22 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class CustomersClass
self:cName := &(self:cWindowName).textName.Value
self:cAdress := &(self:cWindowName).textAdress.Value
self:cPhone := &(self:cWindowName).textPhone.Value
self:ncountryID := &(self:cWindowName).combocountry.Value
self:ncountryID := self:aCountryItemsID[self:nCountryID]
self:dDateOfbirth := &(self:cWindowName).DateOfBirth.Value
self:nBalance := &(self:cWindowName).textBalance.Value
self:nBalance = VAL ( self:nBalance )
Return 0
Method Class2ADO Class CustomersClass
self:oRS:fields:item(alltrim("castName")):value := self:cName
self:oRS:fields:item(alltrim("castAdress")):value := self:cAdress
self:oRS:fields:item(alltrim("castPhone")):value := self:cPhone
self:oRS:fields:item(alltrim("countryID")):value := self:ncountryID
self:oRS:fields:item(alltrim("DateOfBirth")):value := self:dDateOfbirth
self:oRS:fields:item(alltrim("Balance")):value := self:nBalance
Return 0
Method ADO2Class Class CustomersClass
self:cName := self:oRS:fields:item(alltrim("castName")):value
self:cAdress := self:oRS:fields:item(alltrim("castAdress")):value
self:cPhone := self:oRS:fields:item(alltrim("castphone")):value
self:ncountryID := self:oRS:fields:item(alltrim("CountryID")):value
self:dDateOfbirth := self:oRS:fields:item(alltrim("DateOfBirth")):value
self:nBalance := self:oRS:fields:item(alltrim("Balance")):value
Return 0
Method Class2UserInterface Class CustomersClass
&(self:cWindowName).textName.Value := self:cName
&(self:cWindowName).textAdress.Value := self:cAdress
&(self:cWindowName).textPhone.Value := self:cPhone
nindex = self:lookupIDToIndex(self:ncountryID,self:acountryitemsID)
&(self:cWindowName).combocountry.Value := nindex
&(self:cWindowName).DateOfBirth.Value := self:dDateOfbirth
&(self:cWindowName).textName.Value := self:cName
cBalance = STR ( self:nBalance )
cBalance = ALLTRIM ( cBalance )
&(self:cWindowName).textBalance.Value := cBalance
Return 0
Method ClearRecord Class CustomersClass
self:cName := ""
self:cAdress := ""
self:cPhone := ""
self:nCountryID := 0
self:dDateOfBirth := Date()
self:nBalance := 0
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
&(self:cWindowName).textAdress.Enabled := True
&(self:cWindowName).textPhone.Enabled := True
&(self:cWindowName).combocountry.Enabled := True
&(self:cWindowName).DateOfBirth.Enabled := True
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
&(self:cWindowName).textAdress.Enabled := False
&(self:cWindowName).textPhone.Enabled := False
&(self:cWindowName).combocountry.Enabled := False
&(self:cWindowName).DateOfBirth.Enabled := False
&(self:cWindowName).textBalance.Enabled := False
ENDIF
self:OperationMode := p1
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
Method checkData Class CustomersClass
Local Lreturn,cName,nCountry
Lreturn := True
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF cName==""
MyOut := MSGBOX("Please enterCustomer Name "," Alert")
Lreturn := False
ENDIF
nCountry := &(self:cWindowName).combocountry.Value
IF nCountry=0
MyOut := MSGBOX("Please Select The Country ! ","Alert")
Lreturn := False
ENDIF
Return Lreturn
Method TotalBalance Class CustomersClass
MyoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
MyoRS:CursorType := 1
MyoRS:ActiveConnection := self:oCon
MyoRS:open ( "Select * from TotalBalance",self:oCon,3,3 )
MyoRS:MOVEFIRST()
nBalance := MyoRS:fields:item(alltrim("SumOfBalance")):value
MyOut := MSGBOX(nBalance,"Balance ")
MyoRS:Close()
Return 0


End Of Resistance

*-------------------------------------------------------------------*
