*---------------------------------------------------------------------------*
* Time : 12:29:27    Date : 01/22/2011
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
Function ADDNEWCOMPANY
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

Resistance R_ADDNEWCOMPANY_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ADDNEWCOMPANY_15speed1() code
class AddNewCompanyClass From SystemDatabase
Data TableName init "Company"
Data cid init ""
Data cCompanyName init ""
Data cCompanyPhone init ""
Data cCompanyPhone1 init ""
Data cCompanyPhone2 init ""
Data cCompanyPhone3 init ""
Data cCompanyAddress init ""
Data column init "CompanyName"
Data PrimaryKey init "id"
Data columns init {"ID","CompanyName","CompanyPhone","CompanyPhone1","CompanyPhone2","CompanyPhone3","CompanyAddress"}
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
Method showwindow Class AddNewCompanyClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( AddNewCompanyWindow )
DEFINE WINDOW AddNewCompanyWindow ;
AT 0 ,0 ;
WIDTH 883 ;
HEIGHT 570 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "Add New Company Data" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 423 ,13 BUTTONEX btnadd;
CAPTION "Add New";
PICTURE "images\add.BMP";
ON CLICK self:addrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 423 ,126 BUTTONEX btnedit;
CAPTION "Edit";
PICTURE "images\edit.BMP";
ON CLICK self:editrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 423 ,239 BUTTONEX btnsave;
CAPTION "Save";
PICTURE "images\save.BMP";
ON CLICK self:saverecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 423 ,352 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 462 ,13 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
PICTURE "images\First.BMP";
ON CLICK self:firstrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 462 ,126 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
PICTURE "images\Next.BMP";
ON CLICK self:nextrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 462 ,352 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
PICTURE "images\Last.BMP";
ON CLICK self:lastrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 462 ,239 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
PICTURE "images\Prev.BMP";
ON CLICK self:prevrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 422 ,509 BUTTONEX btnClose;
CAPTION "OK";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,0};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 460 ,509 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,0,0};
PICTURE "Images/delete.BMP";
ON CLICK self:delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 296 ,14 LABEL lblCompanyName ;
VALUE "  Company Name" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 296 ,183 TEXTBOX textCompanyName;
HEIGHT 24 ;
WIDTH 680 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 355 ,13 LABEL lblCompanyPhone ;
VALUE "  Company Phone" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 355 ,181 TEXTBOX textCompanyPhone;
HEIGHT 24 ;
WIDTH 260 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 356 ,448 LABEL lblCompanyPhone1 ;
VALUE "  Company Phone1" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 356 ,616 TEXTBOX textCompanyPhone1;
HEIGHT 24 ;
WIDTH 250 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 383 ,13 LABEL lblCompanyPhone2 ;
VALUE "  Company Phone2" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 383 ,181 TEXTBOX textCompanyPhone2;
HEIGHT 24 ;
WIDTH 260 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 384 ,448 LABEL lblCompanyPhone3 ;
VALUE "  Company Phone3" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 384 ,616 TEXTBOX textCompanyPhone3;
HEIGHT 24 ;
WIDTH 250 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 325 ,14 LABEL lblCompanyAddress ;
VALUE "  Company Address" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 325 ,182 TEXTBOX textCompanyAddress;
HEIGHT 24 ;
WIDTH 683 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 58 ,14 LABEL lbl1browse ;
VALUE "  Company Name" ;
WIDTH 160 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {2,57,109} ;
FONTCOLOR {255,255,255}
@ 58 ,177 TEXTBOX textNamebrowse;
HEIGHT 24 ;
WIDTH 420 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 51 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 90 ,14 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 850 ;
HEIGHT 200 ;
HEADERS {"ID","Company Name","Company Phone","Company Phone1","Company Phone2","Company Phone3","Company Address"};
WIDTHS {30,140,140,130,130,130,140} ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
DEFINE STATUSBAR

STATUSITEM "This Program Is Designed By Using Mahmoud Programing Language...PWCT"

CLOCK;
AMPM

DATE

KEYBOARD

END STATUSBAR

END WINDOW

AddNewCompanyWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
AddNewCompanyWindow.Timer1.Enabled := false
ACTIVATE WINDOW AddNewCompanyWindow
EndIF

