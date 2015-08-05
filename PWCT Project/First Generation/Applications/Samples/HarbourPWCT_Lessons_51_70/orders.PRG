*---------------------------------------------------------------------------*
* Time : 03:43:05    Date : 07/26/2015
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
Function loadorders
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

Resistance R_orders_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_orders_19art1() code
class OrdersClass From SystemDatabase
Data cWindowName init "OrdersWindow"
Data TableName init "Order_all"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"OrderNumber","castName"}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data TableName2 init "orderItems_all"
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
Data nCustomers init 0
Data aCustomerItems init {}
Data aCustomerItemsID init {}
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
Method selectItems
EndClass
Method showwindow Class OrdersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 902 ;
HEIGHT 738 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Enter Orders" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 347 ,258 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 347 ,321 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 347 ,448 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 241 ,766 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 347 ,385 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 212 ,766 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 154 ,766 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 183 ,766 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 125 ,766 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 96 ,766 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 5 ,289 LABEL lblTitle ;
VALUE " Customers Order Data" ;
WIDTH 345 ;
HEIGHT 39 ;
FONT "Arial" SIZE 24  ;
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
BACKCOLOR {255,255,193} ;
FONTCOLOR {0,0,0} 

@ 53 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 735 ;
HEIGHT 187 ;
HEADERS {"Order Number","castName"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable(self:itemstable,self:itemscolumn,@self:ItemItems,"id",@self:ItemItemsIDS)
@ 398 ,14 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 398 ,81 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 297 ,9 LABEL lblOrdernumber ;
VALUE "Order Number" ;
WIDTH 127 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 297 ,140 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {225,240,255} ;
FONTCOLOR {0,0,0} 

@ 656 ,232 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 656 ,339 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {196,225,255} ;
FONTCOLOR {0,0,0} 

@ 656 ,508 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 79 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 440 ,12 GRID Grid1browse2;
WIDTH 750 ;
HEIGHT 200 ;
HEADERS {"Item Name"};
WIDTHS {100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 657 ,14 BUTTONEX btnDel2;
CAPTION "Delete Item";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 398 ,342 BUTTONEX btnadd2;
CAPTION "Add Item";
ON CLICK self:addrecord2()  ;
WIDTH 99 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
out = self:LoadLookupTable("Customers","castName",@self:aCustomerItems,"ID",@self:aCustomerItemsID)
@ 297 ,467 COMBOBOX combocustomers;
WIDTH 195 ;
HEIGHT 300;
ITEMS self:aCustomerItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 297 ,363 LABEL lblcustomers ;
VALUE "customers" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 398 ,284 BUTTONEX btnslectItems;
CAPTION ":::::";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
ON CLICK self:selectItems()  ;
WIDTH 35 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
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
self:nCustomers := &(self:cWindowName).combocustomers.Value
self:nCustomers := self:aCustomerItemsID[self:nCustomers]
Return 0
Method Class2ADO Class OrdersClass
self:oRS:fields:item(alltrim(self:linkmasterkey)):value := self:nOrderNumber
self:oRS:fields:item(alltrim("customersID")):value := self:nCustomers
Return 0
Method ADO2Class Class OrdersClass
self:nOrderNumber := self:oRS:fields:item(alltrim(self:linkmasterkey)):value
self:nCustomers := self:oRS:fields:item(alltrim("CustomersID")):value
Return 0
Method Class2UserInterface Class OrdersClass
&(self:cWindowName).textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
nIndex = self:LookupIDToIndex(self:nCustomers,@self:aCustomerItemsID)
&(self:cWindowName).combocustomers.Value := nIndex
Return 0
Method ClearRecord Class OrdersClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
self:nCustomers := 0
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
&(self:cWindowName).combocustomers.Enabled := True
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
&(self:cWindowName).combocustomers.Enabled := False
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
nValue := myRS:fields:item(alltrim(self:countercolumn)):value
nvalue := nvalue+1
myRS:fields:item(alltrim(self:countercolumn)):value := nvalue
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
vname := oRS:fields:item(alltrim(self:column2)):value
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(alltrim(self:columns2[x2])):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
&(self:cWindowName).grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
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
oRS:fields:item(alltrim(self:linkchildkey)):value := self:nItem
oRS:fields:item(alltrim(self:linkmasterkey)):value := self:nOrderNumber
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
cName = STRTRAN(cName,"[","")
cName = STRTRAN(cName,"'","")
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
Method SelectItems Class OrdersClass
out = selectitemsobj:ShowWindow()
IF selectitemsobj:nSelectedID!=0
nIndex = self:LookupIDToIndex(selectitemsobj:nSelectedID,self:itemitemsIDs)
&(self:cWindowName).comboitem.Value := nIndex
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
