*---------------------------------------------------------------------------*
* Time : 10:51:25    Date : 04/25/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
Data cWindowName init "UsersWindow"
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
Data manychecks init false
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
Method OnBeforeDelete
EndClass
Method showwindow Class UsersClass
IF self:UserIsAdmin = 2
MyOut := MSGBOX("·Ì” ·ﬂ ’·«ÕÌ… «·œŒÊ·","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 903 ;
HEIGHT 570 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "«·„” Œœ„Ì‰" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 430
@ 484 ,590 BUTTONEX btnFirst;
CAPTION "«·√Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,456 BUTTONEX btnNext;
CAPTION "«· «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "«· «·Ï" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,391 BUTTONEX btnLast;
CAPTION "«·√ŒÌ—";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,741 BUTTONEX btnClose;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,526 BUTTONEX btnPrev;
CAPTION "«·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,664 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 484 ,219 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 484 ,299 BUTTONEX btncancel;
CAPTION "≈·€«¡ «·√„—";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 484 ,140 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 484 ,59 BUTTONEX btnadd;
CAPTION "≈÷«ﬁ…";
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
@ 323 ,190 LABEL lblUserName ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 318 ,342 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 52 ,81 LABEL lbl1browse ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,185 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 52 ,720 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"Code","User Name"};
WIDTHS {100,630} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 361 ,190 LABEL lblPassword ;
VALUE "ﬂ·„… «·„—Ê—" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 359 ,342 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD

myout = self:LoadLookupTable("choice","status",@self:SystemAdminItems,"id",@self:SystemAdminItemsIDS)
@ 285 ,190 LABEL lblSystemAdmin ;
VALUE "„‘—› «·‰Ÿ«„" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 282 ,342 COMBOBOX comboSystemAdmin;
WIDTH 390 ;
HEIGHT 100;
ITEMS self:SystemAdminitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 427 ,244 BUTTONEX btnPermissions;
CAPTION "«⁄ÿ«¡ ’·ÕÌ«  «·„” Œœ„Ì‰";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:ValueDetails()  ;
WIDTH 390 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class UsersClass
self:cUserName := &(self:cWindowName).textUserName.Value
self:cPassWord := &(self:cWindowName).textPassWord.Value
self:nSystemAdmin := &(self:cWindowName).ComboSystemAdmin.Value
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
self:nID := self:oRS:fields:item("ID"):value
Return 0
Method Class2UserInterface Class UsersClass
&(self:cWindowName).textUserName.Value := self:cUserName
&(self:cWindowName).textPassWord.Value := self:cPassWord
self:nSystemAdmin = self:LookupIDToIndex(self:nSystemAdmin,@self:SystemAdminItemsids)
&(self:cWindowName).ComboSystemAdmin.Value := self:nSystemAdmin
Return 0
Method ClearRecord Class UsersClass
self:cUserName := ""
self:cPassWord := ""
self:nSystemAdmin := 0
Return 0
Method OpenDataWindow Class UsersClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class UsersClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class UsersClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0
Method setmode(p1) Class UsersClass
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
&(self:cWindowName).textUserName.Enabled := true
&(self:cWindowName).textPassWord.Enabled := true
&(self:cWindowName).comboSystemAdmin.Enabled := true
&(self:cWindowName).Grid1Browse.Enabled := False
&(self:cWindowName).textNameBrowse.Enabled := False
&(self:cWindowName).btn1Browse.Enabled := False
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
&(self:cWindowName).textUserName.Enabled := false
&(self:cWindowName).textPassWord.Enabled := false
&(self:cWindowName).comboSystemAdmin.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).textNameBrowse.Enabled := True
&(self:cWindowName).btn1Browse.Enabled := True
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
TITLE "√œŒ· «”„ «·„” Œœ„ Ê ﬂ·„… «·„—Ê—" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {128,0,128}

@ 40 ,0 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 530 HEIGHT 120
@ 52 ,297 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 110 ,298 LABEL lbl2 ;
VALUE "ﬂ·„… «·„—Ê—" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 53 ,70 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 111 ,70 TEXTBOX text2;
ON ENTER self:OpenSystem()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 181 ,191 BUTTONEX btn1;
CAPTION "œŒÊ·";
ON CLICK self:OpenSystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
TOOLTIP ""
@ 181 ,70 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winlogin.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("winlogin"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("winlogin"), -20),0x400000,0x100000))
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
ELSE
MyOut := MSGBOX("ﬂ·„… «·„—Ê— €Ì— ’ÕÌÕ…","⁄›Ê«")
Return 0
ENDIF
ENDIF
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGINFO("«·„” Œœ„ €Ì— „œ—Ã »ﬁ«⁄œ… «·»Ì«‰« ","Œÿ√")
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
MyOut := MSGBOX("·« ÌÊÃœ „” Œœ„Ì‰","⁄›Ê«")
Return 0
ENDIF
myid := &(self:cWindowName).Grid1Browse.Value
IF myid > 0
myid := self:resultprimarykeys[myid]
ELSE
MyOut := MSGBOX("ÌÃ» «‰  Œ «— „” Œœ„ «Ê·« ","⁄›Ê«")
Return 0
ENDIF
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from UserPermissions",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·« ÌÊÃœ ”Ã·«  ›Ï ÃœÊ· «·’·ÕÌ« ","⁄›Ê«")
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
Local myret,nValue,cName,cPass
myret := true
cName := &(self:cWindowName).textUserName.Value
cPass := &(self:cWindowName).textPassWord.Value
cName = ALLTRIM ( cName )
cPass = ALLTRIM ( cPass )
IF cName == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· «”„ «·„” Œœ„","⁄›Ê«")
myret := false
ENDIF
IF cPass == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· ﬂ·„…«·„—Ê—","⁄›Ê«")
myret := false
ENDIF
Return myret
Method OnBeforeDelete Class UsersClass
Local myProjectid
myUserid := self:nID
IF .not. myUserID= 0
myUserid = STR ( myUserid )
myout = self:oCon:execute("delete from userpermissionsvalues where userid = " + myUserid)
ENDIF
Return 0
Method closewindow Class UsersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class UsersClass
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
Method BeforeSearch Class UsersClass
&(self:cWindowName).grid1browse.DeleteAllItems ( )
&(self:cWindowName).grid1browse.Value := 0
Return 0
Method SetTimer(p1) Class UsersClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method SearchAdd(temp_array) Class UsersClass
&(self:cWindowName).grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class UsersClass
cName := &(self:cWindowName).textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
