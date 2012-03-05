*---------------------------------------------------------------------------*
* Time : 03:33:41    Date : 03/03/2012
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


Resistance R_AHMEDEID_LESSON9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AHMEDEID_LESSON9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 325 ;
HEIGHT 239 ;
ICON "PWCTICON" ;
TITLE "ﬂ «»… „Õ ÊÏ  " ;
MAIN ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 2 ,2 BUTTONEX btnsave;
CAPTION "Õ›Ÿ «·„Õ ÊÏ ›Ï „·›";
ON CLICK mysave()  ;
WIDTH 148 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 2 ,157 BUTTONEX btnload;
CAPTION " Õ„Ì· «·„Õ ÊÏ „‰ „·›";
ON CLICK myload()  ;
WIDTH 159 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 29 ,2 EDITBOX edit1;
WIDTH 315 ;
HEIGHT 168;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile (  , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·› «„ ·«  ","«·„·› „ÊÃÊœ „”»ﬁ«  ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile (  , ;
"  Õ„Ì· „Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile == false
Return 0
ENDIF
mystr = MEMOREAD ( GetFile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_AHMEDEID_LESSON9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ﬂ «»… „Õ ÊÏ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Õ›Ÿ «·„Õ ÊÏ ›Ï „·›'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : ' Õ„Ì· «·„Õ ÊÏ „‰ „·›'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·ﬂ «»Â ›Êﬁ «·„·› «„ ·«  ' Title '«·„·› „ÊÃÊœ „”»ﬁ«  ' Type: Message Ok/Cancel",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile == false )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
