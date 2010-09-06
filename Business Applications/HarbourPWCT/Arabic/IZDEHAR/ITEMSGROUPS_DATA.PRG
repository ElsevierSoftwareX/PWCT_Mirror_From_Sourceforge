*---------------------------------------------------------------------------*
* Time : 05:42:22    Date : 08/30/2010
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
Function ITEMSGROUPS_DATA
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

Resistance R_ITEMSGROUPS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSGROUPS_DATA_15speed1() code
class ItemsGroupsClass From SYSTEMDATABASE
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init ""
Data TableName init "ItemsGroups"
Data cid init ""
Data cCountry init ""
Data column init "GroupName"
Data PrimaryKey init "id"
Data columns init {"ID","GroupName"}
Data username init "systemdatabase"
Data password init "systemdatabase123"
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
Method showwindow Class ItemsGroupsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsGroupsWindow )
DEFINE WINDOW ItemsGroupsWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE " ãÌãæÚÇÊ ÇáÇÕäÇÝ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE "Image\BACK.jpg";
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
VALUE "                                                           ãÌãæÚÇÊ ÇáÇÕäÇÝ" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,417 LABEL lblCountry ;
VALUE "ÇáãÌãæÚÉ" ;
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
VALUE "ÇáãÌãæÚÉ" ;
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
HEADERS {"ÑÞã","ÇÓã ÇáãÌãæÚÉ"};
WIDTHS {100,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

ItemsGroupsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsGroupsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsGroupsWindow
EndIF

Return 0
Method UserInterface2Class Class ItemsGroupsClass
self:cCountry := ItemsGroupsWindow.textCountry.Value
Return 0
Method Class2ADO Class ItemsGroupsClass
self:oRS:fields:item("GroupName"):value := self:cCountry
Return 0
Method ADO2Class Class ItemsGroupsClass
self:cCountry := self:oRS:fields:item("GroupName"):value
Return 0
Method Class2UserInterface Class ItemsGroupsClass
ItemsGroupsWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class ItemsGroupsClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class ItemsGroupsClass
Local nvalue,myout
nvalue := ItemsGroupsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemsGroupsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemsGroupsClass
myout = self:search()
ItemsGroupsWindow.Timer1.Enabled := false
Return 0
Method closewindow Class ItemsGroupsClass
myout = self:disconnect()
ItemsGroupsWindow.Release ( )
Return 0
Method setmode(p1) Class ItemsGroupsClass
IF p1 = 1
ItemsGroupsWindow.btnfirst.Enabled := false
ItemsGroupsWindow.btnnext.Enabled := false
ItemsGroupsWindow.btnprev.Enabled := false
ItemsGroupsWindow.btnlast.Enabled := false
ItemsGroupsWindow.btndel.Enabled := false
ItemsGroupsWindow.btnclose.Enabled := false
ItemsGroupsWindow.btnsave.Enabled := true
ItemsGroupsWindow.btncancel.Enabled := true
ItemsGroupsWindow.btnedit.Enabled := false
ItemsGroupsWindow.btnadd.Enabled := false
ItemsGroupsWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
ItemsGroupsWindow.btnfirst.Enabled := true
ItemsGroupsWindow.btnnext.Enabled := true
ItemsGroupsWindow.btnprev.Enabled := true
ItemsGroupsWindow.btnlast.Enabled := true
ItemsGroupsWindow.btndel.Enabled := true
ItemsGroupsWindow.btnclose.Enabled := true
ItemsGroupsWindow.btnsave.Enabled := false
ItemsGroupsWindow.btncancel.Enabled := false
ItemsGroupsWindow.btnedit.Enabled := true
ItemsGroupsWindow.btnadd.Enabled := true
ItemsGroupsWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class ItemsGroupsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemsGroupsWindow )
myout = self:showrecord()
ItemsGroupsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemsGroupsClass
ItemsGroupsWindow.grid1browse.DeleteAllItems ( )
ItemsGroupsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsGroupsClass
ItemsGroupsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsGroupsClass
ItemsGroupsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsGroupsClass
cName := ItemsGroupsWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
