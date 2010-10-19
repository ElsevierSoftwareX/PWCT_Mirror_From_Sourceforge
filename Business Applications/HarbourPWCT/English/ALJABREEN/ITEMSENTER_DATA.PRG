*---------------------------------------------------------------------------*
* Time : 01:40:19    Date : 10/20/2010
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
Function ITEMSENTER_DATA
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

Resistance R_ITEMSENTER_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSENTER_DATA_15speed1() code
class ItemsEnterClass From systemdatabase
Data TableName init "ItemsEnter_All"
Data nID init 0
Data column init "ItemName"
Data PrimaryKey init "id"
Data columns init {"ID","ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName"}
Data nSupplier init 0
Data Supplieritems init {}
Data Supplieritemsids init {}
Data nStore init 0
Data Storeitems init {}
Data Storeitemsids init {}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data cUnitValue init ""
Data cSecUnitValue init ""
Data cAmount init ""
Data cDateofInput init ""
Data cCost init ""
Data cNotes init ""
Data cItemUnitText init ""
Data cItemSecUnitText init ""
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
Method AddValuesToItem
Method SubValuesFromItem
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class ItemsEnterClass
IF .not. UserCan_WinWarehouse = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsEnterWindow )
DEFINE WINDOW ItemsEnterWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Enter Items to Store" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 42 ,3 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 520
@ 570 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,515 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   Enter Items to Store" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 385 ,487 LABEL lblSourceName ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 385 ,570 TEXTBOX textUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 52 ,68 LABEL lbl1browse ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,175 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 52 ,715 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ID","Item Name","Item Display Name","Item","Group","Source","Grade","Color","Size"};
WIDTHS {100,100,200,100,100,100,100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 434 ,487 LABEL lblSecUnitValue ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 433 ,570 TEXTBOX textSecUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
myout = self:LoadLookupTable("Suppliers","f_name",@self:SupplierItems,"id",@self:SupplierItemsIDS)
@ 266 ,203 LABEL lblSupplier ;
VALUE "Supplier" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,300 COMBOBOX combosupplier;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:Supplieritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsStores","StoreName",@self:StoreItems,"id",@self:StoreItemsIDS)
@ 306 ,203 LABEL lblStore ;
VALUE "Store" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 306 ,300 COMBOBOX combostore;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:Storeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 346 ,203 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 345 ,300 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 385 ,203 LABEL lblItemUnit ;
VALUE "Item Unit" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 385 ,300 TEXTBOX textItemUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 433 ,73 LABEL lblItemUnit2 ;
VALUE "Item Unit (Secondary)" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 430 ,300 TEXTBOX textItemSecUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 522 ,73 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 520 ,163 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 650 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 480 ,611 LABEL lblCost ;
VALUE "Cost" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 481 ,670 TEXTBOX textCost;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 480 ,294 LABEL lblDateofInput ;
VALUE "Date of Input" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 480 ,418 DATEPICKER datedateofinput;
WIDTH 170 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 480 ,73 LABEL lblAmount ;
VALUE "Amount" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 480 ,163 TEXTBOX textAmount;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
END WINDOW

ItemsEnterWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsEnterWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsEnterWindow
EndIF

Return 0
Method UserInterface2Class Class ItemsEnterClass
self:nSupplier := ItemsEnterWindow.ComboSupplier.Value
self:nSupplier := self:SupplierItemsids[self:nSupplier]
self:nStore := ItemsEnterWindow.ComboStore.Value
self:nStore := self:StoreItemsids[self:nStore]
self:nitem := ItemsEnterWindow.Comboitem.Value
self:nitem := self:ItemItemsids[self:nitem]
self:cUnitValue := ItemsEnterWindow.textUnitValue.Value
self:cSecUnitValue := ItemsEnterWindow.textSecUnitValue.Value
self:cAmount := ItemsEnterWindow.textAmount.Value
self:cCost := ItemsEnterWindow.textCost.Value
self:cNotes := ItemsEnterWindow.textNotes.Value
self:cDateofInput := ItemsEnterWindow.dateDateofInput.Value
self:cDateofInput := dtoc(self:cDateofInput)
myout = self:checkamount()
Return 0
Method Class2ADO Class ItemsEnterClass
self:oRS:fields:item("itemid"):value := self:nitem
self:oRS:fields:item("Supplierid"):value := self:nSupplier
self:oRS:fields:item("Storeid"):value := self:nStore
self:oRS:fields:item("Amount"):value := self:cAmount
self:oRS:fields:item("Cost"):value := self:cCost
self:oRS:fields:item("Notes"):value := self:cNotes
self:oRS:fields:item("Value1"):value := self:cUnitValue
self:oRS:fields:item("Value2"):value := self:cSecUnitValue
self:oRS:fields:item("DateofInput"):value := self:cDateofInput
Return 0
Method ADO2Class Class ItemsEnterClass
self:nItem := self:oRS:fields:item("ItemID"):value
self:nSupplier := self:oRS:fields:item("SupplierID"):value
self:cAmount := self:oRS:fields:item("Amount"):value
self:cCost := self:oRS:fields:item("Cost"):value
self:cNotes := self:oRS:fields:item("Notes"):value
self:nStore := self:oRS:fields:item("StoreID"):value
self:cUnitValue := self:oRS:fields:item("Value1"):value
self:cSecUnitValue := self:oRS:fields:item("Value2"):value
self:cDateOfInput := self:oRS:fields:item("DateOfInput"):value
self:cItemUnitText := self:oRS:fields:item(14):value
self:cItemSecUnitText := self:oRS:fields:item("ItemUnit"):value
Return 0
Method Class2UserInterface Class ItemsEnterClass
self:nSupplier = self:LookupIDToIndex(self:nSupplier,@self:SupplierItemsids)
ItemsEnterWindow.ComboSupplier.Value := self:nSupplier
self:nStore = self:LookupIDToIndex(self:nStore,@self:StoreItemsids)
ItemsEnterWindow.ComboStore.Value := self:nStore
self:nItem = self:LookupIDToIndex(self:nItem,@self:ItemItemsids)
ItemsEnterWindow.Comboitem.Value := self:nItem
ItemsEnterWindow.textUnitValue.Value := self:cUnitValue
ItemsEnterWindow.textSecUnitValue.Value := self:cSecUnitValue
ItemsEnterWindow.textAmount.Value := self:cAmount
ItemsEnterWindow.dateDateOfInput.Value := ctod(self:cDateOfInput)
ItemsEnterWindow.textCost.Value := self:cCost
ItemsEnterWindow.textNotes.Value := self:cNotes
ItemsEnterWindow.textItemUnit.Value := self:cItemUnitText
ItemsEnterWindow.textItemSecUnit.Value := self:cItemSecUnitText
Return 0
Method ClearRecord Class ItemsEnterClass
self:nSupplier := 0
self:nStore := 0
self:nItem := 0
self:cUnitValue := "1"
self:cSecUnitValue := "1"
self:cAmount := "1"
self:cDateOfInput := ""
self:cCost := ""
self:cNotes := ""
self:cItemUnitText := ""
self:cItemSecUnitText := ""
Return 0
Method OpenDataWindow Class ItemsEnterClass
Local nvalue,myout
nvalue := ItemsEnterWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemsEnterClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemsEnterClass
myout = self:search()
ItemsEnterWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ItemsEnterClass
IF p1 = 1
ItemsEnterWindow.btnfirst.Enabled := false
ItemsEnterWindow.btnnext.Enabled := false
ItemsEnterWindow.btnprev.Enabled := false
ItemsEnterWindow.btnlast.Enabled := false
ItemsEnterWindow.btndel.Enabled := false
ItemsEnterWindow.btnclose.Enabled := false
ItemsEnterWindow.btnsave.Enabled := true
ItemsEnterWindow.btncancel.Enabled := true
ItemsEnterWindow.btnedit.Enabled := false
ItemsEnterWindow.btnadd.Enabled := false
ItemsEnterWindow.comboSupplier.Enabled := true
ItemsEnterWindow.comboStore.Enabled := true
ItemsEnterWindow.comboItem.Enabled := true
ItemsEnterWindow.textUnitValue.Enabled := true
ItemsEnterWindow.textSecUnitValue.Enabled := true
ItemsEnterWindow.textAmount.Enabled := true
ItemsEnterWindow.textCost.Enabled := true
ItemsEnterWindow.textNotes.Enabled := true
ItemsEnterWindow.datedateofinput.Enabled := true
ENDIF
IF p1 = 2
ItemsEnterWindow.btnfirst.Enabled := true
ItemsEnterWindow.btnnext.Enabled := true
ItemsEnterWindow.btnprev.Enabled := true
ItemsEnterWindow.btnlast.Enabled := true
ItemsEnterWindow.btndel.Enabled := true
ItemsEnterWindow.btnclose.Enabled := true
ItemsEnterWindow.btnsave.Enabled := false
ItemsEnterWindow.btncancel.Enabled := false
ItemsEnterWindow.btnedit.Enabled := true
ItemsEnterWindow.btnadd.Enabled := true
ItemsEnterWindow.comboSupplier.Enabled := false
ItemsEnterWindow.comboStore.Enabled := false
ItemsEnterWindow.comboItem.Enabled := false
ItemsEnterWindow.textUnitValue.Enabled := false
ItemsEnterWindow.textSecUnitValue.Enabled := false
ItemsEnterWindow.textAmount.Enabled := false
ItemsEnterWindow.textCost.Enabled := false
ItemsEnterWindow.textNotes.Enabled := false
ItemsEnterWindow.datedateofinput.Enabled := false
ItemsEnterWindow.textItemUnit.Enabled := false
ItemsEnterWindow.textItemSecUnit.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method itemchange Class ItemsEnterClass
Local myrs,MYVALUE
TVALUE := ItemsEnterWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from ItemsandUnits_ALL where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item(13):value
ItemsEnterWindow.textItemUnit.Value := myvalue
myvalue := myRS:fields:item("ItemUnit"):value
ItemsEnterWindow.textItemSecUnit.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class ItemsEnterClass
tvalue := ItemsEnterWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ItemsEnterWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := ItemsEnterWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ItemsEnterWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := ItemsEnterWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ItemsEnterWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method SubValuesFromItem Class ItemsEnterClass
Local myRS,tValue,v1,v2,c1,c2,c3
tvalue := ItemsEnterWindow.Comboitem.Value
tvalue := self:ItemItemsids[tvalue]
tvalue = STR ( tvalue )
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := Self:oCon
myRS:open ( "Select * from Items where id = " + tvalue,Self:oCon,3,3 )
v1 := myRS:fields:item("itemvalue"):value
v2 := myRS:fields:item("itemvalue2"):value
c1 := self:cUnitValue
c2 := self:cSecUnitValue
c3 := self:cAmount
c1 = VAL ( c1 )
c2 = VAL ( c2 )
c3 = VAL ( c3 )
c1 := c3 * c1
c2 := c3 * c2
v1 = VAL ( v1 )
v2 = VAL ( v2 )
v1 := v1 - c1
v2 := v2 - c2
v1 = STR ( v1 )
v2 = STR ( v2 )
myRS:fields:item("itemvalue"):value := v1
myRS:fields:item("itemvalue2"):value := v2
myRS:UPDATE()
myRS:Close()
Return 0
Method AddValuesToItem Class ItemsEnterClass
Local myRS,tValue,v1,v2,c1,c2,c3
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
tValue := Self:nItem
tvalue = STR ( tvalue )
myRS:CursorType := 1
myRS:ActiveConnection := Self:oCon
myRS:open ( "Select * from Items where id = " + tvalue,Self:oCon,3,3 )
v1 := myRS:fields:item("itemvalue"):value
v2 := myRS:fields:item("itemvalue2"):value
c1 := self:cUnitValue
c2 := self:cSecUnitValue
c3 := self:cAmount
c1 = VAL ( c1 )
c2 = VAL ( c2 )
c3 = VAL ( c3 )
c1 := c3 * c1
c2 := c3 * c2
v1 = VAL ( v1 )
v2 = VAL ( v2 )
v1 := v1 + c1
v2 := v2 + c2
v1 = STR ( v1 )
v2 = STR ( v2 )
myRS:fields:item("itemvalue"):value := v1
myRS:fields:item("itemvalue2"):value := v2
myRS:UPDATE()
myRS:Close()
Return 0
Method OnAfterAddEdit Class ItemsEnterClass
myout = self:AddValuestoItem()
Return myout
Method OnBeforeEdit Class ItemsEnterClass
myout = self:SubValuesFromItem()
Return myout
Method OnBeforeDelete Class ItemsEnterClass
myout = self:SubValuesFromItem()
Return myout
Method closewindow Class ItemsEnterClass
myout = self:disconnect()
ItemsEnterWindow.Release ( )
Return 0
Method AutoGotoRecord Class ItemsEnterClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemsEnterWindow )
myout = self:showrecord()
ItemsEnterWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemsEnterClass
ItemsEnterWindow.grid1Browse.DeleteAllItems ( )
ItemsEnterWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsEnterClass
ItemsEnterWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsEnterClass
ItemsEnterWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsEnterClass
cName := ItemsEnterWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
