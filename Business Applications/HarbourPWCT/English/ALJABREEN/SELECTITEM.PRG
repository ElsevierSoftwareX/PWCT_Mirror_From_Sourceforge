*---------------------------------------------------------------------------*
* Time : 18:00:25    Date : 10/16/2010
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
Function SELECTITEM
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

Resistance R_SELECTITEM_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SELECTITEM_15speed1() code
class SelectItemMasterDetailsClass From SystemDatabase
Data TableName init "Items_All"
Data nID init 0
Data column init "ItemName"
Data PrimaryKey init "id"
Data columns init {"ID","ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName"}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data TableName2 init "ItemDetailsValues_All"
Data column2 init "Itemdetails"
Data PrimaryKey2 init "id"
Data columns2 init {"itemdetails","InfValue"}
Data ResultPrimaryKeys2 init {}
Data TableName3 init "ItemDetailsValues_All"
Data PrimaryKey3 init "id"
Data linkmasterkey init "ID"
Data linkchildkey init "ItemID"
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
Method showwindow Class SelectItemMasterDetailsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( SelectItemMasterDetailsWindow )
DEFINE WINDOW SelectItemMasterDetailsWindow ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 574 ;
ON INIT self:Search()  ;
ON LOSTFOCUS SelectItemMasterDetailsWindow.release()  ;
TITLE "Select Item" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 39 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 510
@ 493 ,309 BUTTONEX btnClose;
CAPTION "Ok";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                            Select Item" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 52 ,59 LABEL lbl1browse ;
VALUE "Item Name" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
HEADERS {"ID","Item Name","Item Display Name","Class","Group","Source","Grade","Color","Size"};
WIDTHS {50,150,150,100,100,100,100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable("ItemsAndUnits_ALL","ItemCompleteName",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 286 ,11 GRID Grid1browse2;
WIDTH 750 ;
HEIGHT 200 ;
HEADERS {"Information","Value"};
WIDTHS {200,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,59 LABEL lbl2browse ;
VALUE "Information" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 233 ,196 TEXTBOX textnamebrowse2;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 233 ,612 BUTTONEX btn2browse;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

SelectItemMasterDetailsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
SelectItemMasterDetailsWindow.Timer1.Enabled := false
ACTIVATE WINDOW SelectItemMasterDetailsWindow
EndIF

Return 0
Method UserInterface2Class Class SelectItemMasterDetailsClass
Return 0
Method Class2ADO Class SelectItemMasterDetailsClass
self:oRS:fields:item("id"):value := self:nOrderNumber
Return 0
Method ADO2Class Class SelectItemMasterDetailsClass
self:nOrderNumber := self:oRS:fields:item("id"):value
Return 0
Method Class2UserInterface Class SelectItemMasterDetailsClass
myout = self:search2()
Return 0
Method ClearRecord Class SelectItemMasterDetailsClass
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
Return 0
Method setmode(p1) Class SelectItemMasterDetailsClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method OnBeforeDelete Class SelectItemMasterDetailsClass
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:linkmasterkey+" = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class SelectItemMasterDetailsClass
Local myRS,nValue
nvalue := 0
self:nOrderNumber := nValue
SelectItemMasterDetailsWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class SelectItemMasterDetailsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := SelectItemMasterDetailsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where itemid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
SelectItemMasterDetailsWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
SelectItemMasterDetailsWindow.grid1browse2.Value := 0
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
SelectItemMasterDetailsWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class SelectItemMasterDetailsClass
Local nvalue,myout
nvalue := SelectItemMasterDetailsWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
myout = self:oCon:execute("delete from "+self:tablename3+" where "+self:primarykey3+" = " + nvalue)
myout = self:search2()
ELSE
MyOut := MSGBOX("You should Create/Select Item First","Sorry")
ENDIF
Return 0
Method AddRecord2 Class SelectItemMasterDetailsClass
Local oRS,nValue
IF self:nOrderNumber > 0
self:nItem := SelectItemMasterDetailsWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tablename3,self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(linkchildkey):value := self:nItem
oRS:fields:item(linkmasterkey):value := self:nOrderNumber
oRS:UPDATE()
oRS:Close()
myout = self:Search2()
ELSE
MyOut := MSGBOX("You should Create/Select Order First","Sorry")
ENDIF
Return 0
Method itemchange Class SelectItemMasterDetailsClass
Local myrs,MYVALUE
TVALUE := SelectItemMasterDetailsWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
Return 0
Method closewindow Class SelectItemMasterDetailsClass
myout = self:disconnect()
SelectItemMasterDetailsWindow.Release ( )
Return 0
Method AutoGotoRecord Class SelectItemMasterDetailsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( SelectItemMasterDetailsWindow )
myout = self:showrecord()
SelectItemMasterDetailsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class SelectItemMasterDetailsClass
SelectItemMasterDetailsWindow.grid1Browse.DeleteAllItems ( )
SelectItemMasterDetailsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class SelectItemMasterDetailsClass
SelectItemMasterDetailsWindow.grid1Browse.AddItem ( temp_array )
mymax := SelectItemMasterDetailsWindow.Grid1Browse.ItemCount
IF mymax = 1
SelectItemMasterDetailsWindow.Grid1Browse.Value := 1
self:nOrderNumber := val(temp_array[1])
myout = self:search2()
ENDIF
Return 0
Method SetTimer(p1) Class SelectItemMasterDetailsClass
SelectItemMasterDetailsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SelectItemMasterDetailsClass
cName := SelectItemMasterDetailsWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class SelectItemMasterDetailsClass
Local nvalue,myout
nvalue := SelectItemMasterDetailsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class SelectItemMasterDetailsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class SelectItemMasterDetailsClass
myout = self:search()
SelectItemMasterDetailsWindow.Timer1.Enabled := false
Return 0
Method OnBeforeEdit Class SelectItemMasterDetailsClass
Return myout
Method OnAfterAddEdit Class SelectItemMasterDetailsClass
Return myout



End Of Resistance

*-------------------------------------------------------------------*
