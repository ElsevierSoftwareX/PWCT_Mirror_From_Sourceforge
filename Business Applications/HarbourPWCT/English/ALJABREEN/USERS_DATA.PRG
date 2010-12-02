*---------------------------------------------------------------------------*
* Time : 18:38:57    Date : 12/02/2010
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
Method SetMore
Method MoreSave
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
TITLE "Users" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 390
@ 450 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,515 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 450 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                               Users" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 353 ,73 LABEL lblUserName ;
VALUE "User Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 350 ,290 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 52 ,68 LABEL lbl1browse ;
VALUE "User Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,175 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 52 ,715 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ID","User Name"};
WIDTHS {50,150} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 392 ,73 LABEL lblPassword ;
VALUE "Password" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,291 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD

myout = self:LoadLookupTable("AgreementRoles","AgreementRole",@self:AgreementRoleItems,"id",@self:AgreementRoleItemsIDS)
@ 266 ,73 LABEL lblAgreementRole ;
VALUE "Agreement Role" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,290 COMBOBOX comboAgreementRole;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:AgreementRoleitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("choice","status",@self:SystemAdminItems,"id",@self:SystemAdminItemsIDS)
@ 307 ,73 LABEL lblSystemAdmin ;
VALUE "System Admin" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,290 COMBOBOX comboSystemAdmin;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:SystemAdminitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 7 ,775 BUTTONEX btnMore;
CAPTION "More";
ON CLICK self:setmore()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
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
Method mytimer Class UsersClass
myout = self:search()
UsersWindow.Timer1.Enabled := false
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
Method SetMore Class UsersClass
if !iswindowdefined( winMore )
DEFINE WINDOW winMore ;
AT 10 ,10 ;
WIDTH 644 ;
HEIGHT 535 ;
ICON "PWCTICON" ;
TITLE "More" ;
MODAL ;
BACKCOLOR {236,233,216}

@ 459 ,542 BUTTONEX btnClose;
CAPTION "Ok";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK Self:MoreSave()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ -2 ,-4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 641 HEIGHT 451
@ 24 ,38 CHECKBOX check1;
CAPTION "Employees";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 76 ,38 CHECKBOX check2;
CAPTION "Suppliers";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 128 ,38 CHECKBOX check3;
CAPTION "Customers";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 180 ,38 CHECKBOX check4;
CAPTION "Warehouse";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,38 CHECKBOX check5;
CAPTION "Orders";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 284 ,38 CHECKBOX check6;
CAPTION "Agreement";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 336 ,38 CHECKBOX check7;
CAPTION "Production";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 388 ,38 CHECKBOX check8;
CAPTION "Dispose";
WIDTH 250;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 4 ,326 CHECKBOX checkw1;
CAPTION "Skin warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 45 ,326 CHECKBOX checkw2;
CAPTION "Wet blue 1 warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 86 ,326 CHECKBOX checkw3;
CAPTION "Wet blue 2 warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 127 ,326 CHECKBOX checkw4;
CAPTION "Crust warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 168 ,326 CHECKBOX checkw5;
CAPTION "Finish warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 209 ,326 CHECKBOX checkw6;
CAPTION "Chemicals warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 250 ,326 CHECKBOX checkw7;
CAPTION "Shoes row warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 291 ,326 CHECKBOX checkw8;
CAPTION "Jacket row warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 332 ,326 CHECKBOX checkw9;
CAPTION "General warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 373 ,326 CHECKBOX checkw10;
CAPTION "Shoes products warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 414 ,326 CHECKBOX checkw11;
CAPTION "Jacket products warehouse";
WIDTH 260;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

winMore.Center ( )
vw1 := self:oRS:fields:item("WinEmployees"):value
vw2 := self:oRS:fields:item("WinSuppliers"):value
vw3 := self:oRS:fields:item("WinCustomers"):value
vw4 := self:oRS:fields:item("WinWarehouse"):value
vw5 := self:oRS:fields:item("WinOrders"):value
vw6 := self:oRS:fields:item("WinAgreement"):value
vw7 := self:oRS:fields:item("WinProduction"):value
vw8 := self:oRS:fields:item("WinDispose"):value
IF vw1 = 2
winMore.check1.Value := true
ELSE
winMore.check1.Value := false
ENDIF
IF vw2 = 2
winMore.check2.Value := true
ELSE
winMore.check2.Value := false
ENDIF
IF vw3 = 2
winMore.check3.Value := true
ELSE
winMore.check3.Value := false
ENDIF
IF vw4 = 2
winMore.check4.Value := true
ELSE
winMore.check4.Value := false
ENDIF
IF vw5 = 2
winMore.check5.Value := true
ELSE
winMore.check5.Value := false
ENDIF
IF vw6 = 2
winMore.check6.Value := true
ELSE
winMore.check6.Value := false
ENDIF
IF vw7 = 2
winMore.check7.Value := true
ELSE
winMore.check7.Value := false
ENDIF
IF vw8 = 2
winMore.check8.Value := true
ELSE
winMore.check8.Value := false
ENDIF
nw1 := self:oRS:fields:item("nWarehouse1"):value
nw2 := self:oRS:fields:item("nWarehouse2"):value
nw3 := self:oRS:fields:item("nWarehouse3"):value
nw4 := self:oRS:fields:item("nWarehouse4"):value
nw5 := self:oRS:fields:item("nWarehouse5"):value
nw6 := self:oRS:fields:item("nWarehouse6"):value
nw7 := self:oRS:fields:item("nWarehouse7"):value
nw8 := self:oRS:fields:item("nWarehouse8"):value
nw9 := self:oRS:fields:item("nWarehouse9"):value
nw10 := self:oRS:fields:item("nWarehouse10"):value
nw11 := self:oRS:fields:item("nWarehouse11"):value
IF nw1 = 2
winMore.checkw1.Value := true
ELSE
winMore.checkw1.Value := false
ENDIF
IF nw2 = 2
winMore.checkw2.Value := true
ELSE
winMore.checkw2.Value := false
ENDIF
IF nw3 = 2
winMore.checkw3.Value := true
ELSE
winMore.checkw3.Value := false
ENDIF
IF nw4 = 2
winMore.checkw4.Value := true
ELSE
winMore.checkw4.Value := false
ENDIF
IF nw5 = 2
winMore.checkw5.Value := true
ELSE
winMore.checkw5.Value := false
ENDIF
IF nw6 = 2
winMore.checkw6.Value := true
ELSE
winMore.checkw6.Value := false
ENDIF
IF nw7 = 2
winMore.checkw7.Value := true
ELSE
winMore.checkw7.Value := false
ENDIF
IF nw8 = 2
winMore.checkw8.Value := true
ELSE
winMore.checkw8.Value := false
ENDIF
IF nw9 = 2
winMore.checkw9.Value := true
ELSE
winMore.checkw9.Value := false
ENDIF
IF nw10 = 2
winMore.checkw10.Value := true
ELSE
winMore.checkw10.Value := false
ENDIF
IF nw11 = 2
winMore.checkw11.Value := true
ELSE
winMore.checkw11.Value := false
ENDIF
ACTIVATE WINDOW winMore
EndIF

