*---------------------------------------------------------------------------*
* Time : 20:53:16    Date : 12/05/2010
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
Data columns init {"FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate","OrderStatus"}
Data FindTitles init {"ÑŞã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÇÓã ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÊÇÑíÎ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ"}
Data TableName init "CustOrders"
Data CustID init 0
Data PrimaryKey init "OrderNumber"
Data PrimaryKey2 init "OrderNumber"
Data resultprimarykeys2 init {}
Data TableName2 init "CustOrdersMaybe"
Data CustName init ""
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
EndClass
Method showwindow Class CustOrdersClass
if !iswindowdefined( CustOrdersWindow )
DEFINE WINDOW CustOrdersWindow ;
AT 10 ,10 ;
WIDTH 1040 ;
HEIGHT 549 ;
ON INIT self:MyStart()  ;
ICON "PWCTICON" ;
TITLE "ÏæÑÇÊ ÇáãÔÊÑß ÈåÇ Çæ ÇáãÓÊİÓÑ ÚäåÇ  ãÊÏÑÈ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0}

@ -5 ,-12 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1060 HEIGHT 540
@ 471 ,25 BUTTONEX btnClose;
CAPTION "ÇÛáÇŞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 4 ,433 LABEL lbl1 ;
VALUE "ÏæÑÇÊ ãÔÊÑß ÈåÇ ÇáãÊÏÑÈ" ;
WIDTH 180 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 240 ,423 LABEL lbl2 ;
VALUE "ÏæÑÇÊ ÇÓÊİÓÑ ÚäåÇ ÇáãÊÏÑÈ" ;
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
HEADERS {"ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÑŞã ÇáÏæÑÉ"};
WIDTHS {180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 281 ,25 GRID Grid2browse;
ON DBLCLICK self:OpenDataWindow2()  ;
WIDTH 980 ;
HEIGHT 180 ;
HEADERS {"ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÑŞã ÇáÏæÑÉ"};
WIDTHS {180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 238 ,814 BUTTONEX btnRecMaybe;
CAPTION "ÊÓÌíá ãÓÊİÓÑ";
ON CLICK self:RecMaybe()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 469 ,814 BUTTONEX btnConvert;
CAPTION "ÊÍæíá ãÓÊİÓÑ áãÊÏÑÈ";
ON CLICK self:Convert()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 469 ,467 LABEL lblpayfirst ;
VALUE "ÇáãÈáÛ ÇáãÏİæÚ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 469 ,381 TEXTBOX textpayfirst;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 469 ,277 LABEL lblpaylater ;
VALUE "ÇáãÈáÛ ÇáãÊÈŞì" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 469 ,195 TEXTBOX textpaylater;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 469 ,727 LABEL lblinvoicenumber ;
VALUE "ÑŞã ÇáÓäÏ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 469 ,585 TEXTBOX textinvoicenumber;
HEIGHT 30 ;
WIDTH 130 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

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
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
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
MyOut := MSGBOX("Êã ÊÓÌíá åĞÇ ÇáÚãíá ÓÇÈŞÇ","ÚİæÇ")
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
oRS:UPDATE()
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("employeeid"):value := UsersObject:EnteredEmployeeID
oRS:fields:item("ordernumberID"):value := myorderidreal
oRS:fields:item("noofpcs"):value := " ÊÓÌíá ÇáÚãíá " + self:CustName
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
MyOut := MSGBOX("áÇíæÌÏ ÏæÑÇÊ ÇÓÊİÓÑ ÚäåÇ ÇáãÊÏÑÈ","ÚİæÇ")
ELSE
MyOut := MSGBOX("íÌÏ Çä ÊÎÊÇÑ ÇáÏæÑÉ ÇáÊì ÇÓÊİÓÑ ÚäåÇ ÇáãÊÏÑÈ ãä ÇáŞÇÆãÉ","ÚİæÇ")
ENDIF
ENDIF
myout = self:DisConnect()
IF iswindowdefined( CustOrdersWindow )
myout = self:MyStart()
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
