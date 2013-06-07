*---------------------------------------------------------------------------*
* Time : 13:58:33    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function ORDERSENTER_DATA
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

Resistance R_ORDERSENTER_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSENTER_DATA_18smart1() code
class OrdersEnterClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderNumber","orderdate","f_name","FinishDate","OrderStatus"}
Data nCustomer init 0
Data Customeritems init {}
Data Customeritemsids init {}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "itemname"
Data PrimaryKey2 init "id"
Data columns2 init {"ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName","u1name","u1value","u2name","u2value","theamount"}
Data ResultPrimaryKeys2 init {}
Data nItemGroup init 0
Data itemgroupitems init {}
Data itemgroupitemsids init {}
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
Method CHECKAMOUNT
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method onAddClick
Method search2
Method delrecord2
Method addrecord2
Method setorderstatus
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method selectitem
EndClass
Method showwindow Class OrdersEnterClass
IF .not. UserCan_WinOrders = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrdersEnterWindow )
DEFINE WINDOW OrdersEnterWindow ;
AT 10 ,10 ;
WIDTH 1132 ;
HEIGHT 701 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Enter Orders" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 43 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 260
@ 353 ,4 IMAGE image2;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 260
@ 310 ,507 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,570 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,697 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,853 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,634 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,766 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,343 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 310 ,415 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 310 ,271 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 310 ,188 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                              Enter Orders" ;
WIDTH 1110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 446 ,23 LABEL lblSourceName ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 446 ,230 TEXTBOX textUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,234 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,371 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 53 ,787 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1080 ;
HEIGHT 130 ;
HEADERS {"Order Number","Order Date","Customer Name","Finish Date","Order Status"};
WIDTHS {150,200,300,200,200} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 535 ,23 LABEL lblSecUnitValue ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 534 ,230 TEXTBOX textSecUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
myout = self:LoadLookupTable("Customers","f_name",@self:CustomerItems,"id",@self:CustomerItemsIDS)
@ 233 ,730 LABEL lblSupplier ;
VALUE "Customer" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 232 ,826 COMBOBOX combocustomer;
WIDTH 280 ;
HEIGHT 100;
ITEMS self:Customeritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 366 ,23 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,90 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 406 ,23 LABEL lblItemUnit ;
VALUE "Item Unit" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 406 ,220 TEXTBOX textItemUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 494 ,23 LABEL lblItemUnit2 ;
VALUE "Item Unit (Secondary)" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 491 ,220 TEXTBOX textItemSecUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 230 ,417 LABEL lblOrdernumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 229 ,550 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 270 ,73 LABEL lblOrderDate ;
VALUE "Order Date" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,182 DATEPICKER dateOrderDate;
WIDTH 210 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 575 ,23 LABEL lblAmount ;
VALUE "Amount" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 575 ,260 TEXTBOX textAmount;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 270 ,442 LABEL lblFinishDate ;
VALUE "Finish Date" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,548 DATEPICKER dateFinishDate;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 366 ,539 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 366 ,646 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 230 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 366 ,885 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 406 ,381 GRID Grid1browse2;
WIDTH 720 ;
HEIGHT 200 ;
HEADERS {"Item Name","Item Display Name","Class","Group","Source","Grade","Color","Size","Unit","Value","Secondary Unit","value","Amount"};
WIDTHS {100,200,100,100,100,100,100,100,100,100,100,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 618 ,721 BUTTONEX btnDel2;
CAPTION "Delete Item From Order";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 380 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 618 ,9 BUTTONEX btnadd2;
CAPTION "Add Item to Order";
ON CLICK self:addrecord2()  ;
WIDTH 360 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = self:LoadLookupTable("ItemsGroups","GroupName",@self:ItemGroupItems,"id",@self:ItemGroupItemsIDS)
@ 227 ,23 LABEL lblItemGroup ;
VALUE "Order Item Group" ;
WIDTH 170 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 227 ,182 COMBOBOX comboitemGroup;
WIDTH 210 ;
HEIGHT 100;
ITEMS self:ItemGroupitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 366 ,333 BUTTONEX btnSelItem;
CAPTION ":::";
ON CLICK self:SelectItem()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW
OrdersEnterWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
OrdersEnterWindow.Timer1.Enabled := false
OrdersEnterWindow.textOrderNumber.Enabled := false
ACTIVATE WINDOW OrdersEnterWindow
EndIF
Return 0
Method UserInterface2Class Class OrdersEnterClass
self:nCustomer := OrdersEnterWindow.ComboCustomer.Value
self:nCustomer := self:CustomerItemsids[self:nCustomer]
self:cOrderDate := OrdersEnterWindow.dateOrderDate.Value
self:cOrderDate := dtoc(self:cOrderDate)
self:cOrderFinishDate := OrdersEnterWindow.dateFinishDate.Value
self:cOrderFinishDate := dtoc(self:cOrderFinishDate)
self:nitemGroup := OrdersEnterWindow.ComboitemGroup.Value
self:nitemGroup := self:ItemGroupItemsids[self:nitemGroup]
Return 0
Method Class2ADO Class OrdersEnterClass
self:oRS:fields:item(alltrim("Customerid")):value := self:nCustomer
self:oRS:fields:item(alltrim("OrderDate")):value := self:cOrderDate
self:oRS:fields:item(alltrim("FinishDate")):value := self:cOrderFinishDate
self:oRS:fields:item(alltrim("OrderNumber")):value := self:nOrderNumber
self:oRS:fields:item(alltrim("OrderitemGroupid")):value := self:nitemGroup
Return 0
Method ADO2Class Class OrdersEnterClass
self:nCustomer := self:oRS:fields:item(alltrim("CustomerID")):value
self:cOrderDate := self:oRS:fields:item(alltrim("OrderDate")):value
self:cOrderFinishDate := self:oRS:fields:item(alltrim("FinishDate")):value
self:nOrderNumber := self:oRS:fields:item(alltrim("OrderNumber")):value
self:nitemGroup := self:oRS:fields:item(alltrim("OrderitemGroupid")):value
Return 0
Method Class2UserInterface Class OrdersEnterClass
self:nCustomer = self:LookupIDToIndex(self:nCustomer,@self:CustomerItemsids)
OrdersEnterWindow.ComboCustomer.Value := self:nCustomer
OrdersEnterWindow.dateOrderDate.Value := ctod(self:cOrderDate)
OrdersEnterWindow.dateFinishDate.Value := ctod(self:cOrderFinishDate )
OrdersEnterWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
self:nItemGroup = self:LookupIDToIndex(self:nItemGroup,@self:ItemGroupItemsids)
OrdersEnterWindow.ComboitemGroup.Value := self:nItemGroup
Return 0
Method ClearRecord Class OrdersEnterClass
self:nCustomer := 0
self:cOrderDate := ""
self:cOrderFinishDate := ""
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
self:nItemGroup := 0
Return 0
Method OpenDataWindow Class OrdersEnterClass
Local nvalue,myout
nvalue := OrdersEnterWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrdersEnterClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrdersEnterClass
myout = self:search()
OrdersEnterWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class OrdersEnterClass
IF p1 = 1
OrdersEnterWindow.btnfirst.Enabled := false
OrdersEnterWindow.btnnext.Enabled := false
OrdersEnterWindow.btnprev.Enabled := false
OrdersEnterWindow.btnlast.Enabled := false
OrdersEnterWindow.btndel.Enabled := false
OrdersEnterWindow.btnclose.Enabled := false
OrdersEnterWindow.btnsave.Enabled := true
OrdersEnterWindow.btncancel.Enabled := true
OrdersEnterWindow.btnedit.Enabled := false
OrdersEnterWindow.btnadd.Enabled := false
OrdersEnterWindow.comboCustomer.Enabled := true
OrdersEnterWindow.dateOrderDate.Enabled := true
OrdersEnterWindow.dateFinishDate.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := false
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.comboItemGroup.Enabled := true
ENDIF
IF p1 = 2
OrdersEnterWindow.btnfirst.Enabled := true
OrdersEnterWindow.btnnext.Enabled := true
OrdersEnterWindow.btnprev.Enabled := true
OrdersEnterWindow.btnlast.Enabled := true
OrdersEnterWindow.btndel.Enabled := true
OrdersEnterWindow.btnclose.Enabled := true
OrdersEnterWindow.btnsave.Enabled := false
OrdersEnterWindow.btncancel.Enabled := false
OrdersEnterWindow.btnedit.Enabled := true
OrdersEnterWindow.btnadd.Enabled := true
OrdersEnterWindow.comboCustomer.Enabled := false
OrdersEnterWindow.dateOrderDate.Enabled := false
OrdersEnterWindow.dateFinishDate.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := true
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.comboItemGroup.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method itemchange Class OrdersEnterClass
Local myrs,MYVALUE
TVALUE := OrdersEnterWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from ItemsandUnits_ALL where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item(alltrim(13)):value
OrdersEnterWindow.textItemUnit.Value := myvalue
myvalue := myRS:fields:item(alltrim("ItemUnit")):value
OrdersEnterWindow.textItemSecUnit.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class OrdersEnterClass
tvalue := OrdersEnterWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := OrdersEnterWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := OrdersEnterWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method OnAfterAddEdit Class OrdersEnterClass
self:oRS:fields:item(alltrim("orderstatusID")):value := 2
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax = 0
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := false
ELSE
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := true
ENDIF
Return myout
Method OnBeforeEdit Class OrdersEnterClass
Return myout
Method OnBeforeDelete Class OrdersEnterClass
myout = self:oCon:execute("delete from orderitems where orderid = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class OrdersEnterClass
Local myRS,nValue
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from systemcounter",self:oCon,3,3 )
nValue := myRS:fields:item(alltrim("OrderNumber")):value
nvalue := nvalue+1
myRS:fields:item(alltrim("OrderNumber")):value := nvalue
myRS:UPDATE()
myRS:Close()
self:nOrderNumber := nValue
OrdersEnterWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class OrdersEnterClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersEnterWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
OrdersEnterWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
OrdersEnterWindow.grid1browse2.Value := 0
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
OrdersEnterWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class OrdersEnterClass
Local nvalue,myout
nvalue := OrdersEnterWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from orderitems where id = " + nvalue)
myout = self:search2()
myout = self:SetOrderStatus()
ELSE
MyOut := MSGBOX("You should Create/Select Item First","Sorry")
ENDIF
Return 0
Method AddRecord2 Class OrdersEnterClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := OrdersEnterWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(alltrim("Itemid")):value := self:nItem
oRS:fields:item(alltrim("Orderid")):value := self:nOrderNumber
oRS:fields:item(alltrim("U1Name")):value := OrdersEnterWindow.textItemUnit.value
oRS:fields:item(alltrim("U2Name")):value := OrdersEnterWindow.textItemSecUnit.value
oRS:fields:item(alltrim("U1Value")):value := OrdersEnterWindow.textUnitValue.value
oRS:fields:item(alltrim("U2Value")):value := OrdersEnterWindow.textSecUnitValue.value
oRS:fields:item(alltrim("theamount")):value := OrdersEnterWindow.textAmount.value
oRS:UPDATE()
oRS:Close()
myout = self:Search2()
myout = self:SetOrderStatus()
ELSE
MyOut := MSGBOX("You should Create/Select Order First","Sorry")
ENDIF
Return 0
Method SetOrderStatus Class OrdersEnterClass
self:oRS:fields:item(alltrim("orderstatusID")):value := 2
self:oRS:UPDATE()
myitem := OrdersEnterWindow.Grid1Browse.item(OrdersEnterWindow.Grid1Browse.value)
myitem[5] := "Wait For Agreement"
OrdersEnterWindow.Grid1Browse.item(OrdersEnterWindow.Grid1Browse.Value) := myitem
Return 0
Method SelectItem Class OrdersEnterClass
Local myindex,myout
myout = SelectItemMasterDetailsObject:ShowWindow()
myindex = self:LookupIDToIndex(SelectItemMasterDetailsObject:nOrderNumber,@self:ItemItemsids)
OrdersEnterWindow.ComboItem.Value := myindex
myout = self:ItemChange()
Return 0
Method closewindow Class OrdersEnterClass
myout = self:disconnect()
OrdersEnterWindow.Release ( )
Return 0
Method AutoGotoRecord Class OrdersEnterClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( OrdersEnterWindow )
myout = self:showrecord()
OrdersEnterWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class OrdersEnterClass
OrdersEnterWindow.grid1Browse.DeleteAllItems ( )
OrdersEnterWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersEnterClass
OrdersEnterWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class OrdersEnterClass
OrdersEnterWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class OrdersEnterClass
cName := OrdersEnterWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
