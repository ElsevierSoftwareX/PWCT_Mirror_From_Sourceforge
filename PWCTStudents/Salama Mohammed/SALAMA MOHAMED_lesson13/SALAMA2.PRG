*---------------------------------------------------------------------------*
* Time : 14:01:08    Date : 12/17/2012
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


Resistance R_SALAMA2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 438 ;
HEIGHT 339 ;
ICON "PWCTICON" ;
TITLE " ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÃÌÑÃÊ " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 28 ,53 LISTBOX list1;
WIDTH 325 ;
HEIGHT 203 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 241 ,158 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 184 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 242 ,349 LABEL lbl1 ;
VALUE "ÇáÃÓã " ;
WIDTH 74 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {0,0,0}
@ 241 ,53 BUTTONEX btn1;
CAPTION "ÅÖÇÝÉ ";
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
cName := win1.text1.Value
cName = ALLTRIM ( cName )
nCount = AddLetters ( cName )
cCount = STR ( nCount )
MyOut := MSGBOX(" ÚÏÏ ÇáÍÑæÝ" + cCount," ÍÓäÂ")
return
Function  AddLetters ( cName )
Local nMax
nMax  = LEN(cName)
Cont := False
IF Cont = False
Return nMax
ENDIF
IF nMax > 0
FOR x = 1 TO nMax STEP 1
cLetter = SUBSTR(cName,x,1)
Win1.List1.Additem ( cLetter )
Next
ENDIF
Return nMax


End Of Resistance

INIT PROCEDURE Init_SALAMA2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÃÌÑÃÊ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÃÓã '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÅÖÇÝÉ '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","cName = All Trim cName",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = Call Function AddLetters ( cName )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","cCount = CONVERT nCount TO STRING",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ÚÏÏ ÇáÍÑæÝ' + cCount Title ' ÍÓäÂ' Type: Message Box",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function AddLetters ( cName )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array cName",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Cont = False",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Cont = False )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Return nMax",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","cLetter = Sub String of cName From x Count 1",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cLetter) to Listbox (List1) of Window (Win1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nMax)",65,65)
Return
*-------------------------------------------------------------------*
