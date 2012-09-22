*---------------------------------------------------------------------------*
* Time : 00:08:26    Date : 09/23/2012
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


Resistance R_LESSON12_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON12_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 442 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÇÌÑÇÁÇÊ  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 304 ,340 LABEL lbl1 ;
VALUE "ÇáÅÓã" ;
WIDTH 201 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 304 ,136 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "ÇÏÎá ÇáßáãÉ ÇáãÑÇÏ ÊÚÏÇÏ ÍÑæÝåÇ" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 291 ,26 BUTTONEX btn1;
CAPTION "ÃÖÝ ";
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 73 ,25 LISTBOX list1;
WIDTH 357 ;
HEIGHT 203 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 23 ,84 LABEL lbl2 ;
VALUE "ÈÑäÇãÌ ÊÚÏÇÏ ÍÑæÝ ÇáßáãÉ ÇáãÏÎáÉ " ;
WIDTH 277 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 326 ,25 BUTTONEX btn2;
CAPTION "ÍÐÝ ";
ON CLICK Remove()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
cName := win1.text1.Value
cName = ALLTRIM ( cName )
nCount = AddLetter ( cName )
cCount = STR ( nCount )
MyOut := MSGBOX("ÚÏÏ ÇáÍÑæÝ "+cCount,"ÚÏÏ ÇáÍÑæÝ ")
return
Function  AddLetter ( cInput )
Local nMax
nMax := 0
nMax  = LEN(cInput)
IF nMax>1
Win1.List1.Additem ( " ÚÏÏ ÍÑæÝ " + cName )
FOR x = 1 TO nMax STEP 1
cLetter = SUBSTR(cInput,x,1)
Win1.List1.Additem ( cLetter )
Next
ENDIF
Return nMax
procedure Remove()
win1.list1.DeleteAllItems ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON12
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÇÌÑÇÁÇÊ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÅÓã'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÃÖÝ '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'ÈÑäÇãÌ ÊÚÏÇÏ ÍÑæÝ ÇáßáãÉ ÇáãÏÎáÉ '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÍÐÝ '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Remove",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","cName = All Trim cName",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = Call Function AddLetter ( cName )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","cCount = CONVERT nCount TO STRING",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÏÏ ÇáÍÑæÝ '+cCount Title 'ÚÏÏ ÇáÍÑæÝ ' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function AddLetter ( cInput )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = 0",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array cInput",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>1 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ÚÏÏ ÍÑæÝ ' + cName) to Listbox (List1) of Window (Win1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cLetter = Sub String of cInput From x Count 1",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cLetter) to Listbox (List1) of Window (Win1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nMax)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Remove ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
