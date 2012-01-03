*---------------------------------------------------------------------------*
* Time : 21:09:06    Date : 12/29/2011
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


Resistance R_VERYSIMPLENOTEPAD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VERYSIMPLENOTEPAD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 223 ;
HEIGHT 295 ;
ICON "PWCTICON" ;
TITLE "Very Simple Notepad " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 15 ,4 BUTTONEX btn1;
CAPTION "Export to file";
FONTCOLOR {0,0,0};
ON CLICK Export()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 15 ,109 BUTTONEX btn2;
CAPTION "Import from file";
ON CLICK Import()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 49 ,6 EDITBOX edit1;
WIDTH 204 ;
HEIGHT 202;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Export
str := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Export to text file" , ;
, ;
, ;
"Export.txt" )
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Pre existing file","Overwrite file")
IF MyOut==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,str)
FCLOSE(RPWI_TH)
Return Nil
Proc Import
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"Import to text file" , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ELSE
Str = MEMOREAD ( GetFile )
win1.edit1.Value := Str
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_VERYSIMPLENOTEPAD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Very Simple Notepad '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Export to file'",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Export",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Import from file'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Import",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Export",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","str = win1.edit1.Value",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Pre existing file' Title 'Overwrite file' Type: Message Ok/Cancel",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut==false )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","write String str to File PutFile",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Import",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile==false )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String Str",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := Str",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
