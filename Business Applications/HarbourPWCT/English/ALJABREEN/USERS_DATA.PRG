*---------------------------------------------------------------------------*
* Time : 03:57:55    Date : 08/17/2010
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
Class UsersClass
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init ""
Data TableName init "Users"
Data nID init 0
Data column init "UserName"
Data PrimaryKey init "id"
Data columns init {"ID","UserName"}
Data username init "systemdatabase"
Data password init "systemdatabase123"
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
Method ShowRecord
Method connect
Method disconnect
Method firstrecord
Method lastrecord
Method nextrecord
Method prevrecord
Method delrecord
Method SetMode
Method EditRecord
Method SaveRecord
Method CancelRecord
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method addrecord
Method ClearRecord
Method AutoGotoRecord
Method search
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method LoadLookupTable
Method LookupIDtoIndex
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
WIDTH 870 ;
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
FONTCOLOR {0,0,0} ;
INPUTMASK ""
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
FONTCOLOR {0,0,0} ;
INPUTMASK ""
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
PASSWORD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
Method search Class UsersClass
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := UsersWindow.textNamebrowse.Value
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
UsersWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
UsersWindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
UsersWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
oCon:CLOSE()
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
Method LoadLookupTable(cTableName,cColumnName,aArrayNameRef,cColumnName2,aArrayNameRef2) Class UsersClass
Local x,nMax,temp_value,temp_value2,oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from " + cTableName,oCon,3,3 )
nMAX := oRS:RecordCount
aArrayNameRef := {}
aArrayNameRef2 := {}
FOR x = 1 TO nMax STEP 1
temp_value := oRS:fields:item(cColumnName):value
temp_value2 := oRS:fields:item(cColumnName2):value
AADD( aArrayNameRef , temp_value)
AADD( aArrayNameRef2 , temp_value2)
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return 0
Method LookupIDtoIndex(IDVar,ArrayRef) Class UsersClass
Local nMax,x
myindex := 1
nMax  = LEN(ArrayRef)
FOR x = 1 TO nMax STEP 1
IF ArrayRef[x]= IDVar
myindex := x
Exit
ENDIF
Next
Return myindex
Method closewindow Class UsersClass
myout = self:disconnect()
UsersWindow.Release ( )
Return 0
Method ShowRecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class UsersClass
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class UsersClass
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure ?","Delete")
IF myout = false
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
ENDIF
ENDIF
myout = self:showrecord()
UsersWindow.Timer1.Enabled := true
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
Return 0
Method EditRecord Class UsersClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class UsersClass
IF self:addrec = true
self:oRS:ADDNEW()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
UsersWindow.Timer1.Enabled := true
Return 0
Method CancelRecord Class UsersClass
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class UsersClass
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
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



End Of Resistance

*-------------------------------------------------------------------*
