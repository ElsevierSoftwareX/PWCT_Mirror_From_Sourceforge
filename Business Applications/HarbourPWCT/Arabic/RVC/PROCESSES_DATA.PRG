*---------------------------------------------------------------------------*
* Time : 05:22:42    Date : 07/19/2011
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
Function PROCESSES_DATA
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

Resistance R_PROCESSES_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROCESSES_DATA_15speed1() code
class ProcessesClass From SYSTEMDATABASE
Data cWindowName init "ProcessesDataWindow"
Data TableName init "Process_All"
Data cid init ""
Data cCountry init ""
Data column init "ProcessName"
Data PrimaryKey init "id"
Data columns init {"Gender","Duration","ProcessName","ID"}
Data cDuration init ""
Data departmentitemsids init {}
Data departmentitems init {}
Data ndepartment init 0
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
Method CheckData
EndClass
Method showwindow Class ProcessesClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 878 ;
HEIGHT 570 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "«·«Ã—«¡« " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 41 ,1 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\BACK.jpg";
STRETCH ;
WIDTH 860 HEIGHT 446
@ 492 ,424 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,297 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,234 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,66 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,361 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,159 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,576 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 492 ,489 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 492 ,656 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 492 ,731 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                                       «·«Ã—«¡« " ;
WIDTH 860 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 369 ,655 LABEL lblCountry ;
VALUE "«”„ «·«Ã—«¡" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 367 ,198 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 440 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,646 LABEL lbl1browse ;
VALUE "«·«Ã—«¡" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,220 TEXTBOX textNamebrowse;
ON ENTER self:Search()  ;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,111 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,15 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 830 ;
HEIGHT 260 ;
HEADERS {"«·ﬁ”„","„œ… «·«Ã—«¡","«·«Ã—«¡","ﬂÊœ «·«Ã—«¡"};
WIDTHS {300,100,300,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
@ 442 ,655 LABEL lblDuration ;
VALUE "„œ… «·«Ã—«¡ / ⁄œœ «·«Ì«„" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 444 ,568 TEXTBOX textDuration;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("gender","gender",@self:departmentItems,"id",@self:departmentItemsIDS)
@ 406 ,655 LABEL lbldepartment ;
VALUE "«·ﬁ”„" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 408 ,198 COMBOBOX combodepartment;
WIDTH 440 ;
HEIGHT 100;
ITEMS self:departmentitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
RightToLeftControl ( self:cWindowName,"ComboDepartment" )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class ProcessesClass
self:cCountry := &(self:cWindowName).textCountry.Value
self:cDuration := &(self:cWindowName).textDuration.Value
self:nDepartment := &(self:cWindowName).comboDepartment.Value
self:nDepartment := self:DepartmentItemsIDS[self:nDepartment]
Return 0
Method Class2ADO Class ProcessesClass
self:oRS:fields:item("ProcessName"):value := self:cCountry
self:oRS:fields:item("Duration"):value := self:cDuration
self:oRS:fields:item("GenderID"):value := self:nDepartment
Return 0
Method ADO2Class Class ProcessesClass
self:cCountry := self:oRS:fields:item("ProcessName"):value
self:cDuration := self:oRS:fields:item("Duration"):value
self:nDepartment := self:oRS:fields:item("GenderID"):value
Return 0
Method Class2UserInterface Class ProcessesClass
&(self:cWindowName).textCountry.Value := self:cCountry
&(self:cWindowName).textDuration.Value := self:cDuration
self:nDepartment = self:LookupIDToIndex(self:nDepartment,@self:DepartmentItemsIDS)
&(self:cWindowName).comboDepartment.Value := self:nDepartment
Return 0
Method ClearRecord Class ProcessesClass
self:cCountry := ""
self:cDuration := ""
self:nDepartment := 0
Return 0
Method OpenDataWindow Class ProcessesClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProcessesClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProcessesClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProcessesClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textCountry.Enabled := true
&(self:cWindowName).textDuration.Enabled := true
&(self:cWindowName).ComboDepartment.Enabled := true
&(self:cWindowName).textNameBrowse.Enabled := False
&(self:cWindowName).Btn1Browse.Enabled := False
&(self:cWindowName).Grid1Browse.Enabled := False
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textCountry.Enabled := false
&(self:cWindowName).textDuration.Enabled := false
&(self:cWindowName).ComboDepartment.Enabled := False
&(self:cWindowName).textNameBrowse.Enabled := True
&(self:cWindowName).Btn1Browse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class ProcessesClass
Local myRet,cValue,nValue
myRet := True
cValue := &(self:cWindowName).textCountry.Value
cValue := cValue
IF cValue == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· «”„ «·«Ã—«¡","⁄›Ê«")
myRet := False
ENDIF
cValue := &(self:cWindowName).textDuration.Value
nValue = VAL ( cValue )
IF nValue < 1
MyOut := MSGBOX("„œ… «·«Ã—«¡ ·«  ﬁ· ⁄‰ ÌÊ„ Ê«Õœ","⁄›Ê«")
myRet := False
ENDIF
Return myret
Method closewindow Class ProcessesClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class ProcessesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProcessesClass
&(self:cWindowName).grid1browse.DeleteAllItems ( )
&(self:cWindowName).grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProcessesClass
&(self:cWindowName).grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProcessesClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProcessesClass
cName := &(self:cWindowName).textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
