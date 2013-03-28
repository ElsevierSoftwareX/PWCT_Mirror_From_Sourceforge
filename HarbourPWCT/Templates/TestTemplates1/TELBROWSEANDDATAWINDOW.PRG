*---------------------------------------------------------------------------*
* Time : 02:02:06    Date : 07/31/2010
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
Function TELBROWSEANDDATAWINDOW
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

Resistance R_TELBROWSEANDDATAWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELBROWSEANDDATAWINDOW_15speed1() code
Class telbrowseanddataclass
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init "data.mdb"
Data TableName init "tel"
Data cname init ""
Data caddress init ""
Data cphone init ""
Data column init "name"
Data PrimaryKey init "id"
Data columns init {"name","address","phone"}
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
Method showwindow Class telbrowseanddataclass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( telbrowseanddatawindow )
DEFINE WINDOW telbrowseanddatawindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 517 ;
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
VALUE "  Data Window" ;
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
@ 287 ,245 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 331 ,120 LABEL lblAddress ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 335 ,245 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 380 ,119 LABEL lblPhone ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 377 ,245 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 60 ,71 LABEL lbl1browse ;
VALUE self:column ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 50 ,593 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,165 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

telbrowseanddatawindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW telbrowseanddatawindow
EndIF

Return 0
Method UserInterface2Class Class telbrowseanddataclass
self:cName := telbrowseanddatawindow.textName.Value
self:cAddress := telbrowseanddatawindow.textAddress.Value
self:cPhone := telbrowseanddatawindow.textPhone.Value
Return 0
Method Class2ADO Class telbrowseanddataclass
self:oRS:fields:item("name"):value := self:cName
self:oRS:fields:item("Address"):value := self:cAddress
self:oRS:fields:item("phone"):value := self:cPhone
Return 0
Method ADO2Class Class telbrowseanddataclass
self:cname := self:oRS:fields:item("name"):value
self:caddress := self:oRS:fields:item("address"):value
self:cphone := self:oRS:fields:item("phone"):value
Return 0
Method Class2UserInterface Class telbrowseanddataclass
telbrowseanddatawindow.textName.Value := self:cname
telbrowseanddatawindow.textAddress.Value := self:cAddress
telbrowseanddatawindow.textPhone.Value := self:cPhone
Return 0
Method ClearRecord Class telbrowseanddataclass
self:cname := ""
self:caddress := ""
self:cphone := ""
Return 0
Method search Class telbrowseanddataclass
cName := telbrowseanddatawindow.textNamebrowse.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:databasename )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
telbrowseanddatawindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
telbrowseanddatawindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
AADD( temp_array , vname2)
Next
telbrowseanddatawindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class telbrowseanddataclass
nvalue := telbrowseanddatawindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0
Method ShowDataWindow Class telbrowseanddataclass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method closewindow Class telbrowseanddataclass
myout = self:disconnect()
telbrowseanddatawindow.Release ( )
Return 0
Method ShowRecord Class telbrowseanddataclass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class telbrowseanddataclass
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class telbrowseanddataclass
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class telbrowseanddataclass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class telbrowseanddataclass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class telbrowseanddataclass
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
Method prevrecord Class telbrowseanddataclass
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
Method delrecord Class telbrowseanddataclass
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
Method setmode(p1) Class telbrowseanddataclass
IF p1 = 1
telbrowseanddatawindow.btnfirst.Enabled := false
telbrowseanddatawindow.btnnext.Enabled := false
telbrowseanddatawindow.btnprev.Enabled := false
telbrowseanddatawindow.btnlast.Enabled := false
telbrowseanddatawindow.btndel.Enabled := false
telbrowseanddatawindow.btnclose.Enabled := false
telbrowseanddatawindow.btnsave.Enabled := true
telbrowseanddatawindow.btncancel.Enabled := true
telbrowseanddatawindow.btnedit.Enabled := false
telbrowseanddatawindow.btnadd.Enabled := false
ENDIF
IF p1 = 2
telbrowseanddatawindow.btnfirst.Enabled := true
telbrowseanddatawindow.btnnext.Enabled := true
telbrowseanddatawindow.btnprev.Enabled := true
telbrowseanddatawindow.btnlast.Enabled := true
telbrowseanddatawindow.btndel.Enabled := true
telbrowseanddatawindow.btnclose.Enabled := true
telbrowseanddatawindow.btnsave.Enabled := false
telbrowseanddatawindow.btncancel.Enabled := false
telbrowseanddatawindow.btnedit.Enabled := true
telbrowseanddatawindow.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method EditRecord Class telbrowseanddataclass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class telbrowseanddataclass
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
Return 0
Method CancelRecord Class telbrowseanddataclass
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class telbrowseanddataclass
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class telbrowseanddataclass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( telbrowseanddatawindow )
myout = self:showrecord()
telbrowseanddatawindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
