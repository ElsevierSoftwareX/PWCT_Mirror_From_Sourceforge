*---------------------------------------------------------------------------*
* Time : 18:16:29    Date : 12/11/2012
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

Resistance R_ITEMS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMS_DATA_18smart1() code
class ItemsClass From SYSTEMDATABASE
Data TableName init "Items_ALL"
Data nID init 0
Data cItemName init ""
Data column init "ItemName"
Data PrimaryKey init "id"
Data columns init {"SizeName","ColorName","GradeName","SourceName","GroupName","ItemClass","ItemCompleteName","ItemName","ID"}
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
Data FindTitles init {"ÇáÍÌã","Çááæä","ÇáãÓÊæì","ÇáãÕÏÑ","ÇáãÌãæÚÉ","ÇáÝÆÉ","ÇÓã ÇáÕäÝ ÈÇáÊÝÕíá","ÇÓã ÇáÕäÝ","ßæÏ"}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method AutoGotoRecord
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method CheckFind
Method OnBeforeDelete
EndClass
Method showwindow Class ItemsClass
IF .not. UsersObject:CheckPermission(20)
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsWindow )
DEFINE WINDOW ItemsWindow ;
AT 10 ,10 ;
WIDTH 1127 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÊÚÑíÝ ÇáÇÕäÇÝ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 520
@ 570 ,554 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,427 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,364 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,191 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,490 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,283 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,710 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,622 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,788 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,855 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                                   ÊÚÑíÝ ÇáÇÕäÇÝ" ;
WIDTH 1110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 474 ,805 LABEL lblSourceName ;
VALUE "ÇÓã ÇáÕäÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 470 ,503 TEXTBOX textItemName;
HEIGHT 30 ;
WIDTH 290 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,269 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,166 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 1090 ;
HEIGHT 160 ;
HEADERS self:FindTitles;
WIDTHS {70,70,70,100,100,200,200,200,50} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,801 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 150 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 8 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 512 ,805 LABEL lblItemDispalyName ;
VALUE "ÇÓã ÊÝÕíáì ááÕäÝ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 510 ,503 TEXTBOX textItemCompleteName;
HEIGHT 30 ;
WIDTH 290 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("ItemClasses","ItemClass",@self:ItemClassItems,"id",@self:ItemClassItemsIDS)
@ 267 ,805 LABEL lblItemClass ;
VALUE "ÝÆÉ ÇáÕäÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,593 COMBOBOX comboitemclass;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemClassitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsGroups","GroupName",@self:ItemGroupItems,"id",@self:ItemGroupItemsIDS)
@ 308 ,805 LABEL lblItemGroup ;
VALUE "ãÌãæÚÉ ÇáÕäÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,593 COMBOBOX comboitemGroup;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemGroupitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsGrades","GradeName",@self:ItemGradeItems,"id",@self:ItemGradeItemsIDS)
@ 347 ,805 LABEL lblItemGrade ;
VALUE "ãÓÊæì ÇáÕäÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 346 ,593 COMBOBOX comboitemGrade;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemGradeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsSizes","SizeName",@self:ItemSizeItems,"id",@self:ItemSizeItemsIDS)
@ 266 ,388 LABEL lblItemSize ;
VALUE "ÍÌã ÇáÕäÝ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,172 COMBOBOX comboitemSize;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemSizeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsColors","ColorName",@self:ItemColorItems,"id",@self:ItemColorItemsIDS)
@ 307 ,388 LABEL lblItemColor ;
VALUE "áæä ÇáÕäÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 306 ,172 COMBOBOX comboitemColor;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemColoritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsSources","SourceName",@self:ItemSourceItems,"id",@self:ItemSourceItemsIDS)
@ 346 ,388 LABEL lblItemSource ;
VALUE "ãÕÏÑ ÇáÕäÝ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 346 ,172 COMBOBOX comboitemSource;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:ItemSourceitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsUnits","ItemUnit",@self:ItemUnitItems,"id",@self:ItemUnitItemsIDS)
@ 384 ,805 LABEL lblItemUnit ;
VALUE "æÍÏÉ ÇáÕäÝ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 384 ,553 COMBOBOX comboitemUnit;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:ItemUnititems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ItemsUnits","ItemUnit",@self:ItemSecUnitItems,"id",@self:ItemSecUnitItemsIDS)
@ 426 ,805 LABEL lblItemUnit2 ;
VALUE "æÍÏÉ ÇáÕäÝ ÇáËÇäæíÉ" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 425 ,553 COMBOBOX comboitemsecUnit;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:ItemSecUnititems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 384 ,388 LABEL lblUnitValue ;
VALUE "ÇáßãíÉ ÇáãÊæÝÑÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 384 ,232 TEXTBOX textUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 425 ,388 LABEL lblSecUnitValue ;
VALUE "ÇáßãíÉ ÇáãÊæÝÑÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 425 ,232 TEXTBOX textSecUnitValue;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = RightToLeftControl ( "ItemsWindow","comboitemclass" )
myout = RightToLeftControl ( "ItemsWindow","comboitemgroup" )
myout = RightToLeftControl ( "ItemsWindow","comboitemgrade" )
myout = RightToLeftControl ( "ItemsWindow","comboitemsize" )
myout = RightToLeftControl ( "ItemsWindow","comboitemcolor" )
myout = RightToLeftControl ( "ItemsWindow","comboitemsource" )
myout = RightToLeftControl ( "ItemsWindow","comboitemunit" )
myout = RightToLeftControl ( "ItemsWindow","comboitemsecunit" )
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
self:oRS:fields:item(alltrim("ItemName")):value := self:cItemName
self:oRS:fields:item(alltrim("ItemCompleteName")):value := self:cItemCompleteName
self:oRS:fields:item(alltrim("itemclassid")):value := self:nitemclass
self:oRS:fields:item(alltrim("itemGroupid")):value := self:nitemGroup
self:oRS:fields:item(alltrim("itemGradeid")):value := self:nitemGrade
self:oRS:fields:item(alltrim("itemSizeid")):value := self:nitemSize
self:oRS:fields:item(alltrim("itemColorid")):value := self:nitemColor
self:oRS:fields:item(alltrim("itemSourceid")):value := self:nitemSource
self:oRS:fields:item(alltrim("itemUnitid")):value := self:nitemUnit
self:oRS:fields:item(alltrim("itemSecUnitid")):value := self:nitemSecUnit
self:oRS:fields:item(alltrim("itemValue")):value := self:cItemValue
self:oRS:fields:item(alltrim("itemValue2")):value := self:cItemValue2
Return 0
Method ADO2Class Class ItemsClass
self:cItemName := self:oRS:fields:item(alltrim("ItemName")):value
self:cItemCompleteName := self:oRS:fields:item(alltrim("ItemCompleteName")):value
self:nitemclass := self:oRS:fields:item(alltrim("itemclassid")):value
self:nitemGroup := self:oRS:fields:item(alltrim("itemGroupid")):value
self:nitemGrade := self:oRS:fields:item(alltrim("itemGradeid")):value
self:nitemSize := self:oRS:fields:item(alltrim("itemSizeid")):value
self:nitemColor := self:oRS:fields:item(alltrim("itemColorid")):value
self:nitemSource := self:oRS:fields:item(alltrim("itemSourceid")):value
self:nitemUnit := self:oRS:fields:item(alltrim("itemUnitid")):value
self:nitemSecUnit := self:oRS:fields:item(alltrim("itemSecUnitid")):value
self:cItemValue := self:oRS:fields:item(alltrim("ItemValue")):value
self:cItemValue2 := self:oRS:fields:item(alltrim("ItemValue2")):value
self:nID := self:oRS:fields:item(alltrim("ID")):value
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
Method CheckFind Class ItemsClass
Local nIndex
nIndex := ItemsWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method OnBeforeDelete Class ItemsClass
Local myorderid
IF .not. self:nID = 0
myItemID = STR ( self:nID )
myout = self:oCon:execute("delete from reserveitems where itemid = " + myitemid)
myout = self:oCon:execute("delete from itemsenter where itemid = " + myitemid)
ENDIF
Return myout
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
ItemsWindow.grid1browse.DeleteAllItems ( )
ItemsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsClass
ItemsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ItemsClass
cName := ItemsWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ItemsClass
ItemsWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
