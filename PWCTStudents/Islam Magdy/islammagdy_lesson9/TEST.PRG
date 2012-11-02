*---------------------------------------------------------------------------*
* Time : 05:59:07    Date : 10/24/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 531 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "ÇáÊÚÑÝ Úáì ÇáãÊÛíÑÇÊ æÇáÏæÇá  " ;
MAIN ;
BACKCOLOR {255,0,0} 

@ 21 ,16 LISTBOX list1;
WIDTH 262 ;
HEIGHT 222 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 283 ,34 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 206 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 283 ,257 LABEL lbl1 ;
VALUE "ÇáÇÓã " ;
WIDTH 76 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 284 ,373 BUTTONEX btn1;
CAPTION "ÇÖÇÝÉ ";
ON CLICK pAdd()  ;
WIDTH 108 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
cName := win1.text1.Value
cName = ALLTRIM ( cName )
nCount = addLeters ( cName )
cCount = STR ( nCount )
MyOut := MSGBOX("ÚÏÏ ÇáÍÑæÝ "+cCount," ÍÓäÇ")
return
Function  addLeters ( cInput )
Local nMax
nMax  = LEN(cInput)
FOR x = 1 TO nMax STEP 1
cLeter = SUBSTR(cInput,x,1)
Win1.List1.Additem ( cLeter )
Next
IF nMax >1
ENDIF
Return nMax


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÊÚÑÝ Úáì ÇáãÊÛíÑÇÊ æÇáÏæÇá  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÇÓã '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇÖÇÝÉ '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","cName = All Trim cName",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = Call Function addLeters ( cName )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","cCount = CONVERT nCount TO STRING",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÏÏ ÇáÍÑæÝ '+cCount Title ' ÍÓäÇ' Type: Message Box",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function addLeters ( cInput )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array cInput",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","cLeter = Sub String of cInput From x Count 1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cLeter) to Listbox (List1) of Window (Win1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >1 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nMax)",58,58)
Return
*-------------------------------------------------------------------*
