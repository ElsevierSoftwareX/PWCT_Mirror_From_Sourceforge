*---------------------------------------------------------------------------*
* Time : 00:13:25    Date : 03/01/2012
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


Resistance R_NOTEOPTIONS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTEOPTIONS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 448 ;
ICON "PWCTICON" ;
TITLE "  œÊÌ‰ «·„·«ÕŸ«  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,64,64} 

@ 305 ,285 BUTTONEX btnsave;
CAPTION "Õ›Ÿ «·„·«ÕŸ«  ›Ï „·›  ";
ON CLICK MySave()  ;
WIDTH 185 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 305 ,31 BUTTONEX btnreload;
CAPTION " Õ„Ì· „·«ÕŸ«  „‰ „·›";
ON CLICK MyLoad()  ;
WIDTH 196 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,32 EDITBOX edit1;
WIDTH 437 ;
HEIGHT 241;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 22 ,390 LABEL lbl1 ;
VALUE "œÊ‰ „·«ÕŸ« ﬂ  " ;
WIDTH 104 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 366 ,376 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure MySave()
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„·«ÕŸ«  ›Ï „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("«·„·› „ÊÃÊœ »«·›⁄· Â·  —Ìœ «·ﬂ «»… ⁄·ÌÂ ø ","«·„·› „ÊÃÊœ „”»ﬁ« ")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
return
procedure MyLoad()
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·„·«ÕŸ«  „‰ «·„·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ENDIF
mystr = MEMOREAD ( GetFile )
win1.edit1.Value := mystr
return


End Of Resistance

INIT PROCEDURE Init_NOTEOPTIONS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  œÊÌ‰ «·„·«ÕŸ«  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Õ›Ÿ «·„·«ÕŸ«  ›Ï „·›  '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MySave",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnreload ) , Caption : ' Õ„Ì· „·«ÕŸ«  „‰ „·›'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MyLoad",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'œÊ‰ „·«ÕŸ« ﬂ  '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MySave ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·„·› „ÊÃÊœ »«·›⁄· Â·  —Ìœ «·ﬂ «»… ⁄·ÌÂ ø ' Title '«·„·› „ÊÃÊœ „”»ﬁ« ' Type: Message Ok/Cancel",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyLoad ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile==false )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
Return
*-------------------------------------------------------------------*
