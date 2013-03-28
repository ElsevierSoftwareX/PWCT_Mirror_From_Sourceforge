*---------------------------------------------------------------------------*
* Time : 22:24:58    Date : 07/29/2010
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
Function ITEMSBROWSEANDDATAWINDOW
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

Resistance R_ITEMSBROWSEANDDATAWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSBROWSEANDDATAWINDOW_15speed1() code
Class windowdatabrowseitems
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init "data.mdb"
Data TableName init "ITEMS"
Data cname init ""
Data camount init ""
Data cprice init ""
Data column init "ITEMname"
Data PrimaryKey init "id"
Data columns init {"ITEMname","ITEMAMOUNT","ITEMPRICE"}
Method showwindow
Method closewindow
Method ShowRecord
Method connect
Method disconnect
Method firstrecord
Method lastrecord
Method nextrecord
Method prevrecord
Method delrecord
Method SetMode
Method EditRecord
Method SaveRecord
Method CancelRecord
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method addrecord
Method ClearRecord
Method AutoGotoRecord
Method search
Method OpenDataWindow
Method showdatawindow
EndClass
Method showwindow Class windowdatabrowseitems
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( windatabrowseitems )
DEFINE WINDOW windatabrowseitems ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 369 ;
VIRTUAL WIDTH 1000 ;
VIRTUAL HEIGHT 1000 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 430 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "   Items" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {255,255,255}
@ 286 ,121 LABEL lblname ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 287 ,245 TEXTBOX textItemName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 331 ,120 LABEL lblAmount ;
VALUE "Amount" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 335 ,245 TEXTBOX textItemAmount;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 380 ,119 LABEL lblPrice ;
VALUE "Price" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 379 ,245 TEXTBOX textItemPrice;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 50 ,61 LABEL lbl1browse ;
VALUE "Item Name" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,177 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 50 ,603 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,175 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"Item Name","Item Amount","Item Price"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

windatabrowseitems.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW windatabrowseitems
EndIF

Return 0
Method UserInterface2Class Class windowdatabrowseitems
self:cName := windatabrowseitems.textItemName.Value
self:cAmount := windatabrowseitems.textItemAmount.Value
self:cPrice := windatabrowseitems.textItemPrice.Value
Return 0
Method Class2ADO Class windowdatabrowseitems
self:oRS:fields:item("itemname"):value := self:cName
self:oRS:fields:item("itemamount"):value := self:cAmount
self:oRS:fields:item("itemprice"):value := self:cprice
Return 0
Method ADO2Class Class windowdatabrowseitems
self:cname := self:oRS:fields:item("itemname"):value
self:camount := self:oRS:fields:item("itemamount"):value
self:cprice := self:oRS:fields:item("itemprice"):value
Return 0
Method Class2UserInterface Class windowdatabrowseitems
windatabrowseitems.textItemName.Value := self:cname
windatabrowseitems.textItemAmount.Value := self:cAmount
windatabrowseitems.textItemPrice.Value := self:cPrice
Return 0
Method ClearRecord Class windowdatabrowseitems
self:cname := ""
self:camount := ""
self:cprice := ""
Return 0
Method search Class windowdatabrowseitems
cName := windatabrowseitems.textNamebrowse.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:databasename )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
windatabrowseitems.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
windatabrowseitems.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
AADD( temp_array , vname2)
Next
windatabrowseitems.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class windowdatabrowseitems
nvalue := windatabrowseitems.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0
Method ShowDataWindow Class windowdatabrowseitems
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method closewindow Class windowdatabrowseitems
myout = self:disconnect()
windatabrowseitems.Release ( )
Return 0
Method ShowRecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class windowdatabrowseitems
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class windowdatabrowseitems
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure ?","Delete")
IF myout = false
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
ENDIF
ENDIF
myout = self:showrecord()
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
Return 0
Method setmode(p1) Class windowdatabrowseitems
IF p1 = 1
windatabrowseitems.btnfirst.Enabled := false
windatabrowseitems.btnnext.Enabled := false
windatabrowseitems.btnprev.Enabled := false
windatabrowseitems.btnlast.Enabled := false
windatabrowseitems.btndel.Enabled := false
windatabrowseitems.btnclose.Enabled := false
windatabrowseitems.btnsave.Enabled := true
windatabrowseitems.btncancel.Enabled := true
windatabrowseitems.btnedit.Enabled := false
windatabrowseitems.btnadd.Enabled := false
ENDIF
IF p1 = 2
windatabrowseitems.btnfirst.Enabled := true
windatabrowseitems.btnnext.Enabled := true
windatabrowseitems.btnprev.Enabled := true
windatabrowseitems.btnlast.Enabled := true
windatabrowseitems.btndel.Enabled := true
windatabrowseitems.btnclose.Enabled := true
windatabrowseitems.btnsave.Enabled := false
windatabrowseitems.btncancel.Enabled := false
windatabrowseitems.btnedit.Enabled := true
windatabrowseitems.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method EditRecord Class windowdatabrowseitems
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class windowdatabrowseitems
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
Return 0
Method CancelRecord Class windowdatabrowseitems
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class windowdatabrowseitems
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class windowdatabrowseitems
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( windatabrowseitems )
myout = self:showrecord()
windatabrowseitems.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0


End Of Resistance

*-------------------------------------------------------------------*
