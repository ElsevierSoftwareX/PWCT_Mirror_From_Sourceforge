*---------------------------------------------------------------------------*
* Time : 18:17:44    Date : 07/05/2011
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
Function DATASCREEN
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

Resistance R_DATASCREEN_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATASCREEN_15speed1() code
Class windowdata
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data DatabaseName init "data.mdb"
Data TableName init "tel"
Data cname init ""
Data caddress init ""
Data cphone init ""
Data cnotes init ""
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
EndClass
Method showwindow Class windowdata
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( windata )
DEFINE WINDOW windata ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 448 ;
ICON "PWCTICON" ;
TITLE "ÚÑÖ ÇáÓÌáÇÊ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {26,142,230} 

@ 284 ,22 BUTTONEX btnFirst;
CAPTION "ÇáÓÌá ÇáÇæá";
FONTCOLOR {255,255,255};
BACKCOLOR {176,79,120};
ON CLICK self:firstrecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 284 ,350 BUTTONEX btnNext;
CAPTION "ÇáÓÌá ÇáÊÇáí";
FONTCOLOR {255,255,255};
BACKCOLOR {176,79,120};
ON CLICK self:nextrecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 284 ,186 BUTTONEX btnLast;
CAPTION "ÇáÓÌá ÇáÇÎíÑ";
FONTCOLOR {255,255,255};
BACKCOLOR {176,79,120};
ON CLICK self:lastrecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 357 ,672 BUTTONEX btnClose;
CAPTION "ÎÑæÌ";
FONTCOLOR {0,0,0};
BACKCOLOR {66,147,72};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 284 ,514 BUTTONEX btnPrev;
CAPTION "ÇáÓÌá ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {176,79,120};
ON CLICK self:prevrecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 284 ,672 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 357 ,261 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 357 ,356 BUTTONEX btncancel;
CAPTION "ÅáÛÇÁ ÇáÇãÑ";
ON CLICK self:cancelrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 357 ,176 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 357 ,81 BUTTONEX btnadd;
CAPTION "ÇÖÝ";
ON CLICK self:addrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "  äÇÝÐÉ ÇáÓÌáÇÊ  " ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {0,0,255} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 67 ,652 LABEL lblname ;
VALUE "ÇáÇÓã" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 67 ,64 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 550 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 115 ,652 LABEL lblAddress ;
VALUE "ÇáÚäæÇä" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 115 ,64 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 550 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 160 ,652 LABEL lblPhone ;
VALUE "ÇáåÇÊÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 162 ,264 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 350 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 205 ,652 LABEL lblNotes ;
VALUE "ãáÇÍÖÇÊ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 211 ,64 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 550 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

END WINDOW

windata.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Windata"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Windata"), -20),0x400000,0x100000))
ACTIVATE WINDOW windata
EndIF

Return 0
Method UserInterface2Class Class windowdata
self:cName := windata.textName.Value
self:cAddress := windata.textAddress.Value
self:cPhone := windata.textPhone.Value
self:cNotes := windata.textNotes.Value
Return 0
Method Class2ADO Class windowdata
self:oRS:fields:item("name"):value := self:cName
self:oRS:fields:item("Address"):value := self:cAddress
self:oRS:fields:item("phone"):value := self:cPhone
self:oRS:fields:item("Notes"):value := self:cNotes
Return 0
Method ADO2Class Class windowdata
self:cname := self:oRS:fields:item("name"):value
self:caddress := self:oRS:fields:item("address"):value
self:cphone := self:oRS:fields:item("phone"):value
self:cNotes := self:oRS:fields:item("Notes"):value
Return 0
Method Class2UserInterface Class windowdata
windata.textName.Value := self:cname
windata.textAddress.Value := self:cAddress
windata.textPhone.Value := self:cPhone
windata.textNotes.Value := self:cNotes
Return 0
Method ClearRecord Class windowdata
self:cname := ""
self:caddress := ""
self:cphone := ""
self:cNotes := ""
Return 0
Method closewindow Class windowdata
myout = self:disconnect()
windata.Release ( )
Return 0
Method ShowRecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class windowdata
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class windowdata
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("! äåÇíÉ ÇáÓÌá","ÚÝæÇð")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("! äåÇíÉ ÇáÓÌá","ÚÝæÇð")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("åá ÊÑíÏ ÍÐÝ ÇáÓÌá ¿","ÍÐÝ")
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
Method setmode(p1) Class windowdata
IF p1 = 1
windata.btnfirst.Enabled := false
windata.btnnext.Enabled := false
windata.btnprev.Enabled := false
windata.btnlast.Enabled := false
windata.btndel.Enabled := false
windata.btnclose.Enabled := false
windata.btnsave.Enabled := true
windata.btncancel.Enabled := true
windata.btnedit.Enabled := false
windata.btnadd.Enabled := false
ENDIF
IF p1 = 2
windata.btnfirst.Enabled := true
windata.btnnext.Enabled := true
windata.btnprev.Enabled := true
windata.btnlast.Enabled := true
windata.btndel.Enabled := true
windata.btnclose.Enabled := true
windata.btnsave.Enabled := false
windata.btncancel.Enabled := false
windata.btnedit.Enabled := true
windata.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method EditRecord Class windowdata
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class windowdata
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
Return 0
Method CancelRecord Class windowdata
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class windowdata
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class windowdata
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( windata )
myout = self:showrecord()
windata.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0


End Of Resistance

*-------------------------------------------------------------------*
