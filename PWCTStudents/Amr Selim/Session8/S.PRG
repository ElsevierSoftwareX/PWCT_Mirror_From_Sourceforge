*---------------------------------------------------------------------------*
* Time : 22:37:57    Date : 01/10/2012
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
WIDTH 280 ;
HEIGHT 268 ;
ICON "PWCTICON" ;
TITLE "  ⁄œ«œ «· ”»ÌÕ " ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 30 ,119 LABEL lbl1 ;
VALUE "0" ;
WIDTH 21 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 71 ,80 BUTTONEX btn1;
CAPTION " ”»ÌÕ ";
ON CLICK SS()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,58 LABEL lbl2 ;
VALUE "”»Õ«‰ «··Â Ê »Õ„œÂ ”»Õ«‰ «··Â «·⁄ŸÌ„ " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 111 ,89 LABEL lbl3 ;
VALUE "”»Ã«‰ «··Â " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure SS()
S := win1.lbl1.Value
S = VAL ( S )
S := S+1
IF S= 34
win1.btn1.Caption := " ﬂ»Ì—"
win1.lbl3.Value := "«··Â «ﬂ»—"
ELSEIF S=67
win1.btn1.Caption := " Õ„Ìœ"
win1.lbl3.Value := "«·Õ„œ ··Â"
ENDIF
IF S=100
win1.btn1.Caption := " ”»ÌÕ"
win1.lbl3.Value := "”»Õ«‰ «··Â"
S := 1
ENDIF
S = STR ( S )
win1.lbl1.Value := S
IF win1.lbl2.VISIBLE ==TRUE
win1.lbl2.Visible := FALSE
ELSE
win1.lbl2.Visible := TRUE
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_S
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  ⁄œ«œ «· ”»ÌÕ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ”»ÌÕ '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SS",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '”»Õ«‰ «··Â Ê »Õ„œÂ ”»Õ«‰ «··Â «·⁄ŸÌ„ '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '”»Ã«‰ «··Â '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SS ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","S = win1.lbl1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","S = CONVERT S TO Numeric",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","S = S+1",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( S= 34 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := ' ﬂ»Ì—'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := '«··Â «ﬂ»—'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( S=67 )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := ' Õ„Ìœ'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := '«·Õ„œ ··Â'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( S=100 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := ' ”»ÌÕ'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := '”»Õ«‰ «··Â'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","S = 1",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","S = CONVERT S TO STRING",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := S",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.lbl2.VISIBLE ==TRUE )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Visible := FALSE",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Visible := TRUE",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
