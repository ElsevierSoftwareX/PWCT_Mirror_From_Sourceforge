*---------------------------------------------------------------------------*
* Time : 10:09:13    Date : 12/10/2010
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
Function PROCESSES_DATA
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

Resistance R_PROCESSES_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROCESSES_DATA_15speed1() code
class ProcessesClass From SYSTEMDATABASE
Data TableName init "Process_All"
Data cid init ""
Data cCountry init ""
Data column init "ProcessName"
Data PrimaryKey init "id"
Data columns init {"Duration","StartCode","StartPos","ProcessName","ID"}
Data StartCodeitemsids init {}
Data StartCodeitems init {}
Data nStartCode init 0
Data cStartPos init ""
Data cDuration init ""
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
Method mytimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method CheckData
EndClass
Method showwindow Class ProcessesClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustTypeDataWindow )
DEFINE WINDOW CustTypeDataWindow ;
AT 10 ,10 ;
WIDTH 773 ;
HEIGHT 511 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "«Ã—«¡«  «·œÊ—…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\BACK.jpg";
STRETCH ;
WIDTH 750 HEIGHT 376
@ 430 ,370 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,243 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,180 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,12 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,307 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,105 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 430 ,522 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,435 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,602 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 430 ,677 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                            «Ã—«¡«  «·œÊ—…" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 277 ,485 LABEL lblCountry ;
VALUE "«”„ «·«Ã—«¡" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,283 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 196 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,593 LABEL lbl1browse ;
VALUE "«·«Ã—«¡" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,58 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,15 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 160 ;
HEADERS {"„œ… «·«Ã—«¡","‰ﬁÿ… «·»œ¡","«·»œ¡ »⁄œœ «Ì«„","«·«Ã—«¡","—ﬁ„"};
WIDTHS {100,200,100,200,100} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
myout = self:LoadLookupTable("StartCode","StartCode",@self:StartCodeItems,"id",@self:StartCodeItemsIDS)
@ 319 ,389 LABEL lblStartCode ;
VALUE "«Ì«„" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 319 ,171 COMBOBOX comboStartCode;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:StartCodeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 316 ,420 TEXTBOX textStartPos;
HEIGHT 30 ;
WIDTH 60 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 318 ,492 LABEL lblStartPos ;
VALUE "«·»œ¡ »‹‹" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 365 ,494 LABEL lblDuration ;
VALUE "„œ… «·«Ã—«¡ / ⁄œœ «·«Ì«„" ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 360 ,281 TEXTBOX textDuration;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

CustTypeDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustTypeDataWindow.Timer1.Enabled := false
ACTIVATE WINDOW CustTypeDataWindow
EndIF

Return 0
Method UserInterface2Class Class ProcessesClass
self:cCountry := CustTypeDataWindow.textCountry.Value
self:nStartCode := CustTypeDataWindow.comboStartCode.Value
self:nStartCode := self:StartCodeItemsIDS[self:nStartCode]
self:cStartPos := CustTypeDataWindow.textStartPos.Value
self:cDuration := CustTypeDataWindow.textDuration.Value
Return 0
Method Class2ADO Class ProcessesClass
self:oRS:fields:item("ProcessName"):value := self:cCountry
self:oRS:fields:item("StartCodeID"):value := self:nStartCode
self:oRS:fields:item("StartPos"):value := self:cStartPos
self:oRS:fields:item("Duration"):value := self:cDuration
Return 0
Method ADO2Class Class ProcessesClass
self:cCountry := self:oRS:fields:item("ProcessName"):value
self:nStartCode := self:oRS:fields:item("StartCodeID"):value
self:cDuration := self:oRS:fields:item("Duration"):value
self:cStartPos := self:oRS:fields:item("StartPos"):value
Return 0
Method Class2UserInterface Class ProcessesClass
CustTypeDataWindow.textCountry.Value := self:cCountry
self:nStartCode = self:LookupIDToIndex(self:nStartCode,@self:StartCodeItemsIDS)
CustTypeDataWindow.comboStartCode.Value := self:nStartCode
CustTypeDataWindow.textStartPos.Value := self:cStartPos
CustTypeDataWindow.textDuration.Value := self:cDuration
Return 0
Method ClearRecord Class ProcessesClass
self:cCountry := ""
self:nStartCode := 0
self:cStartPos := ""
self:cDuration := ""
Return 0
Method OpenDataWindow Class ProcessesClass
Local nvalue,myout
nvalue := CustTypeDataWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProcessesClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProcessesClass
myout = self:search()
CustTypeDataWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProcessesClass
IF p1 = 1
CustTypeDataWindow.btnfirst.Enabled := false
CustTypeDataWindow.btnnext.Enabled := false
CustTypeDataWindow.btnprev.Enabled := false
CustTypeDataWindow.btnlast.Enabled := false
CustTypeDataWindow.btndel.Enabled := false
CustTypeDataWindow.btnclose.Enabled := false
CustTypeDataWindow.btnsave.Enabled := true
CustTypeDataWindow.btncancel.Enabled := true
CustTypeDataWindow.btnedit.Enabled := false
CustTypeDataWindow.btnadd.Enabled := false
CustTypeDataWindow.textCountry.Enabled := true
CustTypeDataWindow.ComboStartCode.Enabled := true
CustTypeDataWindow.textStartPos.Enabled := true
CustTypeDataWindow.textDuration.Enabled := true
ENDIF
IF p1 = 2
CustTypeDataWindow.btnfirst.Enabled := true
CustTypeDataWindow.btnnext.Enabled := true
CustTypeDataWindow.btnprev.Enabled := true
CustTypeDataWindow.btnlast.Enabled := true
CustTypeDataWindow.btndel.Enabled := true
CustTypeDataWindow.btnclose.Enabled := true
CustTypeDataWindow.btnsave.Enabled := false
CustTypeDataWindow.btncancel.Enabled := false
CustTypeDataWindow.btnedit.Enabled := true
CustTypeDataWindow.btnadd.Enabled := true
CustTypeDataWindow.textCountry.Enabled := false
CustTypeDataWindow.ComboStartCode.Enabled := false
CustTypeDataWindow.textStartPos.Enabled := false
CustTypeDataWindow.textDuration.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class ProcessesClass
Local myRet,cValue,nValue
myRet := True
cValue := CustTypeDataWindow.textCountry.Value
cValue := cValue
IF cValue == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· «”„ «·«Ã—«¡","⁄›Ê«")
myRet := False
ENDIF
cValue := CustTypeDataWindow.textStartPos.Value
nValue = VAL ( cValue )
IF nValue < 1
MyOut := MSGBOX("⁄œœ «·«Ì«„ ·«Ìﬁ· ⁄‰ ÌÊ„ Ê«Õœ","⁄›Ê«")
myRet := False
ENDIF
cValue := CustTypeDataWindow.textDuration.Value
nValue = VAL ( cValue )
IF nValue < 1
MyOut := MSGBOX("„œ… «·«Ã—«¡ ·«  ﬁ· ⁄‰ ÌÊ„ Ê«Õœ","⁄›Ê«")
myRet := False
ENDIF
Return myret
Method closewindow Class ProcessesClass
myout = self:disconnect()
CustTypeDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProcessesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustTypeDataWindow )
myout = self:showrecord()
CustTypeDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProcessesClass
CustTypeDataWindow.grid1browse.DeleteAllItems ( )
CustTypeDataWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProcessesClass
CustTypeDataWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProcessesClass
CustTypeDataWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProcessesClass
cName := CustTypeDataWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
