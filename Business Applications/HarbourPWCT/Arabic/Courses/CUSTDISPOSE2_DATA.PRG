*---------------------------------------------------------------------------*
* Time : 14:27:34    Date : 12/11/2012
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
#include "xhb.ch"
Function CUSTDISPOSE2_DATA
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

Resistance R_CUSTDISPOSE2_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTDISPOSE2_DATA_18smart1() code
class CustDispose2Class From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderNumber"}
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
Data FindTitles init {"Õ«·… «·œÊ—…"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","—ﬁ„ «·œÊ—…"}
Data FindTitles2 init {"—«Ï «·⁄„Ì·","ÃÊ«·","«”„ «·⁄„Ì·"}
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
Method ValueDetails
EndClass
Method showwindow Class CustDispose2Class
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustDispose2Window )
DEFINE WINDOW CustDispose2Window ;
AT 10 ,10 ;
WIDTH 1061 ;
HEIGHT 587 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE " ﬁÌÌ„ „›’· ··œÊ—… »⁄œ «‰ Â«∆Â« „‰ ﬁ»· «·„ œ—»Ì‰" ;
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
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                ﬁÌÌ„ „›’· ··œÊ—… »⁄œ «·«‰ Â«¡ „‰ ﬁ»· «·„ œ—»Ì‰" ;
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
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
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
CAPTION "»ÕÀ";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,80 GRID Grid1browse2;
ON DBLCLICK self:showopinion  ;
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
@ 579 ,705 LABEL lblQuality ;
VALUE "—«Ï «·„ œ—»" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 579 ,316 COMBOBOX comboquality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 579 ,229 BUTTONEX btnQualityNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = RightToLeftControl ( "CustDispose2Window","comboQuality" )
@ 448 ,445 BUTTONEX btndetails;
CAPTION " ›«’Ì· «· ﬁÌÌ„";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:valuedetails()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

CustDispose2Window.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDispose2Window.Timer1.Enabled := false
myout = self:search2()
mymax := self:oRS:RecordCount
IF mymax = 0
CustDispose2Window.comboQuality.Enabled := false
CustDispose2Window.btnQualityNotes.Enabled := false
ENDIF
ACTIVATE WINDOW CustDispose2Window
EndIF

Return 0
Method UserInterface2Class Class CustDispose2Class
self:nQuality := CustDispose2Window.ComboQuality.Value
self:nQuality := self:QualityItemsids[self:nQuality]
Return 0
Method Class2ADO Class CustDispose2Class
Local nvalue,oRS,nMax
nvalue := CustDispose2Window.Grid1Browse2.Value
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
Method ADO2Class Class CustDispose2Class
Local nvalue,oRS,nMax
self:nOrderNumber := self:oRS:fields:item(alltrim("ordernumber")):value
nvalue := CustDispose2Window.Grid1Browse2.Value
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
Method Class2UserInterface Class CustDispose2Class
self:nQuality = self:LookupIDToIndex(self:nQuality,@self:QualityItemsids)
CustDispose2Window.ComboQuality.Value := self:nQuality
Return 0
Method ClearRecord Class CustDispose2Class
self:nQuality := 0
Return 0
Method OpenDataWindow Class CustDispose2Class
Local nvalue,myout
nvalue := CustDispose2Window.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDispose2Class
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDispose2Class
myout = self:search()
CustDispose2Window.Timer1.Enabled := false
Return 0
Method setmode(p1) Class CustDispose2Class
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method search2 Class CustDispose2Class
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustDispose2Window.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
CustDispose2Window.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustDispose2Window.grid1browse2.Value := 0
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
CustDispose2Window.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class CustDispose2Class
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := CustDispose2Window.Grid1Browse2.item(CustDispose2Window.Grid1Browse2.value)
myitem[1] := CustDispose2Window.ComboQuality.Value
myitem[1] := self:QualityItems[myitem[1]]
CustDispose2Window.Grid1Browse2.item(CustDispose2Window.Grid1Browse2.Value) := myitem
Return 0
Method QualityNotes Class CustDispose2Class
Local nvalue,oRS,nMax,cNotes
nvalue := CustDispose2Window.Grid1Browse2.Value
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
TITLE "„·«ÕŸ«  «·⁄„Ì·" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
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
ACTIVATE WINDOW winQualityNotes
EndIF

ELSE
oRS:Close()
ENDIF
ENDIF
Return 0
Method QualityNotesSave Class CustDispose2Class
Local nvalue,oRS,nMax,cNotes
cNotes := WinQualityNotes.Edit1.Value
nvalue := CustDispose2Window.Grid1Browse2.Value
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
Method ShowOpinion Class CustDispose2Class
myout = self:Ado2Class()
myout = self:Class2UserInterface()
Return 0
Method CheckFind Class CustDispose2Class
Local nIndex
nIndex := CustDispose2Window.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method CheckFind2 Class CustDispose2Class
Local nIndex
nIndex := CustDispose2Window.ComboFind2.Value
self:Column2 := self:Columns2[nIndex]
Return 0
Method ValueDetails Class CustDispose2Class
Local myid,myout,myrs,empdetailsids
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·«  ›Ï ÃœÊ· «·œÊ—« ","⁄›Ê«")
Return 0
ENDIF
myid := CustDispose2Window.Grid1Browse2.Value
IF myid > 0
myid := self:resultprimarykeys2[myid]
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „ œ—» „Õœœ · ”ÃÌ· «· ﬁÌÌ„ «·Œ«’ »Â","⁄›Ê«")
Return 0
ENDIF
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from ValueItems",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("⁄›Ê« ·«ÌÊÃœ ”Ã·«  ›Ï ÃœÊ· ⁄‰«’— «· ﬁÌÌ„","⁄›Ê«")
Return 0
ENDIF
myRS:MOVEFIRST()
empdetailsids := {}
FOR x = 1 TO mymax STEP 1
MYDETAILID := myRS:fields:item(alltrim("ID")):value
AADD( EMPDETAILSIDS , MYDETAILID)
MYRS:MOVENEXT()
Next
myRS:Close()
FOR x = 1 TO mymax STEP 1
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from ValueItemsValues where orderitemsid = " + myid + " and ValueItemID = " + str(empdetailsids[x]),self:oCon,3,3 )
mymax2 := myRS:RecordCount
IF mymax2 = 0
myRS:ADDNEW()
myRS:fields:item(alltrim("OrderItemsid")):value := myid
myRS:fields:item(alltrim("ValueItemID")):value := empdetailsids[x]
myRS:fields:item(alltrim("ValueItemValue")):value := 0
nMyID := self:oRS:fields:item(alltrim("OrderNumber")):value
myRS:fields:item(alltrim("OrderNumberID")):value := str(nMyId)
myRS:UPDATE()
ENDIF
myRS:Close()
Next
ValueItemsValuesObject:OrderItemsID := val(myid)
myout = ValueItemsValuesObject:ShowWindow()
Return 0
Method closewindow Class CustDispose2Class
myout = self:disconnect()
CustDispose2Window.Release ( )
Return 0
Method AutoGotoRecord Class CustDispose2Class
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDispose2Window )
myout = self:showrecord()
CustDispose2Window.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDispose2Class
CustDispose2Window.grid1browse.DeleteAllItems ( )
CustDispose2Window.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDispose2Class
CustDispose2Window.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class CustDispose2Class
cName := CustDispose2Window.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustDispose2Class
CustDispose2Window.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
