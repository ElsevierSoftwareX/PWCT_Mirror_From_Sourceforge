*---------------------------------------------------------------------------*
* Time : 21:03:06    Date : 10/17/2010
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
Function PRODUCTIONMAN_DATA
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

Resistance R_PRODUCTIONMAN_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PRODUCTIONMAN_DATA_15speed1() code
class ProductionManClass From SystemDatabase
Data TableName init "ProductionMan"
Data nID init 0
Data cOpinion init ""
Data column init "ProductionManopinion"
Data PrimaryKey init "id"
Data columns init {"ID","ProductionManopinion"}
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
Method showwindow Class ProductionManClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProductionManWindow )
DEFINE WINDOW ProductionManWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Production Manager" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 39 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 290
@ 340 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                   Production Manager - Opinions" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,61 LABEL lblOpinion ;
VALUE "Opinion" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,188 TEXTBOX textOpinion;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 52 ,64 LABEL lbl1browse ;
VALUE "Opinion" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,188 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 50 ,637 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,188 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS {"ID","Opinion"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

ProductionManWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProductionManWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProductionManWindow
EndIF

Return 0
Method UserInterface2Class Class ProductionManClass
self:cOpinion := ProductionManWindow.textOpinion.Value
Return 0
Method Class2ADO Class ProductionManClass
self:oRS:fields:item("ProductionManOpinion"):value := self:cOpinion
Return 0
Method ADO2Class Class ProductionManClass
self:cOpinion := self:oRS:fields:item("ProductionManOpinion"):value
Return 0
Method Class2UserInterface Class ProductionManClass
ProductionManWindow.textOpinion.Value := self:cOpinion
Return 0
Method ClearRecord Class ProductionManClass
self:cOpinion := ""
Return 0
Method OpenDataWindow Class ProductionManClass
Local nvalue,myout
nvalue := ProductionManWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProductionManClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProductionManClass
myout = self:search()
ProductionManWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProductionManClass
IF p1 = 1
ProductionManWindow.btnfirst.Enabled := false
ProductionManWindow.btnnext.Enabled := false
ProductionManWindow.btnprev.Enabled := false
ProductionManWindow.btnlast.Enabled := false
ProductionManWindow.btndel.Enabled := false
ProductionManWindow.btnclose.Enabled := false
ProductionManWindow.btnsave.Enabled := true
ProductionManWindow.btncancel.Enabled := true
ProductionManWindow.btnedit.Enabled := false
ProductionManWindow.btnadd.Enabled := false
ProductionManWindow.textOpinion.Enabled := true
ENDIF
IF p1 = 2
ProductionManWindow.btnfirst.Enabled := true
ProductionManWindow.btnnext.Enabled := true
ProductionManWindow.btnprev.Enabled := true
ProductionManWindow.btnlast.Enabled := true
ProductionManWindow.btndel.Enabled := true
ProductionManWindow.btnclose.Enabled := true
ProductionManWindow.btnsave.Enabled := false
ProductionManWindow.btncancel.Enabled := false
ProductionManWindow.btnedit.Enabled := true
ProductionManWindow.btnadd.Enabled := true
ProductionManWindow.textOpinion.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ProductionManClass
myout = self:disconnect()
ProductionManWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProductionManClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProductionManWindow )
myout = self:showrecord()
ProductionManWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProductionManClass
ProductionManWindow.grid1Browse.DeleteAllItems ( )
ProductionManWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProductionManClass
ProductionManWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProductionManClass
ProductionManWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProductionManClass
cName := ProductionManWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
