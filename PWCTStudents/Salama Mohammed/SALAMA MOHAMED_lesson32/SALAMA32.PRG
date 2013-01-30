*---------------------------------------------------------------------------*
* Time : 12:23:24    Date : 01/17/2013
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


Resistance R_SALAMA32_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA32_18smart1() code
NotesObj = Notes()
MyOut = NotesObj:showWindow()
Class notes
Data cdata init 0
Method showWindow
Method loaddata
Method savedata
Method CloseWindow
Method Class2Userinterfase
Method Userinterfase2Class
EndClass
Method showWindow Class notes
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 300 ,500 ;
WIDTH 620 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "notes  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,255} 

@ 6 ,11 LABEL lbl1 ;
VALUE "Notes : " ;
WIDTH 99 ;
HEIGHT 47 ;
FONT "Arial Black" SIZE 16  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 0 ,115 EDITBOX edit1;
ON CHANGE Self:Userinterfase2Class()  ;
WIDTH 501 ;
HEIGHT 330;
FONT "arial" SIZE 16 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 55 ,6 BUTTONEX btn1;
CAPTION "Save";
ON CLICK Self:Savedata()  ;
WIDTH 101 HEIGHT 48 ;
FONT "Arial Black" SIZE 14 ;
TOOLTIP ""
@ 142 ,6 BUTTONEX btn2;
CAPTION "Load  ";
ON CLICK Self:Loaddata()  ;
WIDTH 101 HEIGHT 49 ;
FONT "Arial Black" SIZE 14 ;
TOOLTIP ""
@ 230 ,6 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK Self:CloseWindow()  ;
WIDTH 101 HEIGHT 48 ;
FONT "Arial Black" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method loaddata Class notes
GetFile := GetFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
Self:cdata := FILESTR( Getfile )
MyOut = Self:Class2Userinterfase()
Return 0
Method savedata Class notes
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,Self:cdata)
FCLOSE(RPWI_TH)
Return 0
Method CloseWindow Class notes
win1.Release ( )
Return 0
Method Class2Userinterfase Class Notes
win1.edit1.Value := Self:cdata
Return 0
Method Userinterfase2Class Class Notes
Self:cdata := win1.edit1.Value
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA32
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object NotesObj of Class Notes",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = NotesObj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class notes",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data cdata Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method loaddata",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method savedata",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Userinterfase",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Userinterfase2Class",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class notes",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'notes  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Notes : '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:Userinterfase2Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Savedata",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Load  '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Loaddata",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CloseWindow",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method loaddata Class notes",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cdata := Read File Getfile",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Self.Class2Userinterfase()",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method savedata Class notes",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","write String Self:cdata to File PutFile",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class notes",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Userinterfase Class Notes",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := Self:cdata",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Userinterfase2Class Class Notes",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cdata = win1.edit1.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",91,91)
Return
*-------------------------------------------------------------------*
