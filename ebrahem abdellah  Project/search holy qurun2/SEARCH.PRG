*---------------------------------------------------------------------------*
* Time : 13:19:39    Date : 12/20/2010
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 711 ;
HEIGHT 442 ;
ICON "pwcticon" ;
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
FONTCOLOR {0,0,0} ;
INPUTMASK  

@ 359 ,549 BUTTONEX btn1;
CAPTION "ÇáÈÍË";
ON CLICK find()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 139 ,22 GRID Grid1;
WIDTH 626 ;
HEIGHT 200 ;
HEADERS {"ÇÓã ÇáÓæÑÉ","ÑÞã ÇáÓæÑÉ","ÑÞã ÇáÂíÉ","äÕ ÇáÂíÉ"};
WIDTHS {100,75,75,325,50} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,255,64} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 75 ,98 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 27 ,306 LABEL lbl1 ;
VALUE "ÇÏÎá ßáãÉ ÇáÈÍË" ;
WIDTH 112 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 72 ,307 LABEL lbl1 ;
VALUE "ÚÏÏ ÇáÊßÑÇÑ" ;
WIDTH 111 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc find
cn := win1.text1.Value
cn := "cn"
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=ayat.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from h where aya like'%'",Con,3,3 )
myd := oRS:RecordCount
myd := " myd "
myd1 = AT(cn,myd)
win1.grid1.DeleteAllItems ( )
IF myd1 > 0
win1.text2.Value := myd1
FOR x = 1 TO myd STEP 1
soran := oRS:fields:item("soraname"):value
numsora := oRS:fields:item("nsora"):value
numaya := oRS:fields:item("naya"):value
ayatxt := oRS:fields:item("aya"):value
numsora = STR ( numsora )
numaya = STR ( numaya )
win1.grid1.AddItem ( {soran,numsora,numaya,ayatxt} )
oRS:MOVENEXT()
Next
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SEARCH
START DOUBLES
Return
*-------------------------------------------------------------------*
