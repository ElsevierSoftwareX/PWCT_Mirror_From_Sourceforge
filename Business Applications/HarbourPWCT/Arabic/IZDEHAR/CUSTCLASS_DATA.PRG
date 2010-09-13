*---------------------------------------------------------------------------*
* Time : 16:54:03    Date : 09/13/2010
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
Function CUSTCLASS_DATA
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

Resistance R_CUSTCLASS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTCLASS_DATA_15speed1() code
class CustClassDataClass From SYSTEMDATABASE
Data TableName init "CustClass"
Data nID init 0
Data cColorName init ""
Data column init "CustClass"
Data PrimaryKey init "id"
Data columns init {"ID","CustClass"}
Data nColorNumber init {0,0,0}
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
Method SelectColor
Method settimer
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
EndClass
Method showwindow Class CustClassDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustClassWindow )
DEFINE WINDOW CustClassWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 472 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÝÆÇÊ ÇáÚãáÇÁ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 39 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 340
@ 390 ,377 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,249 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,186 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,12 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,313 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,106 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,532 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,444 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,610 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,677 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                 ÝÆÇÊ ÇáÚãáÇÁ" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 276 ,635 LABEL lblColorName ;
VALUE "ÇÓã ÇáÝÆÉ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,188 TEXTBOX textColorName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,632 LABEL lbl1browse ;
VALUE "ÇÓã ÇáÝÆÉ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,188 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 50 ,78 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,188 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã ÇáÝÆÉ"};
WIDTHS {100,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 324 ,639 LABEL lblColorImage ;
VALUE "Çááæä" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 322 ,188 LABEL lblColorNumber ;
VALUE "" ;
WIDTH 390 ;
HEIGHT 40 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 322 ,588 BUTTONEX btnColorNumber;
CAPTION "::::";
ON CLICK self:SelectColor()  ;
WIDTH 40 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

CustClassWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustClassWindow.Timer1.Enabled := false
ACTIVATE WINDOW CustClassWindow
EndIF

Return 0
Method UserInterface2Class Class CustClassDataClass
self:cColorName := CustClassWindow.textColorName.Value
self:nColorNumber := CustClassWindow.lblColorNumber.Backcolor
Return 0
Method Class2ADO Class CustClassDataClass
self:oRS:fields:item("CustClass"):value := self:cColorName
self:oRS:fields:item("ColorNumberR"):value := self:nColorNumber[1]
self:oRS:fields:item("ColorNumberG"):value := self:nColorNumber[2]
self:oRS:fields:item("ColorNumberB"):value := self:nColorNumber[3]
Return 0
Method ADO2Class Class CustClassDataClass
self:cColorName := self:oRS:fields:item("CustClass"):value
self:nColorNumber[1] := self:oRS:fields:item("ColorNumberR"):value
self:nColorNumber[2] := self:oRS:fields:item("ColorNumberG"):value
self:nColorNumber[3] := self:oRS:fields:item("ColorNumberB"):value
Return 0
Method Class2UserInterface Class CustClassDataClass
CustClassWindow.textColorName.Value := self:cColorName
CustClassWindow.lblColorNumber.BackColor := self:nColorNumber
Return 0
Method ClearRecord Class CustClassDataClass
self:cColorName := ""
self:nColorNumber := {0,0,0}
Return 0
Method OpenDataWindow Class CustClassDataClass
Local nvalue,myout
nvalue := CustClassWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustClassDataClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustClassDataClass
myout = self:search()
CustClassWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class CustClassDataClass
IF p1 = 1
CustClassWindow.btnfirst.Enabled := false
CustClassWindow.btnnext.Enabled := false
CustClassWindow.btnprev.Enabled := false
CustClassWindow.btnlast.Enabled := false
CustClassWindow.btndel.Enabled := false
CustClassWindow.btnclose.Enabled := false
CustClassWindow.btnsave.Enabled := true
CustClassWindow.btncancel.Enabled := true
CustClassWindow.btnedit.Enabled := false
CustClassWindow.btnadd.Enabled := false
CustClassWindow.textColorName.Enabled := true
CustClassWindow.btnColorNumber.Enabled := true
ENDIF
IF p1 = 2
CustClassWindow.btnfirst.Enabled := true
CustClassWindow.btnnext.Enabled := true
CustClassWindow.btnprev.Enabled := true
CustClassWindow.btnlast.Enabled := true
CustClassWindow.btndel.Enabled := true
CustClassWindow.btnclose.Enabled := true
CustClassWindow.btnsave.Enabled := false
CustClassWindow.btncancel.Enabled := false
CustClassWindow.btnedit.Enabled := true
CustClassWindow.btnadd.Enabled := true
CustClassWindow.textColorName.Enabled := false
CustClassWindow.btnColorNumber.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method SelectColor Class CustClassDataClass
GetColor := GetColor ( {0,0,0} )
CustClassWindow.lblColorNumber.BackColor := GetColor
self:nColorNumber := GetColor
Return 0
Method closewindow Class CustClassDataClass
myout = self:disconnect()
CustClassWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustClassDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustClassWindow )
myout = self:showrecord()
CustClassWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustClassDataClass
CustClassWindow.grid1browse.DeleteAllItems ( )
CustClassWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustClassDataClass
CustClassWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustClassDataClass
CustClassWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustClassDataClass
cName := CustClassWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
