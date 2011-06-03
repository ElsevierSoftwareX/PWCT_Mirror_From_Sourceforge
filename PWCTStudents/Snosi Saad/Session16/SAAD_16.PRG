*---------------------------------------------------------------------------*
* Time : 15:57:08    Date : 06/01/2011
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


Resistance R_SAAD_16_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_16_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 424 ;
HEIGHT 316 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÃßÈÑ ÑÞã " ;
MAIN ;
BACKCOLOR {85,148,210} 

@ 20 ,359 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
FONTCOLOR {0,0,0}
@ 20 ,145 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 66 ,145 LISTBOX list1;
WIDTH 190 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,27 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ ÇáÑÞã";
ON CLICK myadd()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 237 ,27 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÇáÑÞã ÇáÃßÈÑ";
ON CLICK mymax()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DO RightToLeftControl WITH "win1","list1"
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount == 0
MyOut := MSGBOX("! áÇ íæÌÏ ÇÑÞÇã Ýí ÇáÞÇÆãÉ ","ÚÝæÇ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount == 1
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã")
Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_16
START DOUBLES
Return
*-------------------------------------------------------------------*
