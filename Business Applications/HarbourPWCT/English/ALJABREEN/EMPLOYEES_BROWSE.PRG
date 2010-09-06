*---------------------------------------------------------------------------*
* Time : 04:44:37    Date : 08/24/2010
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
Function EMPLOYEES_BROWSE
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

Resistance R_EMPLOYEES_BROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOYEES_BROWSE_15speed1() code
Class EmployeesBrowseClass
Data databasename init ""
Data table init "Employees_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"f_name","country","f_city","f_address","f_company"}
Data username init "systemdatabase"
Data password init "systemdatabase123"
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method showdatawindow
Method print
EndClass
Method showwindow Class EmployeesBrowseClass
if !iswindowdefined( EmployeesBrowseWindow )
DEFINE WINDOW EmployeesBrowseWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Employees Search/Browse" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-12 IMAGE image1;
PICTURE "image\back.jpg";
STRETCH ;
WIDTH 720 HEIGHT 360
@ 20 ,42 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 10 ,574 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 280 ,574 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS {"Name","Country","City","Address","Company"};
WIDTHS {200,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 60 ,574 BUTTONEX btnPrint;
CAPTION "Print";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

EmployeesBrowseWindow.Center ( )
ACTIVATE WINDOW EmployeesBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class EmployeesBrowseClass
EmployeesDataObject:LFindRecord := true
EmployeesDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = EmployeesDataObject:ShowWindow()
Return 0
Method Print Class EmployeesBrowseClass
Local cName,myout
cName := EmployeesBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
Employeesreportobject:filter := ""
IF .not. empty(cName)
Employeesreportobject:filter := '((employees_all.f_name) Like "'+cName+'*")'
ENDIF
myout = Employeesreportobject:ShowWindow()
Return 0
Method closewindow Class EmployeesBrowseClass
EmployeesBrowseWindow.Release ( )
Return 0
Method search Class EmployeesBrowseClass
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := EmployeesBrowseWindow.textName.Value
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table+" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
EmployeesBrowseWindow.grid1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
EmployeesBrowseWindow.grid1.Value := 0
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
EmployeesBrowseWindow.grid1.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
oRS:Close()
oCon:CLOSE()
Return 0
Method OpenDataWindow Class EmployeesBrowseClass
Local nvalue,myout
nvalue := EmployeesBrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
