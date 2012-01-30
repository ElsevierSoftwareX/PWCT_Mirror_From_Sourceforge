*---------------------------------------------------------------------------*
* Time : 00:39:21    Date : 01/28/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 403 ;
HEIGHT 427 ;
ICON "PWCTICON" ;
TITLE "Folders" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,255} 

@ 125 ,12 EDITBOX edit1;
WIDTH 347 ;
HEIGHT 205;
FONT "Impact" SIZE 16 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 82 ,12 BUTTONEX btnload;
CAPTION "Load";
ON CLICK myload()  ;
WIDTH 151 HEIGHT 34 ;
FONT "Bernard MT Condensed" SIZE 20 ;
TOOLTIP ""
@ 82 ,186 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK mysave()  ;
WIDTH 174 HEIGHT 36 ;
FONT "Bernard MT Condensed" SIZE 20 ;
TOOLTIP ""
@ 8 ,16 LABEL lbl1 ;
VALUE "*( Save &&& Load Opearation  )*" ;
WIDTH 342 ;
HEIGHT 41 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 360 ,166 LABEL lbl2 ;
VALUE "Created By: Ahmed Warda" ;
WIDTH 226 ;
HEIGHT 23 ;
FONT "Bauhaus 93" SIZE 14  ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}
END WINDOW

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
MyOut := MSGOKCANCEL("Do you want to write above folder","The Folder Is Found")
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
IF checkfile == false
Return 0
ENDIF
mystr = MEMOREAD ( GetFile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Folders'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : 'Load'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '*( Save &&& Load Opearation  )*'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Created By: Ahmed Warda'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to write above folder' Title 'The Folder Is Found' Type: Message Ok/Cancel",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File PutFile",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile == false )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
Return
*-------------------------------------------------------------------*
