*---------------------------------------------------------------------------*
* Time : 16:28:07    Date : 07/11/2011
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
Data nEmployee init 0
Data Employeeitems init {}
Data Employeeitemsids init {}
Data manychecks init false
Data EnteredEmployeeID init 0
Data EnteredEmployeeEMail init ""
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
Method CheckData
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
HEIGHT 572 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "«·„” Œœ„Ì‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 430
@ 485 ,437 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,303 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,238 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,56 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,373 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,151 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 485 ,599 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 485 ,518 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 485 ,682 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 485 ,757 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                               «·„” Œœ„Ì‰" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 343 ,571 LABEL lblUserName ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 340 ,171 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,728 LABEL lbl1browse ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,185 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 52 ,75 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ﬂÊœ","«”„ «·„” Œœ„"};
WIDTHS {50,680} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 381 ,571 LABEL lblPassword ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 380 ,172 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

myout = self:LoadLookupTable("choice","status",@self:SystemAdminItems,"id",@self:SystemAdminItemsIDS)
@ 305 ,571 LABEL lblSystemAdmin ;
VALUE "„œÌ— «·‰Ÿ«„" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 307 ,171 COMBOBOX comboSystemAdmin;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:SystemAdminitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 426 ,246 BUTTONEX btnPermissions;
CAPTION "÷»ÿ ’·«ÕÌ«  «·„” Œœ„";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:ValueDetails()  ;
WIDTH 390 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
myout = self:LoadLookupTable("employees2","f_name",@self:EmployeeItems,"id",@self:EmployeeItemsIDS)
@ 265 ,571 LABEL lblEmployee ;
VALUE "«·„ÊŸ›" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 267 ,171 COMBOBOX comboEmployee;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:Employeeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

UsersWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
UsersWindow.Timer1.Enabled := false
DO RightToLeftControl WITH "UsersWindow","ComboSystemAdmin"
DO RightToLeftControl WITH "UsersWindow","ComboEmployee"
ACTIVATE WINDOW UsersWindow
EndIF

Return 0
Method UserInterface2Class Class UsersClass
self:cUserName := UsersWindow.textUserName.Value
self:cPassWord := UsersWindow.textPassWord.Value
self:nSystemAdmin := UsersWindow.ComboSystemAdmin.Value
self:nSystemAdmin := self:SystemAdminItemsids[self:nSystemAdmin]
self:nEmployee := UsersWindow.ComboEmployee.Value
self:nEmployee := self:EmployeeItemsids[self:nEmployee]
Return 0
Method Class2ADO Class UsersClass
self:oRS:fields:item("UserName"):value := self:cUserName
self:oRS:fields:item("PassWord"):value := self:cPassWord
self:oRS:fields:item("SystemAdmin"):value := self:nSystemAdmin
self:oRS:fields:item("EmpID"):value := self:nEmployee
Return 0
Method ADO2Class Class UsersClass
self:cUserName := self:oRS:fields:item("UserName"):value
self:cPassWord := self:oRS:fields:item("PassWord"):value
self:nSystemAdmin := self:oRS:fields:item("SystemAdmin"):value
self:nEmployee := self:oRS:fields:item("EmpID"):value
Return 0
Method Class2UserInterface Class UsersClass
UsersWindow.textUserName.Value := self:cUserName
UsersWindow.textPassWord.Value := self:cPassWord
self:nSystemAdmin = self:LookupIDToIndex(self:nSystemAdmin,@self:SystemAdminItemsids)
UsersWindow.ComboSystemAdmin.Value := self:nSystemAdmin
self:nEmployee = self:LookupIDToIndex(self:nEmployee,@self:EmployeeItemsids)
UsersWindow.ComboEmployee.Value := self:nEmployee
Return 0
Method ClearRecord Class UsersClass
self:cUserName := ""
self:cPassWord := ""
self:nSystemAdmin := 0
self:nEmployee := 0
Return 0
Method OpenDataWindow Class UsersClass
Local nvalue,myout
nvalue := UsersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
UsersWindow.Grid1Browse.SetFocus ( )
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
UsersWindow.comboEmployee.Enabled := true
UsersWindow.Grid1Browse.Enabled := False
UsersWindow.textNameBrowse.Enabled := False
UsersWindow.btn1Browse.Enabled := False
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
UsersWindow.comboEmployee.Enabled := false
UsersWindow.Grid1Browse.Enabled := True
UsersWindow.textNameBrowse.Enabled := True
UsersWindow.btn1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method SystemLogin Class UsersClass
if !iswindowdefined( winlogin )
DEFINE WINDOW winlogin ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 267 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {255,255,255}

@ 40 ,0 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 530 HEIGHT 120
@ 33 ,328 LABEL lbl1 ;
VALUE "≈”„ «·„” Œœ„" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 90 ,328 LABEL lbl2 ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 33 ,92 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 91 ,92 TEXTBOX text2;
ON ENTER self:OpenSystem()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 182 ,272 BUTTONEX btn1;
CAPTION "«·œŒÊ·";
ON CLICK self:OpenSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
TOOLTIP ""
@ 181 ,149 BUTTONEX btn2;
CAPTION "«€·«ﬁ";
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winlogin.Center ( )
ACTIVATE WINDOW winlogin
EndIF

Return 0
Method OpenSystem Class UsersClass
Local oCon,oRS,mymax,x,cName,cPassword,oRS2
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
self:EnteredEmployeeID := oRS:fields:item("EmpID"):value
oRS2 := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS2:CursorType := 1
oRS2:ActiveConnection := self:oCon
oRS2:open ( "Select * from Employees2 where id = " + str(self:EnteredEmployeeID),self:oCon,3,3 )
self:EnteredEmployeeEMAIL := oRS2:fields:item("F_EMAIL"):value
oRS2:Close()
ELSE
MyOut := MSGBOX("ﬂ·„… «·”— €Ì— ’ÕÌÕ…","⁄›Ê«")
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
ELSE
MyOut := MSGBOX("«”„ «·„” Œœ„ €Ì— ’ÕÌÕ","⁄›Ê«")
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
IF self:ManyChecks = false
myout = self:Connect()
ENDIF
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
IF self:ManyChecks = false
myout = self:DisConnect()
ENDIF
Return myret
Method CheckData Class UsersClass
Local myret,nValue
myret := true
nValue := UsersWindow.ComboEmployee.Value
IF nValue = 0
MyOut := MSGBOX("·«ÌÊÃœ „ÊŸ›  „  ÕœÌœÂ","⁄›Ê«")
myret := false
ENDIF
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
