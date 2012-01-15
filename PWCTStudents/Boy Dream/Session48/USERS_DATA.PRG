*---------------------------------------------------------------------------*
* Time : 16:42:32    Date : 01/13/2012
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
#include "xhb.ch"
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

Resistance R_USERS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USERS_DATA_18smart1() code
class UsersClass From SYSTEMDATABASE
Data TableName init "Users"
Data nID init 0
Data column init "UserName"
Data PrimaryKey init "id"
Data columns init {"ID","UserName"}
Data nSystemAdmin init 0
Data SystemAdminitems init {}
Data SystemAdminitemsids init {}
Data cUserName init ""
Data cPassword init ""
Data EnteredUserName init ""
Data EnteredPassWord init ""
Data UserIsAdmin init 0
Data StartSystem init false
Data EnteredUserID init 0
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
Method SystemLogin
Method OpenSystem
Method ValueDetails
Method CheckPermission
EndClass
Method showwindow Class UsersClass
IF self:UserIsAdmin = 2
MyOut := MSGBOX("Access Is Denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( UsersWindow )
DEFINE WINDOW UsersWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 544 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Users" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239}

@ 460 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,516 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 460 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,-7 LABEL lblTitle ;
VALUE "  Users" ;
WIDTH 901 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
@ 313 ,202 LABEL lblUserName ;
VALUE "User Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 310 ,319 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 52 ,68 LABEL lbl1browse ;
VALUE "User Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 52 ,176 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

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
@ 352 ,212 LABEL lblPassword ;
VALUE "Password" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 350 ,320 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} ;
PASSWORD

myout = self:LoadLookupTable("choice","status",@self:SystemAdminItems,"id",@self:SystemAdminItemsIDS)
@ 266 ,176 LABEL lblSystemAdmin ;
VALUE "System Admin" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 267 ,319 COMBOBOX comboSystemAdmin;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:SystemAdminitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 397 ,318 BUTTONEX btnPermissions;
CAPTION "Set User Permissions";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:ValueDetails()  ;
WIDTH 390 HEIGHT 30 ;
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
self:nSystemAdmin := UsersWindow.ComboSystemAdmin.Value
self:nSystemAdmin := self:SystemAdminItemsids[self:nSystemAdmin]
Return 0
Method Class2ADO Class UsersClass
self:oRS:fields:item("UserName"):value := self:cUserName
self:oRS:fields:item("PassWord"):value := self:cPassWord
self:oRS:fields:item("SystemAdmin"):value := self:nSystemAdmin
Return 0
Method ADO2Class Class UsersClass
self:cUserName := self:oRS:fields:item("UserName"):value
self:cPassWord := self:oRS:fields:item("PassWord"):value
self:nSystemAdmin := self:oRS:fields:item("SystemAdmin"):value
Return 0
Method Class2UserInterface Class UsersClass
UsersWindow.textUserName.Value := self:cUserName
UsersWindow.textPassWord.Value := self:cPassWord
self:nSystemAdmin = self:LookupIDToIndex(self:nSystemAdmin,@self:SystemAdminItemsids)
UsersWindow.ComboSystemAdmin.Value := self:nSystemAdmin
Return 0
Method ClearRecord Class UsersClass
self:cUserName := ""
self:cPassWord := ""
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
UsersWindow.comboSystemAdmin.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method SystemLogin Class UsersClass
if !iswindowdefined( winlogin )
DEFINE WINDOW winlogin ;
AT 10 ,10 ;
WIDTH 332 ;
HEIGHT 207 ;
ICON "PWCTICON" ;
TITLE "Login" ;
MODAL ;
NOAUTORELEASE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {239,239,239}

@ 59 ,4 LABEL lbl1 ;
VALUE "User Name : " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 94 ,13 LABEL lbl2 ;
VALUE "Password : " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 61 ,116 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 95 ,115 TEXTBOX text2;
ON ENTER self:OpenSystem()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} ;
PASSWORD

@ 133 ,212 BUTTONEX btn1;
CAPTION "Ok";
ON CLICK self:OpenSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
TOOLTIP ""
@ 134 ,114 BUTTONEX btn2;
CAPTION "Close";
ON CLICK closesystem()  ;
WIDTH 72 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,-7 LABEL lbl7 ;
VALUE "  Login " ;
WIDTH 376 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
END WINDOW

winlogin.Center ( )
ACTIVATE WINDOW winlogin
EndIF

Return 0
Method OpenSystem Class UsersClass
Local oCon,oRS,mymax,x,cName,cPassword
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Users",self:oCon,3,3 )
mymax := oRS:RecordCount
self:EnteredUserName := winlogin.text1.Value
self:EnteredPassword := winlogin.text2.Value
IF mymax > 0
oRS:MOVEFIRST()
FOR x = 1 TO MYMAX STEP 1
cName := oRS:fields:item("UserName"):value
cName = ALLTRIM ( cName )
IF lower(cName) == lower(self:EnteredUserName)
cPassword := oRS:fields:item("Password"):value
cPassword = ALLTRIM ( cPassword )
IF cPassword == self:EnteredPassWord
self:StartSystem := true
self:UserIsAdmin := oRS:fields:item("SystemAdmin"):value
self:EnteredUserID := oRS:fields:item("ID"):value
ELSE
MyOut := MSGBOX("Invalid Password","Error")
Return 0
ENDIF
ENDIF
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGINFO("No Users in System Database","Error")
Return 0
ENDIF
myout = self:Disconnect()
IF self:StartSystem = True
winLogin.Release ( )
ENDIF
Return 0
Method ValueDetails Class UsersClass
Local myid,myout,myrs,empdetailsids
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No Users","Sorry")
Return 0
ENDIF
myid := UsersWindow.Grid1Browse.Value
IF myid > 0
myid := self:resultprimarykeys[myid]
ELSE
MyOut := MSGBOX("You must select user first ","Sorry")
Return 0
ENDIF
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from UserPermissions",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No Records in User Permissions table","Sorry")
Return 0
ENDIF
myRS:MOVEFIRST()
empdetailsids := {}
FOR x = 1 TO mymax STEP 1
MYDETAILID := myRS:fields:item("ID"):value
AADD( EMPDETAILSIDS , MYDETAILID)
MYRS:MOVENEXT()
Next
myRS:Close()
FOR x = 1 TO mymax STEP 1
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from UserPermissionsValues where Userid = " + myid + " and PermissionID = " + str(empdetailsids[x]),self:oCon,3,3 )
mymax2 := myRS:RecordCount
IF mymax2 = 0
myRS:ADDNEW()
myRS:fields:item("Userid"):value := myid
myRS:fields:item("PermissionID"):value := empdetailsids[x]
myRS:fields:item("PermissionValue"):value := 0
myRS:UPDATE()
ENDIF
myRS:Close()
Next
myout = self:DisConnect()
myout = self:Connect()
UserPermissionsObject:UserID := val(myid)
myout = UserPermissionsObject:ShowWindow()
Return 0
Method CheckPermission(nCode) Class UsersClass
Local myret,myid,myRS,nMax
myout = self:Connect()
myret := false
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myID := self:EnteredUserID
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from UserPermissionsValues where Userid = " + str(myid) + " and PermissionID = " + str(nCode),self:oCon,3,3 )
nMax := myRS:RecordCount
IF nMax > 0
nValue := myRS:fields:item("PermissionValue"):value
IF nValue = 1
myret := True
ENDIF
ENDIF
myRS:Close()
myout = self:DisConnect()
Return myret
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
