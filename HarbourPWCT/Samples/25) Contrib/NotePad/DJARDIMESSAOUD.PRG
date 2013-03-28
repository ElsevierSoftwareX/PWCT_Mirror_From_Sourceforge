*---------------------------------------------------------------------------*
* Time : 18:57:20    Date : 03/14/2011
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


Resistance R_DJARDIMESSAOUD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DJARDIMESSAOUD_15speed1() code
SET AUTOADJUST ON
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 612 ;
HEIGHT 460 ;
ICON "PWCTICON" ;
TITLE "«·„›ﬂ—… : Ã—œÌ „”⁄Êœ PWCT" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 4 ,3 EDITBOX edit1;
WIDTH 600 ;
HEIGHT 359;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 367 ,6 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·„·›";
ON CLICK mysave()  ;
WIDTH 118 HEIGHT 47 ;
FONT "Tahoma" SIZE 18 ;
TOOLTIP ""
@ 367 ,151 BUTTONEX btn2;
CAPTION "› Õ „·›";
ON CLICK myopen()  ;
WIDTH 149 HEIGHT 48 ;
FONT "Tahoma" SIZE 18 ;
TOOLTIP ""
@ 367 ,324 BUTTONEX btn3;
CAPTION " €ÌÌ— «·Œÿ";
ON CLICK myfont()  ;
WIDTH 154 HEIGHT 49 ;
FONT "Tahoma" SIZE 18 ;
TOOLTIP ""
@ 366 ,488 BUTTONEX btn4;
CAPTION "Œ‹—ÊÃ";
ON CLICK myout()  ;
WIDTH 110 HEIGHT 48 ;
FONT "Tahoma" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
save := win1.edit1.Value
PutFile := PutFile ( { {"„·› ‰’Ì","*.txt"} } , ;
" Õ›Ÿ „·› : NotePad " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("«·„·› „ÊÃÊœ „”»ﬁ«°Â·  —Ìœ «·ﬂ «»… ›ÊﬁÂ ø","«·„·› „ÊÃÊœ „”»ﬁ«")
IF myout=false
Return 0
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,save)
FCLOSE(RPWI_TH)
ENDIF
Return Nil
Proc myopen
GetFile := GetFile ( { {"„·› ‰’Ì","*.txt"} } , ;
" › Õ „·› : NotePad " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF ˆCheckFile=false
Return 0
ENDIF
Messaoud = MEMOREAD ( GetFile )
win1.edit1.Value := Messaoud
Return Nil
Proc myfont
GetFont := GetFont ( "arial" , ;
9 , ;
.F. , ;
.F. , ;
{0,0,0} , ;
.F. , ;
.F. , ;
)
FontName      := getfont[1]
FontSize      := getfont[2]
Fontbold      := getfont[3]
FontItalic    := getfont[4]
FontColor     := getfont[5]
FontUnderline := Getfont[6]
FontStrickOut := getfont[7]
FontCharset   := getfont[8]
win1.edit1.FontName := fontname
win1.edit1.FontSize := fontsize
Return Nil
Proc myout
Mout := MSGYESNO("Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ø"," √ﬂÌœ «·Œ—ÊÃ")
IF Mout=false
Return 0
ELSE
win1.Release ( )
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_DJARDIMESSAOUD
START DOUBLES
Return
*-------------------------------------------------------------------*
