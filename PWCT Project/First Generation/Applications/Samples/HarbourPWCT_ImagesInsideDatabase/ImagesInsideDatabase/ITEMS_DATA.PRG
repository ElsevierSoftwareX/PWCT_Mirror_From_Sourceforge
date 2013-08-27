*---------------------------------------------------------------------------*
* Time : 12:26:34    Date : 08/27/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.08.24
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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

Resistance R_ITEMS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMS_DATA_18smart1() code
class ItemsClass From SYSTEMDATABASE
Data TableName init "Items_ALL"
Data nID init 0
Data column init "ID"
Data PrimaryKey init "id"
Data columns init {"ColorWeight","MasWeight","GoldWeight","Amount","Name","Cost","Discount","Price","ItemClass","ID"}
Data nItemClass init 0
Data itemClassitems init {}
Data itemClassitemsids init {}
Data nSupplier init 0
Data SuppliersItems init {}
Data SuppliersItemsids init {}
Data FindTitles init {"C Weight","M Weight","G Weight","Amount","Supplier","Cost","Discount","Price","Type","ID"}
Data nPrice init 0
Data nDiscount init 0
Data nCost init 0
Data nAmount init 0
Data nGoldWeight init 0
Data nMasWeight init 0
Data nColorWeight init 0
Data bPhoto init ""
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
Method CalcCost
Method OnAfterAddEdit
Method ShowImage
Method SetImage
Method CheckData
EndClass
Method showwindow Class ItemsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsWindow )
DEFINE WINDOW ItemsWindow ;
AT 10 ,10 ;
WIDTH 1127 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Items Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 45 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Images\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 520
@ 572 ,503 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,632 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,699 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 58 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,870 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 77 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,568 BUTTONEX btnPrev;
CAPTION "Prev";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,775 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 72 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 572 ,322 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 572 ,395 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 572 ,247 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 572 ,169 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "  Items Data    " ;
WIDTH 1110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,399 TEXTBOX textNamebrowse;
ON CHANGE self:Search()  ;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 93 ,13 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 1090 ;
HEIGHT 160 ;
HEADERS self:FindTitles;
WIDTHS {100,100,100,100,150,100,100,100,150,50} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,241 COMBOBOX comboFind;
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
@ 366 ,449 LABEL lblItemDispalyName ;
VALUE "C Weight" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,553 TEXTBOX textColorWeight;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
myout = self:LoadLookupTable("ItemClasses","ItemClass",@self:ItemClassItems,"id",@self:ItemClassItemsIDS)
@ 326 ,15 LABEL lblItemClass ;
VALUE "Type" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 326 ,119 COMBOBOX comboitemclass;
WIDTH 290 ;
HEIGHT 100;
ITEMS self:ItemClassitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 434 ,15 LABEL lblItemGroup ;
VALUE "Price" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 430 ,119 TEXTBOX textPrice;
ON LOSTFOCUS self:CalcCost()  ;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 473 ,15 LABEL lblItemGrade ;
VALUE "Discount" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 466 ,119 TEXTBOX textDiscount;
ON LOSTFOCUS self:CalcCost()  ;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 510 ,15 LABEL lblItemUnit ;
VALUE "Cost" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 504 ,119 TEXTBOX textCost;
HEIGHT 30 ;
WIDTH 140 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
myout = self:LoadLookupTable("Suppliers","Name",@self:SuppliersItems,"id",@self:SuppliersItemsIDS)
@ 367 ,15 LABEL lblItemUnit2 ;
VALUE "Supplier" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,119 COMBOBOX comboSupplier;
WIDTH 290 ;
HEIGHT 100;
ITEMS self:SuppliersItems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 465 ,449 LABEL lblUnitValue ;
VALUE "M Weight" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 466 ,553 TEXTBOX textMasWeight;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 430 ,449 LABEL lblSecUnitValue ;
VALUE "G Weight" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 430 ,553 TEXTBOX textGoldWeight;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 326 ,449 LABEL lblSourceName ;
VALUE "Amount" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 326 ,553 TEXTBOX textAmount;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 283 ,15 LABEL lblID ;
VALUE "ID" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 281 ,119 TEXTBOX textID;
HEIGHT 30 ;
WIDTH 140 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 519 ,934 BUTTONEX btnSetImage;
CAPTION " Select Image File  ";
ON CLICK Self:SetImage()  ;
WIDTH 170 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActivex1
oActivex1 := TActiveX():New( "ItemsWindow", "shell.Explorer.2" , 281 , 714 , 391 , 225)
oActivex1:Load()
END WINDOW
ItemsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsWindow
EndIF
Return 0
Method UserInterface2Class Class ItemsClass
self:nitemclass := ItemsWindow.Comboitemclass.Value
self:nitemclass := self:ItemClassItemsids[self:nitemclass]
self:nPrice := ItemsWindow.textPrice.Value
self:nDiscount := ItemsWindow.textDiscount.Value
self:nCost := ItemsWindow.textCost.Value
self:nAmount := ItemsWindow.textAmount.Value
self:nSupplier := ItemsWindow.ComboSupplier.Value
self:nSupplier := self:SuppliersItemsids[self:nSupplier]
self:nGoldWeight := ItemsWindow.textGoldWeight.Value
self:nMasWeight := ItemsWindow.textMasWeight.Value
self:nColorWeight := ItemsWindow.textColorWeight.Value
self:nPrice = VAL ( self:nPrice )
self:nDiscount = VAL ( self:nDiscount )
self:nAmount = VAL ( self:nAmount )
self:nCost = VAL ( self:nCost )
self:nGoldWeight = VAL ( self:nGoldWeight )
self:nMasWeight = VAL ( self:nMasWeight )
self:nColorWeight = VAL ( self:nColorWeight )
Return 0
Method Class2ADO Class ItemsClass
self:oRS:fields:item("itemclassid"):value := self:nitemclass
self:oRS:fields:item(alltrim("Supplierid")):value := self:nSupplier
self:oRS:fields:item(alltrim("Price")):value := self:nPrice
self:oRS:fields:item(alltrim("Discount")):value := self:nDiscount
self:oRS:fields:item(alltrim("Cost")):value := self:nCost
self:oRS:fields:item(alltrim("Amount")):value := self:nAmount
self:oRS:fields:item(alltrim("GoldWeight")):value := self:nGoldWeight
self:oRS:fields:item(alltrim("MasWeight")):value := self:nMasWeight
self:oRS:fields:item(alltrim("ColorWeight")):value := self:nColorWeight
self:oRS:fields:item(alltrim("photo")):value := self:bPhoto
Return 0
Method ADO2Class Class ItemsClass
self:nitemclass := self:oRS:fields:item("itemclassid"):value
self:nSupplier := self:oRS:fields:item(alltrim("SupplierID")):value
self:nPrice := self:oRS:fields:item(alltrim("Price")):value
self:nDiscount := self:oRS:fields:item(alltrim("Discount")):value
self:nCost := self:oRS:fields:item(alltrim("Cost")):value
self:nAmount := self:oRS:fields:item(alltrim("Amount")):value
self:nGoldWeight := self:oRS:fields:item(alltrim("GoldWeight")):value
self:nMasWeight := self:oRS:fields:item(alltrim("MasWeight")):value
self:nColorWeight := self:oRS:fields:item(alltrim("ColorWeight")):value
self:nID := self:oRS:fields:item("ID"):value
self:bPhoto := Self:oRS:fields:item(alltrim("photo")):value
Return 0
Method Class2UserInterface Class ItemsClass
self:nPrice = STR ( self:nPrice )
self:nCost = STR ( self:nCost )
self:nDiscount = STR ( self:nDiscount )
self:nAmount = STR ( self:nAmount )
self:nGoldWeight = STR ( self:nGoldWeight )
self:nMasWeight = STR ( self:nMasWeight )
self:nColorWeight = STR ( self:nColorWeight )
self:nID = STR ( self:nID )
self:nPrice = ALLTRIM ( self:nPrice )
self:nCost = ALLTRIM ( self:nCost )
self:nDiscount = ALLTRIM ( self:nDiscount )
self:nAmount = ALLTRIM ( self:nAmount )
self:nGoldWeight = ALLTRIM ( self:nGoldWeight )
self:nMasWeight = ALLTRIM ( self:nMasWeight )
self:nColorWeight = ALLTRIM ( self:nColorWeight )
self:nID = ALLTRIM ( self:nID )
self:nItemClass = self:LookupIDToIndex(self:nItemClass,@self:ItemClassItemsids)
ItemsWindow.Comboitemclass.Value := self:nItemClass
ItemsWindow.textPrice.Value := self:nPrice
ItemsWindow.textDiscount.Value := self:nDiscount
ItemsWindow.textCost.Value := self:nCost
self:nSupplier = self:LookupIDToIndex(self:nSupplier,@self:SuppliersItemsids)
ItemsWindow.ComboSupplier.Value := self:nSupplier
ItemsWindow.textAmount.Value := self:nAmount
ItemsWindow.textGoldWeight.Value := self:nGoldWeight
ItemsWindow.textMasWeight.Value := self:nMasWeight
ItemsWindow.textColorWeight.Value := self:nColorWeight
ItemsWindow.textID.Value := self:nID
self:nPrice = VAL ( self:nPrice )
self:nDiscount = VAL ( self:nDiscount )
self:nAmount = VAL ( self:nAmount )
self:nCost = VAL ( self:nCost )
self:nGoldWeight = VAL ( self:nGoldWeight )
self:nMasWeight = VAL ( self:nMasWeight )
self:nColorWeight = VAL ( self:nColorWeight )
self:nID = VAL ( self:nID )
myout = Self:ShowImage()
Return 0
Method ClearRecord Class ItemsClass
self:nItemClass := 0
self:nSupplier := 0
self:nPrice := 0
self:nDiscount := 0
self:nCost := 0
self:nAmount := 0
self:nGoldWeight := 0
self:nMasWeight := 0
self:nColorWeight := 0
self:nID := 0
self:bPhoto := ""
Return 0
Method OpenDataWindow Class ItemsClass
Local nvalue,myout
nvalue := ItemsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ItemsWindow.Grid1Browse.SetFocus ( )
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
ItemsWindow.comboItemClass.Enabled := true
ItemsWindow.comboSupplier.Enabled := true
ItemsWindow.textPrice.Enabled := true
ItemsWindow.textDiscount.Enabled := true
ItemsWindow.textCost.Enabled := true
ItemsWindow.textAmount.Enabled := true
ItemsWindow.textGoldWeight.Enabled := true
ItemsWindow.textMasWeight.Enabled := true
ItemsWindow.textColorWeight.Enabled := true
ItemsWindow.textID.Enabled := False
ItemsWindow.btnSetImage.Enabled := True
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
ItemsWindow.comboItemClass.Enabled := False
ItemsWindow.comboSupplier.Enabled := False
ItemsWindow.textPrice.Enabled := False
ItemsWindow.textDiscount.Enabled := False
ItemsWindow.textCost.Enabled := False
ItemsWindow.textAmount.Enabled := False
ItemsWindow.textGoldWeight.Enabled := False
ItemsWindow.textMasWeight.Enabled := False
ItemsWindow.textColorWeight.Enabled := False
ItemsWindow.textID.Enabled := False
ItemsWindow.btnSetImage.Enabled := False
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
ENDIF
Return myout
Method CalcCost Class ItemsClass
self:nPrice := ItemsWindow.textPrice.Value
self:nDiscount := ItemsWindow.textDiscount.Value
self:nPrice = VAL ( self:nPrice )
self:nDiscount = VAL ( self:nDiscount )
self:nCost := Self:nPrice - ( (Self:nPrice/100) * Self:nDiscount )
self:nCost = STR ( self:nCost )
self:nCost = ALLTRIM ( self:nCost )
ItemsWindow.textCost.Value := self:nCost
self:nCost = VAL ( self:nCost )
Return 0
Method OnAfterAddEdit Class ItemsClass
myout = self:showrecord()
Return 0
Method ShowImage Class ItemsClass
Local cFile
StartUpFolder := GetStartUpFolder()
cfile := startupfolder + "\test.jpg"
Delete File (cFile)
BEGIN SEQUENCE WITH { |e| break(e) }
StreamToFile ( self:bPhoto,cFile )
RECOVER
END SEQUENCE
RPWI_TH = FCREATE("test.htm",0)
FWRITE(RPWI_TH,' <html> <body> <img src="' + cFile + '" alt="photo"/> </body> </html> ')
FCLOSE(RPWI_TH)
oActivex1:OOLE:navigate ( cFile )
Return 0
Method SetImage Class ItemsClass
PutFile := PutFile ( {  {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
self:bPhoto = FileToStream ( putfile )
myout = Self:ShowImage()
Return 0
Method CheckData Class ItemsClass
Local n1,myret
myret := True
n1 := ItemsWindow.textAmount.Value
n1 = VAL ( n1 )
IF n1 < 1
MyOut := MSGBOX("Amount must be > 0","Sorry ")
myret := False
ENDIF
n1 := ItemsWindow.textDiscount.Value
n1 = VAL ( n1 )
IF n1 < 0 .or. n1 > 100
MyOut := MSGBOX(" Error in discount value ","Sorry")
myret := False
ENDIF
Return myret
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
