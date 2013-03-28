*---------------------------------------------------------------------------*
* Time : 14:10:13    Date : 07/26/2010
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
Function ITEMSWINDOW
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

Resistance R_ITEMSWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSWINDOW_15speed1() code
Class Items
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data DatabaseName init "data.mdb"
Data TableName init "Items"
Data citemname init ""
Data citemprice init ""
Data citemamount init ""
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
Method showwindow Class Items
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( windataItems )
DEFINE WINDOW windataItems ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 281 ;
ICON "PWCTICON" ;
TITLE "Items" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 200 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 200 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 200 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 200 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 200 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "   Items Data" ;
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
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 57 ,181 TEXTBOX textItemName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 101 ,56 LABEL lblAddress ;
VALUE "Price" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 105 ,181 TEXTBOX textItemPrice;
HEIGHT 30 ;
WIDTH 150 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 150 ,55 LABEL lblPhone ;
VALUE "Amount" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 147 ,181 TEXTBOX textItemAmount;
HEIGHT 30 ;
WIDTH 150 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
END WINDOW

windataItems.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW windataItems
EndIF

Return 0
Method UserInterface2Class Class Items
self:cItemName := windataItems.textItemName.Value
self:cItemPrice := windataItems.textItemPrice.Value
self:cItemAmount := windataItems.textItemAmount.Value
Return 0
Method Class2ADO Class Items
self:oRS:fields:item("Itemname"):value := self:cItemName
self:oRS:fields:item("ItemPrice"):value := self:cItemPrice
self:oRS:fields:item("ItemAmount"):value := self:cItemAmount
Return 0
Method ADO2Class Class Items
self:citemname := self:oRS:fields:item("Itemname"):value
self:citemprice := self:oRS:fields:item("itemprice"):value
self:citemamount := self:oRS:fields:item("itemamount"):value
Return 0
Method Class2UserInterface Class Items
windataItems.textItemName.Value := self:cItemname
windataItems.textItemPrice.Value := self:cItemPrice
windataItems.textItemAmount.Value := self:cItemAmount
Return 0
Method ClearRecord Class Items
self:cItemname := ""
self:cItemPrice := ""
self:cItemAmount := ""
Return 0
Method closewindow Class Items
myout = self:disconnect()
windataItems.Release ( )
Return 0
Method ShowRecord Class Items
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class Items
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class Items
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class Items
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class Items
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class Items
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
Method prevrecord Class Items
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
Method delrecord Class Items
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
Method setmode(p1) Class Items
IF p1 = 1
windataItems.btnfirst.Enabled := false
windataItems.btnnext.Enabled := false
windataItems.btnprev.Enabled := false
windataItems.btnlast.Enabled := false
windataItems.btndel.Enabled := false
windataItems.btnclose.Enabled := false
windataItems.btnsave.Enabled := true
windataItems.btncancel.Enabled := true
windataItems.btnedit.Enabled := false
windataItems.btnadd.Enabled := false
ENDIF
IF p1 = 2
windataItems.btnfirst.Enabled := true
windataItems.btnnext.Enabled := true
windataItems.btnprev.Enabled := true
windataItems.btnlast.Enabled := true
windataItems.btndel.Enabled := true
windataItems.btnclose.Enabled := true
windataItems.btnsave.Enabled := false
windataItems.btncancel.Enabled := false
windataItems.btnedit.Enabled := true
windataItems.btnadd.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method EditRecord Class Items
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class Items
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
Return 0
Method CancelRecord Class Items
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class Items
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class Items
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( windataItems )
myout = self:showrecord()
windataItems.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0


End Of Resistance

*-------------------------------------------------------------------*
