*---------------------------------------------------------------------------*
* Time : 20:29:35    Date : 09/14/2010
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
Function TEST11
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

Resistance R_TEST11_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST11_15speed1() code
class OrdersMasterDetailsClass From SystemDatabase
Data TableName init "orders_all"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"ordernumber"}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data TableName2 init "orderitems_all"
Data column2 init "itemname"
Data PrimaryKey2 init "id"
Data columns2 init {"ItemName"}
Data ResultPrimaryKeys2 init {}
Data TableName3 init "orderitems"
Data PrimaryKey3 init "id"
Data linkmasterkey init "orderid"
Data linkchildkey init "itemid"
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
EndClass
Method showwindow Class OrdersMasterDetailsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrdersMasterDetailsWindow )
DEFINE WINDOW OrdersMasterDetailsWindow ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 657 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Enter Orders" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 270 ,328 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,391 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,674 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,164 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,236 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,92 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,9 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                            Master/Details" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 52 ,59 LABEL lbl1browse ;
VALUE "Order Number" ;
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

@ 53 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 130 ;
HEADERS {"Order Number"};
WIDTHS {100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 316 ,163 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 316 ,230 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 280 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,199 LABEL lblOrdernumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 231 ,333 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 572 ,231 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 572 ,338 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 572 ,507 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 356 ,11 GRID Grid1browse2;
WIDTH 750 ;
HEIGHT 200 ;
HEADERS {"Item Name"};
WIDTHS {100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 573 ,13 BUTTONEX btnDel2;
CAPTION "Delete Item";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 315 ,525 BUTTONEX btnadd2;
CAPTION "Add Item";
ON CLICK self:addrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

OrdersMasterDetailsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
OrdersMasterDetailsWindow.Timer1.Enabled := false
OrdersMasterDetailsWindow.textOrderNumber.Enabled := false
ACTIVATE WINDOW OrdersMasterDetailsWindow
EndIF

Return 0
Method UserInterface2Class Class OrdersMasterDetailsClass
Return 0
Method Class2ADO Class OrdersMasterDetailsClass
self:oRS:fields:item("OrderNumber"):value := self:nOrderNumber
Return 0
Method ADO2Class Class OrdersMasterDetailsClass
self:nOrderNumber := self:oRS:fields:item("OrderNumber"):value
Return 0
Method Class2UserInterface Class OrdersMasterDetailsClass
OrdersMasterDetailsWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
Return 0
Method ClearRecord Class OrdersMasterDetailsClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
Return 0
Method setmode(p1) Class OrdersMasterDetailsClass
IF p1 = 1
OrdersMasterDetailsWindow.btnfirst.Enabled := false
OrdersMasterDetailsWindow.btnnext.Enabled := false
OrdersMasterDetailsWindow.btnprev.Enabled := false
OrdersMasterDetailsWindow.btnlast.Enabled := false
OrdersMasterDetailsWindow.btndel.Enabled := false
OrdersMasterDetailsWindow.btnclose.Enabled := false
OrdersMasterDetailsWindow.btnsave.Enabled := true
OrdersMasterDetailsWindow.btncancel.Enabled := true
OrdersMasterDetailsWindow.btnedit.Enabled := false
OrdersMasterDetailsWindow.btnadd.Enabled := false
OrdersMasterDetailsWindow.btnadd2.Enabled := false
OrdersMasterDetailsWindow.btndel2.Enabled := false
ENDIF
IF p1 = 2
OrdersMasterDetailsWindow.btnfirst.Enabled := true
OrdersMasterDetailsWindow.btnnext.Enabled := true
OrdersMasterDetailsWindow.btnprev.Enabled := true
OrdersMasterDetailsWindow.btnlast.Enabled := true
OrdersMasterDetailsWindow.btndel.Enabled := true
OrdersMasterDetailsWindow.btnclose.Enabled := true
OrdersMasterDetailsWindow.btnsave.Enabled := false
OrdersMasterDetailsWindow.btncancel.Enabled := false
OrdersMasterDetailsWindow.btnedit.Enabled := true
OrdersMasterDetailsWindow.btnadd.Enabled := true
OrdersMasterDetailsWindow.btnadd2.Enabled := true
OrdersMasterDetailsWindow.btndel2.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method OnBeforeDelete Class OrdersMasterDetailsClass
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:linkmasterkey+" = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class OrdersMasterDetailsClass
Local myRS,nValue
nvalue := 0
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
OrdersMasterDetailsWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class OrdersMasterDetailsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersMasterDetailsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
OrdersMasterDetailsWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
OrdersMasterDetailsWindow.grid1browse2.Value := 0
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
OrdersMasterDetailsWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class OrdersMasterDetailsClass
Local nvalue,myout
nvalue := OrdersMasterDetailsWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:primarykey3+" = " + nvalue)
myout = self:search2()
ELSE
MyOut := MSGBOX("You should Create/Select Item First","Sorry")
ENDIF
Return 0
Method AddRecord2 Class OrdersMasterDetailsClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := OrdersMasterDetailsWindow.ComboItem.Value
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
Method itemchange Class OrdersMasterDetailsClass
Local myrs,MYVALUE
TVALUE := OrdersMasterDetailsWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
Return 0
Method closewindow Class OrdersMasterDetailsClass
myout = self:disconnect()
OrdersMasterDetailsWindow.Release ( )
Return 0
Method AutoGotoRecord Class OrdersMasterDetailsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( OrdersMasterDetailsWindow )
myout = self:showrecord()
OrdersMasterDetailsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class OrdersMasterDetailsClass
OrdersMasterDetailsWindow.grid1Browse.DeleteAllItems ( )
OrdersMasterDetailsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersMasterDetailsClass
OrdersMasterDetailsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class OrdersMasterDetailsClass
OrdersMasterDetailsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class OrdersMasterDetailsClass
cName := OrdersMasterDetailsWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class OrdersMasterDetailsClass
Local nvalue,myout
nvalue := OrdersMasterDetailsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrdersMasterDetailsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrdersMasterDetailsClass
myout = self:search()
OrdersMasterDetailsWindow.Timer1.Enabled := false
Return 0
Method OnBeforeEdit Class OrdersMasterDetailsClass
Return myout
Method OnAfterAddEdit Class OrdersMasterDetailsClass
Return myout



End Of Resistance

*-------------------------------------------------------------------*
