*---------------------------------------------------------------------------*
* Time : 16:29:21    Date : 01/30/2012
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


Resistance R_LESSON_15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON_15_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Notes" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 13 ,11 BUTTONEX btn1;
CAPTION "Open file";
ON CLICK load()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 11 ,165 BUTTONEX btn2;
CAPTION "Save file";
ON CLICK save()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 65 ,11 EDITBOX edit1;
WIDTH 255 ;
HEIGHT 205;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc save
msg := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
"Save File " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("are you want to overwrite on file? ","Message")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,msg)
FCLOSE(RPWI_TH)
Return Nil
Proc load
GetFile := GetFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ENDIF
msg = MEMOREAD ( GetFile )
win1.edit1.Value := msg
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON_15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notes'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Open file'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action load",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Save file'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.edit1.Value",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'are you want to overwrite on file? ' Title 'Message' Type: Message Ok/Cancel",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","write String msg to File PutFile",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure load",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile==false )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String msg",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := msg",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*
