*---------------------------------------------------------------------------*
* Time : 02:32:33    Date : 08/22/2011
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


Resistance R_ALFEFE15_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE15_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 333 ;
HEIGHT 281 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 17 ,37 BUTTONEX btn1;
CAPTION "Õ›Ÿ";
ON CLICK mysave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 17 ,188 BUTTONEX btn2;
CAPTION "«” Ì—«œ";
ON CLICK myload()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,37 EDITBOX edit1;
WIDTH 253 ;
HEIGHT 151;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
" „Êﬁ⁄ «·Õ›Ÿ " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("«·„·› „ÊÃÊœ „”»ﬁ« Â·  —€» «·«” »œ«·"," Õ–Ì—")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
"«” Ì—«œ „·›" , ;
, ;
, ;
)
CheckFile := File(getfile)
IF CheckFile==false
Return 0
ENDIF
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE15
START DOUBLES
Return
*-------------------------------------------------------------------*
