*---------------------------------------------------------------------------*
* Time : 18:54:23    Date : 10/13/2010
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
Function ITEMDETAILS_DATA
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

Resistance R_ITEMDETAILS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMDETAILS_DATA_15speed1() code
class ItemDetailsDataClass From SystemDatabase
Data TableName init "ITEMDETAILS"
Data cid init ""
Data cCountry init ""
Data column init "ITEMDETAILS"
Data PrimaryKey init "id"
Data columns init {"ID","ITEMDETAILS"}
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
Method showwindow Class ItemDetailsDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemDetailsDataWindow )
DEFINE WINDOW ItemDetailsDataWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "Item - Details" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE "Image\BACK.jpg";
STRETCH ;
WIDTH 750 HEIGHT 296
@ 350 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                             Item Details" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,210 LABEL lblCountry ;
VALUE "Information" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,324 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 60 ,41 LABEL lbl1browse ;
VALUE "Information" ;
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
FONTCOLOR {0,0,0}

@ 50 ,593 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,165 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"ID","Information"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

ItemDetailsDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemDetailsDataWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemDetailsDataWindow
EndIF

Return 0
Method UserInterface2Class Class ItemDetailsDataClass
self:cCountry := ItemDetailsDataWindow.textCountry.Value
Return 0
Method Class2ADO Class ItemDetailsDataClass
self:oRS:fields:item("ItemDetails"):value := self:cCountry
Return 0
Method ADO2Class Class ItemDetailsDataClass
self:cCountry := self:oRS:fields:item("ItemDetails"):value
Return 0
Method Class2UserInterface Class ItemDetailsDataClass
ItemDetailsDataWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class ItemDetailsDataClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class ItemDetailsDataClass
Local nvalue,myout
nvalue := ItemDetailsDataWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemDetailsDataClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemDetailsDataClass
myout = self:search()
ItemDetailsDataWindow.Timer1.Enabled := false
Return 0
Method closewindow Class ItemDetailsDataClass
myout = self:disconnect()
ItemDetailsDataWindow.Release ( )
Return 0
Method setmode(p1) Class ItemDetailsDataClass
IF p1 = 1
ItemDetailsDataWindow.btnfirst.Enabled := false
ItemDetailsDataWindow.btnnext.Enabled := false
ItemDetailsDataWindow.btnprev.Enabled := false
ItemDetailsDataWindow.btnlast.Enabled := false
ItemDetailsDataWindow.btndel.Enabled := false
ItemDetailsDataWindow.btnclose.Enabled := false
ItemDetailsDataWindow.btnsave.Enabled := true
ItemDetailsDataWindow.btncancel.Enabled := true
ItemDetailsDataWindow.btnedit.Enabled := false
ItemDetailsDataWindow.btnadd.Enabled := false
ItemDetailsDataWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
ItemDetailsDataWindow.btnfirst.Enabled := true
ItemDetailsDataWindow.btnnext.Enabled := true
ItemDetailsDataWindow.btnprev.Enabled := true
ItemDetailsDataWindow.btnlast.Enabled := true
ItemDetailsDataWindow.btndel.Enabled := true
ItemDetailsDataWindow.btnclose.Enabled := true
ItemDetailsDataWindow.btnsave.Enabled := false
ItemDetailsDataWindow.btncancel.Enabled := false
ItemDetailsDataWindow.btnedit.Enabled := true
ItemDetailsDataWindow.btnadd.Enabled := true
ItemDetailsDataWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class ItemDetailsDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemDetailsDataWindow )
myout = self:showrecord()
ItemDetailsDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemDetailsDataClass
ItemDetailsDataWindow.grid1Browse.DeleteAllItems ( )
ItemDetailsDataWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemDetailsDataClass
ItemDetailsDataWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemDetailsDataClass
ItemDetailsDataWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemDetailsDataClass
cName := ItemDetailsDataWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
