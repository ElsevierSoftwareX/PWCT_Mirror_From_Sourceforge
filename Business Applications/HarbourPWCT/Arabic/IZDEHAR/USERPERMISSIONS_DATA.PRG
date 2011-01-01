*---------------------------------------------------------------------------*
* Time : 03:47:13    Date : 11/26/2010
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
Function USERPERMISSIONS_DATA
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

Resistance R_USERPERMISSIONS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USERPERMISSIONS_DATA_15speed1() code
class UserPermissionsClass From SystemDatabase
Data TableName init "UserPermissionsValues_All"
Data column init "PermissionName"
Data PrimaryKey init "id"
Data columns init {"Status","PermissionName"}
Data nID init 0
Data cName init ""
Data ColTitles init {"«·Õ«·…","«”„ «·’·«ÕÌ…"}
Data ColWidths init {120,300}
Data Userid init 0
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
Method MySet
EndClass
Method showwindow Class UserPermissionsClass
IF .not. self:Userid = 0
self:complexsearch := " and Userid = " + alltrim(str(self:Userid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( UserPermissionsWindow )
DEFINE WINDOW UserPermissionsWindow ;
AT 10 ,10 ;
WIDTH 710 ;
HEIGHT 574 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "÷»ÿ ’·«ÕÌ«  «·„” Œœ„Ì‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 690 HEIGHT 500
@ 205 ,26 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                  ’·«ÕÌ«  «·„” Œœ„Ì‰" ;
WIDTH 690 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 46 ,585 LABEL lbl1browse ;
VALUE "«·’·«ÕÌ…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 43 ,139 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 44 ,26 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 77 ,138 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 450 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
VALUE 1 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 102 ,26 BUTTONEX btnset1;
CAPTION "‰⁄„";
ON CLICK self:MySet("1")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 149 ,26 BUTTONEX btnset2;
CAPTION "·«";
ON CLICK self:MySet("2")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

UserPermissionsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
UserPermissionsWindow.Timer1.Enabled := false
ACTIVATE WINDOW UserPermissionsWindow
EndIF

Return 0
Method UserInterface2Class Class UserPermissionsClass
Return 0
Method Class2ADO Class UserPermissionsClass
self:oRS:fields:item("PermissionValue"):value := self:cName
Return 0
Method ADO2Class Class UserPermissionsClass
self:cName := self:oRS:fields:item("PermissionValue"):value
self:cName = STR ( self:cName )
Return 0
Method Class2UserInterface Class UserPermissionsClass
Return 0
Method ClearRecord Class UserPermissionsClass
self:cName := ""
Return 0
Method setmode(p1) Class UserPermissionsClass
IF p1 = 1
UserPermissionsWindow.btnclose.Enabled := false
ENDIF
IF p1 = 2
UserPermissionsWindow.btnclose.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method MySet(p1) Class UserPermissionsClass
nValue := UserPermissionsWindow.Grid1Browse.Value
IF nValue = 0
MyOut := MSGBOX("You must select permission first","Sorry")
Return 0
ENDIF
myout = self:OpenDataWindow()
self:cName := p1
myout = self:UserInterface2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
IF p1 = "1"
UserPermissionsWindow.Grid1Browse.cell(nValue,2) := "Yes"
ELSE
UserPermissionsWindow.Grid1Browse.cell(nValue,2) := "No"
ENDIF
nMax := UserPermissionsWindow.Grid1browse.ItemCount
IF nValue < nMax
UserPermissionsWindow.Grid1Browse.Value := nValue+1
ENDIF
IF nValue = nMax .and. .not. nMax = 1
UserPermissionsWindow.Grid1Browse.Value := nValue-1
ENDIF
myout = self:OpenDataWindow()
Return 0
Method closewindow Class UserPermissionsClass
myout = self:disconnect()
UserPermissionsWindow.Release ( )
Return 0
Method AutoGotoRecord Class UserPermissionsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( UserPermissionsWindow )
myout = self:showrecord()
UserPermissionsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class UserPermissionsClass
UserPermissionsWindow.grid1Browse.DeleteAllItems ( )
UserPermissionsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class UserPermissionsClass
UserPermissionsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class UserPermissionsClass
UserPermissionsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class UserPermissionsClass
cName := UserPermissionsWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class UserPermissionsClass
Local nvalue,myout
nvalue := UserPermissionsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class UserPermissionsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class UserPermissionsClass
myout = self:search()
UserPermissionsWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
