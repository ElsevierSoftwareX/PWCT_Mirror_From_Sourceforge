*---------------------------------------------------------------------------*
* Time : 13:54:05    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
class ItemsColorsClass From SystemDatabase
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
Method BeforeSearch
Method SearchAdd
Method settimer
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
TITLE "Items Colors" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 39 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 340
@ 390 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 390 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 390 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                        Items Colors" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,71 LABEL lblColorName ;
VALUE "Color Name" ;
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
FONTCOLOR {0,0,0} 
@ 52 ,74 LABEL lbl1browse ;
VALUE "Color Name" ;
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
HEADERS {"ID","Item Color Name"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 327 ,71 LABEL lblColorImage ;
VALUE "Color Image" ;
WIDTH 110 ;
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
FONT "arial" SIZE 18 ;
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
ItemsColorsWindow.grid1Browse.DeleteAllItems ( )
ItemsColorsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemsColorsClass
ItemsColorsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemsColorsClass
ItemsColorsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemsColorsClass
cName := ItemsColorsWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
