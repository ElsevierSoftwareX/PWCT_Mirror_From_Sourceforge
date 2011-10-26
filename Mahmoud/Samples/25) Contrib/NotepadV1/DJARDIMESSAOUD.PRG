*---------------------------------------------------------------------------*
* Time : 05:01:46    Date : 10/24/2011
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


Resistance R_DJARDIMESSAOUD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DJARDIMESSAOUD_18smart1() code
SET AUTOADJUST ON
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
POPUP "File"
MENUITEM "Open" Action myload()
SEPARATOR
MENUITEM "Save As" Action mysave()
SEPARATOR
MENUITEM "Exit" Action mybye()
END POPUP
POPUP "View"
MENUITEM "Font" Action myfont()
SEPARATOR
MENUITEM "Font color" Action mycolor()
SEPARATOR
MENUITEM "Back color" Action mybcolor()
END POPUP
POPUP "About"
MENUITEM "About application" Action myabout()  IMAGE "NotePad"
SEPARATOR
MENUITEM "Computer name" Action myadd()
END POPUP
END MENU
DEFINE STATUSBAR 

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"усн феэ","*.txt"} } , ;
" PWCT NotePad : нЪЭ усн" , ;
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
GetFile := GetFile ( { {"усн феэ","*.txt"} } , ;
" PWCT NotePad : нЪЭ усн " , ;
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
MyOut := MSGYESNO(" Are you sure ?","Close applicaiton ")
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
MyOuut := MSGINFO("PWCT NotePad : By Djardi Messaoud - PWCT TEAM","PWCT NotePad")
Return Nil
Proc myadd
ComputerName := GetComputerName()
Mycomname := MSGINFO("Computer Name : " + ComputerName,ComputerName)
Return Nil


End Of Resistance

INIT PROCEDURE Init_DJARDIMESSAOUD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PWCT NotePad v1.0'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Set Menu Style EXTENDED",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Open' )      SEPARATOR",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Save As' )      SEPARATOR",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'View'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Font' )      SEPARATOR",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Font color' )      SEPARATOR",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Back color' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'About'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About application' )  IMAGE 'NotePad'    SEPARATOR",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Computer name' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile = False )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mystr := Read File GetFile",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybye",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Are you sure ?' Title 'Close applicaiton ' Type: Message Yes/No",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut = False )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myfont",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","GetFont := Get Font",88,95)
SS_ESASTEP("Circuits\Main\Main\Main","Output: (FontName,FontSize,FontBold,FontItalic,FontColor,FontUnderLine,FontStrickOut,FontCharSet)",96,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontName := FontName",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontSize := FontSize",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontBold := FontBold",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontItalic := FontItalic",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontUnderline := FontUnderline",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycolor",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","GetColor := Get Color, Init Color : {0,0,0}",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.FontColor := GetColor",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybcolor",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","GetColor := Get Color, Init Color : {0,0,0}",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.BackColor := GetColor",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myabout",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'PWCT NotePad : By Djardi Messaoud - PWCT TEAM' Title 'PWCT NotePad' Type: Message Info",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ComputerName := Get Computer Name",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Computer Name : ' + ComputerName Title ComputerName Type: Message Info",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
Return
*-------------------------------------------------------------------*
