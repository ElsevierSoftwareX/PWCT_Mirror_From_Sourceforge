*---------------------------------------------------------------------------*
* Time : 02:44:22    Date : 12/10/2011
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


Resistance R_NOTEPADRW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTEPADRW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "NotPadRW" ;
MAIN ;
BACKCOLOR {218,209,107} 

@ 7 ,11 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK mysave()  ;
WIDTH 99 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,376 BUTTONEX btnload;
CAPTION "Load";
ON CLICK myload()  ;
WIDTH 101 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 50 ,8 EDITBOX edit1;
WIDTH 470 ;
HEIGHT 300;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mastr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Saving file " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF checkFile
MyOut := MSGOKCANCEL("would you like to change it?","File already exist!!")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mastr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" Loading File " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
mastr = MEMOREAD ( GetFile )
win1.edit1.Value := mastr
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOTEPADRW
START DOUBLES
Return
*-------------------------------------------------------------------*
