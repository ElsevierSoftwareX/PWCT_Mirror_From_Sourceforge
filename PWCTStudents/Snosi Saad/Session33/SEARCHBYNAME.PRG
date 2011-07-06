*---------------------------------------------------------------------------*
* Time : 18:19:05    Date : 07/05/2011
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
Function SEARCHBYNAME
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

Resistance R_SEARCHBYNAME_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCHBYNAME_15speed1() code
Class windowsearch
Data database init "data.mdb"
Data table init "tel"
Data column init "name"
Data PrimaryKey init "id"
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method showdatawindow
EndClass
Method showwindow Class windowsearch
if !iswindowdefined( winsearch )
DEFINE WINDOW winsearch ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "äÇÝÐÉ ÇáÈÍË" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {26,142,230} 

@ 16 ,565 LABEL lbl1 ;
VALUE self:column ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 16 ,140 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {215,217,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 16 ,4 BUTTONEX btn1;
CAPTION "ÇÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,140 LISTBOX list1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 250 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {221,221,221} ;
FONTCOLOR {0,0,0}
@ 279 ,4 BUTTONEX btnclose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winsearch.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Winsearch"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Winsearch"), -20),0x400000,0x100000))
ACTIVATE WINDOW winsearch
EndIF

Return 0
Method ShowDataWindow Class windowsearch
myobj4:LFindRecord := true
myobj4:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = myobj4:ShowWindow()
Return 0
Method closewindow Class windowsearch
winsearch.Release ( )
Return 0
Method search Class windowsearch
cName := winsearch.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:database )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
winsearch.list1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
winsearch.list1.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
winsearch.list1.AddItem ( vName )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class windowsearch
nvalue := winsearch.list1.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
