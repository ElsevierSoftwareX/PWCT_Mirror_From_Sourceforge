*---------------------------------------------------------------------------*
* Time : 01:44:27    Date : 10/04/2010
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
Function ITEMSUNITS_DATA
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

Resistance R_ITEMSUNITS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSUNITS_DATA_15speed1() code
class ItemsUnitsClass From SYSTEMDATABASE
Data TableName init "ItemsUnits"
Data cid init ""
Data cCountry init ""
Data column init "ItemUnit"
Data PrimaryKey init "id"
Data columns init {"ID","ItemUnit"}
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
EndClass
Method showwindow Class ItemsUnitsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsUnitsWindow )
DEFINE WINDOW ItemsUnitsWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE " æÍÏÇÊ ÇáÇÕäÇÝ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\BACK.jpg";
STRETCH ;
WIDTH 750 HEIGHT 296
@ 350 ,370 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,243 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,180 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,12 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,307 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,105 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,522 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,435 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,602 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,677 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                             æÍÏÇÊ ÇáÇÕäÇÝ  " ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,417 LABEL lblCountry ;
VALUE "ÇáæÍÏÉ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,215 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 55 ,596 LABEL lbl1browse ;
VALUE "ÇáæÍÏÉ" ;
WIDTH 60 ;
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
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,165 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã ÇáæÍÏÉ"};
WIDTHS {100,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

ItemsUnitsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsUnitsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsUnitsWindow
EndIF

Return 0
Method UserInterface2Class Class ItemsUnitsClass
self:cCountry := ItemsUnitsWindow.textCountry.Value
Return 0
Method Class2ADO Class ItemsUnitsClass
self:oRS:fields:item("ItemUnit"):value := self:cCountry
Return 0
Method ADO2Class Class ItemsUnitsClass
self:cCountry := self:oRS:fields:item("ItemUnit"):value
Return 0
Method Class2UserInterface Class ItemsUnitsClass
ItemsUnitsWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class ItemsUnitsClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class ItemsUnitsClass
Local nvalue,myout
nvalue := ItemsUnitsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemsUnitsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemsUnitsClass
myout = self:search()
ItemsUnitsWindow.Timer1.Enabled := false
Return 0
Method closewindow Class ItemsUnitsClass
myout = self:disconnect()
ItemsUnitsWindow.Release ( )
Return 0
Method setmode(p1) Class ItemsUnitsClass
IF p1 = 1
ItemsUnitsWindow.btnfirst.Enabled := false
ItemsUnitsWindow.btnnext.Enabled := false
ItemsUnitsWindow.btnprev.Enabled := false
ItemsUnitsWindow.btnlast.Enabled := false
ItemsUnitsWindow.btndel.Enabled := false
ItemsUnitsWindow.btnclose.Enabled := false
ItemsUnitsWindow.btnsave.Enabled := true
ItemsUnitsWindow.btncancel.Enabled := true
ItemsUnitsWindow.btnedit.Enabled := false
ItemsUnitsWindow.btnadd.Enabled := false
ItemsUnitsWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
ItemsUnitsWindow.btnfirst.Enabled := true
ItemsUnitsWindow.btnnext.Enabled := true
ItemsUnitsWindow.btnprev.Enabled := true
ItemsUnitsWindow.btnlast.Enabled := true
ItemsUnitsWindow.btndel.Enabled := true
ItemsUnitsWindow.btnclose.Enabled := true
ItemsUnitsWindow.btnsave.Enabled := false
ItemsUnitsWindow.btncancel.Enabled := false
ItemsUnitsWindow.btnedit.Enabled := true
ItemsUnitsWindow.btnadd.Enabled := true
ItemsUnitsWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class ItemsUnitsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemsUnitsWindow )
myout = self:showrecord()
ItemsUnitsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemsUnitsClass
ItemsUnitsWindow.grid1browse.DeleteAllItems ( )
ItemsUnitsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsUnitsClass
ItemsUnitsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsUnitsClass
ItemsUnitsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsUnitsClass
cName := ItemsUnitsWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
