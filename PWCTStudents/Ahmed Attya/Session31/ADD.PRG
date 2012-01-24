*---------------------------------------------------------------------------*
* Time : 08:50:16    Date : 01/22/2012
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
Function ADD
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

Resistance R_ADD_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ADD_18smart1() code
Class windowdata
Data oCon init 0
Data oRS init 0
Data addrec init false
Data DatabaseName init "data.mdb"
Data TableName init "tel"
Data cname init ""
Data caddress init ""
Data cphone init ""
Data cnote init ""
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
EndClass
Method showwindow Class windowdata
myout = self:connect()
if !iswindowdefined( windata )
DEFINE WINDOW windata ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 325 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 240 ,327 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,390 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,517 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,454 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {64,0,64};
BACKCOLOR {255,255,255};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,163 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 240 ,235 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 239 ,92 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 239 ,9 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "             Add Data" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {255,255,255}
@ 56 ,57 LABEL lblname ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 57 ,181 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,56 LABEL lblAddress ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 105 ,181 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,55 LABEL lblPhone ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 147 ,181 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 190 ,55 LABEL lblNote ;
VALUE "Note" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 187 ,181 TEXTBOX textNote;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

windata.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW windata
EndIF

Return 0
Method UserInterface2Class Class windowdata
self:cName := windata.textName.Value
self:cAddress := windata.textAddress.Value
self:cPhone := windata.textPhone.Value
self:cNote := windata.textNote.Value
Return 0
Method Class2ADO Class windowdata
self:oRS:fields:item("name"):value := self:cName
self:oRS:fields:item("Address"):value := self:cAddress
self:oRS:fields:item("phone"):value := self:cPhone
self:oRS:fields:item("Note"):value := self:cNote
Return 0
Method ADO2Class Class windowdata
self:cname := self:oRS:fields:item("name"):value
self:caddress := self:oRS:fields:item("address"):value
self:cphone := self:oRS:fields:item("phone"):value
self:cNote := self:oRS:fields:item("Note"):value
Return 0
Method Class2UserInterface Class windowdata
windata.textName.Value := self:cname
windata.textAddress.Value := self:cAddress
windata.textPhone.Value := self:cPhone
windata.textNote.Value := self:cNote
Return 0
Method ClearRecord Class windowdata
self:cname := ""
self:caddress := ""
self:cphone := ""
self:cnote := ""
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
MyOut := MSGBOX("End of File","Sorry")
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
MyOut := MSGBOX("Begin of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class windowdata
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


End Of Resistance

*-------------------------------------------------------------------*
