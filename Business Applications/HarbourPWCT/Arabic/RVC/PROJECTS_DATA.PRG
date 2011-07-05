*---------------------------------------------------------------------------*
* Time : 15:57:15    Date : 07/05/2011
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
Function PROJECTS_DATA
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

Resistance R_PROJECTS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROJECTS_DATA_15speed1() code
class ProjectsClass From SYSTEMDATABASE
Data TableName init "projects"
Data column init "projectname"
Data PrimaryKey init "id"
Data columns init {"keywords","datecomplete","datereceived","ownerlocation","projectowner","projectname","ID"}
Data FindTitles init {"ßáãÇÊ ãÝÊÇÍíÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÇÓÊíáÇã","ãæÞÚ ÇáãÇáß","ÕÇÍÈ ÇáãÔÑæÚ","ÇÓã ÇáãÔÑæÚ","ßæÏ ÇáãÔÑæÚ"}
Data cProjectName init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method AutoGotoRecord
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method CheckFind
Method OnBeforeDelete
EndClass
Method showwindow Class ProjectsClass
IF .not. UsersObject:CheckPermission(83)
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProjectsWindow )
DEFINE WINDOW ProjectsWindow ;
AT 10 ,10 ;
WIDTH 1127 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÇáãÔÇÑíÚ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 520
@ 570 ,554 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,427 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,364 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,191 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,490 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,283 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,710 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,622 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,788 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,855 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                                   ÇáãÔÇÑíÚ" ;
WIDTH 1110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,249 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,146 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1090 ;
HEIGHT 160 ;
HEADERS self:FindTitles;
WIDTHS {170,120,120,150,200,200,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,781 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 190 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 6 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 274 ,688 LABEL lblProjectName ;
VALUE "ÇÓã ÇáãÔÑæÚ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 273 ,319 TEXTBOX textProjectName;
HEIGHT 30 ;
WIDTH 340 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

ProjectsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProjectsWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProjectsWindow
EndIF

Return 0
Method UserInterface2Class Class ProjectsClass
self:cProjectName := ProjectsWindow.textProjectName.Value
Return 0
Method Class2ADO Class ProjectsClass
self:oRS:fields:item("ProjectName"):value := self:cProjectName
Return 0
Method ADO2Class Class ProjectsClass
self:cProjectName := self:oRS:fields:item("ProjectName"):value
Return 0
Method Class2UserInterface Class ProjectsClass
ProjectsWindow.textProjectName.Value := self:cProjectName
Return 0
Method ClearRecord Class ProjectsClass
self:cProjectName := ""
Return 0
Method OpenDataWindow Class ProjectsClass
Local nvalue,myout
nvalue := ProjectsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProjectsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProjectsClass
myout = self:search()
ProjectsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProjectsClass
IF p1 = 1
ProjectsWindow.btnfirst.Enabled := false
ProjectsWindow.btnnext.Enabled := false
ProjectsWindow.btnprev.Enabled := false
ProjectsWindow.btnlast.Enabled := false
ProjectsWindow.btndel.Enabled := false
ProjectsWindow.btnclose.Enabled := false
ProjectsWindow.btnsave.Enabled := true
ProjectsWindow.btncancel.Enabled := true
ProjectsWindow.btnedit.Enabled := false
ProjectsWindow.btnadd.Enabled := false
ProjectsWindow.textProjectName.Enabled := true
ENDIF
IF p1 = 2
ProjectsWindow.btnfirst.Enabled := true
ProjectsWindow.btnnext.Enabled := true
ProjectsWindow.btnprev.Enabled := true
ProjectsWindow.btnlast.Enabled := true
ProjectsWindow.btndel.Enabled := true
ProjectsWindow.btnclose.Enabled := true
ProjectsWindow.btnsave.Enabled := false
ProjectsWindow.btncancel.Enabled := false
ProjectsWindow.btnedit.Enabled := true
ProjectsWindow.btnadd.Enabled := true
ProjectsWindow.textProjectName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class ProjectsClass
Local nIndex
nIndex := ProjectsWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method OnBeforeDelete Class ProjectsClass
Return myout
Method closewindow Class ProjectsClass
myout = self:disconnect()
ProjectsWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProjectsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProjectsWindow )
myout = self:showrecord()
ProjectsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProjectsClass
ProjectsWindow.grid1browse.DeleteAllItems ( )
ProjectsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProjectsClass
ProjectsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ProjectsClass
cName := ProjectsWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ProjectsClass
ProjectsWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
