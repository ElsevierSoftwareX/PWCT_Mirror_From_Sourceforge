*---------------------------------------------------------------------------*
* Time : 18:34:48    Date : 12/11/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
Function CUSTDISPOSE_DATA
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

Resistance R_CUSTDISPOSE_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTDISPOSE_DATA_18smart1() code
class CustDisposeClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderNumber"}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data columns2 init {"CustOpinion","f_mobile","f_name"}
Data ResultPrimaryKeys2 init {}
Data nQuality init 0
Data Qualityitems init {}
Data Qualityitemsids init {}
Data FindTitles init {"ÍÇáÉ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"}
Data FindTitles2 init {"ÑÇì ÇáÚãíá","ÌæÇá","ÇÓã ÇáÚãíá"}
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
Method ShowOpinion
Method CheckFind
Method CheckFind2
EndClass
Method showwindow Class CustDisposeClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustDisposeWindow )
DEFINE WINDOW CustDisposeWindow ;
AT 10 ,10 ;
WIDTH 1061 ;
HEIGHT 587 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÊÞííã ÇáÏæÑÉ ÈÚÏ ÇäÊåÇÆåÇ ãä ÞÈá ÇáãÊÏÑÈíä" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1040 HEIGHT 190
@ 244 ,5 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1040 HEIGHT 250
@ 509 ,11 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                               ÊÞííã ÇáÏæÑÉ ÈÚÏ ÇáÇäÊåÇÁ ãä ÞÈá ÇáãÊÏÑÈíä" ;
WIDTH 1040 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,290 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,184 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 1010 ;
HEIGHT 130 ;
HEADERS self:FindTitles;
WIDTHS {100,150,120,250,250,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,697 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 170 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 6 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 255 ,286 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 255 ,181 BUTTONEX btn1browse2;
CAPTION "ÈÍË";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,80 GRID Grid1browse2;
ON CHANGE self:showopinion  ;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS self:FindTitles2;
WIDTHS {400,230,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1} ;
FONTCOLOR {0,0,0}
@ 255 ,699 COMBOBOX comboFind2;
ON CHANGE self:CheckFind2()  ;
WIDTH 170 ;
HEIGHT 200;
ITEMS self:FindTitles2 ;
VALUE 3 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("CustOpinion","CustOpinion",@self:QualityItems,"id",@self:QualityItemsIDS)
@ 449 ,705 LABEL lblQuality ;
VALUE "ÑÇì ÇáãÊÏÑÈ" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,316 COMBOBOX comboquality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 449 ,228 BUTTONEX btnQualityNotes;
CAPTION "ãáÇÍÙÇÊ";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = RightToLeftControl ( "CustDisposeWindow","comboQuality" )
END WINDOW

CustDisposeWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDisposeWindow.Timer1.Enabled := false
myout = self:search2()
mymax := self:oRS:RecordCount
IF mymax = 0
CustDisposeWindow.comboQuality.Enabled := false
CustDisposeWindow.btnQualityNotes.Enabled := false
ENDIF
ACTIVATE WINDOW CustDisposeWindow
EndIF

Return 0
Method UserInterface2Class Class CustDisposeClass
self:nQuality := CustDisposeWindow.ComboQuality.Value
self:nQuality := self:QualityItemsids[self:nQuality]
Return 0
Method Class2ADO Class CustDisposeClass
Local nvalue,oRS,nMax
nvalue := CustDisposeWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item(alltrim("CustOpinionid")):value := self:nQuality
oRS:UPDATE()
ENDIF
oRS:Close()
ENDIF
Return 0
Method ADO2Class Class CustDisposeClass
Local nvalue,oRS,nMax
self:nOrderNumber := self:oRS:fields:item(alltrim("ordernumber")):value
nvalue := CustDisposeWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
self:nQuality := oRS:fields:item(alltrim("CustOpinionID")):value
ENDIF
oRS:Close()
ENDIF
Return 0
Method Class2UserInterface Class CustDisposeClass
self:nQuality = self:LookupIDToIndex(self:nQuality,@self:QualityItemsids)
CustDisposeWindow.ComboQuality.Value := self:nQuality
Return 0
Method ClearRecord Class CustDisposeClass
self:nQuality := 0
Return 0
Method OpenDataWindow Class CustDisposeClass
Local nvalue,myout
nvalue := CustDisposeWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDisposeClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDisposeClass
myout = self:search()
CustDisposeWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class CustDisposeClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method search2 Class CustDisposeClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustDisposeWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
CustDisposeWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustDisposeWindow.grid1browse2.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim(self:column2)):value
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(alltrim(self:columns2[x2])):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustDisposeWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class CustDisposeClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := CustDisposeWindow.Grid1Browse2.item(CustDisposeWindow.Grid1Browse2.value)
myitem[1] := CustDisposeWindow.ComboQuality.Value
myitem[1] := self:QualityItems[myitem[1]]
CustDisposeWindow.Grid1Browse2.item(CustDisposeWindow.Grid1Browse2.Value) := myitem
Return 0
Method QualityNotes Class CustDisposeClass
Local nvalue,oRS,nMax,cNotes
nvalue := CustDisposeWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
cNotes := oRS:fields:item(alltrim("CustomerDisposeNotes")):value
oRS:Close()
if !iswindowdefined( winQualityNotes )
DEFINE WINDOW winQualityNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "ãáÇÍÙÇÊ ÇáÚãíá" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,666 LABEL lbl1 ;
VALUE "ãáÇÍÙÇÊ" ;
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
CAPTION "ÇÛáÇÞ";
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
ACTIVATE WINDOW winQualityNotes
EndIF

ELSE
oRS:Close()
ENDIF
ENDIF
Return 0
Method QualityNotesSave Class CustDisposeClass
Local nvalue,oRS,nMax,cNotes
cNotes := WinQualityNotes.Edit1.Value
nvalue := CustDisposeWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item(alltrim("CustomerDisposeNotes")):value := cNotes
oRS:UPDATE()
ENDIF
oRS:Close()
ENDIF
winQualityNotes.Release ( )
Return 0
Method ShowOpinion Class CustDisposeClass
myout = self:Ado2Class()
myout = self:Class2UserInterface()
Return 0
Method CheckFind Class CustDisposeClass
Local nIndex
nIndex := CustDisposeWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method CheckFind2 Class CustDisposeClass
Local nIndex
nIndex := CustDisposeWindow.ComboFind2.Value
self:Column2 := self:Columns2[nIndex]
Return 0
Method closewindow Class CustDisposeClass
myout = self:disconnect()
CustDisposeWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustDisposeClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDisposeWindow )
myout = self:showrecord()
CustDisposeWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDisposeClass
CustDisposeWindow.grid1browse.DeleteAllItems ( )
CustDisposeWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDisposeClass
CustDisposeWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class CustDisposeClass
cName := CustDisposeWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustDisposeClass
CustDisposeWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
