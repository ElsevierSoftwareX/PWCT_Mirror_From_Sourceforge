*---------------------------------------------------------------------------*
* Time : 23:08:34    Date : 07/12/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function PROCESSSTATUS_DATA
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

Resistance R_PROCESSSTATUS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROCESSSTATUS_DATA_15speed1() code
class ProcessStatusClass From SYSTEMDATABASE
Data TableName init "ProcessStatus"
Data cid init ""
Data cCountry init ""
Data column init "ProcessStatus"
Data PrimaryKey init "id"
Data columns init {"ID","ProcessStatus"}
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
Method showwindow Class ProcessStatusClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProcessStatusWindow )
DEFINE WINDOW ProcessStatusWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "ÊÚÑíÝ ÍÇáÇÊ ÇáÇÌÑÇÁ" ;
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
VALUE "                                                            ÍÇáÇÊ ÇáÇÌÑÇÁ" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,414 LABEL lblCountry ;
VALUE "ÇáÍÇáÉ" ;
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
VALUE "ÇáÍÇáÉ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
ON ENTER self:Search()  ;
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
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"ßæÏ ÇáÇÌÑÇÁ","ÍÇáÉ ÇáÇÌÑÇÁ"};
WIDTHS {100,270} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

ProcessStatusWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProcessStatusWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProcessStatusWindow
EndIF

Return 0
Method UserInterface2Class Class ProcessStatusClass
self:cCountry := ProcessStatusWindow.textCountry.Value
Return 0
Method Class2ADO Class ProcessStatusClass
self:oRS:fields:item("ProcessStatus"):value := self:cCountry
Return 0
Method ADO2Class Class ProcessStatusClass
self:cCountry := self:oRS:fields:item("ProcessStatus"):value
Return 0
Method Class2UserInterface Class ProcessStatusClass
ProcessStatusWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class ProcessStatusClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class ProcessStatusClass
Local nvalue,myout
nvalue := ProcessStatusWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ProcessStatusWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProcessStatusClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProcessStatusClass
myout = self:search()
ProcessStatusWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProcessStatusClass
IF p1 = 1
ProcessStatusWindow.btnfirst.Enabled := false
ProcessStatusWindow.btnnext.Enabled := false
ProcessStatusWindow.btnprev.Enabled := false
ProcessStatusWindow.btnlast.Enabled := false
ProcessStatusWindow.btndel.Enabled := false
ProcessStatusWindow.btnclose.Enabled := false
ProcessStatusWindow.btnsave.Enabled := true
ProcessStatusWindow.btncancel.Enabled := true
ProcessStatusWindow.btnedit.Enabled := false
ProcessStatusWindow.btnadd.Enabled := false
ProcessStatusWindow.textCountry.Enabled := true
ProcessStatusWindow.textNameBrowse.Enabled := False
ProcessStatusWindow.btn1Browse.Enabled := False
ProcessStatusWindow.Grid1Browse.Enabled := False
ENDIF
IF p1 = 2
ProcessStatusWindow.btnfirst.Enabled := true
ProcessStatusWindow.btnnext.Enabled := true
ProcessStatusWindow.btnprev.Enabled := true
ProcessStatusWindow.btnlast.Enabled := true
ProcessStatusWindow.btndel.Enabled := true
ProcessStatusWindow.btnclose.Enabled := true
ProcessStatusWindow.btnsave.Enabled := false
ProcessStatusWindow.btncancel.Enabled := false
ProcessStatusWindow.btnedit.Enabled := true
ProcessStatusWindow.btnadd.Enabled := true
ProcessStatusWindow.textCountry.Enabled := false
ProcessStatusWindow.textNameBrowse.Enabled := True
ProcessStatusWindow.btn1Browse.Enabled := True
ProcessStatusWindow.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ProcessStatusClass
myout = self:disconnect()
ProcessStatusWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProcessStatusClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProcessStatusWindow )
myout = self:showrecord()
ProcessStatusWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProcessStatusClass
ProcessStatusWindow.grid1browse.DeleteAllItems ( )
ProcessStatusWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProcessStatusClass
ProcessStatusWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProcessStatusClass
ProcessStatusWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProcessStatusClass
cName := ProcessStatusWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
