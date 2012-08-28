*---------------------------------------------------------------------------*
* Time : 12:50:59    Date : 07/09/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 450 ;
HEIGHT 419 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·„·«ÕŸ« " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 83 ,224 BUTTONEX btnload;
CAPTION " Õ„Ì· «·„Õ ÊÏ „‰ „·›";
ON CLICK myload()  ;
WIDTH 195 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 83 ,15 BUTTONEX btnsave;
CAPTION "Õ›Ÿ «·„Õ ÊÏ ›Ì „·›";
ON CLICK mysave()  ;
WIDTH 181 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 134 ,16 EDITBOX edit1;
WIDTH 404 ;
HEIGHT 216;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 6 ,37 LABEL lbl1 ;
VALUE "„”Ã· «·„·«ÕŸ« " ;
WIDTH 379 ;
HEIGHT 63 ;
AUTOSIZE ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myload
GetFile := GetFile ( {{"Text","*.txt"}} , ;
"  Õ„Ì· «·„Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(Getfile)
IF Checkfile==false
Return 0
ENDIF
mystr = MEMOREAD ( Getfile )
win1.edit1.Value := mystr
Return Nil
Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( {{"Text","*.txt"}} , ;
" Õ›Ÿ «·„Õ ÊÏ ≈·Ï „·› " , ;
, ;
, ;
)
CheckFile := File(Putfile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·›ø","ÌÊÃœ „·› »‰›” «·√”„")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(Putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„”Ã· «·„·«ÕŸ« '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File Getfile",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Checkfile==false )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","File Getfile To String mystr",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File Putfile",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·›ø' Title 'ÌÊÃœ „·› »‰›” «·√”„' Type: Message Ok/Cancel",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File Putfile",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
