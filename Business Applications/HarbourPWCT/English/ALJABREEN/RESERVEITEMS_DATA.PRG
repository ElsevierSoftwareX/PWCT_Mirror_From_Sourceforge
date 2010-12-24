*---------------------------------------------------------------------------*
* Time : 00:05:15    Date : 12/06/2010
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
Data columns init {}
Data nCustomerName init 0
Data CustomerNameitems init {}
Data CustomerNameitemsids init {}
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
Data WareHouseCode init 0
Data itemgroupitems init {}
Data itemgroupitemsids init {}
Data cInvNo init ""
Data cInvNotes init ""
Data cInvDate init ""
Data cOrderNumber init 0
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
Method basegroupfilter
Method ComboSearchChange
Method CheckData
EndClass
Method showwindow Class ReserveItemsClass
myColumns := {}
AADD( myColumns , "ID")
AADD( myColumns , "OrderNumber")
AADD( myColumns , "f_name")
AADD( myColumns , "ExportInvNo")
AADD( myColumns , "ExportInvDate")
AADD( myColumns , "Dateofinput")
AADD( myColumns , "ItemName")
AADD( myColumns , "ItemCompleteName")
AADD( myColumns , "ItemClass")
AADD( myColumns , "GroupName")
AADD( myColumns , "SourceName")
AADD( myColumns , "GradeName")
AADD( myColumns , "ColorName")
AADD( myColumns , "SizeName")
AADD( myColumns , "itemModelNo")
AADD( myColumns , "itemModelName")
self:columns := mycolumns
myColumns := {}
AADD( myColumns , "ID")
AADD( myColumns , "Order Number")
AADD( myColumns , "Customer Name")
AADD( myColumns , "Invoice Number")
AADD( myColumns , "Invoice Date")
AADD( myColumns , "Export Date")
AADD( myColumns , "Item Name")
AADD( myColumns , "Item Complete Name")
AADD( myColumns , "Item Class")
AADD( myColumns , "Group Name")
AADD( myColumns , "Source Name")
AADD( myColumns , "Grade Name")
AADD( myColumns , "Color Name")
AADD( myColumns , "Size Name")
AADD( myColumns , "Model Number")
AADD( myColumns , "Model Name")
myout = self:LoadLookupTable("ItemsGroups","GroupName",@self:ItemGroupItems,"id",@self:ItemGroupItemsIDS)
myout = self:basegroupfilter()
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ReserveItemsWindow )
DEFINE WINDOW ReserveItemsWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 675 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE sys_warehousearray[self:warehousecode] +" - Export Items" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 42 ,3 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 550
@ 600 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,515 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 600 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 600 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 600 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 600 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE space(40) + sys_warehousearray[self:warehousecode] + " - Export Items From Warehouse" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 420 ,487 LABEL lblSourceName ;
VALUE "Quantity" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 420 ,569 TEXTBOX textUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 53 ,265 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
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
HEIGHT 130 ;
HEADERS mycolumns;
WIDTHS {100,100,120,100,100,100,100,200,100,100,100,100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 460 ,487 LABEL lblSecUnitValue ;
VALUE "Quantity" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 460 ,570 TEXTBOX textSecUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Customers","f_name",@self:CustomerNameItems,"id",@self:CustomerNameItemsIDS)
@ 308 ,139 LABEL lblCustomerName ;
VALUE "Customer Name" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 310 ,298 COMBOBOX comboCustomerName;
WIDTH 460 ;
HEIGHT 100;
ITEMS self:CustomerNameitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 344 ,155 LABEL lblOrderNumber ;
VALUE "Order Number" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 345 ,298 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable2("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 378 ,236 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 385 ,298 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 420 ,201 LABEL lblItemUnit ;
VALUE "Item Unit" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 420 ,298 TEXTBOX textItemUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 460 ,91 LABEL lblItemUnit2 ;
VALUE "Item Unit (Secondary)" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 460 ,298 TEXTBOX textItemSecUnit;
HEIGHT 30 ;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 555 ,73 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 553 ,163 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 650 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 506 ,507 LABEL lblCost ;
VALUE "Cost" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 505 ,568 TEXTBOX textCost;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 508 ,144 LABEL lblDateofInput ;
VALUE "Date of Export" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 508 ,298 DATEPICKER datedateofinput;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 513 ,923 LABEL lblAmount ;
VALUE "Amount" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 512 ,1013 TEXTBOX textAmount;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 382 ,720 BUTTONEX btnSelItem;
CAPTION ":::";
ON CLICK self:SelectItem()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 232 ,144 LABEL lblInvNo ;
VALUE "Invoice Number" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 230 ,298 TEXTBOX textInvNo;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 266 ,162 LABEL lblInvNotes ;
VALUE "Invoice Notes" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,298 TEXTBOX textInvNotes;
HEIGHT 30 ;
WIDTH 460 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 232 ,468 LABEL lblInvDate ;
VALUE "Invoice Date" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 232 ,589 DATEPICKER dateInvDate;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 52 ,73 COMBOBOX comboSearchColumn;
ON CHANGE self:combosearchchange()  ;
WIDTH 180 ;
HEIGHT 230;
ITEMS mycolumns ;
VALUE 2 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ReserveItemsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ReserveItemsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ReserveItemsWindow
EndIF

Return 0
Method UserInterface2Class Class ReserveItemsClass
self:nCustomerName := ReserveItemsWindow.ComboCustomerName.Value
self:nCustomerName := self:CustomerNameItemsids[self:nCustomerName]
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
self:cInvNo := ReserveItemsWindow.textInvNo.Value
self:cInvNotes := ReserveItemsWindow.textInvNotes.Value
self:cInvDate := ReserveItemsWindow.dateInvDate.Value
self:cInvDate := dtoc(self:cInvDate)
self:cOrderNumber := ReserveItemsWindow.textOrderNumber.Value
Return 0
Method Class2ADO Class ReserveItemsClass
self:oRS:fields:item("itemid"):value := self:nitem
self:oRS:fields:item("CustomerNameid"):value := self:nCustomerName
self:oRS:fields:item("Amount"):value := self:cAmount
self:oRS:fields:item("Cost"):value := self:cCost
self:oRS:fields:item("Notes"):value := self:cNotes
self:oRS:fields:item("Value1"):value := self:cUnitValue
self:oRS:fields:item("Value2"):value := self:cSecUnitValue
self:oRS:fields:item("DateofInput"):value := self:cDateofInput
self:oRS:fields:item("ExportInvNo"):value := self:cInvNo
self:oRS:fields:item("ExportInvDate"):value := self:cInvDate
self:oRS:fields:item("ExportInvNotes"):value := self:cInvNotes
self:oRS:fields:item("OrderNumber"):value := self:cOrderNumber
Return 0
Method ADO2Class Class ReserveItemsClass
self:nItem := self:oRS:fields:item("ItemID"):value
self:nCustomerName := self:oRS:fields:item("CustomerNameID"):value
self:cAmount := self:oRS:fields:item("Amount"):value
self:cCost := self:oRS:fields:item("Cost"):value
self:cNotes := self:oRS:fields:item("Notes"):value
self:cUnitValue := self:oRS:fields:item("Value1"):value
self:cSecUnitValue := self:oRS:fields:item("Value2"):value
self:cDateOfInput := self:oRS:fields:item("DateOfInput"):value
self:cItemUnitText := self:oRS:fields:item(10):value
self:cItemSecUnitText := self:oRS:fields:item("ItemUnit"):value
self:cInvNo := self:oRS:fields:item("ExportInvNo"):value
self:cInvDate := self:oRS:fields:item("ExportInvDate"):value
self:cInvNotes := self:oRS:fields:item("ExportInvNotes"):value
self:cOrderNumber := self:oRS:fields:item("OrderNumber"):value
Return 0
Method Class2UserInterface Class ReserveItemsClass
self:nCustomerName = self:LookupIDToIndex(self:nCustomerName,@self:CustomerNameItemsids)
ReserveItemsWindow.ComboCustomerName.Value := self:nCustomerName
tvalue = self:LookupIDToIndex(self:nItem,@self:ItemItemsids)
ReserveItemsWindow.Comboitem.Value := tvalue
ReserveItemsWindow.textUnitValue.Value := self:cUnitValue
ReserveItemsWindow.textSecUnitValue.Value := self:cSecUnitValue
ReserveItemsWindow.textAmount.Value := self:cAmount
ReserveItemsWindow.dateDateOfInput.Value := ctod(self:cDateOfInput)
ReserveItemsWindow.textCost.Value := self:cCost
ReserveItemsWindow.textNotes.Value := self:cNotes
ReserveItemsWindow.textItemUnit.Value := self:cItemUnitText
ReserveItemsWindow.textItemSecUnit.Value := self:cItemSecUnitText
ReserveItemsWindow.textInvNo.Value := self:cInvNo
ReserveItemsWindow.dateInvDate.Value := ctod(self:cInvDate)
ReserveItemsWindow.textInvNotes.Value := self:cInvNotes
ReserveItemsWindow.textOrderNumber.Value := self:cOrderNumber
Return 0
Method ClearRecord Class ReserveItemsClass
self:nCustomerName := 0
self:nItem := 0
self:cUnitValue := "1"
self:cSecUnitValue := "1"
self:cAmount := "1"
self:cDateOfInput := ""
self:cCost := ""
self:cNotes := ""
self:cItemUnitText := ""
self:cItemSecUnitText := ""
self:cInvNo := ""
self:cInvNotes := ""
self:cInvDate := ""
self:cOrderNumber := ""
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
ReserveItemsWindow.comboCustomerName.Enabled := true
ReserveItemsWindow.textUnitValue.Enabled := true
ReserveItemsWindow.textSecUnitValue.Enabled := true
ReserveItemsWindow.textAmount.Enabled := true
ReserveItemsWindow.textCost.Enabled := true
ReserveItemsWindow.textNotes.Enabled := true
ReserveItemsWindow.datedateofinput.Enabled := true
ReserveItemsWindow.btnSelItem.Enabled := true
ReserveItemsWindow.comboItem.Enabled := true
ReserveItemsWindow.textInvNo.Enabled := true
ReserveItemsWindow.textInvNotes.Enabled := true
ReserveItemsWindow.dateInvDate.Enabled := true
ReserveItemsWindow.textOrderNumber.Enabled := true
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
ReserveItemsWindow.comboCustomerName.Enabled := false
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
ReserveItemsWindow.textInvNo.Enabled := false
ReserveItemsWindow.textInvNotes.Enabled := false
ReserveItemsWindow.dateInvDate.Enabled := false
ReserveItemsWindow.textOrderNumber.Enabled := false
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
myvalue := myRS:fields:item(15):value
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
SelectItemMasterDetailsObject:warehousecode := self:warehousecode
myout = SelectItemMasterDetailsObject:ShowWindow()
myindex = self:LookupIDToIndex(SelectItemMasterDetailsObject:nOrderNumber,@self:ItemItemsids)
ReserveItemsWindow.ComboItem.Value := myindex
myout = self:ItemChange()
Return 0
Method baseGroupFilter Class ReserveItemsClass
tvalue := self:ItemGroupItemsids[self:warehousecode]
self:complexsearch := " and itemgroupid = " + alltrim(Str(tvalue))
Return 0
Method ComboSearchChange Class ReserveItemsClass
nColumn := ReserveItemsWindow.ComboSearchColumn.Value
self:column := self:columns[ncolumn]
Return 0
Method CheckData Class ReserveItemsClass
Local myret,v1,vMax,myRS,nMax
myret := true
v1 := ReserveItemsWindow.ComboCustomerName.Value
IF v1 = 0
MyOut := MSGBOX("You must determine Customer Name","Sorry")
myret := false
ENDIF
v1 := ReserveItemsWindow.ComboItem.Value
IF v1 = 0
MyOut := MSGBOX("You must determine item","Sorry")
myret := false
ENDIF
v1 := ReserveItemsWindow.textOrderNumber.Value
v1 = ALLTRIM ( v1 )
IF v1 == ""
MyOut := MSGBOX("You must determine Order Number","Sorry")
myret := false
ENDIF
IF self:addrec = true
vmax := 0
ELSE
vmax := 1
ENDIF
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from ReserveItems_All where OrderNumber = '" + v1 + "'",self:oCon,3,3 )
nMax := myRS:RecordCount
myRS:Close()
IF nMax > vMax
MyOut := MSGBOX("Order Number Duplication is not Allowed","Sorry")
myret := false
ENDIF
v1 := ReserveItemsWindow.textInvNo.Value
v1 = ALLTRIM ( v1 )
IF v1 == ""
MyOut := MSGBOX("You must determine Invoice Number","Sorry")
myret := false
ENDIF
tvalue := ReserveItemsWindow.Comboitem.Value
tvalue := self:ItemItemsids[tvalue]
tvalue = STR ( tvalue )
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := Self:oCon
myRS:open ( "Select * from Items where id = " + tvalue,Self:oCon,3,3 )
v1 := myRS:fields:item("itemvalue"):value
c1 := ReserveItemsWindow.textUnitValue.value
c1 = VAL ( c1 )
v1 = VAL ( v1 )
IF ( v1 - c1 ) < 0
MyOut := MSGBOX("Required Quantity not found ... negative value : " + alltrim(str(v1-c1)),"Sorry")
myret := false
ENDIF
myRS:Close()
Return myret
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
