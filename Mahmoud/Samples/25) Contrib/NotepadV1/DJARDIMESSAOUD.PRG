*---------------------------------------------------------------------------*
* Time : 19:11:47    Date : 08/25/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 714 ;
HEIGHT 432 ;
ICON "NotePad.ico" ;
TITLE "PWCT NotePad v1.0" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 16 ,0 EDITBOX edit1;
WIDTH 687 ;
HEIGHT 333;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
Set MenuStyle EXTENDED
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "› Õ" Action myload()
SEPARATOR
MENUITEM "Õ›Ÿ" Action mysave()
SEPARATOR
MENUITEM "Œ—ÊÃ" Action mybye()
END POPUP
POPUP " ⁄œÌ·"
MENUITEM " ⁄œÌ· «·Œÿ" Action myfont()
SEPARATOR
MENUITEM " ⁄œÌ· ·Ê‰ «·Œÿ" Action mycolor()
SEPARATOR
MENUITEM " ⁄œÌ· ·Ê‰ «·Œ·›Ì…" Action mybcolor()
END POPUP
POPUP "ÕÊ·..."
MENUITEM "ÕÊ· «·»—‰«„Ã..." Action myabout()  IMAGE "NotePad"
SEPARATOR
MENUITEM "≈”„ ﬂ„»ÌÊ —ﬂ" Action myadd()
END POPUP
END MENU
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mytimer()
mytime = TIME()
DEFINE STATUSBAR 

STATUSITEM mytime

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
SET AUTOADJUST ON
ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"„·› ‰’Ì","*.txt"} } , ;
" PWCT NotePad : › Õ „·›" , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
Return 0
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"„·› ‰’Ì","*.txt"} } , ;
" PWCT NotePad : › Õ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile = False
Return 0
ENDIF
mystr := FILESTR( GetFile )
win1.edit1.Value := mystr
Return Nil
Proc mybye
MyOut := MSGYESNO("Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ø"," √ﬂÌœ «·Œ—ÊÃ")
IF MyOut = False
Return 0
ELSE
win1.Release ( )
ENDIF
Return Nil
Proc myfont
GetFont := GetFont ( "arial" , ;
9 , ;
.F. , ;
.F. , ;
, ;
.F. , ;
, ;
)
FontName      := getfont[1]
FontSize      := getfont[2]
Fontbold      := getfont[3]
FontItalic    := getfont[4]
FontColor     := getfont[5]
FontUnderline := Getfont[6]
FontStrickOut := getfont[7]
FontCharset   := getfont[8]
win1.edit1.FontName := FontName
win1.edit1.FontSize := FontSize
win1.edit1.FontBold := FontBold
win1.edit1.FontItalic := FontItalic
win1.edit1.FontUnderline := FontUnderline
Return Nil
Proc mycolor
GetColor := GetColor ( {0,0,0} )
win1.edit1.FontColor := GetColor
Return Nil
Proc mybcolor
GetColor := GetColor ( {0,0,0} )
win1.edit1.BackColor := GetColor
Return Nil
Proc myabout
MyOuut := MSGINFO(" „  »—„Ã… Â–« «·»—‰«„Ã „‰ ÿ—› Ã—œÌ „”⁄Êœ » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ","PWCT NotePad : By Djardi Messaoud - PWCT TEAM")
Return Nil
Proc myadd
Mynote := MSGINFO("Â–« »—‰«„Ã ≈÷«›Ì  „ ≈÷«› Â „⁄ «·„›ﬂ—… («⁄ »—ÊÂ« ÂœÌ… »„‰«”»…  ‘Â— —„÷«‰ Ê —„÷«‰ ﬂ—Ì„ ··Ã„Ì⁄)","„·«ÕŸ… :")
ComputerName := GetComputerName()
Mycomname := MSGINFO("≈”„ ﬂ„»ÌÊ —ﬂ ÂÊ : " + ComputerName,ComputerName)
Return Nil
Proc mytimer
mytime = TIME()
Return Nil


End Of Resistance

INIT PROCEDURE Init_DJARDIMESSAOUD
START DOUBLES
Return
*-------------------------------------------------------------------*
