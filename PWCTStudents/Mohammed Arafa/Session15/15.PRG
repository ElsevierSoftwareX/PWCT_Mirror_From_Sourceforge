*---------------------------------------------------------------------------*
* Time : 23:47:56    Date : 01/18/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Note Maker" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,255} 

@ 20 ,34 BUTTONEX btn1;
CAPTION "Save to file ";
ON CLICK mysave()  ;
WIDTH 177 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 20 ,250 BUTTONEX btn2;
CAPTION "Load from file ";
ON CLICK myload()  ;
WIDTH 177 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 64 ,34 EDITBOX edit1;
WIDTH 394 ;
HEIGHT 281;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {64,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mysave()
mystr1 := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Save content to file " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Do you want to overwrite this file ?","File exist ")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr1)
FCLOSE(RPWI_TH)
return
procedure myload()
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" Load Content from file  " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile== false
Return 0
ENDIF
mystr2 = MEMOREAD ( GetFile )
win1.edit1.Value := mystr2
return


End Of Resistance

INIT PROCEDURE Init_15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Note Maker'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save to file '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Load from file '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave ( Event : CLICK )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","mystr1 = win1.edit1.Value",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to overwrite this file ?' Title 'File exist ' Type: Message Ok/Cancel",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr1 to File PutFile",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile== false )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mystr2",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr2",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
