*---------------------------------------------------------------------------*
* Time : 10:32:02    Date : 11/22/2010
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SEARCH_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCH_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 711 ;
HEIGHT 442 ;
ICON "PWCTICON" ;
TITLE "ãÔÑÑæÚ ÈÑäÇãÌ ÇáÈÇÍË Ýì ÇíÇÊ ÇáÞÑÁÇä ÇáßÑíã" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 23 ,99 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 22 ,325 BUTTONEX btn1;
CAPTION "ÇÈÍË";
ON CLICK find()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 78 ,23 GRID Grid1;
WIDTH 626 ;
HEIGHT 200 ;
HEADERS {"ÇÓã ÇáÓæÑÉ","ÑÞã ÇáÓæÑÉ","ÑÞã ÇáÂíÉ","äÕ ÇáÂíÉ","ãÓáÓá"};
WIDTHS {100,75,75,350,50} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc find
cn := win1.text1.Value
cn = ALLTRIM ( cn )
m := 0
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
win1.grid1.DeleteAllItems ( )
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
m := m+1
m = STR ( m )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find1
Return Nil
Proc find1
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f1 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find2
Return Nil
Proc find2
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f2 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find3
Return Nil
Proc find3
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f3 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find4
Return Nil
Proc find4
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f4 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find5
Return Nil
Proc find5
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f5 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find6
Return Nil
Proc find6
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f6 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find7
Return Nil
Proc find7
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f7 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find8
Return Nil
Proc find8
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f8 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find9
Return Nil
Proc find9
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f9 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find10
Return Nil
Proc find10
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f10 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find11
Return Nil
Proc find11
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f11 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find12
Return Nil
Proc find12
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f12 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find13
Return Nil
Proc find13
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f13 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find14
Return Nil
Proc find14
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f14 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find15
Return Nil
Proc find15
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f15 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find16
Return Nil
Proc find16
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f16 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find17
Return Nil
Proc find17
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f17 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find18
Return Nil
Proc find18
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f18 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find19
Return Nil
Proc find19
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f19 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
DO find20
Return Nil
Proc find20
cn := win1.text1.Value
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where f20 like '"+ cn + "%'",Con,3,3 )
myd := oRS:RecordCount
IF myd > 0
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt,m} )
oRS:MOVENEXT()
Next
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SEARCH
START DOUBLES
Return
*-------------------------------------------------------------------*
