*---------------------------------------------------------------------------*
* Time : 06:41:20    Date : 09/13/2010
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
Function GENDER_DATA
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

Resistance R_GENDER_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GENDER_DATA_15speed1() code
class GenderDataClass From SystemDatabase
Data TableName init "GENDER"
Data cid init ""
Data cgender init ""
Data column init "Gender"
Data PrimaryKey init "id"
Data columns init {"ID","GENDER"}
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
Method showwindow Class GenderDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( GenderDataWindow )
DEFINE WINDOW GenderDataWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "Lookup Table : Gender " ;
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
VALUE "                                                             Gender Data" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,220 LABEL lblGender ;
VALUE "Gender" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,324 TEXTBOX textGender;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 60 ,71 LABEL lbl1browse ;
VALUE "Gender" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
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
HEADERS {"ID","Gender"};
WIDTHS {100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

GenderDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
GenderDataWindow.Timer1.Enabled := false
ACTIVATE WINDOW GenderDataWindow
EndIF

Return 0
Method UserInterface2Class Class GenderDataClass
self:cGender := GenderDataWindow.textGender.Value
Return 0
Method Class2ADO Class GenderDataClass
self:oRS:fields:item("GENDER"):value := self:cGENDER
Return 0
Method ADO2Class Class GenderDataClass
self:cGENDER := self:oRS:fields:item("GENDER"):value
Return 0
Method Class2UserInterface Class GenderDataClass
GenderDataWindow.textGENDER.Value := self:cGENDER
Return 0
Method ClearRecord Class GenderDataClass
self:cGENDER := ""
Return 0
Method OpenDataWindow Class GenderDataClass
Local NVALUE,MYOUT
nvalue := GenderDataWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(NVALUE)
ENDIF
Return 0
Method ShowDataWindow(NVALUE) Class GenderDataClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class GenderDataClass
myout = self:search()
GenderDataWindow.Timer1.Enabled := false
Return 0
Method closewindow Class GenderDataClass
myout = self:disconnect()
GenderDataWindow.Release ( )
Return 0
Method setmode(p1) Class GenderDataClass
IF p1 = 1
GenderDataWindow.btnfirst.Enabled := false
GenderDataWindow.btnnext.Enabled := false
GenderDataWindow.btnprev.Enabled := false
GenderDataWindow.btnlast.Enabled := false
GenderDataWindow.btndel.Enabled := false
GenderDataWindow.btnclose.Enabled := false
GenderDataWindow.btnsave.Enabled := true
GenderDataWindow.btncancel.Enabled := true
GenderDataWindow.btnedit.Enabled := false
GenderDataWindow.btnadd.Enabled := false
GenderDataWindow.textGender.Enabled := true
ENDIF
IF p1 = 2
GenderDataWindow.btnfirst.Enabled := true
GenderDataWindow.btnnext.Enabled := true
GenderDataWindow.btnprev.Enabled := true
GenderDataWindow.btnlast.Enabled := true
GenderDataWindow.btndel.Enabled := true
GenderDataWindow.btnclose.Enabled := true
GenderDataWindow.btnsave.Enabled := false
GenderDataWindow.btncancel.Enabled := false
GenderDataWindow.btnedit.Enabled := true
GenderDataWindow.btnadd.Enabled := true
GenderDataWindow.textGender.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class GenderDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( GenderDataWindow )
myout = self:showrecord()
GenderDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class GenderDataClass
GenderDataWindow.grid1Browse.DeleteAllItems ( )
GenderDataWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class GenderDataClass
GenderDataWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class GenderDataClass
GenderDataWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class GenderDataClass
cName := GenderDataWindow.textNameBrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
