*---------------------------------------------------------------------------*
* Time : 15:49:42    Date : 05/01/2012
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
Function MASTERDETAILSTEST
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

Resistance R_MASTERDETAILSTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MASTERDETAILSTEST_18smart1() code
class OrdersClass From SystemDatabase
Data cWindowName init "MasterDetailsWindow"
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
Data CustomerItems init {}
Data CustomerItemsIDs init {}
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
Method SelectItem
EndClass
Method showwindow Class OrdersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrdersWindow )
DEFINE WINDOW OrdersWindow ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 657 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÇÏÎá ÇáÃæÇãÑ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 270 ,328 BUTTONEX btnFirst;
CAPTION "ÇáÃæá";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,391 BUTTONEX btnNext;
CAPTION "ÇáÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,518 BUTTONEX btnLast;
CAPTION "ÇáÃÎíÑ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,674 BUTTONEX btnClose;
CAPTION "ÎÑæÌ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,455 BUTTONEX btnPrev;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,587 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,162 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,236 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ ÇáÃãÑ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,92 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,9 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                            ÑÆíÓì/ ÊÝÇÕíá" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 50 ,619 LABEL lbl1browse ;
VALUE "ÑÞã ÇáÃãÑ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 53 ,196 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 52 ,82 BUTTONEX btn1browse;
CAPTION "ÇáÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 130 ;
HEADERS {"ÑÞã ÇáÃãÑ","ÇÓã ÇáÚãíá"};
WIDTHS {100,300} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable(self:itemstable,self:itemscolumn,@self:ItemItems,"id",@self:ItemItemsIDS)
@ 314 ,603 LABEL lblitems ;
VALUE "ÇáÈäÏ" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 316 ,360 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 229 ,645 LABEL lblOrdernumber ;
VALUE "ÑÞã ÇáÃãÑ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 229 ,422 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 571 ,577 LABEL lbl1browse2 ;
VALUE "ÇÓã ÇáÈäÏ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 572 ,408 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 573 ,251 BUTTONEX btn1browse2;
CAPTION "ÈÍË";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 356 ,11 GRID Grid1browse2;
WIDTH 750 ;
HEIGHT 200 ;
HEADERS {"ÇÓã ÇáÈäÏ"};
WIDTHS {100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 573 ,83 BUTTONEX btnDel2;
CAPTION "ÍÐÝ ÈäÏ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 313 ,139 BUTTONEX btnadd2;
CAPTION "ÇÖÇÝÉ ÈäÏ";
ON CLICK self:addrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 314 ,290 BUTTONEX btnSelectItem;
CAPTION "::: ";
ON CLICK self:SelectItem()  ;
WIDTH 65 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = self:LoadLookupTable("Customers","CustName",@self:CustomerItems,"ID",@self:CustomerItemsIDs)
@ 232 ,305 LABEL lbl13 ;
VALUE "ÇÓã ÇáÚãíá " ;
WIDTH 80 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 230 ,74 COMBOBOX comboCustomer;
ON GOTFOCUS self:itemchange()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:CustomerItems ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

OrdersWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
OrdersWindow.Timer1.Enabled := false
OrdersWindow.textOrderNumber.Enabled := false
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("OrdersWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("OrdersWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW OrdersWindow
EndIF

Return 0
Method UserInterface2Class Class OrdersClass
self:nCustomer := OrdersWindow.comboCustomer.Value
self:nCustomer := self:CustomerItemsIDs[nCustomer]
Return 0
Method Class2ADO Class OrdersClass
self:oRS:fields:item(self:linkmasterkey):value := self:nOrderNumber
self:oRS:fields:item(alltrim("CustomerID")):value := self:nCustomer
Return 0
Method ADO2Class Class OrdersClass
self:nOrderNumber := self:oRS:fields:item(self:linkmasterkey):value
nCustomer := self:oRS:fields:item(alltrim("CustomerID")):value
Return 0
Method Class2UserInterface Class OrdersClass
OrdersWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
self:nCustomer = self:LookupIDtoIndex(self:nCustomer,@self:customerItemsIDs)
OrdersWindow.comboCustomer.Value := self:nCustomer
Return 0
Method ClearRecord Class OrdersClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
self:nCustomer := 0
Return 0
Method setmode(p1) Class OrdersClass
IF p1 = 1
OrdersWindow.btnfirst.Enabled := false
OrdersWindow.btnnext.Enabled := false
OrdersWindow.btnprev.Enabled := false
OrdersWindow.btnlast.Enabled := false
OrdersWindow.btndel.Enabled := false
OrdersWindow.btnclose.Enabled := false
OrdersWindow.btnsave.Enabled := true
OrdersWindow.btncancel.Enabled := true
OrdersWindow.btnedit.Enabled := false
OrdersWindow.btnadd.Enabled := false
OrdersWindow.btnadd2.Enabled := false
OrdersWindow.btndel2.Enabled := false
OrdersWindow.comboCustomer.Enabled := true
OrdersWindow.textNameBrowse.Enabled := false
OrdersWindow.btn1Browse.Enabled := false
OrdersWindow.Grid1Browse.Enabled := false
ENDIF
IF p1 = 2
OrdersWindow.btnfirst.Enabled := true
OrdersWindow.btnnext.Enabled := true
OrdersWindow.btnprev.Enabled := true
OrdersWindow.btnlast.Enabled := true
OrdersWindow.btndel.Enabled := true
OrdersWindow.btnclose.Enabled := true
OrdersWindow.btnsave.Enabled := false
OrdersWindow.btncancel.Enabled := false
OrdersWindow.btnedit.Enabled := true
OrdersWindow.btnadd.Enabled := true
OrdersWindow.btnadd2.Enabled := true
OrdersWindow.btndel2.Enabled := true
OrdersWindow.comboCustomer.Enabled := false
OrdersWindow.textNameBrowse.Enabled := True
OrdersWindow.btn1Browse.Enabled := True
OrdersWindow.Grid1Browse.Enabled := True
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
OrdersWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class OrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where "+self:linkmasterkey+"= "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
OrdersWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
OrdersWindow.grid1browse2.Value := 0
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
OrdersWindow.grid1browse2.AddItem ( temp_array )
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
nvalue := OrdersWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:primarykey3+" = " + nvalue)
myout = self:search2()
ELSE
MyOut := MSGExclamation("íÌÈ Ãä ÊÍÏÏ ÇáÈäÏ ÇáãÑÇÏ ÍÐÝå ÇæáÇ","ÚÝæÇ")
ENDIF
Return 0
Method AddRecord2 Class OrdersClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := OrdersWindow.ComboItem.Value
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
TVALUE := OrdersWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
Return 0
Method SelectItem Class OrdersClass
myout = SelectItemObject:ShowWindow()
IF SelectItemObject:nSelectedID !=0
myIndex = self:LookupIDtoIndex(SelectItemObject:nSelectedID,@self:ItemItemsIDs)
OrdersWindow.comboitem.Value := myIndex
ENDIF
Return 0
Method closewindow Class OrdersClass
myout = self:disconnect()
OrdersWindow.Release ( )
Return 0
Method AutoGotoRecord Class OrdersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( OrdersWindow )
myout = self:showrecord()
OrdersWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class OrdersClass
OrdersWindow.grid1Browse.DeleteAllItems ( )
OrdersWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersClass
OrdersWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class OrdersClass
OrdersWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class OrdersClass
cName := OrdersWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class OrdersClass
Local nvalue,myout
nvalue := OrdersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
OrdersWindow.Grid1browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrdersClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrdersClass
myout = self:search()
OrdersWindow.Timer1.Enabled := false
Return 0
Method OnBeforeEdit Class OrdersClass
Return myout
Method OnAfterAddEdit Class OrdersClass
Return myout



End Of Resistance

*-------------------------------------------------------------------*
