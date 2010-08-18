*---------------------------------------------------------------------------*
* Time : 02:34:11    Date : 07/31/2010
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
Function TELBROWSEWINDOW
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

Resistance R_TELBROWSEWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELBROWSEWINDOW_15speed1() code
Class telbrowseclass
Data database init "data.mdb"
Data table init "tel"
Data column init "name"
Data PrimaryKey init "id"
Data columns init {"name","address","phone"}
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method showdatawindow
EndClass
Method showwindow Class telbrowseclass
if !iswindowdefined( telbrowsewindow )
DEFINE WINDOW telbrowsewindow ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "Search" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 20 ,12 LABEL lbl1 ;
VALUE self:column ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,108 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 10 ,534 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 280 ,534 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,106 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 250 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

telbrowsewindow.Center ( )
ACTIVATE WINDOW telbrowsewindow
EndIF

Return 0
Method ShowDataWindow Class telbrowseclass
Return 0
Method closewindow Class telbrowseclass
telbrowsewindow.Release ( )
Return 0
Method search Class telbrowseclass
cName := telbrowsewindow.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:database )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
telbrowsewindow.grid1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
telbrowsewindow.grid1.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
AADD( temp_array , vname2)
Next
telbrowsewindow.grid1.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class telbrowseclass
nvalue := telbrowsewindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
