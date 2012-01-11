*---------------------------------------------------------------------------*
* Time : 13:12:05    Date : 01/06/2012
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
Function SEARCHCLASS
Public True,False 
True = .T. 
False = .F. 
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_SEARCHCLASS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCHCLASS_18smart1() code
Class SearchC
Data DB init " DB\Phone.mdb"
Data qStr init ""
Method WinSearch
Method SearchBy
Method AddItem
Method RemoveItem
Method Close
Method Like
EndClass
Method WinSearch(Prm) Class SearchC
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 509 ;
HEIGHT 603 ;
MODAL ;
NOSIZE ;
BACKCOLOR {239,239,239} 

@ 50 ,15 LABEL lbl1 ;
VALUE "" ;
WIDTH 50 ;
HEIGHT 35 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 347 ,8 LISTBOX list1;
WIDTH 491 ;
HEIGHT 180 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 313 ,232 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 267 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255} 

@ 310 ,12 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:SearchBy(Prm)  ;
WIDTH 216 HEIGHT 33 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 65 ,444 BUTTONEX btn2;
CAPTION "+";
ON CLICK self:AddItem()  ;
WIDTH 26 HEIGHT 24 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 65 ,469 BUTTONEX btn3;
CAPTION "C";
ON CLICK self:RemoveItem()  ;
WIDTH 26 HEIGHT 24 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 91 ,11 LISTBOX list2;
WIDTH 486 ;
HEIGHT 167 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 62 ,13 COMBOBOX combo1;
WIDTH 80 ;
HEIGHT 300;
ITEMS {"AND","OR","AND NOT","OR NOT" } ;
FONT "Arial" SIZE 10 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 62 ,98 COMBOBOX combo2;
WIDTH 82 ;
HEIGHT 300;
ITEMS {"ID","Name","Address","Phone"} ;
FONT "Arial" SIZE 10 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 62 ,184 COMBOBOX combo3;
ON CHANGE self:like()  ;
WIDTH 55 ;
HEIGHT 300;
ITEMS {"=","Like",">","<","<>","<=",">="} ;
FONT "Arial" SIZE 10 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 261 ,-13 LABEL lbl3 ;
VALUE "   Search" ;
WIDTH 539 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
@ 530 ,406 BUTTONEX btn5;
CAPTION "Close";
ON CLICK self:Close()  ;
WIDTH 92 HEIGHT 32 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 1 ,-13 LABEL lbl ;
VALUE "   Filter" ;
WIDTH 549 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
IF Prm=2
win2.lbl3.Value := "   Search By Phone"
ENDIF
IF Prm=1
win2.lbl3.Value := "   Search By Address"
ENDIF
IF Prm=0
win2.lbl3.Value := "   Search By Name"
ENDIF
@ 59 ,281 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 117 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255} 

@ 63 ,240 CHECKBOX chk1;
CAPTION "%";
WIDTH 40;
Height 26;
FONT "Arial" SIZE 12 ;
BACKCOLOR {239,239,239} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 64 ,404 CHECKBOX chk2;
CAPTION "%";
WIDTH 38;
Height 23;
FONT "Arial" SIZE 12 ;
BACKCOLOR {239,239,239} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

win2.Center ( )
Count := win2.list2.ItemCount
IF Count=0
win2.combo1.Enabled := False
ENDIF
win2.chk1.Enabled := False
win2.chk2.Enabled := False
ACTIVATE WINDOW win2
EndIF

