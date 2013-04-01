*---------------------------------------------------------------------------*
* Time : 18:17:15    Date : 12/11/2012
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
Function ITEMSCOLORS_DATA
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

Resistance R_ITEMSCOLORS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSCOLORS_DATA_18smart1() code
class ItemsColorsClass From SYSTEMDATABASE
Data TableName init "ItemsColors"
Data nID init 0
Data cColorName init ""
Data column init "ColorName"
Data PrimaryKey init "id"
Data columns init {"ID","ColorName"}
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
Method showwindow Class ItemsColorsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemsColorsWindow )
DEFINE WINDOW ItemsColorsWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 472 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÇáæÇä ÇáÇÕäÇÝ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 39 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
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
VALUE "                                                                 ÇáæÇä ÇáÇÕäÇÝ" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 276 ,635 LABEL lblColorName ;
VALUE "ÇÓã Çááæä" ;
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
VALUE "ÇÓã Çááæä" ;
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
ON CHANGE self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã Çááæä"};
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

ItemsColorsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemsColorsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemsColorsWindow
EndIF

Return 0
Method UserInterface2Class Class ItemsColorsClass
self:cColorName := ItemsColorsWindow.textColorName.Value
self:nColorNumber := ItemsColorsWindow.lblColorNumber.Backcolor
Return 0
Method Class2ADO Class ItemsColorsClass
self:oRS:fields:item(alltrim("ColorName")):value := self:cColorName
self:oRS:fields:item(alltrim("ColorNumberR")):value := self:nColorNumber[1]
self:oRS:fields:item(alltrim("ColorNumberG")):value := self:nColorNumber[2]
self:oRS:fields:item(alltrim("ColorNumberB")):value := self:nColorNumber[3]
Return 0
Method ADO2Class Class ItemsColorsClass
self:cColorName := self:oRS:fields:item(alltrim("ColorName")):value
self:nColorNumber[1] := self:oRS:fields:item(alltrim("ColorNumberR")):value
self:nColorNumber[2] := self:oRS:fields:item(alltrim("ColorNumberG")):value
self:nColorNumber[3] := self:oRS:fields:item(alltrim("ColorNumberB")):value
Return 0
Method Class2UserInterface Class ItemsColorsClass
ItemsColorsWindow.textColorName.Value := self:cColorName
ItemsColorsWindow.lblColorNumber.BackColor := self:nColorNumber
Return 0
Method ClearRecord Class ItemsColorsClass
self:cColorName := ""
self:nColorNumber := {0,0,0}
Return 0
Method OpenDataWindow Class ItemsColorsClass
Local nvalue,myout
nvalue := ItemsColorsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemsColorsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemsColorsClass
myout = self:search()
ItemsColorsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ItemsColorsClass
IF p1 = 1
ItemsColorsWindow.btnfirst.Enabled := false
ItemsColorsWindow.btnnext.Enabled := false
ItemsColorsWindow.btnprev.Enabled := false
ItemsColorsWindow.btnlast.Enabled := false
ItemsColorsWindow.btndel.Enabled := false
ItemsColorsWindow.btnclose.Enabled := false
ItemsColorsWindow.btnsave.Enabled := true
ItemsColorsWindow.btncancel.Enabled := true
ItemsColorsWindow.btnedit.Enabled := false
ItemsColorsWindow.btnadd.Enabled := false
ItemsColorsWindow.textColorName.Enabled := true
ItemsColorsWindow.btnColorNumber.Enabled := true
ENDIF
IF p1 = 2
ItemsColorsWindow.btnfirst.Enabled := true
ItemsColorsWindow.btnnext.Enabled := true
ItemsColorsWindow.btnprev.Enabled := true
ItemsColorsWindow.btnlast.Enabled := true
ItemsColorsWindow.btndel.Enabled := true
ItemsColorsWindow.btnclose.Enabled := true
ItemsColorsWindow.btnsave.Enabled := false
ItemsColorsWindow.btncancel.Enabled := false
ItemsColorsWindow.btnedit.Enabled := true
ItemsColorsWindow.btnadd.Enabled := true
ItemsColorsWindow.textColorName.Enabled := false
ItemsColorsWindow.btnColorNumber.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method SelectColor Class ItemsColorsClass
GetColor := GetColor ( {0,0,0} )
ItemsColorsWindow.lblColorNumber.BackColor := GetColor
self:nColorNumber := GetColor
Return 0
Method closewindow Class ItemsColorsClass
myout = self:disconnect()
ItemsColorsWindow.Release ( )
Return 0
Method AutoGotoRecord Class ItemsColorsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemsColorsWindow )
myout = self:showrecord()
ItemsColorsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemsColorsClass
ItemsColorsWindow.grid1browse.DeleteAllItems ( )
ItemsColorsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsColorsClass
ItemsColorsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsColorsClass
ItemsColorsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsColorsClass
cName := ItemsColorsWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
