*---------------------------------------------------------------------------*
* Time : 14:28:59    Date : 02/20/2011
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
Function ADDCOUNTRYR
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

Resistance R_ADDCOUNTRYR_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ADDCOUNTRYR_15speed1() code
class AddCountryRClass From SystemDatabase
Data TableName init "CountryR"
Data cid init ""
Data cCountryR init ""
Data column init "CountryR"
Data PrimaryKey init "id"
Data columns init {"ID","CountryR"}
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
EndClass
Method showwindow Class AddCountryRClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( AddCountryRWindow )
DEFINE WINDOW AddCountryRWindow ;
AT 10 ,10 ;
WIDTH 321 ;
HEIGHT 446 ;
ON INIT self:search()  ;
ICON "ico/sendbad.ico" ;
TITLE "Add New The Residence Country" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 254 ,9 BUTTONEX btnadd;
CAPTION "Add New";
ON CLICK self:addrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 254 ,109 BUTTONEX btnedit;
CAPTION "Edit";
PICTURE "images\edit.BMP";
ON CLICK self:editrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 291 ,9 BUTTONEX btnsave;
CAPTION "Save";
PICTURE "images\Save.BMP";
ON CLICK self:saverecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 291 ,109 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 332 ,9 BUTTONEX btnFirst;
CAPTION "First";
PICTURE "images\First.BMP";
ON CLICK self:firstrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 374 ,9 BUTTONEX btnNext;
CAPTION "Next";
PICTURE "images\Next.BMP";
ON CLICK self:nextrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 374 ,110 BUTTONEX btnLast;
CAPTION "Last";
PICTURE "images\Last.BMP";
ON CLICK self:lastrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 332 ,109 BUTTONEX btnPrev;
CAPTION "Prev ";
PICTURE "images\Prev.BMP";
ON CLICK self:prevrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 254 ,214 BUTTONEX btnClose;
CAPTION "OK";
FONTCOLOR {255,255,255};
BACKCOLOR {20,120,20};
ON CLICK self:closewindow()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 292 ,214 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,0,0};
PICTURE "images\delete.BMP";
ON CLICK self:delrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 190 ,10 LABEL lblCountryR ;
VALUE "The Receiving Country" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 217 ,9 TEXTBOX textCountryR;
HEIGHT 27 ;
WIDTH 295 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 8 ,9 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 295 ;
HEIGHT 170 ;
HEADERS {"ID","Country"};
WIDTHS {80,205} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

AddCountryRWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
AddCountryRWindow.Timer1.Enabled := false
ACTIVATE WINDOW AddCountryRWindow
EndIF

Return 0
Method UserInterface2Class Class AddCountryRClass
self:cCountryR := AddCountryRWindow.textCountryR.Value
Return 0
Method Class2ADO Class AddCountryRClass
self:oRS:fields:item("CountryR"):value := self:cCountryR
Return 0
Method ADO2Class Class AddCountryRClass
self:cCountryR := self:oRS:fields:item("CountryR"):value
Return 0
Method Class2UserInterface Class AddCountryRClass
AddCountryRWindow.textCountryR.Value := self:cCountryR
Return 0
Method ClearRecord Class AddCountryRClass
self:cCountryR := ""
Return 0
Method OpenDataWindow Class AddCountryRClass
Local nvalue,myout
nvalue := AddCountryRWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class AddCountryRClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class AddCountryRClass
myout = self:search()
AddCountryRWindow.Timer1.Enabled := false
Return 0
Method closewindow Class AddCountryRClass
myout = self:disconnect()
AddCountryRWindow.Release ( )
Return 0
Method setmode(p1) Class AddCountryRClass
IF p1 = 1
AddCountryRWindow.btnfirst.Enabled := false
AddCountryRWindow.btnnext.Enabled := false
AddCountryRWindow.btnprev.Enabled := false
AddCountryRWindow.btnlast.Enabled := false
AddCountryRWindow.btndel.Enabled := false
AddCountryRWindow.btnclose.Enabled := false
AddCountryRWindow.btnsave.Enabled := true
AddCountryRWindow.btncancel.Enabled := true
AddCountryRWindow.btnedit.Enabled := false
AddCountryRWindow.btnadd.Enabled := false
AddCountryRWindow.textCountryR.Enabled := true
ENDIF
IF p1 = 2
AddCountryRWindow.btnfirst.Enabled := true
AddCountryRWindow.btnnext.Enabled := true
AddCountryRWindow.btnprev.Enabled := true
AddCountryRWindow.btnlast.Enabled := true
AddCountryRWindow.btndel.Enabled := true
AddCountryRWindow.btnclose.Enabled := true
AddCountryRWindow.btnsave.Enabled := false
AddCountryRWindow.btncancel.Enabled := false
AddCountryRWindow.btnedit.Enabled := true
AddCountryRWindow.btnadd.Enabled := true
AddCountryRWindow.textCountryR.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class AddCountryRClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( AddCountryRWindow )
myout = self:showrecord()
AddCountryRWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class AddCountryRClass
AddCountryRWindow.grid1Browse.DeleteAllItems ( )
AddCountryRWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class AddCountryRClass
AddCountryRWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class AddCountryRClass
AddCountryRWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
