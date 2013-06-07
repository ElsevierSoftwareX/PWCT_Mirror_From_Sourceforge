*---------------------------------------------------------------------------*
* Time : 13:12:49    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function EMPDETAILSVALUES_DATA
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

Resistance R_EMPDETAILSVALUES_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPDETAILSVALUES_DATA_18smart1() code
class EmpDetailsValuesDataBrowseClass From SystemDatabase
Data TableName init "EmpDetailsValues_All"
Data column init "EmpDetails"
Data PrimaryKey init "id"
Data columns init {"EmpDetails","InfValue"}
Data nID init 0
Data cName init ""
Data ColTitles init {"Information","Value"}
Data ColWidths init {250,200}
Data empid init 0
Data complexsearch init ""
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
Method showwindow Class EmpDetailsValuesDataBrowseClass
IF .not. self:empid = 0
self:complexsearch := " and empid = " + alltrim(str(self:empid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( EmpDetailsValuesDataBrowseWindow )
DEFINE WINDOW EmpDetailsValuesDataBrowseWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 550 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Employee Details" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 40 ,6 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 420
@ 470 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 470 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 470 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                      Employee Details Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 417 ,45 LABEL lblAddress ;
VALUE "Value" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 416 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 490 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,25 LABEL lbl1browse ;
VALUE "Information" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,139 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 490 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 50 ,637 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,138 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 490 ;
HEIGHT 310 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW
EmpDetailsValuesDataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
EmpDetailsValuesDataBrowseWindow.Timer1.Enabled := false
ACTIVATE WINDOW EmpDetailsValuesDataBrowseWindow
EndIF
Return 0
Method UserInterface2Class Class EmpDetailsValuesDataBrowseClass
self:cName := EmpDetailsValuesDataBrowseWindow.textName.Value
Return 0
Method Class2ADO Class EmpDetailsValuesDataBrowseClass
self:oRS:fields:item(alltrim("InfValue")):value := self:cName
Return 0
Method ADO2Class Class EmpDetailsValuesDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("InfValue")):value
Return 0
Method Class2UserInterface Class EmpDetailsValuesDataBrowseClass
EmpDetailsValuesDataBrowseWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class EmpDetailsValuesDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class EmpDetailsValuesDataBrowseClass
IF p1 = 1
EmpDetailsValuesDataBrowseWindow.btnfirst.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnnext.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnprev.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnlast.Enabled := false
EmpDetailsValuesDataBrowseWindow.btndel.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnclose.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnsave.Enabled := true
EmpDetailsValuesDataBrowseWindow.btncancel.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnedit.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnadd.Enabled := false
EmpDetailsValuesDataBrowseWindow.textName.Enabled := true
ENDIF
IF p1 = 2
EmpDetailsValuesDataBrowseWindow.btnfirst.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnnext.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnprev.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnlast.Enabled := true
EmpDetailsValuesDataBrowseWindow.btndel.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnclose.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnsave.Enabled := false
EmpDetailsValuesDataBrowseWindow.btncancel.Enabled := false
EmpDetailsValuesDataBrowseWindow.btnedit.Enabled := true
EmpDetailsValuesDataBrowseWindow.btnadd.Enabled := true
EmpDetailsValuesDataBrowseWindow.textName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class EmpDetailsValuesDataBrowseClass
myout = self:disconnect()
EmpDetailsValuesDataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class EmpDetailsValuesDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( EmpDetailsValuesDataBrowseWindow )
myout = self:showrecord()
EmpDetailsValuesDataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class EmpDetailsValuesDataBrowseClass
EmpDetailsValuesDataBrowseWindow.grid1Browse.DeleteAllItems ( )
EmpDetailsValuesDataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class EmpDetailsValuesDataBrowseClass
EmpDetailsValuesDataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class EmpDetailsValuesDataBrowseClass
EmpDetailsValuesDataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class EmpDetailsValuesDataBrowseClass
cName := EmpDetailsValuesDataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class EmpDetailsValuesDataBrowseClass
Local nvalue,myout
nvalue := EmpDetailsValuesDataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class EmpDetailsValuesDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class EmpDetailsValuesDataBrowseClass
myout = self:search()
EmpDetailsValuesDataBrowseWindow.Timer1.Enabled := false
Return 0

End Of Resistance

*-------------------------------------------------------------------*
