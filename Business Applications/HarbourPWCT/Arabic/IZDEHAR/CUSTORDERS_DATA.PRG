*---------------------------------------------------------------------------*
* Time : 21:57:11    Date : 12/06/2010
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
Function CUSTORDERS_DATA
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

Resistance R_CUSTORDERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTORDERS_DATA_15speed1() code
class CustOrdersClass From SystemDatabase
Data columns init {"paylater","payfirst","paymethod","invoicenumber","FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate","OrderStatus"}
Data FindTitles init {"—ﬁ„ «·œÊ—…","‰Ê⁄ «·œÊ—…","«”„ «·œÊ—…","«”„ «·„Õ«÷—"," «—ÌŒ «·œÊ—…"," «—ÌŒ «·«‰ Â«¡"}
Data TableName init "CustOrders"
Data CustID init 0
Data PrimaryKey init "OrderNumber"
Data PrimaryKey2 init "OrderNumber"
Data resultprimarykeys2 init {}
Data TableName2 init "CustOrdersMaybe"
Data CustName init ""
Data paymethoditems init {}
Data paymethoditemsids init {}
Data cPayMethod init 0
Data columns2 init {"FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data V1 init 0
Data V2 init 0
Data V3 init 0
Data V4 init 0
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method ShowDataWindow
Method search2
Method MyStart
Method OpenDataWindow2
Method ShowDataWindow2
Method RecCust
Method RecMaybe
Method Convert
Method EditValues
Method SaveValues
EndClass
Method showwindow Class CustOrdersClass
if !iswindowdefined( CustOrdersWindow )
DEFINE WINDOW CustOrdersWindow ;
AT 10 ,10 ;
WIDTH 1040 ;
HEIGHT 585 ;
ON INIT self:MyStart()  ;
ICON "PWCTICON" ;
TITLE "œÊ—«  «·„‘ —ﬂ »Â« «Ê «·„” ›”— ⁄‰Â«  „ œ—»" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -4 ,-13 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1060 HEIGHT 580
@ 500 ,25 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 4 ,433 LABEL lbl1 ;
VALUE "œÊ—«  „‘ —ﬂ »Â« «·„ œ—»" ;
WIDTH 180 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 240 ,423 LABEL lbl2 ;
VALUE "œÊ—«  «” ›”— ⁄‰Â« «·„ œ—»" ;
WIDTH 220 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,24 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow()  ;
WIDTH 980 ;
HEIGHT 180 ;
HEADERS {"«·„»·€ «·„ »ﬁÏ","«·„»·€ «·„œ›Ê⁄","ÿ—Ìﬁ… «·”œ«œ","—ﬁ„ «·”‰œ"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","‰Ê⁄ «·œÊ—…","—ﬁ„ «·œÊ—…"};
WIDTHS {100,100,100,100,180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 281 ,25 GRID Grid2browse;
ON DBLCLICK self:OpenDataWindow2()  ;
WIDTH 980 ;
HEIGHT 180 ;
HEADERS {" «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","‰Ê⁄ «·œÊ—…","—ﬁ„ «·œÊ—…"};
WIDTHS {180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 238 ,814 BUTTONEX btnRecMaybe;
CAPTION " ”ÃÌ· „” ›”—";
ON CLICK self:RecMaybe()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 500 ,814 BUTTONEX btnConvert;
CAPTION " ÕÊÌ· „” ›”— ·„ œ—»";
ON CLICK self:Convert()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 469 ,377 LABEL lblpayfirst ;
VALUE "«·„»·€ «·„œ›Ê⁄" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 469 ,291 TEXTBOX textpayfirst;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 507 ,373 LABEL lblpaylater ;
VALUE "«·„»·€ «·„ »ﬁÏ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 507 ,291 TEXTBOX textpaylater;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 469 ,635 LABEL lblinvoicenumber ;
VALUE "—ﬁ„ «·”‰œ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 469 ,487 TEXTBOX textinvoicenumber;
HEIGHT 30 ;
WIDTH 130 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("paymethod","paymethod",@self:paymethodItems,"id",@self:paymethodItemsIDS)
@ 505 ,633 LABEL lblpaymethod ;
VALUE "ÿ—Ìﬁ… «·”œ«œ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 505 ,487 COMBOBOX combopaymethod;
WIDTH 130 ;
HEIGHT 100;
ITEMS self:paymethoditems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,24 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editvalues()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustOrdersWindow.Center ( )
ACTIVATE WINDOW CustOrdersWindow
EndIF

Return 0
Method closewindow Class CustOrdersClass
CustOrdersWindow.Release ( )
Return 0
Method search Class CustOrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:TableName + " where customerid = " + self:custid,self:oCon,3,3 )
mymax := oRS:RecordCount
CustOrdersWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
CustOrdersWindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustOrdersWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
myout = self:DisConnect()
Return 0
Method OpenDataWindow Class CustOrdersClass
Local nvalue,myout
nvalue := CustOrdersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nValue) Class CustOrdersClass
OrdersEnterObject:LFindRecord := true
OrdersEnterObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = OrdersEnterObject:ShowWindow()
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0
Method search2 Class CustOrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:TableName2 + " where friendid = " + self:custid,self:oCon,3,3 )
mymax := oRS:RecordCount
CustOrdersWindow.grid2browse.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustOrdersWindow.grid2browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns2[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustOrdersWindow.grid2browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
myout = self:DisConnect()
CustOrdersWindow.textPayFirst.Value := ""
CustOrdersWindow.textPayLater.Value := ""
CustOrdersWindow.textInvoiceNumber.Value := ""
CustOrdersWindow.ComboPayMethod.Value := 1
Return 0
Method MyStart Class CustOrdersClass
myout = self:Search()
myout = self:Search2()
Return 0
Method OpenDataWindow2 Class CustOrdersClass
Local nvalue,myout
nvalue := CustOrdersWindow.grid2browse.Value
IF nvalue > 0
myout = self:ShowDataWindow2(nvalue)
ENDIF
Return 0
Method ShowDataWindow2(nValue) Class CustOrdersClass
OrdersEnterObject:LFindRecord := true
OrdersEnterObject:CFindExpr := self:primarykey2+"= '"+self:resultprimarykeys2[nvalue]+"' "
myout = OrdersEnterObject:ShowWindow()
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0
Method RecCust Class CustOrdersClass
myout = OrdersEnterObject:AutoCustRec(self:CustID)
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0
Method RecMaybe Class CustOrdersClass
myout = CustFriendsObject:AutoCustRec(self:CustID)
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0
Method Convert Class CustOrdersClass
Local nvalue,myout,myorderid,mycustid,myorderidreal
myout = self:Connect()
nvalue := CustOrdersWindow.grid2browse.Value
IF nvalue > 0
myorderid := CustOrdersWindow.Grid2Browse.cell(nValue,6)
mycustid := self:custid
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Orders where ordernumber = " + myorderid,self:oCon,3,3 )
myOrderIDReal := oRS:fields:item("ID"):value
oRS:Close()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems where orderid = " + myorderid + " and customerid = " + mycustid,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX(" „  ”ÃÌ· Â–« «·⁄„Ì· ”«»ﬁ«","⁄›Ê«")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("customerid"):value := mycustid
oRS:fields:item("Orderid"):value := myorderid
oRS:fields:item("customerhowknow"):value := 1
oRS:fields:item("InvoiceNumber"):value := "0"
oRS:fields:item("UserName"):value := usersobject:enteredusername
oRS:fields:item("empid"):value := UsersObject:EnteredEmployeeID
oRS:fields:item("invoicenumber"):value := CustOrdersWindow.textInvoiceNumber.value
oRS:fields:item("payfirst"):value := CustOrdersWindow.textPayFirst.value
oRS:fields:item("paylater"):value := CustOrdersWindow.textPayLater.value
self:cPayMethod := CustOrdersWindow.ComboPayMethod.Value
self:cPayMethod := self:PayMethodItemsids[self:cPayMethod]
oRS:fields:item("paymethodid"):value := self:cPayMethod
oRS:UPDATE()
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("employeeid"):value := UsersObject:EnteredEmployeeID
oRS:fields:item("ordernumberID"):value := myorderidreal
oRS:fields:item("noofpcs"):value := "  ”ÃÌ· «·⁄„Ì· " + self:CustName
oRS:fields:item("finishtime"):value := time()
oRS:fields:item("dateofinput"):value := alltrim(dtoc(date()))
oRS:UPDATE()
oRS:Close()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All where orderid = " + myorderid + " and Friendid = " + mycustid,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item("RecordStatusid"):value := 3
oRS:UPDATE()
ENDIF
oRS:Close()
ELSE
nvalue := CustOrdersWindow.grid2browse.ItemCount
IF nValue = 0
MyOut := MSGBOX("·«ÌÊÃœ œÊ—«  «” ›”— ⁄‰Â« «·„ œ—»","⁄›Ê«")
ELSE
MyOut := MSGBOX("ÌÃœ «‰  Œ «— «·œÊ—… «· Ï «” ›”— ⁄‰Â« «·„ œ—» „‰ «·ﬁ«∆„…","⁄›Ê«")
ENDIF
ENDIF
myout = self:DisConnect()
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0
Method EditValues Class CustOrdersClass
Local nvalue,myout,myorderid,mycustid,myorderidreal
myout = self:Connect()
nvalue := CustOrdersWindow.grid1browse.Value
IF nvalue > 0
myorderid := CustOrdersWindow.Grid1Browse.cell(nValue,10)
mycustid := self:custid
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Orders where ordernumber = " + myorderid,self:oCon,3,3 )
myOrderIDReal := oRS:fields:item("ID"):value
oRS:Close()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems where orderid = " + myorderid + " and customerid = " + mycustid,self:oCon,3,3 )
self:v1 := oRS:fields:item("invoicenumber"):value
self:v2 := oRS:fields:item("payfirst"):value
self:v3 := oRS:fields:item("paylater"):value
self:v4 := oRS:fields:item("paymethodid"):value
self:v4 = self:LookupIDToIndex(self:v4,@self:paymethoditemsids)
if !iswindowdefined( winEditRec )
DEFINE WINDOW winEditRec ;
AT 10 ,10 ;
WIDTH 474 ;
HEIGHT 206 ;
ICON "PWCTICON" ;
TITLE " ⁄œÌ· »Ì«‰«  ⁄„Ì· „”Ã· ›Ï œÊ—…" ;
MODAL ;
BACKCOLOR {236,233,216}

@ 24 ,111 LABEL lblpayfirst ;
VALUE "«·„»·€ «·„œ›Ê⁄" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 24 ,25 TEXTBOX textpayfirst;
HEIGHT 30 ;
WIDTH 70 ;
VALUE self:v2 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 62 ,107 LABEL lblpaylater ;
VALUE "«·„»·€ «·„ »ﬁÏ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 62 ,25 TEXTBOX textpaylater;
HEIGHT 30 ;
WIDTH 70 ;
VALUE self:v3 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 24 ,369 LABEL lblinvoicenumber ;
VALUE "—ﬁ„ «·”‰œ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 24 ,221 TEXTBOX textinvoicenumber;
HEIGHT 30 ;
WIDTH 130 ;
VALUE self:v1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("paymethod","paymethod",@self:paymethodItems,"id",@self:paymethodItemsIDS)
@ 60 ,367 LABEL lblpaymethod ;
VALUE "ÿ—Ìﬁ… «·”œ«œ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 60 ,221 COMBOBOX combopaymethod;
WIDTH 130 ;
HEIGHT 100;
ITEMS self:paymethoditems ;
VALUE self:v4 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 113 ,240 BUTTONEX btnSave;
CAPTION "Õ›Ÿ";
ON CLICK self:savevalues()  ;
WIDTH 98 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 113 ,126 BUTTONEX btnCancel;
CAPTION "«·€«¡";
ON CLICK winEditRec.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winEditRec.Center ( )
ACTIVATE WINDOW winEditRec
EndIF

oRS:fields:item("invoicenumber"):value := self:v1
oRS:fields:item("payfirst"):value := self:v2
oRS:fields:item("paylater"):value := self:v3
oRS:fields:item("paymethodid"):value := self:v4
oRS:UPDATE()
oRS:Close()
myout = self:DisConnect()
myout = self:search()
Return 0
ELSE
nvalue := CustOrdersWindow.grid1browse.ItemCount
IF nValue = 0
MyOut := MSGBOX("·«ÌÊÃœ œÊ—«  „”Ã· ›ÌÂ« «·„ œ—»","⁄›Ê«")
ELSE
MyOut := MSGBOX("ÌÃœ «‰  Œ «— «·œÊ—… «· Ï ”Ã· ›ÌÂ« «·„ œ—» „‰ «·ﬁ«∆„…","⁄›Ê«")
ENDIF
ENDIF
myout = self:DisConnect()
Return 0
Method SaveValues Class CustOrdersClass
self:v1 := winEditRec.textInvoiceNumber.value
self:v2 := winEditRec.textPayFirst.value
self:v3 := winEditRec.textPayLater.value
self:v4 := winEditRec.ComboPayMethod.value
self:v4 := self:PayMethodItemsids[self:v4]
winEditRec.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
