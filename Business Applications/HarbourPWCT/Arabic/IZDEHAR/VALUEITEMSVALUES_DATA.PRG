*---------------------------------------------------------------------------*
* Time : 23:03:33    Date : 11/30/2010
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
Function VALUEITEMSVALUES_DATA
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

Resistance R_VALUEITEMSVALUES_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VALUEITEMSVALUES_DATA_15speed1() code
class ValueItemsValuesClass From SystemDatabase
Data TableName init "ValueItemsValues_All"
Data column init "ValueItem"
Data PrimaryKey init "id"
Data columns init {"ValueItemValue","ValueItem"}
Data nID init 0
Data cName init ""
Data ColTitles init {"ÇáÊÞííã","ÇáÈäÏ"}
Data ColWidths init {100,350}
Data OrderItemsid init 0
Data complexsearch init ""
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
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class ValueItemsValuesClass
IF .not. self:orderitemsid = 0
self:complexsearch := " and orderitemsid = " + alltrim(str(self:orderitemsid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ValueItemsValuesWindow )
DEFINE WINDOW ValueItemsValuesWindow ;
AT 10 ,10 ;
WIDTH 807 ;
HEIGHT 637 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÊÞííã ÊÝÕíáì ááÏæÑÉ ãä ÞÈá ãÊÏÑÈ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 690 HEIGHT 560
@ 306 ,707 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 381 ,707 BUTTONEX btnNext;
CAPTION "ÇáÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 427 ,707 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 475 ,707 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 344 ,707 BUTTONEX btnPrev;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 670 ,585 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 220 ,707 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 257 ,707 BUTTONEX btncancel;
CAPTION "ÅáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 91 ,707 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 670 ,7 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                    ÊÞííã ÊÝÕíáì ááÏæÑÉ ãä ÞÈá ãÊÏÑÈ" ;
WIDTH 690 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 133 ,727 LABEL lblAddress ;
VALUE "ÇáÊÞííã" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 164 ,704 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 80 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 46 ,640 LABEL lbl1browse ;
VALUE "ÇáÈäÏ" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 43 ,139 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 490 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 41 ,30 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 77 ,138 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 490 ;
HEIGHT 510 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

ValueItemsValuesWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ValueItemsValuesWindow.Timer1.Enabled := false
ACTIVATE WINDOW ValueItemsValuesWindow
EndIF

Return 0
Method UserInterface2Class Class ValueItemsValuesClass
self:cName := ValueItemsValuesWindow.textName.Value
Return 0
Method Class2ADO Class ValueItemsValuesClass
self:oRS:fields:item("ValueItemValue"):value := self:cName
Return 0
Method ADO2Class Class ValueItemsValuesClass
self:cName := self:oRS:fields:item("ValueItemValue"):value
Return 0
Method Class2UserInterface Class ValueItemsValuesClass
ValueItemsValuesWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class ValueItemsValuesClass
self:cName := ""
Return 0
Method setmode(p1) Class ValueItemsValuesClass
IF p1 = 1
ValueItemsValuesWindow.btnfirst.Enabled := false
ValueItemsValuesWindow.btnnext.Enabled := false
ValueItemsValuesWindow.btnprev.Enabled := false
ValueItemsValuesWindow.btnlast.Enabled := false
ValueItemsValuesWindow.btndel.Enabled := false
ValueItemsValuesWindow.btnclose.Enabled := false
ValueItemsValuesWindow.btnsave.Enabled := true
ValueItemsValuesWindow.btncancel.Enabled := true
ValueItemsValuesWindow.btnedit.Enabled := false
ValueItemsValuesWindow.btnadd.Enabled := false
ValueItemsValuesWindow.textName.Enabled := true
ENDIF
IF p1 = 2
ValueItemsValuesWindow.btnfirst.Enabled := true
ValueItemsValuesWindow.btnnext.Enabled := true
ValueItemsValuesWindow.btnprev.Enabled := true
ValueItemsValuesWindow.btnlast.Enabled := true
ValueItemsValuesWindow.btndel.Enabled := true
ValueItemsValuesWindow.btnclose.Enabled := true
ValueItemsValuesWindow.btnsave.Enabled := false
ValueItemsValuesWindow.btncancel.Enabled := false
ValueItemsValuesWindow.btnedit.Enabled := true
ValueItemsValuesWindow.btnadd.Enabled := true
ValueItemsValuesWindow.textName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ValueItemsValuesClass
myout = self:disconnect()
ValueItemsValuesWindow.Release ( )
Return 0
Method AutoGotoRecord Class ValueItemsValuesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ValueItemsValuesWindow )
myout = self:showrecord()
ValueItemsValuesWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ValueItemsValuesClass
ValueItemsValuesWindow.grid1Browse.DeleteAllItems ( )
ValueItemsValuesWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ValueItemsValuesClass
ValueItemsValuesWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ValueItemsValuesClass
ValueItemsValuesWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ValueItemsValuesClass
cName := ValueItemsValuesWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class ValueItemsValuesClass
Local nvalue,myout
nvalue := ValueItemsValuesWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ValueItemsValuesClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ValueItemsValuesClass
myout = self:search()
ValueItemsValuesWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
