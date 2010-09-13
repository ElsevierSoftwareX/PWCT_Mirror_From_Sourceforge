*---------------------------------------------------------------------------*
* Time : 17:45:44    Date : 09/13/2010
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
Function USERS_DATA
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

Resistance R_USERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USERS_DATA_15speed1() code
class UsersClass From SYSTEMDATABASE
Data TableName init "Users"
Data nID init 0
Data column init "UserName"
Data PrimaryKey init "id"
Data columns init {"ID","UserName"}
Data nAgreementRole init 0
Data AgreementRoleitems init {}
Data AgreementRoleitemsids init {}
Data nSystemAdmin init 0
Data SystemAdminitems init {}
Data SystemAdminitemsids init {}
Data cUserName init ""
Data cPassword init ""
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
Method settimer
Method SearchAdd
Method GetSearchValue
EndClass
Method showwindow Class UsersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( UsersWindow )
DEFINE WINDOW UsersWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 533 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ãÓÊÎÏãíä ÇáäÙÇã" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 390
@ 450 ,437 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,311 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,246 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,74 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,375 BUTTONEX btnPrev;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,167 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,594 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,506 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,682 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,749 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                               ÇáãÓÊÎÏãíä" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 350 ,591 LABEL lblUserName ;
VALUE "ÇÓã ÇáãÓÊÎÏã" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 349 ,180 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 54 ,719 LABEL lbl1browse ;
VALUE "ÇÓã ÇáãÓÊÎÏã" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,175 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,72 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ÑÞã","ÇÓã ÇáãÓÊÎÏã"};
WIDTHS {50,250} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 389 ,591 LABEL lblPassword ;
VALUE "ßáãÉ ÇáÓÑ" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 389 ,180 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

myout = self:LoadLookupTable("AgreementRoles","AgreementRole",@self:AgreementRoleItems,"id",@self:AgreementRoleItemsIDS)
@ 263 ,591 LABEL lblAgreementRole ;
VALUE "ÕáÇÍíÇÊ ÇáãæÇÝÞÉ Úáì ÏæÑÉ" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,180 COMBOBOX comboAgreementRole;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:AgreementRoleitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("choice","status",@self:SystemAdminItems,"id",@self:SystemAdminItemsIDS)
@ 304 ,591 LABEL lblSystemAdmin ;
VALUE "ãÏíÑ ÇáäÙÇã" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,180 COMBOBOX comboSystemAdmin;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:SystemAdminitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

UsersWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
UsersWindow.Timer1.Enabled := false
ACTIVATE WINDOW UsersWindow
EndIF

Return 0
Method UserInterface2Class Class UsersClass
self:cUserName := UsersWindow.textUserName.Value
self:cPassWord := UsersWindow.textPassWord.Value
self:nAgreementRole := UsersWindow.ComboAgreementRole.Value
self:nAgreementRole := self:AgreementRoleitemsids[self:nAgreementRole]
self:nSystemAdmin := UsersWindow.ComboSystemAdmin.Value
self:nSystemAdmin := self:SystemAdminItemsids[self:nSystemAdmin]
Return 0
Method Class2ADO Class UsersClass
self:oRS:fields:item("UserName"):value := self:cUserName
self:oRS:fields:item("PassWord"):value := self:cPassWord
self:oRS:fields:item("AgreementRole"):value := self:nAgreementRole
self:oRS:fields:item("SystemAdmin"):value := self:nSystemAdmin
Return 0
Method ADO2Class Class UsersClass
self:cUserName := self:oRS:fields:item("UserName"):value
self:cPassWord := self:oRS:fields:item("PassWord"):value
self:nAgreementRole := self:oRS:fields:item("AgreementRole"):value
self:nSystemAdmin := self:oRS:fields:item("SystemAdmin"):value
Return 0
Method Class2UserInterface Class UsersClass
UsersWindow.textUserName.Value := self:cUserName
UsersWindow.textPassWord.Value := self:cPassWord
self:nAgreementRole = self:LookupIDToIndex(self:nAgreementRole,@self:AgreementRoleItemsids)
UsersWindow.ComboAgreementRole.Value := self:nAgreementRole
self:nSystemAdmin = self:LookupIDToIndex(self:nSystemAdmin,@self:SystemAdminItemsids)
UsersWindow.ComboSystemAdmin.Value := self:nSystemAdmin
Return 0
Method ClearRecord Class UsersClass
self:cUserName := ""
self:cPassWord := ""
self:nAgreementRole := 0
self:nSystemAdmin := 0
Return 0
Method OpenDataWindow Class UsersClass
Local nvalue,myout
nvalue := UsersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class UsersClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method setmode(p1) Class UsersClass
IF p1 = 1
UsersWindow.btnfirst.Enabled := false
UsersWindow.btnnext.Enabled := false
UsersWindow.btnprev.Enabled := false
UsersWindow.btnlast.Enabled := false
UsersWindow.btndel.Enabled := false
UsersWindow.btnclose.Enabled := false
UsersWindow.btnsave.Enabled := true
UsersWindow.btncancel.Enabled := true
UsersWindow.btnedit.Enabled := false
UsersWindow.btnadd.Enabled := false
UsersWindow.textUserName.Enabled := true
UsersWindow.textPassWord.Enabled := true
UsersWindow.comboAgreementRole.Enabled := true
UsersWindow.comboSystemAdmin.Enabled := true
ENDIF
IF p1 = 2
UsersWindow.btnfirst.Enabled := true
UsersWindow.btnnext.Enabled := true
UsersWindow.btnprev.Enabled := true
UsersWindow.btnlast.Enabled := true
UsersWindow.btndel.Enabled := true
UsersWindow.btnclose.Enabled := true
UsersWindow.btnsave.Enabled := false
UsersWindow.btncancel.Enabled := false
UsersWindow.btnedit.Enabled := true
UsersWindow.btnadd.Enabled := true
UsersWindow.textUserName.Enabled := false
UsersWindow.textPassWord.Enabled := false
UsersWindow.comboAgreementRole.Enabled := false
UsersWindow.comboSystemAdmin.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class UsersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( UsersWindow )
myout = self:showrecord()
UsersWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method closewindow Class UsersClass
myout = self:disconnect()
UsersWindow.Release ( )
Return 0
Method BeforeSearch Class UsersClass
UsersWindow.grid1browse.DeleteAllItems ( )
UsersWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class UsersClass
UsersWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class UsersClass
UsersWindow.Timer1.Enabled := p1
Return 0
Method mytimer Class UsersClass
myout = self:search()
UsersWindow.Timer1.Enabled := false
Return 0
Method GetSearchValue Class UsersClass
cName := UsersWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
