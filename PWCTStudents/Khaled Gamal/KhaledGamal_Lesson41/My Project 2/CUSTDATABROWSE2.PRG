*---------------------------------------------------------------------------*
* Time : 08:08:05    Date : 03/14/2012
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
#include "xhb.ch"
Function CUSTDATABROWSE2
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

Resistance R_CUSTDATABROWSE2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTDATABROWSE2_18smart1() code
class CustDataBrowse2Class From SystemDatabase
Data cWindowName init "DataBrowseWindow"
Data TableName init "Customers_All"
Data column init "Country"
Data PrimaryKey init "ID"
Data columns init {"CustName","CustPhone","Country"}
Data nID init 0
Data cName init ""
Data ColTitles init {"Name","Phone","Country"}
Data ColWidths init {200,100,100}
Data CountryItems init {}
Data CountryItemsIDs init {}
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
Method showwindow Class CustDataBrowse2Class
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustDataBrowse2Window )
DEFINE WINDOW CustDataBrowse2Window ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Data/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

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
VALUE "                                                      Data/Browse Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,105 LABEL lblAddress ;
VALUE "Name" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 276 ,188 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 52 ,34 LABEL lbl1browse ;
VALUE "Name" ;
WIDTH 150 ;
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
ON CHANGE self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookUpTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 105 ,637 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 100;
ITEMS self:CountryItems ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustDataBrowse2Window.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDataBrowse2Window.Timer1.Enabled := false
ACTIVATE WINDOW CustDataBrowse2Window
EndIF

Return 0
Method UserInterface2Class Class CustDataBrowse2Class
self:cName := CustDataBrowse2Window.textName.Value
Return 0
Method Class2ADO Class CustDataBrowse2Class
self:oRS:fields:item(alltrim("CustName")):value := self:cName
Return 0
Method ADO2Class Class CustDataBrowse2Class
self:cName := self:oRS:fields:item(alltrim("CustName")):value
Return 0
Method Class2UserInterface Class CustDataBrowse2Class
CustDataBrowse2Window.textName.Value := self:cName
Return 0
Method ClearRecord Class CustDataBrowse2Class
self:cName := ""
Return 0
Method setmode(p1) Class CustDataBrowse2Class
IF p1 = 1
CustDataBrowse2Window.btnfirst.Enabled := false
CustDataBrowse2Window.btnnext.Enabled := false
CustDataBrowse2Window.btnprev.Enabled := false
CustDataBrowse2Window.btnlast.Enabled := false
CustDataBrowse2Window.btndel.Enabled := false
CustDataBrowse2Window.btnclose.Enabled := false
CustDataBrowse2Window.btnsave.Enabled := true
CustDataBrowse2Window.btncancel.Enabled := true
CustDataBrowse2Window.btnedit.Enabled := false
CustDataBrowse2Window.btnadd.Enabled := false
CustDataBrowse2Window.textName.Enabled := true
CustDataBrowse2Window.textNameBrowse.Enabled := false
CustDataBrowse2Window.btn1Browse.Enabled := false
CustDataBrowse2Window.Grid1Browse.Enabled := false
ENDIF
IF p1 = 2
CustDataBrowse2Window.btnfirst.Enabled := true
CustDataBrowse2Window.btnnext.Enabled := true
CustDataBrowse2Window.btnprev.Enabled := true
CustDataBrowse2Window.btnlast.Enabled := true
CustDataBrowse2Window.btndel.Enabled := true
CustDataBrowse2Window.btnclose.Enabled := true
CustDataBrowse2Window.btnsave.Enabled := false
CustDataBrowse2Window.btncancel.Enabled := false
CustDataBrowse2Window.btnedit.Enabled := true
CustDataBrowse2Window.btnadd.Enabled := true
CustDataBrowse2Window.textName.Enabled := false
CustDataBrowse2Window.textNameBrowse.Enabled := True
CustDataBrowse2Window.btn1Browse.Enabled := True
CustDataBrowse2Window.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustDataBrowse2Class
myout = self:disconnect()
CustDataBrowse2Window.Release ( )
Return 0
Method AutoGotoRecord Class CustDataBrowse2Class
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDataBrowse2Window )
myout = self:showrecord()
CustDataBrowse2Window.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDataBrowse2Class
CustDataBrowse2Window.grid1Browse.DeleteAllItems ( )
CustDataBrowse2Window.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDataBrowse2Class
CustDataBrowse2Window.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustDataBrowse2Class
CustDataBrowse2Window.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustDataBrowse2Class
nValue := CustDataBrowse2Window.combo1.Value
IF nValue==0
Return ""
ENDIF
nValue := self:CountryItems[nValue]
Return nValue
Method OpenDataWindow Class CustDataBrowse2Class
Local nvalue,myout
nvalue := CustDataBrowse2Window.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
CustDataBrowse2Window.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDataBrowse2Class
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDataBrowse2Class
myout = self:search()
CustDataBrowse2Window.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
