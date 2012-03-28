*---------------------------------------------------------------------------*
* Time : 08:18:51    Date : 11/01/2011
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

Resistance R_USERPERMISSIONS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USERPERMISSIONS_DATA_18smart1() code
class UserPermissionsClass From SystemDatabase
Data cWindowName init "UsersPermissionsWindow"
Data TableName init "UserPermissionsValues_All"
Data column init "PermissionName"
Data PrimaryKey init "id"
Data columns init {"PermissionName","Status"}
Data nID init 0
Data cName init ""
Data ColTitles init {"Permission Name","Status"}
Data ColWidths init {430,85}
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
Method ReverseStatus
EndClass
Method showwindow Class UserPermissionsClass
IF .not. self:Userid = 0
self:complexsearch := " and Userid = " + alltrim(str(self:Userid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 798 ;
HEIGHT 574 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Users Permissions" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 780 HEIGHT 500
@ 205 ,676 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   Users Permissions" ;
WIDTH 780 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 46 ,25 LABEL lbl1browse ;
VALUE "Permission" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 43 ,129 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 540 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 44 ,676 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 77 ,128 GRID Grid1browse;
ON DBLCLICK self:ReverseStatus()  ;
WIDTH 540 ;
HEIGHT 450 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
VALUE 1 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 102 ,676 BUTTONEX btnset1;
CAPTION "Yes";
ON CLICK self:MySet("1")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 149 ,676 BUTTONEX btnset2;
CAPTION "No";
ON CLICK self:MySet("2")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
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
&(self:cWindowName).btnclose.Enabled := false
ENDIF
IF p1 = 2
&(self:cWindowName).btnclose.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method MySet(p1) Class UserPermissionsClass
nValue := &(self:cWindowName).Grid1Browse.Value
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
&(self:cWindowName).Grid1Browse.cell(nValue,2) := "Yes"
ELSE
&(self:cWindowName).Grid1Browse.cell(nValue,2) := "No"
ENDIF
nMax := &(self:cWindowName).Grid1browse.ItemCount
IF nValue < nMax
&(self:cWindowName).Grid1Browse.Value := nValue+1
ENDIF
IF nValue = nMax .and. .not. nMax = 1
&(self:cWindowName).Grid1Browse.Value := 1
ENDIF
myout = self:OpenDataWindow()
Return 0
Method ReverseStatus Class UserPermissionsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
tValue := &(self:cWindowName).Grid1Browse.cell(nValue,1)
IF tvalue = "Yes"
myout = self:myset("2")
ELSE
myout = self:myset("1")
ENDIF
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method closewindow Class UserPermissionsClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class UserPermissionsClass
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
Method BeforeSearch Class UserPermissionsClass
&(self:cWindowName).grid1Browse.DeleteAllItems ( )
&(self:cWindowName).grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class UserPermissionsClass
&(self:cWindowName).grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class UserPermissionsClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class UserPermissionsClass
cName := &(self:cWindowName).textNameBrowse.Value
Return cName
Method OpenDataWindow Class UserPermissionsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
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
&(self:cWindowName).Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
