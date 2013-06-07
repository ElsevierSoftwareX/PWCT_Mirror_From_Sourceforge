*---------------------------------------------------------------------------*
* Time : 13:54:30    Date : 06/07/2013
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
Function ITEMSDETAILSVALUES_DATA
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

Resistance R_ITEMSDETAILSVALUES_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSDETAILSVALUES_DATA_18smart1() code
class ItemDetailsValuesDataBrowseClass From SystemDatabase
Data TableName init "ItemDetailsValues_All"
Data column init "ItemDetails"
Data PrimaryKey init "id"
Data columns init {"ItemDetails","InfValue"}
Data nID init 0
Data cName init ""
Data ColTitles init {"Information","Value"}
Data ColWidths init {250,200}
Data itemid init 0
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
Method showwindow Class ItemDetailsValuesDataBrowseClass
IF .not. self:itemid = 0
self:complexsearch := " and itemid = " + alltrim(str(self:itemid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ItemDetailsValuesDataBrowseWindow )
DEFINE WINDOW ItemDetailsValuesDataBrowseWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 550 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Item Details" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 40 ,6 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 420
@ 470 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                      Item Details Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 417 ,45 LABEL lblAddress ;
VALUE "Value" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 416 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 490 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,25 LABEL lbl1browse ;
VALUE "Information" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,139 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 490 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 50 ,637 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,138 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 490 ;
HEIGHT 310 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW
ItemDetailsValuesDataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ItemDetailsValuesDataBrowseWindow.Timer1.Enabled := false
ACTIVATE WINDOW ItemDetailsValuesDataBrowseWindow
EndIF
Return 0
Method UserInterface2Class Class ItemDetailsValuesDataBrowseClass
self:cName := ItemDetailsValuesDataBrowseWindow.textName.Value
Return 0
Method Class2ADO Class ItemDetailsValuesDataBrowseClass
self:oRS:fields:item(alltrim("InfValue")):value := self:cName
Return 0
Method ADO2Class Class ItemDetailsValuesDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("InfValue")):value
Return 0
Method Class2UserInterface Class ItemDetailsValuesDataBrowseClass
ItemDetailsValuesDataBrowseWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class ItemDetailsValuesDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class ItemDetailsValuesDataBrowseClass
IF p1 = 1
ItemDetailsValuesDataBrowseWindow.btnfirst.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnnext.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnprev.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnlast.Enabled := false
ItemDetailsValuesDataBrowseWindow.btndel.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnclose.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnsave.Enabled := true
ItemDetailsValuesDataBrowseWindow.btncancel.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnedit.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnadd.Enabled := false
ItemDetailsValuesDataBrowseWindow.textName.Enabled := true
ENDIF
IF p1 = 2
ItemDetailsValuesDataBrowseWindow.btnfirst.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnnext.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnprev.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnlast.Enabled := true
ItemDetailsValuesDataBrowseWindow.btndel.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnclose.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnsave.Enabled := false
ItemDetailsValuesDataBrowseWindow.btncancel.Enabled := false
ItemDetailsValuesDataBrowseWindow.btnedit.Enabled := true
ItemDetailsValuesDataBrowseWindow.btnadd.Enabled := true
ItemDetailsValuesDataBrowseWindow.textName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ItemDetailsValuesDataBrowseClass
myout = self:disconnect()
ItemDetailsValuesDataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class ItemDetailsValuesDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ItemDetailsValuesDataBrowseWindow )
myout = self:showrecord()
ItemDetailsValuesDataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ItemDetailsValuesDataBrowseClass
ItemDetailsValuesDataBrowseWindow.grid1Browse.DeleteAllItems ( )
ItemDetailsValuesDataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ItemDetailsValuesDataBrowseClass
ItemDetailsValuesDataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ItemDetailsValuesDataBrowseClass
ItemDetailsValuesDataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ItemDetailsValuesDataBrowseClass
cName := ItemDetailsValuesDataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class ItemDetailsValuesDataBrowseClass
Local nvalue,myout
nvalue := ItemDetailsValuesDataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ItemDetailsValuesDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ItemDetailsValuesDataBrowseClass
myout = self:search()
ItemDetailsValuesDataBrowseWindow.Timer1.Enabled := false
Return 0

End Of Resistance

*-------------------------------------------------------------------*
