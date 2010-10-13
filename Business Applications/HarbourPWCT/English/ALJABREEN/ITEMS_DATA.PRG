*---------------------------------------------------------------------------*
* Time : 23:11:12    Date : 10/13/2010
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
Function ITEMS_DATA
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

Resistance R_ITEMS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMS_DATA_15speed1() code
class ItemsClass From SystemDatabase
Data TableName init "Items_ALL"
Data nID init 0
Data cItemName init ""
Data column init "ItemName"
Data PrimaryKey init "id"
Data columns init {"ID","ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName"}
Data cItemCompleteName init ""
Data nItemClass init 0
Data itemGroupitems init {}
Data itemGroupitemsids init {}
Data nItemGroup init 0
Data itemclassitems init {}
Data itemclassitemsids init {}
Data nItemGrade init 0
Data itemGradeitems init {}
Data itemGradeitemsids init {}
Data nItemSize init 0
Data itemSizeitems init {}
Data itemSizeitemsids init {}
Data nItemColor init 0
Data itemColoritems init {}
Data itemColoritemsids init {}
Data nItemSource init 0
Data itemSourceitems init {}
Data itemSourceitemsids init {}
Data nItemUnit init 0
Data itemUnititems init {}
Data itemUnititemsids init {}
Data nItemSecUnit init 0
Data itemSecUnititems init {}
Data itemSecUnititemsids init {}
Data cItemValue init "0"
Data cItemValue2 init "0"
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
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method ItemDetails
EndClass
Method showwindow Class ItemsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsWindow )
DEFINE WINDOW ItemsWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Items" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
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
VALUE "                                                                               Items" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 473 ,73 LABEL lblSourceName ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 470 ,290 TEXTBOX textItemName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

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
HEADERS {"ID","Item Name","Item Display Name","Class","Group","Source","Grade","Color","Size"};
WIDTHS {50,150,150,100,100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 512 ,73 LABEL lblItemDispalyName ;
VALUE "Item Dispaly Name" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 510 ,291 TEXTBOX textItemCompleteName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("ItemClasses","ItemClass",@self:ItemClassItems,"id",@self:ItemClassItemsIDS)
@ 266 ,73 LABEL lblItemClass ;
VALUE "Item Class" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,210 COMBOBOX comboitemclass;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemClassitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsGroups","GroupName",@self:ItemGroupItems,"id",@self:ItemGroupItemsIDS)
@ 307 ,73 LABEL lblItemGroup ;
VALUE "Item Group" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,210 COMBOBOX comboitemGroup;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemGroupitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsGrades","GradeName",@self:ItemGradeItems,"id",@self:ItemGradeItemsIDS)
@ 346 ,73 LABEL lblItemGrade ;
VALUE "Item Grade" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 346 ,210 COMBOBOX comboitemGrade;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemGradeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsSizes","SizeName",@self:ItemSizeItems,"id",@self:ItemSizeItemsIDS)
@ 266 ,444 LABEL lblItemSize ;
VALUE "Item Size" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,580 COMBOBOX comboitemSize;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemSizeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsColors","ColorName",@self:ItemColorItems,"id",@self:ItemColorItemsIDS)
@ 307 ,444 LABEL lblItemColor ;
VALUE "Item Color" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,580 COMBOBOX comboitemColor;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemColoritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsSources","SourceName",@self:ItemSourceItems,"id",@self:ItemSourceItemsIDS)
@ 346 ,444 LABEL lblItemSource ;
VALUE "Item Source" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 346 ,580 COMBOBOX comboitemSource;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemSourceitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsUnits","ItemUnit",@self:ItemUnitItems,"id",@self:ItemUnitItemsIDS)
@ 384 ,73 LABEL lblItemUnit ;
VALUE "Item Unit" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 384 ,290 COMBOBOX comboitemUnit;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:ItemUnititems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsUnits","ItemUnit",@self:ItemSecUnitItems,"id",@self:ItemSecUnitItemsIDS)
@ 425 ,73 LABEL lblItemUnit2 ;
VALUE "Item Unit (Secondary)" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 425 ,289 COMBOBOX comboitemsecUnit;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:ItemSecUnititems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 384 ,567 LABEL lblUnitValue ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 384 ,640 TEXTBOX textUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 425 ,566 LABEL lblSecUnitValue ;
VALUE "Value" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 425 ,640 TEXTBOX textSecUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 6 ,774 BUTTONEX btnDetails;
CAPTION "Details";
ON CLICK self:ItemDetails()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ItemsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsWindow
EndIF

Return 0
Method UserInterface2Class Class ItemsClass
self:cItemName := ItemsWindow.textItemName.Value
self:cItemCompleteName := ItemsWindow.textItemCompleteName.Value
self:nitemclass := ItemsWindow.Comboitemclass.Value
self:nitemclass := self:ItemClassItemsids[self:nitemclass]
self:nitemGroup := ItemsWindow.ComboitemGroup.Value
self:nitemGroup := self:ItemGroupItemsids[self:nitemGroup]
self:nitemGrade := ItemsWindow.ComboitemGrade.Value
self:nitemGrade := self:ItemGradeItemsids[self:nitemGrade]
self:nitemSize := ItemsWindow.ComboitemSize.Value
self:nitemSize := self:ItemSizeItemsids[self:nitemSize]
self:nitemColor := ItemsWindow.ComboitemColor.Value
self:nitemColor := self:ItemColorItemsids[self:nitemColor]
self:nitemSource := ItemsWindow.ComboitemSource.Value
self:nitemSource := self:ItemSourceItemsids[self:nitemSource]
self:nitemUnit := ItemsWindow.ComboitemUnit.Value
self:nitemUnit := self:ItemUnitItemsids[self:nitemUnit]
self:nitemSecUnit := ItemsWindow.ComboitemSecUnit.Value
self:nitemSecUnit := self:ItemSecUnitItemsids[self:nitemSecUnit]
self:cItemValue := ItemsWindow.textUnitvalue.Value
self:cItemValue2 := ItemsWindow.textSecUnitvalue.Value
Return 0
Method Class2ADO Class ItemsClass
self:oRS:fields:item("ItemName"):value := self:cItemName
self:oRS:fields:item("ItemCompleteName"):value := self:cItemCompleteName
self:oRS:fields:item("itemclassid"):value := self:nitemclass
self:oRS:fields:item("itemGroupid"):value := self:nitemGroup
self:oRS:fields:item("itemGradeid"):value := self:nitemGrade
self:oRS:fields:item("itemSizeid"):value := self:nitemSize
self:oRS:fields:item("itemColorid"):value := self:nitemColor
self:oRS:fields:item("itemSourceid"):value := self:nitemSource
self:oRS:fields:item("itemUnitid"):value := self:nitemUnit
self:oRS:fields:item("itemSecUnitid"):value := self:nitemSecUnit
self:oRS:fields:item("itemValue"):value := self:cItemValue
self:oRS:fields:item("itemValue2"):value := self:cItemValue2
Return 0
Method ADO2Class Class ItemsClass
self:cItemName := self:oRS:fields:item("ItemName"):value
self:cItemCompleteName := self:oRS:fields:item("ItemCompleteName"):value
self:nitemclass := self:oRS:fields:item("itemclassid"):value
self:nitemGroup := self:oRS:fields:item("itemGroupid"):value
self:nitemGrade := self:oRS:fields:item("itemGradeid"):value
self:nitemSize := self:oRS:fields:item("itemSizeid"):value
self:nitemColor := self:oRS:fields:item("itemColorid"):value
self:nitemSource := self:oRS:fields:item("itemSourceid"):value
self:nitemUnit := self:oRS:fields:item("itemUnitid"):value
self:nitemSecUnit := self:oRS:fields:item("itemSecUnitid"):value
self:cItemValue := self:oRS:fields:item("ItemValue"):value
self:cItemValue2 := self:oRS:fields:item("ItemValue2"):value
Return 0
Method Class2UserInterface Class ItemsClass
ItemsWindow.textItemName.Value := self:cItemName
ItemsWindow.textItemCompleteName.Value := self:cItemCompleteName
self:nItemClass = self:LookupIDToIndex(self:nItemClass,@self:ItemClassItemsids)
ItemsWindow.Comboitemclass.Value := self:nItemClass
self:nItemGroup = self:LookupIDToIndex(self:nItemGroup,@self:ItemGroupItemsids)
ItemsWindow.ComboitemGroup.Value := self:nItemGroup
self:nItemGrade = self:LookupIDToIndex(self:nItemGrade,@self:ItemGradeItemsids)
ItemsWindow.ComboitemGrade.Value := self:nItemGrade
self:nItemSize = self:LookupIDToIndex(self:nItemSize,@self:ItemSizeItemsids)
ItemsWindow.ComboitemSize.Value := self:nItemSize
self:nItemColor = self:LookupIDToIndex(self:nItemColor,@self:ItemColorItemsids)
ItemsWindow.ComboitemColor.Value := self:nItemColor
self:nItemSource = self:LookupIDToIndex(self:nItemSource,@self:ItemSourceItemsids)
ItemsWindow.ComboitemSource.Value := self:nItemSource
self:nItemUnit = self:LookupIDToIndex(self:nItemUnit,@self:ItemUnitItemsids)
ItemsWindow.ComboitemUnit.Value := self:nItemUnit
self:nItemSecUnit = self:LookupIDToIndex(self:nItemSecUnit,@self:ItemSecUnitItemsids)
ItemsWindow.ComboitemSecUnit.Value := self:nItemSecUnit
self:cItemValue = ALLTRIM ( self:cItemvalue )
self:cItemValue2 = ALLTRIM ( self:cItemvalue2 )
ItemsWindow.textUnitValue.Value := self:cItemValue
ItemsWindow.textSecUnitValue.Value := self:cItemValue2
Return 0
Method ClearRecord Class ItemsClass
self:cItemName := ""
self:cItemCompleteName := ""
self:nItemClass := 0
self:nItemGroup := 0
self:nItemGrade := 0
self:nItemSize := 0
self:nItemColor := 0
self:nItemSource := 0
self:nItemUnit := 0
self:nItemSecUnit := 0
self:cItemValue := "0"
self:cItemValue2 := "0"
Return 0
Method OpenDataWindow Class ItemsClass
Local nvalue,myout
nvalue := ItemsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemsClass
myout = self:search()
ItemsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ItemsClass
IF p1 = 1
ItemsWindow.btnfirst.Enabled := false
ItemsWindow.btnnext.Enabled := false
ItemsWindow.btnprev.Enabled := false
ItemsWindow.btnlast.Enabled := false
ItemsWindow.btndel.Enabled := false
ItemsWindow.btnclose.Enabled := false
ItemsWindow.btnsave.Enabled := true
ItemsWindow.btncancel.Enabled := true
ItemsWindow.btnedit.Enabled := false
ItemsWindow.btnadd.Enabled := false
ItemsWindow.textItemName.Enabled := true
ItemsWindow.textItemCompleteName.Enabled := true
ItemsWindow.comboItemClass.Enabled := true
ItemsWindow.comboItemGroup.Enabled := true
ItemsWindow.comboItemGrade.Enabled := true
ItemsWindow.comboItemSize.Enabled := true
ItemsWindow.comboItemColor.Enabled := true
ItemsWindow.comboItemSource.Enabled := true
ItemsWindow.comboItemUnit.Enabled := true
ItemsWindow.comboItemSecUnit.Enabled := true
ENDIF
IF p1 = 2
ItemsWindow.btnfirst.Enabled := true
ItemsWindow.btnnext.Enabled := true
ItemsWindow.btnprev.Enabled := true
ItemsWindow.btnlast.Enabled := true
ItemsWindow.btndel.Enabled := true
ItemsWindow.btnclose.Enabled := true
ItemsWindow.btnsave.Enabled := false
ItemsWindow.btncancel.Enabled := false
ItemsWindow.btnedit.Enabled := true
ItemsWindow.btnadd.Enabled := true
ItemsWindow.textItemName.Enabled := false
ItemsWindow.textItemCompleteName.Enabled := false
ItemsWindow.comboItemClass.Enabled := false
ItemsWindow.comboItemGroup.Enabled := false
ItemsWindow.comboItemGrade.Enabled := false
ItemsWindow.comboItemSize.Enabled := false
ItemsWindow.comboItemColor.Enabled := false
ItemsWindow.comboItemSource.Enabled := false
ItemsWindow.comboItemUnit.Enabled := false
ItemsWindow.comboItemSecUnit.Enabled := false
ItemsWindow.textUnitValue.Enabled := false
ItemsWindow.textSecUnitValue.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method ItemDetails Class ItemsClass
Local myid,myout,myrs,empdetailsids
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No Record in Items Table","Sorry")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from ItemDetails",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No Records in details table","Sorry")
Return 0
ENDIF
myRS:MOVEFIRST()
empdetailsids := {}
FOR x = 1 TO mymax STEP 1
MYDETAILID := myRS:fields:item("ID"):value
AADD( EMPDETAILSIDS , MYDETAILID)
MYRS:MOVENEXT()
Next
myRS:Close()
FOR x = 1 TO mymax STEP 1
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from ItemDetailsValues where itemid = " + str(myid) + " and detailID = " + str(empdetailsids[x]),self:oCon,3,3 )
mymax2 := myRS:RecordCount
IF mymax2 = 0
myRS:ADDNEW()
myRS:fields:item("itemid"):value := myid
myRS:fields:item("Detailid"):value := empdetailsids[x]
myRS:UPDATE()
ENDIF
myRS:Close()
Next
ItemDetailsValuesDataBrowseObject:ItemID := myid
myout = ItemDetailsValuesDataBrowseObject:ShowWindow()
Return 0
Method closewindow Class ItemsClass
myout = self:disconnect()
ItemsWindow.Release ( )
Return 0
Method AutoGotoRecord Class ItemsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemsWindow )
myout = self:showrecord()
ItemsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemsClass
ItemsWindow.grid1Browse.DeleteAllItems ( )
ItemsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsClass
ItemsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsClass
ItemsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsClass
cName := ItemsWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
