*---------------------------------------------------------------------------*
* Time : 01:45:43    Date : 10/04/2010
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

Resistance R_ORDERSENTER_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSENTER_DATA_15speed1() code
class OrdersEnterClass From SYSTEMDATABASE
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderNumber"}
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
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data columns2 init {"customerwant3","customerwant2","customerwant1","howknow","f_mobile","f_name"}
Data ResultPrimaryKeys2 init {}
Data cOrderName init ""
Data nhowknow init 0
Data howknowitems init {}
Data howknowitemsids init {}
Data nLocation init 0
Data Locationitems init {}
Data Locationitemsids init {}
Data cHayaRecord init ""
Method showwindow
Method closewindow
Method ShowRecord
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method search
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
Method GetSearchValue
Method settimer
Method mobilechange
EndClass
Method showwindow Class OrdersEnterClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrdersEnterWindow )
DEFINE WINDOW OrdersEnterWindow ;
AT 10 ,10 ;
WIDTH 933 ;
HEIGHT 704 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÊÓÌíá ÏæÑÉ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 910 HEIGHT 300
@ 464 ,4 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 910 HEIGHT 200
@ 7 ,387 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,260 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,197 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,13 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,324 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,106 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,563 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,475 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,661 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,728 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,806 LABEL lblTitle ;
VALUE "   ÊÓÌíá ÏæÑÉ    " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 166 ,696 LABEL lbl1browse ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 167 ,253 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 420 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 167 ,119 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 203 ,16 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 890 ;
HEIGHT 130 ;
HEADERS {"ÍÇáÉ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"};
WIDTHS {100,200,120,200,150,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 389 ,241 TEXTBOX textcustomerwant2;
HEIGHT 31 ;
WIDTH 248 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("employees","f_name",@self:CustomerItems,"id",@self:CustomerItemsIDS)
@ 90 ,836 LABEL lblSupplier ;
VALUE "ÇáãÍÇÖÑ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,576 COMBOBOX combocustomer;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:Customeritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("customers","f_name",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 351 ,762 LABEL lblitems ;
VALUE "ÇÓã ÇáÚãíá" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 352 ,241 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 510 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 349 ,187 LABEL lblItemUnit ;
VALUE "ÌæÇá" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 349 ,8 TEXTBOX textCustomerMobile;
ON ENTER self:mobilechange()  ;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 392 ,762 LABEL lblItemUnit2 ;
VALUE "Çåã ËáÇËÉ ãÍÇæÑ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 390 ,502 TEXTBOX textcustomerwant1;
HEIGHT 30 ;
WIDTH 250 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 54 ,833 LABEL lblOrdernumber ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 51 ,626 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 88 ,474 LABEL lblOrderDate ;
VALUE "ÊÇÑíÎ ÇáÏæÑÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,296 DATEPICKER dateOrderDate;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 389 ,8 TEXTBOX textcustomerwant3;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 90 ,197 LABEL lblFinishDate ;
VALUE "ÊÇÑíÎ ÇáÇäÊåÇÁ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 91 ,25 DATEPICKER dateFinishDate;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 475 ,762 LABEL lbl1browse2 ;
VALUE "ÇÓã ÇáÚãíá" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 475 ,502 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 250 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 475 ,388 BUTTONEX btn1browse2;
CAPTION "ÈÍË";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 515 ,8 GRID Grid1browse2;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS {"ãÍæÑ 3","ãÍæÑ 2 ","ãÍæÑ 1 "," ßíÝ ÓãÚÊ Úä ÇáÏæÑÉ","ÌæÇá","ÇÓã ÇáÚãíá"};
WIDTHS {100,100,100,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 475 ,8 BUTTONEX btnDel2;
CAPTION "ÍÐÝ ÇáÚãíá ãä ÇáÏæÑÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 230 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 431 ,8 BUTTONEX btnadd2;
CAPTION "ÇÖÇÝÉ ÇáÚãíá Çáì ÇáÏæÑÉ";
ON CLICK self:addrecord2()  ;
WIDTH 480 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,473 LABEL lblOrdername ;
VALUE "ÇÓã ÇáÏæÑÉ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 51 ,26 TEXTBOX textOrderName;
HEIGHT 30 ;
WIDTH 440 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("howknow","howknow",@self:howknowItems,"id",@self:howknowItemsIDS)
@ 431 ,762 LABEL lblhowknow ;
VALUE "ßíÝ ÓãÚÊ Úä ÇáÏæÑÉ" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 431 ,502 COMBOBOX combohowknow;
ON CHANGE self:itemchange()  ;
WIDTH 250 ;
HEIGHT 100;
ITEMS self:howknowitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 130 ,696 LABEL lblhaya ;
VALUE "ÑÞã ÓÌá ÇáÏæÑÉ Ýì åíÆÉ ÇáÊÏÑíÈ" ;
WIDTH 210 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 130 ,474 TEXTBOX texthayaRecord;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("locations","location",@self:locationItems,"id",@self:locationItemsIDS)
@ 130 ,421 LABEL lbllocation ;
VALUE "ÇáãßÇä" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 130 ,24 COMBOBOX combolocation;
WIDTH 380 ;
HEIGHT 100;
ITEMS self:locationitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = RightToLeftControl ( "OrdersEnterWindow","comboCustomer" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboLocation" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboItem" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboHowKnow" )
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
self:cOrderName := OrdersEnterWindow.textOrderName.Value
self:cHayaRecord := OrdersEnterWindow.textHayaRecord.Value
self:nLocation := OrdersEnterWindow.ComboLocation.Value
self:nLocation := self:LocationItemsids[self:nLocation]
Return 0
Method Class2ADO Class OrdersEnterClass
self:oRS:fields:item("Customerid"):value := self:nCustomer
self:oRS:fields:item("OrderDate"):value := self:cOrderDate
self:oRS:fields:item("FinishDate"):value := self:cOrderFinishDate
self:oRS:fields:item("OrderNumber"):value := self:nOrderNumber
self:oRS:fields:item("OrderName"):value := self:cOrderName
self:oRS:fields:item("HayaRecord"):value := self:cHayaRecord
self:oRS:fields:item("Locationid"):value := self:nLocation
Return 0
Method ADO2Class Class OrdersEnterClass
self:nCustomer := self:oRS:fields:item("CustomerID"):value
self:cOrderDate := self:oRS:fields:item("OrderDate"):value
self:cOrderFinishDate := self:oRS:fields:item("FinishDate"):value
self:nOrderNumber := self:oRS:fields:item("OrderNumber"):value
self:cOrderName := self:oRS:fields:item("OrderName"):value
self:nLocation := self:oRS:fields:item("LocationID"):value
self:cHayaRecord := self:oRS:fields:item("HayaRecord"):value
Return 0
Method Class2UserInterface Class OrdersEnterClass
self:nCustomer = self:LookupIDToIndex(self:nCustomer,@self:CustomerItemsids)
OrdersEnterWindow.ComboCustomer.Value := self:nCustomer
OrdersEnterWindow.dateOrderDate.Value := ctod(self:cOrderDate)
OrdersEnterWindow.dateFinishDate.Value := ctod(self:cOrderFinishDate )
OrdersEnterWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
OrdersEnterWindow.textOrderName.Value := self:cOrderName
self:nLocation = self:LookupIDToIndex(self:nLocation,@self:LocationItemsids)
OrdersEnterWindow.ComboLocation.Value := self:nLocation
OrdersEnterWindow.textHayaRecord.Value := self:cHayaRecord
myout = self:search2()
Return 0
Method ClearRecord Class OrdersEnterClass
self:nCustomer := 0
self:cOrderDate := ""
self:cOrderFinishDate := ""
self:cOrderName := ""
self:nLocation := 0
self:cHayaRecord := ""
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
Return 0
Method search Class OrdersEnterClass
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersEnterWindow.textNamebrowse.Value
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=IZDEHARDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
OrdersEnterWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
OrdersEnterWindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
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
OrdersEnterWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
oCon:CLOSE()
mymax := self:oRS:RecordCount
IF mymax = 0
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := false
ELSE
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := true
OrdersEnterWindow.Grid1Browse.Value := 1
ENDIF
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
OrdersEnterWindow.textOrderName.Enabled := false
OrdersEnterWindow.textOrderName.Enabled := true
OrdersEnterWindow.comboLocation.Enabled := true
OrdersEnterWindow.textHayaRecord.Enabled := true
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
OrdersEnterWindow.textOrderName.Enabled := false
OrdersEnterWindow.comboLocation.Enabled := False
OrdersEnterWindow.textHayaRecord.Enabled := False
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
myrs:open ( "Select * from customers where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item("f_mobile"):value
OrdersEnterWindow.textCustomerMobile.Value := myvalue
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
self:oRS:fields:item("orderstatusID"):value := 2
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
nValue := myRS:fields:item("OrderNumber"):value
nvalue := nvalue+1
myRS:fields:item("OrderNumber"):value := nvalue
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
OrdersEnterWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
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
MyOut := MSGBOX("ÚÝæÇ áÇíæÌÏ ÇÓã ãÍÏÏ áíÊã ÍÐÝå","ÚÝæÇ")
ENDIF
Return 0
Method AddRecord2 Class OrdersEnterClass
Local oRS,nValue,nMax
IF self:nOrderNumber > 0
self:nItem := OrdersEnterWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
self:nhowknow := OrdersEnterWindow.Combohowknow.Value
self:nhowknow := self:howknowItemsids[self:nhowknow]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems where orderid = " + str(self:nOrderNumber) + " and customerid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX("Êã ÊÓÌíá åÐÇ ÇáÚãíá ÓÇÈÞÇ","ÚÝæÇ")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("customerid"):value := self:nItem
oRS:fields:item("Orderid"):value := self:nOrderNumber
oRS:fields:item("customerhowknow"):value := self:nhowknow
oRS:fields:item("customerwant1"):value := OrdersEnterWindow.textcustomerwant1.value
oRS:fields:item("customerwant2"):value := OrdersEnterWindow.textcustomerwant2.value
oRS:fields:item("customerwant3"):value := OrdersEnterWindow.textcustomerwant3.value
oRS:UPDATE()
oRS:Close()
myout = self:Search2()
myout = self:SetOrderStatus()
ELSE
MyOut := MSGBOX("You should Create/Select Order First","Sorry")
ENDIF
Return 0
Method SetOrderStatus Class OrdersEnterClass
self:oRS:fields:item("orderstatusID"):value := 2
self:oRS:UPDATE()
myitem := OrdersEnterWindow.Grid1Browse.item(OrdersEnterWindow.Grid1Browse.value)
myitem[1] := "ÈÇäÊÙÇÑ ÇáÇÚÊãÇÏ"
OrdersEnterWindow.Grid1Browse.item(OrdersEnterWindow.Grid1Browse.Value) := myitem
Return 0
Method mobilechange Class OrdersEnterClass
Local myrs,MYVALUE,vname
TVALUE := OrdersEnterWindow.textcustomermobile.Value
IF empty(alltrim(TVALUE))
Return 0
ENDIF
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from customers where f_mobile = '" + tvalue +"'",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax > 0
myvalue := myRS:fields:item("id"):value
vname := myRS:fields:item("f_name"):value
myvalue = self:LookupIDToIndex(myvalue,@self:itemItemsids)
OrdersEnterWindow.Comboitem.Value := myvalue
MyOut := MSGBOX("ÇáÇÓã " + vname,"Êã ÇáæÕæá ááÚãíá ãä ÎáÇá ÑÞã ÇáÌæÇá")
ELSE
MyOut := MSGBOX("ÑÞã ÇáÌæÇá ÇáãÏÎá ÛíÑ ãÓÌá Ýì ÓÌáÇÊ ÇáãÊÏÑÈíä","ÚÝæÇ")
ENDIF
myRS:Close()
Return 0
Method closewindow Class OrdersEnterClass
myout = self:disconnect()
OrdersEnterWindow.Release ( )
Return 0
Method ShowRecord Class OrdersEnterClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
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
OrdersEnterWindow.grid1browse.DeleteAllItems ( )
OrdersEnterWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersEnterClass
OrdersEnterWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class OrdersEnterClass
cName := OrdersEnterWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class OrdersEnterClass
OrdersEnterWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
