*---------------------------------------------------------------------------*
* Time : 22:58:28    Date : 08/01/2010
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
Function TELSEARCHDATAWINDOW
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

Resistance R_TELSEARCHDATAWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELSEARCHDATAWINDOW_15speed1() code
Class TELSearchDataWindowClass
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
Method showwindow Class TELSearchDataWindowClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( TELSearchDataWindowName )
DEFINE WINDOW TELSearchDataWindowName ;
AT 10 ,10 ;
WIDTH 773 ;
HEIGHT 524 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 440 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 440 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 440 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 440 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 440 ,7 BUTTONEX btnadd;
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
@ 296 ,57 LABEL lblname ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 297 ,181 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 341 ,56 LABEL lblAddress ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 345 ,181 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 390 ,55 LABEL lblPhone ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 387 ,181 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 45 ,62 LABEL searchlbl1 ;
VALUE self:column ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 47 ,181 TEXTBOX searchtextName;
HEIGHT 30 ;
WIDTH 290 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 47 ,477 BUTTONEX searchbtn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 87 ,179 LISTBOX searchlist1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 400 ;
HEIGHT 190 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
END WINDOW

TELSearchDataWindowName.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW TELSearchDataWindowName
EndIF

Return 0
Method UserInterface2Class Class TELSearchDataWindowClass
self:cName := TELSearchDataWindowName.textName.Value
self:cAddress := TELSearchDataWindowName.textAddress.Value
self:cPhone := TELSearchDataWindowName.textPhone.Value
Return 0
Method Class2ADO Class TELSearchDataWindowClass
self:oRS:fields:item("name"):value := self:cName
self:oRS:fields:item("Address"):value := self:cAddress
self:oRS:fields:item("phone"):value := self:cPhone
Return 0
Method ADO2Class Class TELSearchDataWindowClass
self:cname := self:oRS:fields:item("name"):value
self:caddress := self:oRS:fields:item("address"):value
self:cphone := self:oRS:fields:item("phone"):value
Return 0
Method Class2UserInterface Class TELSearchDataWindowClass
TELSearchDataWindowName.textName.Value := self:cname
TELSearchDataWindowName.textAddress.Value := self:cAddress
TELSearchDataWindowName.textPhone.Value := self:cPhone
Return 0
Method ClearRecord Class TELSearchDataWindowClass
self:cname := ""
self:caddress := ""
self:cphone := ""
Return 0
Method search Class TELSearchDataWindowClass
cName := TELSearchDataWindowName.searchtextName.Value
Public oConSearch
oConSearch := TOLEAUTO():NEW( "ADODB.Connection" )
oConSearch:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:databasename )
public oRSSearch
oRSSearch := TOLEAUTO():NEW( "ADODB.Recordset" )
oRSSearch:CursorType := 1
oRSSearch:ActiveConnection := oConSearch
oRSSearch:open ( "Select * from "+self:tablename+" where "+self:column+" like '" + cName + "%'",oConSearch,3,3 )
mymax := oRSSearch:RecordCount
TELSearchDataWindowName.Searchlist1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
TELSearchDataWindowName.Searchlist1.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRSSearch:fields:item(self:column):value
TELSearchDataWindowName.Searchlist1.AddItem ( vName )
vid := oRSSearch:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRSSearch:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method closewindow Class TELSearchDataWindowClass
myout = self:disconnect()
TELSearchDataWindowName.Release ( )
Return 0
Method ShowRecord Class TELSearchDataWindowClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class TELSearchDataWindowClass
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class TELSearchDataWindowClass
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class TELSearchDataWindowClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class TELSearchDataWindowClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class TELSearchDataWindowClass
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
Method prevrecord Class TELSearchDataWindowClass
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
Method delrecord Class TELSearchDataWindowClass
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
Method setmode(p1) Class TELSearchDataWindowClass
IF p1 = 1
TELSearchDataWindowName.btnfirst.Enabled := false
TELSearchDataWindowName.btnnext.Enabled := false
TELSearchDataWindowName.btnprev.Enabled := false
TELSearchDataWindowName.btnlast.Enabled := false
TELSearchDataWindowName.btndel.Enabled := false
TELSearchDataWindowName.btnclose.Enabled := false
TELSearchDataWindowName.btnsave.Enabled := true
TELSearchDataWindowName.btncancel.Enabled := true
TELSearchDataWindowName.btnedit.Enabled := false
TELSearchDataWindowName.btnadd.Enabled := false
ENDIF
IF p1 = 2
TELSearchDataWindowName.btnfirst.Enabled := true
TELSearchDataWindowName.btnnext.Enabled := true
TELSearchDataWindowName.btnprev.Enabled := true
TELSearchDataWindowName.btnlast.Enabled := true
TELSearchDataWindowName.btndel.Enabled := true
TELSearchDataWindowName.btnclose.Enabled := true
TELSearchDataWindowName.btnsave.Enabled := false
TELSearchDataWindowName.btncancel.Enabled := false
TELSearchDataWindowName.btnedit.Enabled := true
TELSearchDataWindowName.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method EditRecord Class TELSearchDataWindowClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class TELSearchDataWindowClass
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
Return 0
Method CancelRecord Class TELSearchDataWindowClass
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class TELSearchDataWindowClass
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class TELSearchDataWindowClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( TELSearchDataWindowName )
myout = self:showrecord()
TELSearchDataWindowName.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method OpenDataWindow Class TELSearchDataWindowClass
nvalue := TELSearchDataWindowName.searchlist1.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0
Method ShowDataWindow Class TELSearchDataWindowClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0



End Of Resistance

*-------------------------------------------------------------------*
