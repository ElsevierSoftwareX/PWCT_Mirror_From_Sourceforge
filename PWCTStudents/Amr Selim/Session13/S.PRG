*---------------------------------------------------------------------------*
* Time : 22:38:40    Date : 01/09/2012
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


Resistance R_S_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_S_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 468 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ »Ì‰ —ﬁ„Ì‰ ⁄„—Ê ”·Ì„  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 4 ,292 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 93 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 53 ,292 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 93 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 107 ,291 BUTTONEX btn1;
CAPTION "«»œ√ «·⁄œœ ";
ON CLICK STARTT()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 6 ,403 LABEL lbl1 ;
VALUE "„‰ " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 60 ,406 LABEL lbl2 ;
VALUE "«·Ì " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 15 ,6 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure STARTT()
NUM1 := win1.text1.Value
NUM2 := win1.text2.Value
FOR x = NUM1 TO NUM2 STEP 1
X2 = STR ( X )
X2 = ALLTRIM ( X2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + X2
else
Win1.Edit1.VALUE := X2
endif
Next
return


End Of Resistance

INIT PROCEDURE Init_S
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄œ«œ »Ì‰ —ﬁ„Ì‰ ⁄„—Ê ”·Ì„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«»œ√ «·⁄œœ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action STARTT",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ì '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure STARTT ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","NUM1 = win1.text1.Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","NUM2 = win1.text2.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = NUM1 To NUM2 Step 1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","X2 = CONVERT X TO STRING",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","X2 = All Trim X2",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (X2) to Editbox (Edit1) of Window (Win1)",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
