#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 11:47:13    Date : 01/18/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance RAIWSJ1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RAIWSJ1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 973 ;
HEIGHT 667 ;
ICON "PWCTICON" ;
TITLE "HTML Writer" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 25 ,744 BUTTONEX btn1;
CAPTION "Save";
ON CLICK sav()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 24 ,633 BUTTONEX btn2;
CAPTION "Import";
ON CLICK open()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 64 ,8 EDITBOX edit1;
WIDTH 946 ;
HEIGHT 553;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 25 ,852 BUTTONEX btn3;
CAPTION "close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "Informations"
MENUITEM "Help!" Action MSGINFO( "Write the code of your HTML page and press (save) or open some HTML file from (import)" )
MENUITEM "The programmer" Action MSGINFO( "The programmer is Waseem Mohammad Saaid from Syria / Dair Al-zoor" )
MENUITEM "close" Action close()
END POPUP
END MENU
@ 26 ,230 BUTTONEX btn4;
CAPTION "center";
ON CLICK center()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 27 ,118 BUTTONEX btn5;
CAPTION "Title";
ON CLICK titll()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 26 ,8 BUTTONEX btn6;
CAPTION "Print text";
ON CLICK textt ()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 3 ,17 LABEL lbl2 ;
VALUE "Codes:" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc sav
text := win1.edit1.Value
PutFile := PutFile ( { {"html","*.html"},{"TEXT","*.txt"} } , ;
" save " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF checkfile
MyOut := MSGOKCANCEL("Are you sure?","wait !!")
IF MyOut == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,text)
FCLOSE(RPWI_TH)
Return Nil
Proc open
GetFile := GetFile ( { {"html","*.html"} , {"TEXT","*.txt"} } , ;
"open " , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile == false
Return 0
ENDIF
openn = MEMOREAD ( getfile )
win1.edit1.Value := openn
Return Nil
Proc close
win1.Release ( )
Return Nil
Proc center
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "<center> Your text <center/> "
else
Win1.Edit1.VALUE := "<center> Your text <center/> "
endif
Return Nil
Proc titll
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "<title> Your title <title/> "
else
Win1.Edit1.VALUE := "<title> Your title <title/> "
endif
Return Nil
Proc textt
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Write the text here"
else
Win1.Edit1.VALUE := " Write the text here"
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'HTML Writer'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sav()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Import'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action open()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'close'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Informations'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help!' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The programmer' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'center'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action center()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Title'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action titll()",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Print text'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action textt ()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Codes:'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","pro",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sav",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.edit1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'wait !!' Type: Message Ok/Cancel",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut == false )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","write String text to File putfile",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure open",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile == false )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String openn",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := openn",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure center",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<center> Your text <center/> ') to Editbox (Edit1) of Window (Win1)",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure titll",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<title> Your title <title/> ') to Editbox (Edit1) of Window (Win1)",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure textt",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Write the text here') to Editbox (Edit1) of Window (Win1)",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
Return
*-------------------------------------------------------------------*
