*---------------------------------------------------------------------------*
* Time : 01:08:58    Date : 03/01/2012
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


Resistance R_MAX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 284 ;
HEIGHT 420 ;
ICON "PWCTICON" ;
TITLE "ÅíÌÇÏ ÃßÈÑ ÑÞã   " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,128} 

@ 33 ,218 LABEL lbl1 ;
VALUE " ÇáÑÞã " ;
WIDTH 54 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 37 ,31 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 182 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 74 ,103 BUTTONEX btn1;
CAPTION "ÃÖÝ ÇáÑÞã Åáì ÇáÞÇÆãÉ";
ON CLICK Add()  ;
WIDTH 150 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 332 ,133 BUTTONEX btn2;
CAPTION "ÅíÌÇÏ ÃßÈÑ ÑÞã";
ON CLICK FindMax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 332 ,38 BUTTONEX btn3;
CAPTION "ÎÑæÌ";
ON CLICK Close()  ;
WIDTH 75 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 123 ,33 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure Add()
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
return
procedure FindMax()
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÑÞÇã "," ÚÝæÇð")
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

INIT PROCEDURE Init_MAX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÅíÌÇÏ ÃßÈÑ ÑÞã   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' ÇáÑÞã '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÃÖÝ ÇáÑÞã Åáì ÇáÞÇÆãÉ'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Add",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÅíÌÇÏ ÃßÈÑ ÑÞã'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FindMax",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'ÎÑæÌ'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Add ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FindMax ( Event : CLICK )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÃÑÞÇã ' Title ' ÚÝæÇð' Type: Message Box",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>mymax )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã ' Type: Message Box",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
Return
*-------------------------------------------------------------------*
