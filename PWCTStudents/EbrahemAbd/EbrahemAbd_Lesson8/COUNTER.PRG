*---------------------------------------------------------------------------*
* Time : 06:47:43    Date : 03/07/2012
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 545 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -18 ,-3 IMAGE image1;
PICTURE "PICO\PIC.JPG";
STRETCH ;
WIDTH 542 HEIGHT 404
@ 41 ,377 LABEL lbl1 ;
VALUE "„‰ " ;
WIDTH 60 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 39 ,231 LABEL lbl2 ;
VALUE "«·Ï " ;
WIDTH 50 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 39 ,289 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 39 ,133 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 286 ,332 BUTTONEX btn1;
CAPTION "⁄œ «·¬‰ ";
ON CLICK mycount()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 292 ,144 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
PICTURE "PICO\CLOSE.BMP";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 86 ,114 EDITBOX edit1;
WIDTH 315 ;
HEIGHT 195;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure mycount()
t1 := win1.text1.Value
t2 := win1.text2.Value
IF t1=0 .or. t2=0
MyOut := MSGExclamation("√œŒ· »œ«Ì… Ê‰Â«Ì… «·⁄œ«œ "," ⁄›Ê«")
win1.text1.SetFocus ( )
Return 0
ENDIF
FOR x = t1 TO t2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
return
procedure exit()
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\PIC.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ï '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·¬‰ '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycount",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycount ( Event : CLICK )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","t1 = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = win1.text2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t1=0 .or. t2=0 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '√œŒ· »œ«Ì… Ê‰Â«Ì… «·⁄œ«œ ' Title ' ⁄›Ê«' Type: Message Exclamation",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = t1 To t2 Step 1)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",97,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",105,105)
Return
*-------------------------------------------------------------------*
