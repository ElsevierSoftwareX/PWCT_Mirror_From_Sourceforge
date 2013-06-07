*---------------------------------------------------------------------------*
* Time : 14:36:38    Date : 06/07/2013
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
Function VACATIONS_DATA
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

Resistance R_VACATIONS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VACATIONS_DATA_18smart1() code
class VacationsDataBrowseClass From SystemDatabase
Data TableName init "Vacation_All"
Data column init "VacationDate"
Data PrimaryKey init "id"
Data columns init {"VacationDate","VacationFrom","VacationTo","VacationDays"}
Data nID init 0
Data cName init ""
Data ColTitles init {"Vacation Date","Vacation From","Vacation To","Vacation Days"}
Data ColWidths init {100,100,100,100}
Data cdatevacation init ""
Data cdatefrom init ""
Data cdateto init ""
Data nEmpID init 0
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
Method showwindow Class VacationsDataBrowseClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( VacationsDataBrowseWindow )
DEFINE WINDOW VacationsDataBrowseWindow ;
AT 10 ,10 ;
WIDTH 804 ;
HEIGHT 490 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Holidays" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 42 ,7 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 780 HEIGHT 358
@ 408 ,347 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,410 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,537 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,693 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,474 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,606 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 408 ,183 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 408 ,255 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 408 ,111 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 408 ,28 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                             Vacations" ;
WIDTH 780 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 357 ,14 LABEL lblAddress ;
VALUE "Vacation Days" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 354 ,152 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,14 LABEL lbl1browse ;
VALUE "Vacation Days" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 51 ,152 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 510 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 50 ,667 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 101 ,152 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 510 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 270 ,14 LABEL lblVacationDate ;
VALUE "Vacation Date " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 313 ,14 LABEL lblVacationFrom ;
VALUE "Vacation From " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 313 ,364 LABEL lblVacationTo ;
VALUE "Vacation To" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 268 ,152 DATEPICKER dateVacation;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 313 ,152 DATEPICKER dateFrom;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 313 ,482 DATEPICKER dateTo;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
VacationsDataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
VacationsDataBrowseWindow.Timer1.Enabled := false
ACTIVATE WINDOW VacationsDataBrowseWindow
EndIF
Return 0
Method UserInterface2Class Class VacationsDataBrowseClass
self:cName := VacationsDataBrowseWindow.textName.Value
self:cDateVacation := VacationsDataBrowseWindow.dateVacation.Value
self:cDateFrom := VacationsDataBrowseWindow.dateFrom.Value
self:cDateTo := VacationsDataBrowseWindow.dateTo.Value
self:cdateVacation = DTOC ( self:cdateVacation )
self:cdateFrom = DTOC ( self:cdateFrom )
self:cdateTo = DTOC ( self:cdateTo )
Return 0
Method Class2ADO Class VacationsDataBrowseClass
self:oRS:fields:item(alltrim("VacationDays")):value := self:cName
self:oRS:fields:item(alltrim("VacationDate")):value := self:cDateVacation
self:oRS:fields:item(alltrim("VacationFrom")):value := self:cDateFrom
self:oRS:fields:item(alltrim("VacationTo")):value := self:cDateTo
self:oRS:fields:item(alltrim("EmpID")):value := self:nEmpID
Return 0
Method ADO2Class Class VacationsDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("VacationDays")):value
self:cDateVacation := self:oRS:fields:item(alltrim("VacationDate")):value
self:cDateFrom := self:oRS:fields:item(alltrim("VacationFrom")):value
self:cDateTo := self:oRS:fields:item(alltrim("VacationTo")):value
Return 0
Method Class2UserInterface Class VacationsDataBrowseClass
VacationsDataBrowseWindow.textName.Value := self:cName
VacationsDataBrowseWindow.dateVacation.Value := ctod(self:cDateVacation)
VacationsDataBrowseWindow.dateFrom.Value := ctod(self:cDateFrom)
VacationsDataBrowseWindow.dateTo.Value := ctod(self:cDateTo)
Return 0
Method ClearRecord Class VacationsDataBrowseClass
self:cName := ""
self:cDateVacation := ""
self:cDateFrom := ""
self:cDateTo := ""
Return 0
Method setmode(p1) Class VacationsDataBrowseClass
IF p1 = 1
VacationsDataBrowseWindow.btnfirst.Enabled := false
VacationsDataBrowseWindow.btnnext.Enabled := false
VacationsDataBrowseWindow.btnprev.Enabled := false
VacationsDataBrowseWindow.btnlast.Enabled := false
VacationsDataBrowseWindow.btndel.Enabled := false
VacationsDataBrowseWindow.btnclose.Enabled := false
VacationsDataBrowseWindow.btnsave.Enabled := true
VacationsDataBrowseWindow.btncancel.Enabled := true
VacationsDataBrowseWindow.btnedit.Enabled := false
VacationsDataBrowseWindow.btnadd.Enabled := false
VacationsDataBrowseWindow.textName.Enabled := true
VacationsDataBrowseWindow.dateVacation.Enabled := true
VacationsDataBrowseWindow.dateFrom.Enabled := true
VacationsDataBrowseWindow.dateTo.Enabled := true
ENDIF
IF p1 = 2
VacationsDataBrowseWindow.btnfirst.Enabled := true
VacationsDataBrowseWindow.btnnext.Enabled := true
VacationsDataBrowseWindow.btnprev.Enabled := true
VacationsDataBrowseWindow.btnlast.Enabled := true
VacationsDataBrowseWindow.btndel.Enabled := true
VacationsDataBrowseWindow.btnclose.Enabled := true
VacationsDataBrowseWindow.btnsave.Enabled := false
VacationsDataBrowseWindow.btncancel.Enabled := false
VacationsDataBrowseWindow.btnedit.Enabled := true
VacationsDataBrowseWindow.btnadd.Enabled := true
VacationsDataBrowseWindow.textName.Enabled := false
VacationsDataBrowseWindow.dateVacation.Enabled := False
VacationsDataBrowseWindow.dateFrom.Enabled := False
VacationsDataBrowseWindow.dateTo.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class VacationsDataBrowseClass
myout = self:disconnect()
VacationsDataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class VacationsDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( VacationsDataBrowseWindow )
myout = self:showrecord()
VacationsDataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class VacationsDataBrowseClass
VacationsDataBrowseWindow.grid1Browse.DeleteAllItems ( )
VacationsDataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class VacationsDataBrowseClass
VacationsDataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class VacationsDataBrowseClass
VacationsDataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class VacationsDataBrowseClass
cName := VacationsDataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class VacationsDataBrowseClass
Local nvalue,myout
nvalue := VacationsDataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class VacationsDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class VacationsDataBrowseClass
myout = self:search()
VacationsDataBrowseWindow.Timer1.Enabled := false
Return 0

End Of Resistance

*-------------------------------------------------------------------*
