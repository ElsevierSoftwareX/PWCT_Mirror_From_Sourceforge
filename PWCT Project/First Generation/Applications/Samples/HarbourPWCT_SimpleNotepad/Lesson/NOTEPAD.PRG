*---------------------------------------------------------------------------*
* Time : 22:52:53    Date : 10/19/2011
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
WIDTH 693 ;
HEIGHT 489 ;
ICON "PWCTICON" ;
TITLE "notepad" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 57 ,9 EDITBOX edit1;
WIDTH 621 ;
HEIGHT 208;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0}
@ 279 ,491 IMAGE image1;
PICTURE "MICKEY-MOUSE-NOTEPAD.JPG";
STRETCH ;
WIDTH 183 HEIGHT 163
@ 320 ,114 BUTTONEX btnsave;
CAPTION "save file";
ON CLICK mysave()  ;
WIDTH 147 HEIGHT 41 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 315 ,296 BUTTONEX btnload;
CAPTION "get file";
ON CLICK myload()  ;
WIDTH 135 HEIGHT 41 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 3 ,70 LABEL lbl1 ;
VALUE "write what's in your mind" ;
WIDTH 501 ;
HEIGHT 38 ;
FONT "Ravie" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {77,96,230}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" save text in file " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("this file already exist","error")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile (  , ;
, ;
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'notepad'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'MICKEY-MOUSE-NOTEPAD.JPG'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'save file'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : 'get file'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'write what's in your mind'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'this file already exist' Title 'error' Type: Message Ok/Cancel",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile==false )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
Return
*-------------------------------------------------------------------*
