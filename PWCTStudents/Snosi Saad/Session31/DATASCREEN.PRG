*---------------------------------------------------------------------------*
* Time : 03:29:31    Date : 07/01/2011
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
Class WindowData
Data oCon init 0
Data oRS init 0
Data addrec init false
Data databasename init "data.mdb"
Data tablename init "tel"
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Data cNotes init ""
Method ShowWindow
Method Userinterface2Class
Method Class2Userinterface
Method Class2ADO
Method ADO2Class
Method ClearRecord
Method CancelRecord
Method DelRecord
Method PrevRecord
Method NextRecord
Method LastRecord
Method FirstRecord
Method ShowRecord
Method CloseSystem
Method Disconnect
Method Connect
Method Mode
Method SaveRecord
Method EditRecord
EndClass
Method ShowWindow Class WindowData
myout = self:connect()
if !iswindowdefined( windata )
DEFINE WINDOW windata ;
AT 10 ,10 ;
WIDTH 751 ;
HEIGHT 468 ;
ICON "PWCTICON" ;
TITLE "ãÝßÑÉ ÇáåÇÊÝ" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {85,148,210} 

@ 50 ,602 LABEL lbl1 ;
VALUE "ÇáÅÓã" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 106 ,600 LABEL lbl2 ;
VALUE "ÇáÚäæÇä" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 162 ,602 LABEL lbl3 ;
VALUE "ÑÞã ÇáåÇÊÝ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 218 ,602 LABEL lbl4 ;
VALUE "ãáÇÍÙÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 50 ,208 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 350 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 106 ,68 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 162 ,348 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 218 ,98 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 460 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 306 ,385 BUTTONEX btnfirst;
CAPTION "ÇáÓÌá ÇáÇæá";
FONTCOLOR {128,128,255};
ON CLICK self:FirstRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 306 ,265 BUTTONEX btnnext;
CAPTION "ÇáÓÌá ÇáÊÇáí";
FONTCOLOR {0,128,255};
ON CLICK self:NextRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 306 ,145 BUTTONEX btnlast;
CAPTION "ÇáÓÌá ÇáÇÎíÜÑ";
FONTCOLOR {0,128,0};
ON CLICK self:LastRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 306 ,25 BUTTONEX btnprev;
CAPTION "ÇáÓÌá ÇáÓÇÈÞ";
FONTCOLOR {128,64,64};
ON CLICK self:PrevRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 371 ,565 BUTTONEX btn5;
CAPTION "ÅÛáÇÞ";
FONTCOLOR {255,0,0};
ON CLICK self:CloseSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 306 ,508 BUTTONEX btndel;
CAPTION "ÍÐÝ ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:DelRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 371 ,130 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:SaveRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 371 ,25 BUTTONEX btncancel;
CAPTION "ÅáÛÇÁ ÇáÃãÑ";
ON CLICK self:CancelRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 371 ,235 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:EditRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("WinData"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("WinData"), -20),0x400000,0x100000))
myout = self:showrecord()
myout = self:mode(2)
ACTIVATE WINDOW windata
EndIF

Return 0
Method Userinterface2Class Class WindowData
cName := windata.textname.Value
cAddress := windata.textaddress.Value
cPhone := windata.textPhone.Value
cNotes := windata.textnotes.Value
Return 0
Method Class2ADO Class WindowData
self:oRS:fields:item("name"):value := self:cName
self:oRS:fields:item("Address"):value := self:cAddress
self:oRS:fields:item("Phone"):value := self:cPhone
self:oRS:fields:item("Notes"):value := self:cNotes
Return 0
Method ADO2Class Class WindowData
self:cName := self:oRS:fields:item("Name"):value
self:cAddress := self:oRS:fields:item("Address"):value
self:cPhone := self:oRS:fields:item("Phone"):value
self:cNotes := self:oRS:fields:item("Notes"):value
Return 0
Method Class2Userinterface Class WindowData
winData.textname.Value := self:cName
winData.textaddress.Value := self:cAddress
winData.textPhone.Value := self:cPhone
winData.textNotes.Value := self:cNotes
Return 0
Method ClearRecord Class WindowData
self:cName := ""
self:cAddress := ""
self:cPhone := ""
self:cNotes := ""
Return 0
Method CancelRecord Class WindowData
myout = self:mode(2)
myout = self:showRecord()
Return 0
Method connect Class WindowData
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:tablename,self:oCon,3,3 )
Return 0
Method disconnect Class WindowData
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method CloseSystem Class WindowData
myout = self:disconnect()
WinData.Release ( )
Return 0
Method ShowRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ado2class()
ELSE
myout = self:clearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method FirstRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method LastRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method NextRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("åÐå äåÇíÉ ÇáãáÝ","ÚÝæÇð")
ELSE
myout = self:showrecord()
ENDIF
myout = self:showrecord()
ENDIF
Return 0
Method PrevRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("åÐå äåÇíÉ ÇáãáÝ","ÚÝæÇð")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method DelRecord Class WindowData
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
MyOut := MSGBOX("! áÇ íæÌÏ ÓÌáÇÊ","ÚÝæÇ")
ENDIF
Return 0
Method Mode(p1) Class WindowData
IF p1 = 1
winData.btnfirst.Enabled := false
winData.btnlast.Enabled := false
winData.btnnext.Enabled := false
winData.btnprev.Enabled := false
winData.btnedit.Enabled := false
winData.btndel.Enabled := false
winData.btnsave.Enabled := true
winData.btncancel.Enabled := true
winData.btn5.Enabled := false
ENDIF
IF p1 = 2
winData.btnfirst.Enabled := true
winData.btnlast.Enabled := true
winData.btnnext.Enabled := true
winData.btnprev.Enabled := true
winData.btnedit.Enabled := true
winData.btndel.Enabled := true
winData.btnsave.Enabled := false
winData.btncancel.Enabled := false
winData.btn5.Enabled := true
ENDIF
Return 0
Method SaveRecord Class WindowData
myout = self:mode(2)
myout = self:UserInterface2Class()
myout = self:class2ado()
self:oRS:UPDATE()
Return 0
Method EditRecord Class WindowData
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:mode(1)
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
