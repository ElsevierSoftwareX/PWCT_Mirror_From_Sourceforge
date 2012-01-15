*---------------------------------------------------------------------------*
* Time : 20:34:02    Date : 01/14/2012
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


Resistance R_NOTE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 464 ;
HEIGHT 413 ;
ICON "PWCTICON" ;
TITLE "ﬂ «»… „·ÕÊŸ«  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 291 ,333 BUTTONEX btn1;
CAPTION " Õ„Ì· «·„Õ ÊÌ „‰ „·› ";
ON CLICK openn()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 295 ,211 BUTTONEX btn2;
CAPTION " Õ›Ÿ ›Ì „·› ";
ON CLICK savee()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 14 ,10 EDITBOX edit1;
WIDTH 428 ;
HEIGHT 267;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure openn()
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" «Œ — „·› " , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile==false
Return 0
ENDIF
xxx = MEMOREAD ( getfile )
win1.edit1.Value := xxx
return
procedure savee()
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ" , ;
, ;
, ;
)
CheckFile := File(putfile)
IF checkfile
MyOut := MSGOKCANCEL(" Â·  —Ìœ «·ﬂ «»… ⁄·Ì… "," «·„·› „ÊÃÊœ „”»ﬁ«")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
return


End Of Resistance

INIT PROCEDURE Init_NOTE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ﬂ «»… „·ÕÊŸ«  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Õ„Ì· «·„Õ ÊÌ „‰ „·› '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action openn",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' Õ›Ÿ ›Ì „·› '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action savee",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openn ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile==false )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String xxx",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := xxx",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure savee ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Â·  —Ìœ «·ﬂ «»… ⁄·Ì… ' Title ' «·„·› „ÊÃÊœ „”»ﬁ«' Type: Message Ok/Cancel",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
Return
*-------------------------------------------------------------------*