Return 0
Method SearchBy(Prm) Class SearchC
str := win2.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=DB\Phone.mdb' )
IF Prm=0
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone where Name like'"+ str +"%'",oCon,3,3 )
ENDIF
IF Prm=1
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone where Address like'"+ str +"%'",oCon,3,3 )
ENDIF
IF Prm=2
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone where Phone like'"+ str +"%'",oCon,3,3 )
ENDIF
IF Prm=3
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone where  "+self:qStr,oCon,3,3 )
ENDIF
Count := oRS:RecordCount
IF Count>0
win2.list1.DeleteAllItems ( )
FOR x =1 TO Count STEP 1
vName := oRS:fields:item("Name"):value
vAddress := oRS:fields:item("Address"):value
vPhone := oRS:fields:item("Phone"):value
win2.list1.AddItem ( vName +" - "+vAddress+" - "+vPhone )
oRS:MOVENEXT()
Next
ELSE
win2.list1.DeleteAllItems ( )
win2.list1.AddItem ( "Record Not Found" )
ENDIF
Return 0
Method AddItem Class SearchC
Count := win2.list2.ItemCount
IF Count=0
cbo2 := win2.combo2.Value
IF cbo2=0
Return 0
ENDIF
cbo2 := win2.combo2.item(cbo2)
cbo3 := win2.combo3.Value
IF cbo3=0
Return 0
ENDIF
cbo3 := win2.combo3.item(cbo3)
txt := win2.text2.Value
txt  = LEN(txt)
IF txt=0
Return 0
ENDIF
txt := win2.text2.Value
win2.combo1.Enabled := True
chka := win2.chk1.Value
chkb := win2.chk2.Value
Qry := cbo2+"  "+   cbo3+"'" + txt+"'"
IF chkb=true
Qry := cbo2+"  "+   cbo3+"  "+"'" + txt+"%'"
ENDIF
IF chka=true
Qry := cbo2+"  "+   cbo3+"  "+"'%" + txt+"'"
ENDIF
IF chka=true
IF chkb=true
Qry := cbo2+"  "+   cbo3+"  "+"'%" + txt+"%'"
ENDIF
ENDIF
IF cbo2="ID"
Qry := cbo2+"  "+   cbo3+" " + txt+" "
ENDIF
win2.list2.AddItem ( Qry )
self:qStr := Qry
self:SearchBy ( 3 )
ELSE
cbo1 := win2.combo1.Value
IF cbo1=0
Return 0
ENDIF
cbo1 := win2.combo1.item(cbo1)
cbo2 := win2.combo2.Value
IF cbo2=0
Return 0
ENDIF
cbo2 := win2.combo2.item(cbo2)
cbo3 := win2.combo3.Value
IF cbo3=0
Return 0
ENDIF
cbo3 := win2.combo3.item(cbo3)
txt := win2.text2.Value
txt  = LEN(txt)
IF txt=0
Return 0
ENDIF
txt := win2.text2.Value
win2.combo1.Enabled := True
chka := win2.chk1.Value
chkb := win2.chk2.Value
Qry := cbo1+" "+cbo2+"  "+   cbo3+"'" + txt+"'"
IF chka=true
Qry := cbo1+" "+cbo2+"  "+   cbo3+"  "+"'%" + txt+"'"
ENDIF
IF chkb=true
Qry := cbo1+" "+cbo2+"  "+   cbo3+"  "+"'" + txt+"%'"
ENDIF
IF chka=true
IF chkb=true
Qry := cbo1+" "+cbo2+"  "+   cbo3+"  "+"'%" + txt+"%'"
ENDIF
ENDIF
IF cbo2="ID"
Qry := cbo1+" "+cbo2+"  "+   cbo3+" " + txt+" "
ENDIF
win2.list2.AddItem ( Qry )
Count := win2.list2.ItemCount
self:qStr := ""
FOR x = 1 TO Count STEP 1
Qry := win2.list2.item(x)
self:qStr := self:qStr+Qry+" "
Next
self:SearchBy ( 3 )
self:qStr := self:qStr+Qry
ENDIF
IF chka=true
Qry := cbo1+" "+cbo2+"  "+   cbo3+"  "+"'%" + txt+"'"
ENDIF
Return 0
Method RemoveItem Class SearchC
win2.list2.DeleteAllItems ( )
win2.list1.DeleteAllItems ( )
win2.combo1.Enabled := False
win2.chk1.Enabled := False
win2.chk2.Enabled := False
win2.chk1.Value := False
win2.chk2.Value := False
Return 0
Method Like Class SearchC
cbo3 := win2.combo3.Value
IF cbo3=2
win2.chk1.Enabled := True
win2.chk2.Enabled := True
ELSE
win2.chk2.Enabled := False
win2.chk1.Enabled := False
win2.chk1.Value := False
win2.chk2.Value := False
ENDIF
Return 0
Method Close Class SearchC
win2.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
