*---------------------------------------------------------------------------*
* Time : 03:57:04    Date : 10/20/2010
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
Function RESERVEITEMS_DATA
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

Resistance R_RESERVEITEMS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RESERVEITEMS_DATA_15speed1() code
class ReserveItemsClass From SystemDatabase
Data TableName init "ReserveItems_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"ID","OrderNumber","f_name","ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName"}
Data nOrderNumber init 0
Data OrderNumberitems init {}
Data OrderNumberitemsids init {}
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
Data cCustomer init 0
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
Method orderchange
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method SelectItem
EndClass
Method showwindow Class ReserveItemsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ReserveItemsWindow )
DEFINE WINDOW ReserveItemsWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Reserve Items For Order" ;
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
VALUE "                                                                   Reserve Items For Order" ;
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
FONTCOLOR {0,0,0}

@ 52 ,68 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,205 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

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
HEADERS {"ID","Order Number","Customer Name","Item Name","Item Display Name","Item","Group","Source","Grade","Color","Size"};
WIDTHS {100,100,100,100,200,100,100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
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
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("ReadyOrders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 266 ,153 LABEL lblOrderNumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,300 COMBOBOX comboordernumber;
ON CHANGE self:orderchange()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 306 ,143 LABEL lblStore ;
VALUE "Customer Name" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 302 ,300 TEXTBOX textCustomer;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 346 ,243 LABEL lblitems ;
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
FONTCOLOR {0,0,0}

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
FONTCOLOR {0,0,0}

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
FONTCOLOR {0,0,0}

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
FONTCOLOR {0,0,0}

@ 480 ,284 LABEL lblDateofInput ;
VALUE "Date of Reserve" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 480 ,438 DATEPICKER datedateofinput;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
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
FONTCOLOR {0,0,0}

@ 346 ,716 BUTTONEX btnSelItem;
CAPTION ":::";
ON CLICK self:SelectItem()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ReserveItemsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ReserveItemsWindow.Timer1.Enabled := false
ReserveItemsWindow.textCustomer.Enabled := false
ACTIVATE WINDOW ReserveItemsWindow
EndIF

Return 0
Method UserInterface2Class Class ReserveItemsClass
self:nOrderNumber := ReserveItemsWindow.ComboOrderNumber.Value
self:nOrderNumber := self:OrderNumberItemsids[self:nOrderNumber]
self:nitem := ReserveItemsWindow.Comboitem.Value
self:nitem := self:ItemItemsids[self:nitem]
self:cUnitValue := ReserveItemsWindow.textUnitValue.Value
self:cSecUnitValue := ReserveItemsWindow.textSecUnitValue.Value
self:cAmount := ReserveItemsWindow.textAmount.Value
self:cCost := ReserveItemsWindow.textCost.Value
self:cNotes := ReserveItemsWindow.textNotes.Value
self:cDateofInput := ReserveItemsWindow.dateDateofInput.Value
self:cDateofInput := dtoc(self:cDateofInput)
myout = self:checkamount()
Return 0
Method Class2ADO Class ReserveItemsClass
self:oRS:fields:item("itemid"):value := self:nitem
self:oRS:fields:item("OrderNumberid"):value := self:nOrderNumber
self:oRS:fields:item("Amount"):value := self:cAmount
self:oRS:fields:item("Cost"):value := self:cCost
self:oRS:fields:item("Notes"):value := self:cNotes
self:oRS:fields:item("Value1"):value := self:cUnitValue
self:oRS:fields:item("Value2"):value := self:cSecUnitValue
self:oRS:fields:item("DateofInput"):value := self:cDateofInput
Return 0
Method ADO2Class Class ReserveItemsClass
self:nItem := self:oRS:fields:item("ItemID"):value
self:nOrderNumber := self:oRS:fields:item("OrderNumberID"):value
self:cAmount := self:oRS:fields:item("Amount"):value
self:cCost := self:oRS:fields:item("Cost"):value
self:cNotes := self:oRS:fields:item("Notes"):value
self:cUnitValue := self:oRS:fields:item("Value1"):value
self:cSecUnitValue := self:oRS:fields:item("Value2"):value
self:cDateOfInput := self:oRS:fields:item("DateOfInput"):value
self:cItemUnitText := self:oRS:fields:item(10):value
self:cItemSecUnitText := self:oRS:fields:item("ItemUnit"):value
self:cCustomer := self:oRS:fields:item("f_name"):value
Return 0
Method Class2UserInterface Class ReserveItemsClass
self:nOrderNumber = self:LookupIDToIndex(self:nOrderNumber,@self:OrderNumberItemsids)
ReserveItemsWindow.ComboOrderNumber.Value := self:nOrderNumber
self:nItem = self:LookupIDToIndex(self:nItem,@self:ItemItemsids)
ReserveItemsWindow.Comboitem.Value := self:nItem
ReserveItemsWindow.textUnitValue.Value := self:cUnitValue
ReserveItemsWindow.textSecUnitValue.Value := self:cSecUnitValue
ReserveItemsWindow.textAmount.Value := self:cAmount
ReserveItemsWindow.dateDateOfInput.Value := ctod(self:cDateOfInput)
ReserveItemsWindow.textCost.Value := self:cCost
ReserveItemsWindow.textNotes.Value := self:cNotes
ReserveItemsWindow.textItemUnit.Value := self:cItemUnitText
ReserveItemsWindow.textItemSecUnit.Value := self:cItemSecUnitText
ReserveItemsWindow.textCustomer.Value := self:cCustomer
Return 0
Method ClearRecord Class ReserveItemsClass
self:nOrderNumber := 0
self:nItem := 0
self:cUnitValue := "1"
self:cSecUnitValue := "1"
self:cAmount := "1"
self:cDateOfInput := ""
self:cCost := ""
self:cNotes := ""
self:cItemUnitText := ""
self:cItemSecUnitText := ""
self:cCustomer := ""
Return 0
Method OpenDataWindow Class ReserveItemsClass
Local nvalue,myout
nvalue := ReserveItemsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ReserveItemsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ReserveItemsClass
myout = self:search()
ReserveItemsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ReserveItemsClass
IF p1 = 1
ReserveItemsWindow.btnfirst.Enabled := false
ReserveItemsWindow.btnnext.Enabled := false
ReserveItemsWindow.btnprev.Enabled := false
ReserveItemsWindow.btnlast.Enabled := false
ReserveItemsWindow.btndel.Enabled := false
ReserveItemsWindow.btnclose.Enabled := false
ReserveItemsWindow.btnsave.Enabled := true
ReserveItemsWindow.btncancel.Enabled := true
ReserveItemsWindow.btnedit.Enabled := false
ReserveItemsWindow.btnadd.Enabled := false
ReserveItemsWindow.comboOrderNumber.Enabled := true
ReserveItemsWindow.comboItem.Enabled := true
ReserveItemsWindow.textUnitValue.Enabled := true
ReserveItemsWindow.textSecUnitValue.Enabled := true
ReserveItemsWindow.textAmount.Enabled := true
ReserveItemsWindow.textCost.Enabled := true
ReserveItemsWindow.textNotes.Enabled := true
ReserveItemsWindow.datedateofinput.Enabled := true
ReserveItemsWindow.btnSelItem.Enabled := true
ENDIF
IF p1 = 2
ReserveItemsWindow.btnfirst.Enabled := true
ReserveItemsWindow.btnnext.Enabled := true
ReserveItemsWindow.btnprev.Enabled := true
ReserveItemsWindow.btnlast.Enabled := true
ReserveItemsWindow.btndel.Enabled := true
ReserveItemsWindow.btnclose.Enabled := true
ReserveItemsWindow.btnsave.Enabled := false
ReserveItemsWindow.btncancel.Enabled := false
ReserveItemsWindow.btnedit.Enabled := true
ReserveItemsWindow.btnadd.Enabled := true
ReserveItemsWindow.comboOrderNumber.Enabled := false
ReserveItemsWindow.comboItem.Enabled := false
ReserveItemsWindow.textUnitValue.Enabled := false
ReserveItemsWindow.textSecUnitValue.Enabled := false
ReserveItemsWindow.textAmount.Enabled := false
ReserveItemsWindow.textCost.Enabled := false
ReserveItemsWindow.textNotes.Enabled := false
ReserveItemsWindow.datedateofinput.Enabled := false
ReserveItemsWindow.textItemUnit.Enabled := false
ReserveItemsWindow.textItemSecUnit.Enabled := false
ReserveItemsWindow.btnSelItem.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method itemchange Class ReserveItemsClass
Local myrs,MYVALUE
TVALUE := ReserveItemsWindow.Comboitem.Value
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
ReserveItemsWindow.textItemUnit.Value := myvalue
myvalue := myRS:fields:item("ItemUnit"):value
ReserveItemsWindow.textItemSecUnit.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class ReserveItemsClass
tvalue := ReserveItemsWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ReserveItemsWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := ReserveItemsWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ReserveItemsWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := ReserveItemsWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
ReserveItemsWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method SubValuesFromItem Class ReserveItemsClass
Local myRS,tValue,v1,v2,c1,c2,c3
tvalue := ReserveItemsWindow.Comboitem.Value
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
Method AddValuesToItem Class ReserveItemsClass
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
Method OnAfterAddEdit Class ReserveItemsClass
myout = self:SubValuesFromItem()
Return myout
Method OnBeforeEdit Class ReserveItemsClass
myout = self:UserInterface2Class()
myout = self:AddValuesToItem()
Return myout
Method OnBeforeDelete Class ReserveItemsClass
myout = self:UserInterface2Class()
myout = self:AddValuesToItem()
Return myout
Method orderchange Class ReserveItemsClass
Local myrs,MYVALUE
TVALUE := ReserveItemsWindow.Comboordernumber.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ordernumberItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from orders_ALL where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item("f_name"):value
ReserveItemsWindow.textCustomer.Value := myvalue
myRS:Close()
Return 0
Method SelectItem Class ReserveItemsClass
Local myindex,myout
myout = SelectItemMasterDetailsObject:ShowWindow()
myindex = self:LookupIDToIndex(SelectItemMasterDetailsObject:nOrderNumber,@self:ItemItemsids)
ReserveItemsWindow.ComboItem.Value := myindex
myout = self:ItemChange()
Return 0
Method closewindow Class ReserveItemsClass
myout = self:disconnect()
ReserveItemsWindow.Release ( )
Return 0
Method AutoGotoRecord Class ReserveItemsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ReserveItemsWindow )
myout = self:showrecord()
ReserveItemsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ReserveItemsClass
ReserveItemsWindow.grid1Browse.DeleteAllItems ( )
ReserveItemsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ReserveItemsClass
ReserveItemsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ReserveItemsClass
ReserveItemsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ReserveItemsClass
cName := ReserveItemsWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