Return 0
Method MoreSave Class UsersClass
IF winMore.check1.value = true
self:oRS:fields:item("WinEmployees"):value := 2
ELSE
self:oRS:fields:item("WinEmployees"):value := 3
ENDIF
IF winMore.check2.value = true
self:oRS:fields:item("WinSuppliers"):value := 2
ELSE
self:oRS:fields:item("WinSuppliers"):value := 3
ENDIF
IF winMore.check3.value = true
self:oRS:fields:item("WinCustomers"):value := 2
ELSE
self:oRS:fields:item("WinCustomers"):value := 3
ENDIF
IF winMore.check4.value = true
self:oRS:fields:item("WinWarehouse"):value := 2
ELSE
self:oRS:fields:item("WinWarehouse"):value := 3
ENDIF
IF winMore.check5.value = true
self:oRS:fields:item("WinOrders"):value := 2
ELSE
self:oRS:fields:item("WinOrders"):value := 3
ENDIF
IF winMore.check6.value = true
self:oRS:fields:item("WinAgreement"):value := 2
ELSE
self:oRS:fields:item("WinAgreement"):value := 3
ENDIF
IF winMore.check7.value = true
self:oRS:fields:item("WinProduction"):value := 2
ELSE
self:oRS:fields:item("WinProduction"):value := 3
ENDIF
IF winMore.check8.value = true
self:oRS:fields:item("WinDispose"):value := 2
ELSE
self:oRS:fields:item("WinDispose"):value := 3
ENDIF
IF winMore.checkw1.value = true
self:oRS:fields:item("nWarehouse1"):value := 2
ELSE
self:oRS:fields:item("nWarehouse1"):value := 3
ENDIF
IF winMore.checkw2.value = true
self:oRS:fields:item("nWarehouse2"):value := 2
ELSE
self:oRS:fields:item("nWarehouse2"):value := 3
ENDIF
IF winMore.checkw3.value = true
self:oRS:fields:item("nWarehouse3"):value := 2
ELSE
self:oRS:fields:item("nWarehouse3"):value := 3
ENDIF
IF winMore.checkw4.value = true
self:oRS:fields:item("nWarehouse4"):value := 2
ELSE
self:oRS:fields:item("nWarehouse4"):value := 3
ENDIF
IF winMore.checkw5.value = true
self:oRS:fields:item("nWarehouse5"):value := 2
ELSE
self:oRS:fields:item("nWarehouse5"):value := 3
ENDIF
IF winMore.checkw6.value = true
self:oRS:fields:item("nWarehouse6"):value := 2
ELSE
self:oRS:fields:item("nWarehouse6"):value := 3
ENDIF
IF winMore.checkw7.value = true
self:oRS:fields:item("nWarehouse7"):value := 2
ELSE
self:oRS:fields:item("nWarehouse7"):value := 3
ENDIF
IF winMore.checkw8.value = true
self:oRS:fields:item("nWarehouse8"):value := 2
ELSE
self:oRS:fields:item("nWarehouse8"):value := 3
ENDIF
IF winMore.checkw9.value = true
self:oRS:fields:item("nWarehouse9"):value := 2
ELSE
self:oRS:fields:item("nWarehouse9"):value := 3
ENDIF
IF winMore.checkw10.value = true
self:oRS:fields:item("nWarehouse10"):value := 2
ELSE
self:oRS:fields:item("nWarehouse10"):value := 3
ENDIF
IF winMore.checkw11.value = true
self:oRS:fields:item("nWarehouse11"):value := 2
ELSE
self:oRS:fields:item("nWarehouse11"):value := 3
ENDIF
self:oRS:UPDATE()
winMore.Release ( )
Return 0
Method closewindow Class UsersClass
myout = self:disconnect()
UsersWindow.Release ( )
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
Method BeforeSearch Class UsersClass
UsersWindow.grid1browse.DeleteAllItems ( )
UsersWindow.grid1browse.Value := 0
Return 0
Method SetTimer(p1) Class UsersClass
UsersWindow.Timer1.Enabled := p1
Return 0
Method SearchAdd(temp_array) Class UsersClass
UsersWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class UsersClass
cName := UsersWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
