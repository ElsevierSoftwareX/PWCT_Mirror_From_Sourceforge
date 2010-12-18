*---------------------------------------------------------------------------*
* Time : 21:50:11    Date : 11/25/2010
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
Function PRODUCTION_DATA
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

Resistance R_PRODUCTION_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PRODUCTION_DATA_15speed1() code
class ProductionClass From SystemDatabase
Data TableName init "Production_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"noofpcs","finishtime","starttime","dateofinput","f_name","ordernumber"}
Data nOrderNumber init 0
Data OrderNumberitems init {}
Data OrderNumberitemsids init {}
Data nEmployee init 0
Data Employeeitems init {}
Data Employeeitemsids init {}
Data cStartTime init ""
Data cFinishTime init ""
Data cNoOfPCs init ""
Data cDateofInput init ""
Data cNotes init ""
Data FindTitles init {"ÇáÇäÌÇÒ","æÞÊ ÇáÇäÊåÇÁ","æÞÊ ÇáÈÏÇíÉ","ÇáÊÇÑíÎ","ÇÓã ÇáãæÙÝ","ÑÞã ÇáÏæÑÉ"}
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
Method GetSearchValue
Method settimer
Method CheckFind
EndClass
Method showwindow Class ProductionClass
IF .not. UserCan_WinProduction = 2
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProductionWindow )
DEFINE WINDOW ProductionWindow ;
AT 10 ,10 ;
WIDTH 1034 ;
HEIGHT 601 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ãÊÇÈÚÉ ÇäÌÇÒÇÊ ÇáãæÙÝíä" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,3 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1010 HEIGHT 470
@ 521 ,519 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,391 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,327 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,127 BUTTONEX btnClose;
CAPTION "ÎÑæÌ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,455 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,235 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 521 ,678 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 521 ,591 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 521 ,756 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 521 ,826 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                      ãÊÇÈÚÉ ÇäÌÇÒÇÊ ÇáãæÙÝíä " ;
WIDTH 1010 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 424 ,481 LABEL lblSourceName ;
VALUE "æÞÊ ÇáÈÏÁ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 424 ,332 TEXTBOX textStartTime;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,218 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,111 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 87 ,12 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 990 ;
HEIGHT 280 ;
HEADERS self:FindTitles;
WIDTHS {250,200,100,120,200,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,723 COMBOBOX comboFind;
ON CHANGE Self:CheckFind()  ;
WIDTH 190 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 6 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 424 ,213 LABEL lblSecUnitValue ;
VALUE "æÞÊ ÇáÇäÊåÇÁ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 424 ,64 TEXTBOX textFinishTime;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("Orders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 382 ,876 LABEL lblOrderNumber ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 382 ,659 COMBOBOX comboordernumber;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Employees","f_name",@self:employeeItems,"id",@self:employeeItemsIDS)
@ 382 ,481 LABEL lblEmployee ;
VALUE "ÇáãæÙÝ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 382 ,64 COMBOBOX comboemployee;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:Employeeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 466 ,483 LABEL lblNotes ;
VALUE "ãáÇÍÙÇÊ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 468 ,63 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 424 ,871 LABEL lblDateofInput ;
VALUE "ÊÇÑíÎ ÇáÇäÌÇÒ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 424 ,705 DATEPICKER datedateofinput;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 468 ,875 LABEL lblnoofpcs ;
VALUE "ÇáÇäÌÇÒ" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 468 ,577 TEXTBOX textnoofpcs;
HEIGHT 30 ;
WIDTH 280 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = RightToLeftControl ( "ProductionWindow","comboOrderNumber" )
myout = RightToLeftControl ( "ProductionWindow","comboEmployee" )
END WINDOW

ProductionWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProductionWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProductionWindow
EndIF

Return 0
Method UserInterface2Class Class ProductionClass
self:nOrderNumber := ProductionWindow.ComboOrderNumber.Value
self:nOrderNumber := self:OrderNumberItemsids[self:nOrderNumber]
self:nEmployee := ProductionWindow.ComboEmployee.Value
self:nEmployee := self:EmployeeItemsids[self:nEmployee ]
self:cStartTime := ProductionWindow.textStartTime.Value
self:cFinishTime := ProductionWindow.textFinishTime.Value
self:cNoOfPCS := ProductionWindow.textNoOfPCS.Value
self:cNotes := ProductionWindow.textNotes.Value
self:cDateofInput := ProductionWindow.dateDateofInput.Value
self:cDateofInput := dtoc(self:cDateofInput)
Return 0
Method Class2ADO Class ProductionClass
self:oRS:fields:item("employeeid"):value := self:nEmployee
self:oRS:fields:item("OrderNumberid"):value := self:nOrderNumber
self:oRS:fields:item("NoOfPCS"):value := self:cNoOfPCS
self:oRS:fields:item("Notes"):value := self:cNotes
self:oRS:fields:item("StartTime"):value := self:cStartTime
self:oRS:fields:item("FinishTime"):value := self:cFinishTime
self:oRS:fields:item("DateofInput"):value := self:cDateofInput
Return 0
Method ADO2Class Class ProductionClass
self:nEmployee := self:oRS:fields:item("EmployeeID"):value
self:nOrderNumber := self:oRS:fields:item("OrderNumberID"):value
self:cNOOFPCS := self:oRS:fields:item("NoOfPCS"):value
self:cNotes := self:oRS:fields:item("Notes"):value
self:cStartTime := self:oRS:fields:item("StartTime"):value
self:cFinishTime := self:oRS:fields:item("FinishTime"):value
self:cDateOfInput := self:oRS:fields:item("DateOfInput"):value
Return 0
Method Class2UserInterface Class ProductionClass
self:nOrderNumber = self:LookupIDToIndex(self:nOrderNumber,@self:OrderNumberItemsids)
ProductionWindow.ComboOrderNumber.Value := self:nOrderNumber
self:nEmployee = self:LookupIDToIndex(self:nEmployee,@self:EmployeeItemsids)
ProductionWindow.ComboEmployee.Value := self:nEmployee
ProductionWindow.textStartTime.Value := self:cStartTime
ProductionWindow.textFinishTime.Value := self:cFinishTime
ProductionWindow.textNoOfPCS.Value := self:cNoOfPCS
ProductionWindow.dateDateOfInput.Value := ctod(self:cDateOfInput)
ProductionWindow.textNotes.Value := self:cNotes
Return 0
Method ClearRecord Class ProductionClass
self:nOrderNumber := 0
self:nEmployee := 0
self:cStartTime := "1"
self:cFinishTime := "1"
self:cNoOfPCS := ""
self:cDateOfInput := ""
self:cNotes := ""
Return 0
Method OpenDataWindow Class ProductionClass
Local nvalue,myout
nvalue := ProductionWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProductionClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProductionClass
myout = self:search()
ProductionWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProductionClass
IF p1 = 1
ProductionWindow.btnfirst.Enabled := false
ProductionWindow.btnnext.Enabled := false
ProductionWindow.btnprev.Enabled := false
ProductionWindow.btnlast.Enabled := false
ProductionWindow.btndel.Enabled := false
ProductionWindow.btnclose.Enabled := false
ProductionWindow.btnsave.Enabled := true
ProductionWindow.btncancel.Enabled := true
ProductionWindow.btnedit.Enabled := false
ProductionWindow.btnadd.Enabled := false
ProductionWindow.comboOrderNumber.Enabled := true
ProductionWindow.comboEmployee.Enabled := true
ProductionWindow.textStartTime.Enabled := true
ProductionWindow.textFinishTime.Enabled := true
ProductionWindow.textNoOfPCS.Enabled := true
ProductionWindow.textNotes.Enabled := true
ProductionWindow.datedateofinput.Enabled := true
ENDIF
IF p1 = 2
ProductionWindow.btnfirst.Enabled := true
ProductionWindow.btnnext.Enabled := true
ProductionWindow.btnprev.Enabled := true
ProductionWindow.btnlast.Enabled := true
ProductionWindow.btndel.Enabled := true
ProductionWindow.btnclose.Enabled := true
ProductionWindow.btnsave.Enabled := false
ProductionWindow.btncancel.Enabled := false
ProductionWindow.btnedit.Enabled := true
ProductionWindow.btnadd.Enabled := true
ProductionWindow.comboOrderNumber.Enabled := false
ProductionWindow.comboEmployee.Enabled := false
ProductionWindow.textStartTime.Enabled := false
ProductionWindow.textFinishTime.Enabled := false
ProductionWindow.textNoOfPCS.Enabled := false
ProductionWindow.textNotes.Enabled := false
ProductionWindow.datedateofinput.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class ProductionClass
Local nIndex
nIndex := ProductionWindow.ComboFind.Value
Self:Column := Self:Columns[nIndex]
Return 0
Method closewindow Class ProductionClass
myout = self:disconnect()
ProductionWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProductionClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProductionWindow )
myout = self:showrecord()
ProductionWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProductionClass
ProductionWindow.grid1browse.DeleteAllItems ( )
ProductionWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProductionClass
ProductionWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ProductionClass
cName := ProductionWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ProductionClass
ProductionWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
