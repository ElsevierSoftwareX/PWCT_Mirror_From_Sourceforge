*---------------------------------------------------------------------------*
* Time : 22:10:29    Date : 01/23/2012
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


Resistance R_APPLICATION15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION15_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 497 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "Notepad" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU of win1
POPUP "File"
MENUITEM "Open" Action open()
MENUITEM "Save" Action save1()
MENUITEM "Exit" Action close()
END POPUP
END MENU
@ 3 ,2 EDITBOX edit1;
WIDTH 485 ;
HEIGHT 350;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR 

STATUSITEM "Ready"

CLOCK

DATE

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc open
GetFile := GetFile ( { {"Text","*.txt"}} , ;
"Open File " , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile == false
Return 0
ENDIF
t1 = MEMOREAD ( getfile )
win1.edit1.Value := t1
Return Nil
Proc save1
t := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Save File " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF checkfile
MyOut := MSGYESNO("Do You Want Overwrite ?","File Exist")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,t)
FCLOSE(RPWI_TH)
MyOut := MSGBOX("File Saved !","Save File")
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notepad'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Open' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Save' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Date",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure open",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile == false )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String t1",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := t1",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","t = win1.edit1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do You Want Overwrite ?' Title 'File Exist' Type: Message Yes/No",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","write String t to File putfile",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'File Saved !' Title 'Save File' Type: Message Box",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
Return
*-------------------------------------------------------------------*
