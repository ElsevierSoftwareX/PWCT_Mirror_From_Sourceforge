*---------------------------------------------------------------------------*
* Time : 20:53:29    Date : 09/09/2012
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
Function DEPARTMENT_DATA
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

Resistance R_DEPARTMENT_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEPARTMENT_DATA_18smart1() code
class DepartmentDataClass From SYSTEMDATABASE
Data TableName init "Department"
Data cid init ""
Data cDepartment init ""
Data column init "f_department"
Data PrimaryKey init "id"
Data columns init {"ID","f_department"}
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
Method showwindow Class DepartmentDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( DepartmentDataWindow )
DEFINE WINDOW DepartmentDataWindow ;
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
PICTURE GetStartUpFolder()+"\Images\BACK.jpg";
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
ON CHANGE Self:Search()  ;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 99 ,165 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã ÇáÞÓã"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

DepartmentDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
DepartmentDataWindow.Timer1.Enabled := false
ACTIVATE WINDOW DepartmentDataWindow
EndIF

Return 0
Method UserInterface2Class Class DepartmentDataClass
self:cDepartment := DepartmentDataWindow.textCountry.Value
Return 0
Method Class2ADO Class DepartmentDataClass
self:oRS:fields:item(alltrim("f_department")):value := self:cDepartment
Return 0
Method ADO2Class Class DepartmentDataClass
self:cDepartment := self:oRS:fields:item(alltrim("f_department")):value
Return 0
Method Class2UserInterface Class DepartmentDataClass
DepartmentDataWindow.textCountry.Value := self:cDepartment
Return 0
Method ClearRecord Class DepartmentDataClass
self:cDepartment := ""
Return 0
Method OpenDataWindow Class DepartmentDataClass
Local nvalue,myout
nvalue := DepartmentDataWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class DepartmentDataClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class DepartmentDataClass
myout = self:search()
DepartmentDataWindow.Timer1.Enabled := false
Return 0
Method closewindow Class DepartmentDataClass
myout = self:disconnect()
DepartmentDataWindow.Release ( )
Return 0
Method setmode(p1) Class DepartmentDataClass
IF p1 = 1
DepartmentDataWindow.btnfirst.Enabled := false
DepartmentDataWindow.btnnext.Enabled := false
DepartmentDataWindow.btnprev.Enabled := false
DepartmentDataWindow.btnlast.Enabled := false
DepartmentDataWindow.btndel.Enabled := false
DepartmentDataWindow.btnclose.Enabled := false
DepartmentDataWindow.btnsave.Enabled := true
DepartmentDataWindow.btncancel.Enabled := true
DepartmentDataWindow.btnedit.Enabled := false
DepartmentDataWindow.btnadd.Enabled := false
DepartmentDataWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
DepartmentDataWindow.btnfirst.Enabled := true
DepartmentDataWindow.btnnext.Enabled := true
DepartmentDataWindow.btnprev.Enabled := true
DepartmentDataWindow.btnlast.Enabled := true
DepartmentDataWindow.btndel.Enabled := true
DepartmentDataWindow.btnclose.Enabled := true
DepartmentDataWindow.btnsave.Enabled := false
DepartmentDataWindow.btncancel.Enabled := false
DepartmentDataWindow.btnedit.Enabled := true
DepartmentDataWindow.btnadd.Enabled := true
DepartmentDataWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class DepartmentDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( DepartmentDataWindow )
myout = self:showrecord()
DepartmentDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class DepartmentDataClass
DepartmentDataWindow.grid1browse.DeleteAllItems ( )
DepartmentDataWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class DepartmentDataClass
DepartmentDataWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class DepartmentDataClass
DepartmentDataWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class DepartmentDataClass
cName := DepartmentDataWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
