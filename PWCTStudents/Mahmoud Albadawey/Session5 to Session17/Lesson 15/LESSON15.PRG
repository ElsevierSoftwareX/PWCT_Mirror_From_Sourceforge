*---------------------------------------------------------------------------*
* Time : 11:16:05    Date : 01/23/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
Function Main
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


Resistance R_LESSON15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON15_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 389 ;
ICON "PWCTICON" ;
TITLE "Lesson 15" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 67 ,255 BUTTONEX btn2;
CAPTION "save ";
ON CLICK mysave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 67 ,136 BUTTONEX btn1;
CAPTION "Load from file ";
ON CLICK myload()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 122 ,15 EDITBOX edit1;
WIDTH 459 ;
HEIGHT 195;
FONT "Arial" SIZE 15 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 9 ,128 LABEL lbl1 ;
VALUE "Very Simple Notepad " ;
WIDTH 233 ;
HEIGHT 46 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
DEFINE STATUSBAR 

STATUSITEM "Mahmoud Albadawey"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Õ›Ÿ «·„Õ ÊÏ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF checkfile
MyOut := MSGOKCANCEL("«·„·› „ÊÃÊœ „”»ﬁ« °Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·›ø ","«·„·› „ÊÃÊœ „”»ﬁ« ")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"}} , ;
" Œ„Ì· «·„Õ ÊÏ" , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile==false
Return 0
ENDIF
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 15'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'save '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Load from file '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Very Simple Notepad '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Mahmoud Albadawey' )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·„·› „ÊÃÊœ „”»ﬁ« °Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·›ø ' Title '«·„·› „ÊÃÊœ „”»ﬁ« ' Type: Message Ok/Cancel",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile==false )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String mystr",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
Return
*-------------------------------------------------------------------*