Return 0
Method UserInterface2Class Class AddNewCompanyClass
self:cCompanyName := AddNewCompanyWindow.textCompanyName.Value
self:cCompanyPhone := AddNewCompanyWindow.textCompanyPhone.Value
self:cCompanyAddress := AddNewCompanyWindow.textCompanyAddress.Value
self:cCompanyPhone1 := AddNewCompanyWindow.textCompanyPhone1.Value
self:cCompanyPhone2 := AddNewCompanyWindow.textCompanyPhone2.Value
self:cCompanyPhone3 := AddNewCompanyWindow.textCompanyPhone3.Value
Return 0
Method Class2ADO Class AddNewCompanyClass
self:oRS:fields:item("CompanyName"):value := self:cCompanyName
self:oRS:fields:item("CompanyPhone"):value := self:cCompanyPhone
self:oRS:fields:item("CompanyAddress"):value := self:cCompanyAddress
self:oRS:fields:item("CompanyPhone1"):value := self:cCompanyPhone1
self:oRS:fields:item("CompanyPhone2"):value := self:cCompanyPhone2
self:oRS:fields:item("CompanyPhone3"):value := self:cCompanyPhone3
Return 0
Method ADO2Class Class AddNewCompanyClass
self:cCompanyName := self:oRS:fields:item("CompanyName"):value
self:cCompanyPhone := self:oRS:fields:item("CompanyPhone"):value
self:cCompanyAddress := self:oRS:fields:item("CompanyAddress"):value
self:cCompanyPhone1 := self:oRS:fields:item("CompanyPhone1"):value
self:cCompanyPhone2 := self:oRS:fields:item("CompanyPhone2"):value
self:cCompanyPhone3 := self:oRS:fields:item("CompanyPhone3"):value
Return 0
Method Class2UserInterface Class AddNewCompanyClass
AddNewCompanyWindow.textCompanyName.Value := self:cCompanyName
AddNewCompanyWindow.textCompanyPhone.Value := self:cCompanyPhone
AddNewCompanyWindow.textCompanyAddress.Value := self:cCompanyAddress
AddNewCompanyWindow.textCompanyPhone1.Value := self:cCompanyPhone1
AddNewCompanyWindow.textCompanyPhone2.Value := self:cCompanyPhone2
AddNewCompanyWindow.textCompanyPhone3.Value := self:cCompanyPhone3
Return 0
Method ClearRecord Class AddNewCompanyClass
self:cCompanyName := ""
self:cCompanyPhone := ""
self:cCompanyAddress := ""
self:cCompanyPhone1 := ""
self:cCompanyPhone2 := ""
self:cCompanyPhone3 := ""
Return 0
Method OpenDataWindow Class AddNewCompanyClass
Local nvalue,myout
nvalue := AddNewCompanyWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class AddNewCompanyClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class AddNewCompanyClass
myout = self:search()
AddNewCompanyWindow.Timer1.Enabled := false
Return 0
Method closewindow Class AddNewCompanyClass
myout = self:disconnect()
AddNewCompanyWindow.Release ( )
Return 0
Method setmode(p1) Class AddNewCompanyClass
IF p1 = 1
AddNewCompanyWindow.btnfirst.Enabled := false
AddNewCompanyWindow.btnnext.Enabled := false
AddNewCompanyWindow.btnprev.Enabled := false
AddNewCompanyWindow.btnlast.Enabled := false
AddNewCompanyWindow.btndel.Enabled := false
AddNewCompanyWindow.btnclose.Enabled := false
AddNewCompanyWindow.btnsave.Enabled := true
AddNewCompanyWindow.btncancel.Enabled := true
AddNewCompanyWindow.btnedit.Enabled := false
AddNewCompanyWindow.btnadd.Enabled := false
AddNewCompanyWindow.textCompanyName.Enabled := true
AddNewCompanyWindow.textCompanyPhone.Enabled := true
AddNewCompanyWindow.textCompanyAddress.Enabled := true
AddNewCompanyWindow.textCompanyPhone1.Enabled := true
AddNewCompanyWindow.textCompanyPhone2.Enabled := true
AddNewCompanyWindow.textCompanyPhone3.Enabled := true
ENDIF
IF p1 = 2
AddNewCompanyWindow.btnfirst.Enabled := true
AddNewCompanyWindow.btnnext.Enabled := true
AddNewCompanyWindow.btnprev.Enabled := true
AddNewCompanyWindow.btnlast.Enabled := true
AddNewCompanyWindow.btndel.Enabled := true
AddNewCompanyWindow.btnclose.Enabled := true
AddNewCompanyWindow.btnsave.Enabled := false
AddNewCompanyWindow.btncancel.Enabled := false
AddNewCompanyWindow.btnedit.Enabled := true
AddNewCompanyWindow.btnadd.Enabled := true
AddNewCompanyWindow.textCompanyName.Enabled := false
AddNewCompanyWindow.textCompanyPhone.Enabled := false
AddNewCompanyWindow.textCompanyAddress.Enabled := false
AddNewCompanyWindow.textCompanyPhone1.Enabled := false
AddNewCompanyWindow.textCompanyPhone2.Enabled := false
AddNewCompanyWindow.textCompanyPhone3.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class AddNewCompanyClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( AddNewCompanyWindow )
myout = self:showrecord()
AddNewCompanyWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class AddNewCompanyClass
AddNewCompanyWindow.grid1Browse.DeleteAllItems ( )
AddNewCompanyWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class AddNewCompanyClass
AddNewCompanyWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class AddNewCompanyClass
AddNewCompanyWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class AddNewCompanyClass
cName := AddNewCompanyWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
