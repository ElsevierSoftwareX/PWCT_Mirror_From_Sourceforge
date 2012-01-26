*---------------------------------------------------------------------------*
* Time : 01:29:32    Date : 01/24/2012
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


Resistance R_NOTEPAD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTEPAD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 489 ;
HEIGHT 406 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·„·«ÕŸ« " ;
MAIN ;
BACKCOLOR {255,128,128} 

@ 29 ,21 BUTTONEX btnload;
CAPTION " Õ„Ì· «·„Õ ÊÏ „‰ „·›";
ON CLICK myload()  ;
WIDTH 189 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 30 ,276 BUTTONEX btnsave;
CAPTION "Õ›Ÿ «·„Õ ÊÏ ›Ì „·›";
ON CLICK mysave()  ;
WIDTH 189 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 77 ,21 EDITBOX edit1;
WIDTH 444 ;
HEIGHT 204;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Õ›Ÿ «·„Õ ÊÏ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·›","«·„·› „ÊÃÊœ „”»ﬁ«")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"}} , ;
"  Õ„Ì· «·„Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile==false
Return 0
ENDIF
mystr = MEMOREAD ( GetFile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOTEPAD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ”ÃÌ· «·„·«ÕŸ« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : ' Õ„Ì· «·„Õ ÊÏ „‰ „·›'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Õ›Ÿ «·„Õ ÊÏ ›Ì „·›'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·›' Title '«·„·› „ÊÃÊœ „”»ﬁ«' Type: Message Ok/Cancel",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile==false )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
