*---------------------------------------------------------------------------*
* Time : 07:44:46    Date : 01/13/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
Function MASTERDTAILS
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

Resistance R_MASTERDTAILS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MASTERDTAILS_18smart1() code
class MasterDetailsClass From SystemDatabase
Data cWindowName init "MasterDetailsWindow"
Data TableName init "Orders_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "ID"
Data columns init {"OrderNumber","CustName"}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data TableName2 init "OrderItems_All"
Data column2 init "ItemName"
Data PrimaryKey2 init "ID"
Data columns2 init {"ItemName"}
Data ResultPrimaryKeys2 init {}
Data TableName3 init "OrderItems"
Data PrimaryKey3 init "ID"
Data linkmasterkey init "OrderNumber"
Data linkchildkey init "ItemNumber"
Data TableName4 init "SystemCounter"
Data CounterColumn init "OrderNumber"
Data itemstable init "items"
Data Itemscolumn init "itemname"
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
Method showwindow Class MasterDetailsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( MasterDetailsWindow )
DEFINE WINDOW MasterDetailsWindow ;
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
BACKCOLOR {239,239,239}

@ 270 ,328 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,391 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,674 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,164 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,241 BUTTONEX btncancel;
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
@ 0 ,-7 LABEL lblTitle ;
VALUE "   Master/Details" ;
WIDTH 790 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
@ 52 ,59 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,196 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 53 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 130 ;
HEADERS {"Order Number","Customer Name"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable(self:itemstable,self:itemscolumn,@self:ItemItems,"id",@self:ItemItemsIDS)
@ 316 ,163 LABEL lblitems ;
VALUE "Item" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 316 ,230 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 200 ;
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
FONTCOLOR {0,0,0}
@ 231 ,333 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 572 ,231 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 572 ,338 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

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
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:delrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 315 ,525 BUTTONEX btnadd2;
CAPTION "Add Item";
ON CLICK self:addrecord2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

MasterDetailsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
MasterDetailsWindow.Timer1.Enabled := false
MasterDetailsWindow.textOrderNumber.Enabled := false
ACTIVATE WINDOW MasterDetailsWindow
EndIF

Return 0
Method UserInterface2Class Class MasterDetailsClass
Return 0
Method Class2ADO Class MasterDetailsClass
self:oRS:fields:item(self:linkmasterkey):value := self:nOrderNumber
Return 0
Method ADO2Class Class MasterDetailsClass
self:nOrderNumber := self:oRS:fields:item(self:linkmasterkey):value
Return 0
Method Class2UserInterface Class MasterDetailsClass
MasterDetailsWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
myout = self:search2()
Return 0
Method ClearRecord Class MasterDetailsClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
Return 0
Method setmode(p1) Class MasterDetailsClass
IF p1 = 1
MasterDetailsWindow.btnfirst.Enabled := false
MasterDetailsWindow.btnnext.Enabled := false
MasterDetailsWindow.btnprev.Enabled := false
MasterDetailsWindow.btnlast.Enabled := false
MasterDetailsWindow.btndel.Enabled := false
MasterDetailsWindow.btnclose.Enabled := false
MasterDetailsWindow.btnsave.Enabled := true
MasterDetailsWindow.btncancel.Enabled := true
MasterDetailsWindow.btnedit.Enabled := false
MasterDetailsWindow.btnadd.Enabled := false
MasterDetailsWindow.btnadd2.Enabled := false
MasterDetailsWindow.btndel2.Enabled := false
MasterDetailsWindow.textNameBrowse.Enabled := false
MasterDetailsWindow.btn1Browse.Enabled := false
MasterDetailsWindow.Grid1Browse.Enabled := false
ENDIF
IF p1 = 2
MasterDetailsWindow.btnfirst.Enabled := true
MasterDetailsWindow.btnnext.Enabled := true
MasterDetailsWindow.btnprev.Enabled := true
MasterDetailsWindow.btnlast.Enabled := true
MasterDetailsWindow.btndel.Enabled := true
MasterDetailsWindow.btnclose.Enabled := true
MasterDetailsWindow.btnsave.Enabled := false
MasterDetailsWindow.btncancel.Enabled := false
MasterDetailsWindow.btnedit.Enabled := true
MasterDetailsWindow.btnadd.Enabled := true
MasterDetailsWindow.btnadd2.Enabled := true
MasterDetailsWindow.btndel2.Enabled := true
MasterDetailsWindow.textNameBrowse.Enabled := True
MasterDetailsWindow.btn1Browse.Enabled := True
MasterDetailsWindow.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method OnBeforeDelete Class MasterDetailsClass
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:linkmasterkey+" = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class MasterDetailsClass
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
MasterDetailsWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class MasterDetailsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := MasterDetailsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where "+self:linkmasterkey+"= "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
MasterDetailsWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
MasterDetailsWindow.grid1browse2.Value := 0
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
MasterDetailsWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class MasterDetailsClass
Local nvalue,myout
nvalue := MasterDetailsWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:primarykey3+" = " + nvalue)
myout = self:search2()
ELSE
MyOut := MSGBOX("You should Create/Select Item First","Sorry")
ENDIF
Return 0
Method AddRecord2 Class MasterDetailsClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := MasterDetailsWindow.ComboItem.Value
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
Method itemchange Class MasterDetailsClass
Local myrs,MYVALUE
TVALUE := MasterDetailsWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
Return 0
Method closewindow Class MasterDetailsClass
myout = self:disconnect()
MasterDetailsWindow.Release ( )
Return 0
Method AutoGotoRecord Class MasterDetailsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( MasterDetailsWindow )
myout = self:showrecord()
MasterDetailsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class MasterDetailsClass
MasterDetailsWindow.grid1Browse.DeleteAllItems ( )
MasterDetailsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class MasterDetailsClass
MasterDetailsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class MasterDetailsClass
MasterDetailsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class MasterDetailsClass
cName := MasterDetailsWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class MasterDetailsClass
Local nvalue,myout
nvalue := MasterDetailsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
MasterDetailsWindow.Grid1browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class MasterDetailsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class MasterDetailsClass
myout = self:search()
MasterDetailsWindow.Timer1.Enabled := false
Return 0
Method OnBeforeEdit Class MasterDetailsClass
Return myout
Method OnAfterAddEdit Class MasterDetailsClass
Return myout



End Of Resistance

*-------------------------------------------------------------------*
