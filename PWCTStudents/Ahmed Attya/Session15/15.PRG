*---------------------------------------------------------------------------*
* Time : 09:24:44    Date : 01/04/2012
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


Resistance R_15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_15_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 437 ;
HEIGHT 403 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·Œ«„” ⁄‘—" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 6 ,236 BUTTONEX btnload;
CAPTION " Õ„Ì· «·„Õ ÊÌ „‰ „·›";
FONTCOLOR {0,0,0};
ON CLICK MyLoad()  ;
WIDTH 180 HEIGHT 43 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 7 ,13 BUTTONEX btnsave;
CAPTION "Õ›Ÿ «·„Õ ÊÌ ›Ì „·›";
FONTCOLOR {0,0,0};
ON CLICK MySave()  ;
WIDTH 175 HEIGHT 42 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 59 ,11 EDITBOX edit1;
WIDTH 405 ;
HEIGHT 229;
FONT "Arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 302 ,156 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK MyExit()  ;
WIDTH 111 HEIGHT 46 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by PWCT by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyExit
win1.Release ( )
Return Nil
Proc MySave
mydata := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„Õ ÊÌ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·›","«·„·› „ÊÃÊœ „”»ﬁ«")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mydata)
FCLOSE(RPWI_TH)
Return Nil
Proc MyLoad
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·„Õ ÊÌ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
mydata = MEMOREAD ( GetFile )
win1.edit1.Value := mydata
Return Nil


End Of Resistance

INIT PROCEDURE Init_15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·Œ«„” ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : ' Õ„Ì· «·„Õ ÊÌ „‰ „·›'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MyLoad()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Õ›Ÿ «·„Õ ÊÌ ›Ì „·›'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MySave()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MyExit()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by PWCT by Ahmed Attya' )",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Date",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyExit",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MySave",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.edit1.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·›' Title '«·„·› „ÊÃÊœ „”»ﬁ«' Type: Message Ok/Cancel",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","write String mydata to File PutFile",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyLoad",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile == false )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mydata",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mydata",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
