*---------------------------------------------------------------------------*
* Time : 18:25:14    Date : 12/11/2012
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
Function SCHEDULING_DATA
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

Resistance R_SCHEDULING_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SCHEDULING_DATA_18smart1() code
class SchedulingClass From SYSTEMDATABASE
Data TableName init "Scheduling"
Data cid init ""
Data cCountry init ""
Data column init "SchedulingOpinion"
Data PrimaryKey init "id"
Data columns init {"ID","SchedulingOpinion"}
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
Method showwindow Class SchedulingClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( SchedulingWindow )
DEFINE WINDOW SchedulingWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "ÇÑÇÁ ãÏíÑ ÇáÌÏæáÉ æÇáãÊÇÈÚÉ" ;
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
VALUE "                                                             ÇÑÇÁ ãÏíÑ ÇáÌÏæáÉ æÇáãÊÇÈÚÉ" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,417 LABEL lblCountry ;
VALUE "ÇáÑÇì" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,215 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,593 LABEL lbl1browse ;
VALUE "ÇáÑÇì" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
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
HEADERS {"ÑÞã","ÇáÑÇì"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

SchedulingWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
SchedulingWindow.Timer1.Enabled := false
ACTIVATE WINDOW SchedulingWindow
EndIF

Return 0
Method UserInterface2Class Class SchedulingClass
self:cCountry := SchedulingWindow.textCountry.Value
Return 0
Method Class2ADO Class SchedulingClass
self:oRS:fields:item(alltrim("SchedulingOpinion")):value := self:cCountry
Return 0
Method ADO2Class Class SchedulingClass
self:cCountry := self:oRS:fields:item(alltrim("SchedulingOpinion")):value
Return 0
Method Class2UserInterface Class SchedulingClass
SchedulingWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class SchedulingClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class SchedulingClass
Local nvalue,myout
nvalue := SchedulingWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class SchedulingClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class SchedulingClass
myout = self:search()
SchedulingWindow.Timer1.Enabled := false
Return 0
Method closewindow Class SchedulingClass
myout = self:disconnect()
SchedulingWindow.Release ( )
Return 0
Method setmode(p1) Class SchedulingClass
IF p1 = 1
SchedulingWindow.btnfirst.Enabled := false
SchedulingWindow.btnnext.Enabled := false
SchedulingWindow.btnprev.Enabled := false
SchedulingWindow.btnlast.Enabled := false
SchedulingWindow.btndel.Enabled := false
SchedulingWindow.btnclose.Enabled := false
SchedulingWindow.btnsave.Enabled := true
SchedulingWindow.btncancel.Enabled := true
SchedulingWindow.btnedit.Enabled := false
SchedulingWindow.btnadd.Enabled := false
SchedulingWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
SchedulingWindow.btnfirst.Enabled := true
SchedulingWindow.btnnext.Enabled := true
SchedulingWindow.btnprev.Enabled := true
SchedulingWindow.btnlast.Enabled := true
SchedulingWindow.btndel.Enabled := true
SchedulingWindow.btnclose.Enabled := true
SchedulingWindow.btnsave.Enabled := false
SchedulingWindow.btncancel.Enabled := false
SchedulingWindow.btnedit.Enabled := true
SchedulingWindow.btnadd.Enabled := true
SchedulingWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class SchedulingClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( SchedulingWindow )
myout = self:showrecord()
SchedulingWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class SchedulingClass
SchedulingWindow.grid1browse.DeleteAllItems ( )
SchedulingWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class SchedulingClass
SchedulingWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SchedulingClass
SchedulingWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SchedulingClass
cName := SchedulingWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
