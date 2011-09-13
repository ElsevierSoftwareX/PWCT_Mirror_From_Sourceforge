*---------------------------------------------------------------------------*
* Time : 13:36:31    Date : 09/12/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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

Resistance R_GENDER_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GENDER_DATA_18smart1() code
class GenderDataClass From SYSTEMDATABASE
Data TableName init "Gender"
Data cid init ""
Data cCountry init ""
Data column init "Gender"
Data PrimaryKey init "id"
Data columns init {"ID","Gender"}
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
TITLE "ÃÓãÇÁ ÇáÇÞÓÇã" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\BACK.jpg";
STRETCH ;
WIDTH 750 HEIGHT 296
@ 350 ,370 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,243 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,180 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,12 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,307 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,105 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,522 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,435 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,602 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,677 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                             ÃÓãÇÁ ÇáÇÞÓÇã  " ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,417 LABEL lblCountry ;
VALUE "ÇáÞÓã" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,215 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,593 LABEL lbl1browse ;
VALUE "ÇáÞÓã" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,58 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,165 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã ÇáÞÓã"};
WIDTHS {100,270} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
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
self:cCountry := GenderDataWindow.textCountry.Value
Return 0
Method Class2ADO Class GenderDataClass
self:oRS:fields:item("Gender"):value := self:cCountry
Return 0
Method ADO2Class Class GenderDataClass
self:cCountry := self:oRS:fields:item("Gender"):value
Return 0
Method Class2UserInterface Class GenderDataClass
GenderDataWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class GenderDataClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class GenderDataClass
Local nvalue,myout
nvalue := GenderDataWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
GenderDataWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class GenderDataClass
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
GenderDataWindow.textCountry.Enabled := true
GenderDataWindow.textNameBrowse.Enabled := false
GenderDataWindow.btn1Browse.Enabled := false
GenderDataWindow.Grid1Browse.Enabled := false
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
GenderDataWindow.textCountry.Enabled := false
GenderDataWindow.btn1Browse.Enabled := True
GenderDataWindow.Grid1Browse.Enabled := True
GenderDataWindow.textNameBrowse.Enabled := true
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
GenderDataWindow.grid1browse.DeleteAllItems ( )
GenderDataWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class GenderDataClass
GenderDataWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class GenderDataClass
GenderDataWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class GenderDataClass
cName := GenderDataWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
