*---------------------------------------------------------------------------*
* Time : 14:05:20    Date : 01/18/2012
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
Function TELSEARCHADD
Public True,False 
True = .T. 
False = .F. 
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_TELSEARCHADD_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELSEARCHADD_18smart1() code
Class windowsearch2
Data database init "data.mdb"
Data table init "tel"
Data column init "adderss"
Method showwindow
Method closewindow
Method search
EndClass
Method showwindow Class windowsearch2
if !iswindowdefined( winsearch )
DEFINE WINDOW winsearch ;
AT 10 ,10 ;
WIDTH 467 ;
HEIGHT 461 ;
ICON "PWCTICON" ;
TITLE "Search" ;
CHILD ;
BACKCOLOR {192,192,192} 

@ 50 ,35 LABEL lbl1 ;
VALUE "Adderss" ;
WIDTH 79 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 51 ,115 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,335 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,112 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 325 ,164 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

winsearch.Center ( )
ACTIVATE WINDOW winsearch
EndIF

Return 0
Method closewindow Class windowsearch2
winsearch.Release ( )
Return 0
Method search Class windowsearch2
cname := winsearch.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table +" where "+self:column+" like '" + cname + "%'",oCon,3,3 )
mymax := oRS:RecordCount
winsearch.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
winsearch.list1.AddItem ( vname )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
