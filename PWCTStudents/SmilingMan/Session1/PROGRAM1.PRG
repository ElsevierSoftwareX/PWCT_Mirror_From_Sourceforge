*---------------------------------------------------------------------------*
* Time : 10:53:34    Date : 12/09/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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


Resistance R_PROGRAM1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROGRAM1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 942 ;
HEIGHT 495 ;
ICON "PWCTICON" ;
TITLE "hope" ;
MAIN ;
BACKCOLOR {24,254,242} 

@ 62 ,560 LISTBOX list1;
WIDTH 203 ;
HEIGHT 240 ;
FONT "andalus" SIZE 20 ;
BACKCOLOR {251,177,96} ;
FONTCOLOR {64,128,128}
@ 62 ,132 LISTBOX list2;
WIDTH 217 ;
HEIGHT 242 ;
FONT "andalus" SIZE 20 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {64,128,128}
@ 219 ,808 BUTTONEX btn1;
CAPTION "items";
ON CLICK myitems()  ;
WIDTH 94 HEIGHT 33 ;
FONT "andalus" SIZE 15 ;
TOOLTIP ""
@ 218 ,8 BUTTONEX btn2;
CAPTION "prices";
ON CLICK prices()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 15 ;
TOOLTIP ""
@ 3 ,349 LABEL lbl1 ;
VALUE "HELLO WORLD" ;
WIDTH 169 ;
HEIGHT 44 ;
FONT "andalus" SIZE 15  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 360 ,354 BUTTONEX btn3;
CAPTION "close program";
ON CLICK closing()  ;
WIDTH 179 HEIGHT 40 ;
FONT "andalus" SIZE 15 ;
TOOLTIP ""
@ 312 ,392 BUTTONEX btn4;
CAPTION "note";
ON CLICK MSGINFO( "ﬂ· „«  —ÌœÂ „‰ Â–Â «·„»Ì⁄«  „Ã«‰Ì ......›ﬁÿ «» ”„ " ) ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 15 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myitems()
win1.list1.AddItem ( "«·√„·" )
win1.list1.AddItem ( "«·Õ»" )
win1.list1.AddItem ( "«·”·«„" )
win1.list1.AddItem ( "«·„Êœ…" )
win1.list1.AddItem ( "«·√„«‰" )
win1.list1.AddItem ( "«·”⁄«œ…" )
return
procedure closing()
win1.Release ( )
return
procedure prices()
Win1.List2.Additem ( "priceless " )
Win1.List2.Additem ( "priceless " )
Win1.List2.Additem ( "priceless " )
Win1.List2.Additem ( "priceless " )
Win1.List2.Additem ( "priceless " )
Win1.List2.Additem ( "priceless " )
return


End Of Resistance

INIT PROCEDURE Init_PROGRAM1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'hope'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'items'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myitems",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'prices'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prices",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'HELLO WORLD'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'close program'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closing",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'note'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'ﬂ· „«  —ÌœÂ „‰ Â–Â «·„»Ì⁄«  „Ã«‰Ì ......›ﬁÿ «» ”„ '",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myitems ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·√„·' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·Õ»' )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·”·«„' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·„Êœ…' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·√„«‰' )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·”⁄«œ…' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closing ( Event : CLICK )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prices ( Event : CLICK )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('priceless ') to Listbox (List2) of Window (Win1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
