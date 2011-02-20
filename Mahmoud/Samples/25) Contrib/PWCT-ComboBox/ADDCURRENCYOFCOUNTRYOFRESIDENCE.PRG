*---------------------------------------------------------------------------*
* Time : 13:53:18    Date : 01/22/2011
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
Function ADDCURRENCYOFCOUNTRYOFRESIDENCE
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

Resistance R_ADDCURRENCYOFCOUNTRYOFRESIDENCE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ADDCURRENCYOFCOUNTRYOFRESIDENCE_15speed1() code
class AddCurrencyofCountryofResidenceClass From SystemDatabase
Data TableName init "CurrencyS"
Data cid init ""
Data cCurrencyS init ""
Data column init "CurrencyS"
Data PrimaryKey init "id"
Data columns init {"ID","CurrencyS"}
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
Method showwindow Class AddCurrencyofCountryofResidenceClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( AddCurrencyofCountryofResidenceWindow )
DEFINE WINDOW AddCurrencyofCountryofResidenceWindow ;
AT 10 ,10 ;
WIDTH 321 ;
HEIGHT 443 ;
ON INIT self:search()  ;
ICON "ico/sendbad.ico" ;
TITLE "Add Currency of Country of Residence" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {237,232,213}

@ 254 ,9 BUTTONEX btnadd;
CAPTION "Add New";
ON CLICK self:addrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
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
PICTURE "images/save.BMP";
ON CLICK self:saverecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 291 ,109 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 329 ,9 BUTTONEX btnFirst;
CAPTION "First";
PICTURE "images\First.BMP";
ON CLICK self:firstrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 365 ,9 BUTTONEX btnNext;
CAPTION "Next";
PICTURE "images\Next.BMP";
ON CLICK self:nextrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 367 ,109 BUTTONEX btnLast;
CAPTION "Last";
PICTURE "images\Last.BMP";
ON CLICK self:lastrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 329 ,109 BUTTONEX btnPrev;
CAPTION "Prev ";
PICTURE "images\Prev.BMP";
ON CLICK self:prevrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
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
@ 292 ,213 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,0,0};
PICTURE "images/delete.BMP";
ON CLICK self:delrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 190 ,11 LABEL lblCurrencyS ;
VALUE "Currency of Residence Country" ;
WIDTH 269 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 217 ,9 TEXTBOX textCurrencyS;
HEIGHT 27 ;
WIDTH 295 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 12 ,9 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 295 ;
HEIGHT 170 ;
HEADERS {"ID","CurrencyS"};
WIDTHS {80,205} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

AddCurrencyofCountryofResidenceWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
AddCurrencyofCountryofResidenceWindow.Timer1.Enabled := false
ACTIVATE WINDOW AddCurrencyofCountryofResidenceWindow
EndIF

Return 0
Method UserInterface2Class Class AddCurrencyofCountryofResidenceClass
self:cCurrencyS := AddCurrencyofCountryofResidenceWindow.textCurrencyS.Value
Return 0
Method Class2ADO Class AddCurrencyofCountryofResidenceClass
self:oRS:fields:item("CurrencyS"):value := self:cCurrencyS
Return 0
Method ADO2Class Class AddCurrencyofCountryofResidenceClass
self:cCurrencyS := self:oRS:fields:item("CurrencyS"):value
Return 0
Method Class2UserInterface Class AddCurrencyofCountryofResidenceClass
AddCurrencyofCountryofResidenceWindow.textCurrencyS.Value := self:cCurrencyS
Return 0
Method ClearRecord Class AddCurrencyofCountryofResidenceClass
self:cCurrencyS := ""
Return 0
Method OpenDataWindow Class AddCurrencyofCountryofResidenceClass
Local nvalue,myout
nvalue := AddCurrencyofCountryofResidenceWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class AddCurrencyofCountryofResidenceClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class AddCurrencyofCountryofResidenceClass
myout = self:search()
AddCurrencyofCountryofResidenceWindow.Timer1.Enabled := false
Return 0
Method closewindow Class AddCurrencyofCountryofResidenceClass
myout = self:disconnect()
AddCurrencyofCountryofResidenceWindow.Release ( )
Return 0
Method setmode(p1) Class AddCurrencyofCountryofResidenceClass
IF p1 = 1
AddCurrencyofCountryofResidenceWindow.btnfirst.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnnext.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnprev.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnlast.Enabled := false
AddCurrencyofCountryofResidenceWindow.btndel.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnclose.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnsave.Enabled := true
AddCurrencyofCountryofResidenceWindow.btncancel.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnedit.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnadd.Enabled := false
AddCurrencyofCountryofResidenceWindow.textCurrencyS.Enabled := true
ENDIF
IF p1 = 2
AddCurrencyofCountryofResidenceWindow.btnfirst.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnnext.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnprev.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnlast.Enabled := true
AddCurrencyofCountryofResidenceWindow.btndel.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnclose.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnsave.Enabled := false
AddCurrencyofCountryofResidenceWindow.btncancel.Enabled := false
AddCurrencyofCountryofResidenceWindow.btnedit.Enabled := true
AddCurrencyofCountryofResidenceWindow.btnadd.Enabled := true
AddCurrencyofCountryofResidenceWindow.textCurrencyS.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class AddCurrencyofCountryofResidenceClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( AddCurrencyofCountryofResidenceWindow )
myout = self:showrecord()
AddCurrencyofCountryofResidenceWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class AddCurrencyofCountryofResidenceClass
AddCurrencyofCountryofResidenceWindow.grid1Browse.DeleteAllItems ( )
AddCurrencyofCountryofResidenceWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class AddCurrencyofCountryofResidenceClass
AddCurrencyofCountryofResidenceWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class AddCurrencyofCountryofResidenceClass
AddCurrencyofCountryofResidenceWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
