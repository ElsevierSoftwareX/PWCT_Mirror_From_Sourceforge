*---------------------------------------------------------------------------*
* Time : 01:59:32    Date : 02/26/2013
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
Function ORDERS
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

Resistance R_ORDERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERS_18smart1() code
class OrdersClass From SystemDatabase
Data cWindowName init "OrdersWindow"
Data TableName init "Orders_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"OrderNumber","CustName"}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data TableName2 init "OrderItems_All"
Data column2 init "ItemName"
Data PrimaryKey2 init "id"
Data columns2 init {"ItemName"}
Data ResultPrimaryKeys2 init {}
Data TableName3 init "OrderItems"
Data PrimaryKey3 init "id"
Data linkmasterkey init "OrderNumber"
Data linkchildkey init "ItemNumber"
Data TableName4 init "SystemCounter"
Data CounterColumn init "OrderNumber"
Data itemstable init "items"
Data Itemscolumn init "itemname"
Data nCustomer init 0
Data aCustomerItems init {}
Data aCustomerItemsIDs init {}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method itemchange
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method onAddClick
Method search2
Method delrecord2
Method addrecord2
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class OrdersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 657 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Enter Orders" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ -6 ,-8 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 800 HEIGHT 730
@ 270 ,328 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,391 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,674 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,164 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,236 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,92 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,9 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 4 ,-218 LABEL lblTitle ;
VALUE "                                                            Master/Details" ;
WIDTH 1000 ;
HEIGHT 30 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 52 ,59 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,196 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {128,128,192} ;
FONTCOLOR {0,0,0}

@ 53 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 130 ;
HEADERS {"Order Number","Customer Name"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable(self:itemstable,self:itemscolumn,@self:ItemItems,"id",@self:ItemItemsIDS)
@ 318 ,250 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 316 ,305 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 198 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 232 ,30 LABEL lblOrdernumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 231 ,164 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}

@ 572 ,231 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 572 ,338 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 572 ,507 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 356 ,11 GRID Grid1browse2;
WIDTH 750 ;
HEIGHT 200 ;
HEADERS {"Item Name"};
WIDTHS {100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 573 ,13 BUTTONEX btnDel2;
CAPTION "Delete Item";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 315 ,525 BUTTONEX btnadd2;
CAPTION "Add Item";
ON CLICK self:addrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = Self:LoadLookupTable("Customers","CustName",@Self:aCustomerItems,"ID",@Self:aCustomerItemsIDs)
@ 230 ,516 COMBOBOX comboCustomer;
WIDTH 184 ;
HEIGHT 300;
ITEMS Self:aCustomerItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 234 ,419 LABEL lblCustomer ;
VALUE "Customer" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
&(self:cWindowName).textOrderNumber.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class OrdersClass
Self:nCustomer := &(self:cWindowName).comboCustomer.Value
Self:nCustomer := Self:aCustomerItemsIDs[Self:nCustomer]
Return 0
Method Class2ADO Class OrdersClass
self:oRS:fields:item(self:linkmasterkey):value := self:nOrderNumber
self:oRS:fields:item(alltrim("CustomerID ")):value := Self:nCustomer
Return 0
Method ADO2Class Class OrdersClass
self:nOrderNumber := self:oRS:fields:item(self:linkmasterkey):value
Self:nCustomer := self:oRS:fields:item(alltrim("CustomerID ")):value
Return 0
Method Class2UserInterface Class OrdersClass
&(self:cWindowName).textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
nIndex = Self:LookupIDToIndex(Self:nCustomer,@Self:aCustomerItemsIDs)
&(self:cWindowName).comboCustomer.Value := nIndex
Return 0
Method ClearRecord Class OrdersClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
Self:nCustomer := 0
Return 0
Method setmode(p1) Class OrdersClass
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
&(self:cWindowName).btnadd2.Enabled := false
&(self:cWindowName).btndel2.Enabled := false
&(self:cWindowName).textNameBrowse.Enabled := false
&(self:cWindowName).btn1Browse.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := false
&(self:cWindowName).comboCustomer.Enabled := True
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
&(self:cWindowName).btnadd2.Enabled := true
&(self:cWindowName).btndel2.Enabled := true
&(self:cWindowName).textNameBrowse.Enabled := True
&(self:cWindowName).btn1Browse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).comboCustomer.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method OnBeforeDelete Class OrdersClass
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:linkmasterkey+" = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class OrdersClass
Local myRS,nValue
nvalue := 0
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from " + self:tablename4,self:oCon,3,3 )
nValue := myRS:fields:item(self:countercolumn):value
nvalue := nvalue+1
myRS:fields:item(self:countercolumn):value := nvalue
myRS:UPDATE()
myRS:Close()
self:nOrderNumber := nValue
&(self:cWindowName).textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class OrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := &(self:cWindowName).textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where "+self:linkmasterkey+"= "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
&(self:cWindowName).grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
&(self:cWindowName).grid1browse2.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column2):value
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
&(self:cWindowName).grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class OrdersClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:primarykey3+" = " + nvalue)
myout = self:search2()
ELSE
MyOut := MSGBOX("You should Create/Select Item First","Sorry")
ENDIF
Return 0
Method AddRecord2 Class OrdersClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := &(self:cWindowName).ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tablename3,self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(self:linkchildkey):value := self:nItem
oRS:fields:item(self:linkmasterkey):value := self:nOrderNumber
oRS:UPDATE()
oRS:Close()
myout = self:Search2()
ELSE
MyOut := MSGBOX("You should Create/Select Order First","Sorry")
ENDIF
Return 0
Method itemchange Class OrdersClass
Local myrs,MYVALUE
TVALUE := &(self:cWindowName).Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
Return 0
Method closewindow Class OrdersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class OrdersClass
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
Method BeforeSearch Class OrdersClass
&(self:cWindowName).grid1Browse.DeleteAllItems ( )
&(self:cWindowName).grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersClass
&(self:cWindowName).grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class OrdersClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class OrdersClass
cName := &(self:cWindowName).textNameBrowse.Value
Return cName
Method OpenDataWindow Class OrdersClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrdersClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrdersClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0
Method OnBeforeEdit Class OrdersClass
Return myout
Method OnAfterAddEdit Class OrdersClass
Return myout



End Of Resistance

*-------------------------------------------------------------------*
