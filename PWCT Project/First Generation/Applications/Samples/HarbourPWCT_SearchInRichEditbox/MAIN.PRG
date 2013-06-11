*---------------------------------------------------------------------------*
* Time : 01:42:20    Date : 06/12/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.11
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
cStr := ""
cStr := cStr + CHR(13) + CHR(10) + "Hello "
cStr := cStr + CHR(13) + CHR(10) + "My name is Mahmoud Samir Fayed "
cStr := cStr + CHR(13) + CHR(10) + "How are you ? "
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Search in RichEditBox  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 16,12 RICHEDITBOX richeditbox1;
WIDTH 466 ;
HEIGHT 280 ;
VALUE cStr ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 318 ,58 LABEL lbl1 ;
VALUE "Search " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 314 ,122 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "Mahmoud" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 314 ,332 BUTTONEX btn1;
CAPTION "Search ";
ON CLICK pSearch()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pSearch()
Local cText
cText := win1.text1.Value
cRichText := win1.richeditbox1.Value
nPos = AT(cText,cRichText)
IF nPos > 0
cRichValue := win1.richeditbox1.richvalue(2)
cRichValue = STRTRAN(cRichValue,cText,"\cf1\b\fs28 " + cText + "\cf0\fs22 \b0 ")
win1.richeditbox1.richvalue(2) := cRichValue
ELSE
MyOut := MSGBOX("Not Found ","Sorry ")
ENDIF
return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","cStr = ''",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Hello ') to string (cStr)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('My name is Mahmoud Samir Fayed ') to string (cStr)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('How are you ? ') to string (cStr)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search in RichEditBox  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,17)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","RichEditBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSearch",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSearch ( Event : CLICK )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Local cText",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","cText = win1.text1.Value",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","cRichText = win1.richeditbox1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF cText IN cRichText",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nPos > 0 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","cRichValue = win1.richeditbox1.richvalue(2)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","cRichValue = Sub String cText FROM cRichValue TRANSFORM TO '\cf1\b\fs28 ' + cText + '\cf0\fs22 \b0 '",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.richeditbox1.richvalue(2) := cRichValue",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Not Found ' Title 'Sorry ' Type: Message Box",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
