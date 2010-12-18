*---------------------------------------------------------------------------*
* Time : 23:32:31    Date : 11/25/2010
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
Function DISPOSE_DATA
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

Resistance R_DISPOSE_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DISPOSE_DATA_15speed1() code
class DisposeClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"QualityOpinion","OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderNumber"}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data columns2 init {"customerwant3","customerwant2","customerwant1","howknow","f_mobile","f_name"}
Data ResultPrimaryKeys2 init {}
Data nQuality init 0
Data Qualityitems init {}
Data Qualityitemsids init {}
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
Method search2
Method SaveRecord2
Method QualityNotes
Method QualityNotesSave
Method SearchAdd
Method BeforeSearch
Method GetSearchValue
Method settimer
EndClass
Method showwindow Class DisposeClass
IF .not. UserCan_WinDispose = 2
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( DisposeWindow )
DEFINE WINDOW DisposeWindow ;
AT 10 ,10 ;
WIDTH 1106 ;
HEIGHT 587 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE " ﬁÌÌ„ «·œÊ—… »⁄œ «‰ Â«∆Â« „‰ ﬁ»· „œÌ— «·ÃÊœ…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1090 HEIGHT 190
@ 244 ,5 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1090 HEIGHT 250
@ 509 ,11 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                    ﬁÌÌ„ «·œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· „œÌ— «·ÃÊœ… " ;
WIDTH 1090 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,767 LABEL lbl1browse ;
VALUE "—ﬁ„ «·œÊ—…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,354 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,248 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1070 ;
HEIGHT 130 ;
HEADERS {"—«Ï «·ÃÊœ… »⁄œ «·«‰ Â«¡","Õ«·… «·œÊ—…"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","—ﬁ„ «·œÊ—…"};
WIDTHS {170,100,120,120,200,200,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 259 ,756 LABEL lbl1browse2 ;
VALUE "«”„ «·⁄„Ì·" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 256 ,344 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 255 ,239 BUTTONEX btn1browse2;
CAPTION "»ÕÀ";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,88 GRID Grid1browse2;
WIDTH 920 ;
HEIGHT 140 ;
HEADERS {"„ÕÊ— 3","„ÕÊ— 2","„ÕÊ— 1","ﬂÌ› ”„⁄  ⁄‰ «·œÊ—…","ÃÊ«·","«”„ «·⁄„Ì·"};
WIDTHS {100,100,100,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Quality","QualityOpinion",@self:QualityItems,"id",@self:QualityItemsIDS)
@ 447 ,724 LABEL lblQuality ;
VALUE "—«Ï „œÌ— «·ÃÊœ…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,340 COMBOBOX comboquality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 449 ,252 BUTTONEX btnQualityNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = RightToLeftControl ( "DisposeWindow","comboQuality" )
END WINDOW

DisposeWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
DisposeWindow.Timer1.Enabled := false
myout = self:search2()
IF UserCan_AgreementRole = 3
DisposeWindow.comboQuality.Enabled := true
ELSE
DisposeWindow.comboQuality.Enabled := false
ENDIF
mymax := self:oRS:RecordCount
IF mymax = 0
DisposeWindow.comboQuality.Enabled := false
DisposeWindow.btnQualityNotes.Enabled := false
ENDIF
ACTIVATE WINDOW DisposeWindow
EndIF

Return 0
Method UserInterface2Class Class DisposeClass
self:nQuality := DisposeWindow.ComboQuality.Value
self:nQuality := self:QualityItemsids[self:nQuality]
Return 0
Method Class2ADO Class DisposeClass
self:oRS:fields:item("QualityDisposeid"):value := self:nQuality
Return 0
Method ADO2Class Class DisposeClass
self:nOrderNumber := self:oRS:fields:item("ordernumber"):value
self:nQuality := self:oRS:fields:item("QualityDisposeID"):value
Return 0
Method Class2UserInterface Class DisposeClass
self:nQuality = self:LookupIDToIndex(self:nQuality,@self:QualityItemsids)
DisposeWindow.ComboQuality.Value := self:nQuality
Return 0
Method ClearRecord Class DisposeClass
self:nQuality := 0
Return 0
Method OpenDataWindow Class DisposeClass
Local nvalue,myout
nvalue := DisposeWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class DisposeClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class DisposeClass
myout = self:search()
DisposeWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class DisposeClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method search2 Class DisposeClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := DisposeWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
DisposeWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
DisposeWindow.grid1browse2.Value := 0
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
DisposeWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class DisposeClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := DisposeWindow.Grid1Browse.item(DisposeWindow.Grid1Browse.value)
myitem[1] := DisposeWindow.ComboQuality.Value
myitem[1] := self:QualityItems[myitem[1]]
DisposeWindow.Grid1Browse.item(DisposeWindow.Grid1Browse.Value) := myitem
Return 0
Method QualityNotes Class DisposeClass
cNotes := self:oRS:fields:item("QualityDisposeNotes"):value
if !iswindowdefined( winQualityNotes )
DEFINE WINDOW winQualityNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "„·«ÕŸ«  „œÌ— «·ÃÊœ…" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,666 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 11 ,17 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,17 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:QualityNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winQualityNotes.Edit1.Value := cNotes
WinQualityNotes.Center ( )
IF .not. UserCan_AgreementRole = 3
WinQualityNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winQualityNotes
EndIF

Return 0
Method QualityNotesSave Class DisposeClass
IF UserCan_AgreementRole = 3
cNotes := WinQualityNotes.Edit1.Value
self:oRS:fields:item("QualityDisposeNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winQualityNotes.Release ( )
Return 0
Method closewindow Class DisposeClass
myout = self:disconnect()
DisposeWindow.Release ( )
Return 0
Method AutoGotoRecord Class DisposeClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( DisposeWindow )
myout = self:showrecord()
DisposeWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class DisposeClass
DisposeWindow.grid1browse.DeleteAllItems ( )
DisposeWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class DisposeClass
DisposeWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class DisposeClass
cName := DisposeWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class DisposeClass
DisposeWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
