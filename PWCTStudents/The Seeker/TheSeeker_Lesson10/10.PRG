*---------------------------------------------------------------------------*
* Time : 08:51:32    Date : 03/26/2012
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


Resistance R_10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 358 ;
HEIGHT 417 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÇßÈÑ Þã  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 22 ,271 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 17 ,43 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 109 ,66 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 64 ,102 BUTTONEX btn1;
CAPTION "ÇÖÇÝå ";
ON CLICK padd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 320 ,114 BUTTONEX btn2;
CAPTION "ÊÍÏíÏ ÇßÈÑ ÑÞã ";
ON CLICK pmax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure padd()
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
return
procedure pmax()
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("ÇáÞÇÆãå ÊÎáæ ãä ÇáÇÚÏÇÏ "," ÚÝæÇ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã ")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã ")
return


End Of Resistance

INIT PROCEDURE Init_10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÊÍÏíÏ ÇßÈÑ Þã  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇÖÇÝå '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action padd",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÊÍÏíÏ ÇßÈÑ ÑÞã '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pmax",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure padd ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pmax ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãå ÊÎáæ ãä ÇáÇÚÏÇÏ ' Title ' ÚÝæÇ' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>mymax )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
Return
*-------------------------------------------------------------------*
