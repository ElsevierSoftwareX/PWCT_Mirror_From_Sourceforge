*---------------------------------------------------------------------------*
* Time : 10:36:07    Date : 02/04/2012
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


Resistance R_015_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_015_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 403 ;
HEIGHT 320 ;
ICON "PWCTICON" ;
TITLE "Notepad" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {128,128,192} 

@ 8 ,12 BUTTONEX btnload;
CAPTION "Load text from file";
ON CLICK myload()  ;
WIDTH 163 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,221 BUTTONEX btnsave;
CAPTION "Save text in file";
ON CLICK mysave()  ;
WIDTH 159 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 63 ,11 EDITBOX edit1;
WIDTH 370 ;
HEIGHT 202;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„Õ ÊÏ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF checkfile
MyOut := MSGOKCANCEL("Do you want to change the text ?","File is already exist")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·„Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile == false
Return 0
ENDIF
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_015
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notepad'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : 'Load text from file'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save text in file'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to change the text ?' Title 'File is already exist' Type: Message Ok/Cancel",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile == false )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String mystr",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
