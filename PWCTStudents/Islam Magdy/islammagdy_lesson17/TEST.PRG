*---------------------------------------------------------------------------*
* Time : 10:05:49    Date : 10/31/2012
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
aArray := {}
aArray := {"1","2","17","9","35","44"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 380 ;
ICON "PWCTICON" ;
TITLE "using array as stack  " ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 37 ,15 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"1","2","17","9","35","44"} ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 43 ,246 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 258 ,313 BUTTONEX btn1;
CAPTION "pop ";
ON CLICK pop()  ;
WIDTH 104 HEIGHT 39 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 247 ,110 BUTTONEX btn2;
CAPTION "push ";
ON CLICK push()  ;
WIDTH 110 HEIGHT 36 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 247 ,8 TEXTBOX text1;
HEIGHT 39 ;
WIDTH 92 ;
FONT "arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 295 ,5 LABEL lbl1 ;
VALUE "Enter Number To Push " ;
WIDTH 200 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 8 ,14 LABEL lbl2 ;
VALUE "push list " ;
WIDTH 204 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 9 ,250 LABEL lbl3 ;
VALUE "pop list " ;
WIDTH 203 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pop()
nMax  = LEN(aArray)
IF nMax >0
Win1.List2.Additem ( aArray[nMax] )
ADEL( aArray , nMax)
ASIZE( aArray , LEN( aArray ) - 1 )
ENDIF
win1.list1.DeleteItem ( nMax )
return
procedure push()
cItem := win1.text1.Value
cItem = ALLTRIM ( cItem )
AADD( aArray , cItem)
win1.list1.AddItem ( cItem )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {'1','2','17','9','35','44'}",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'using array as stack  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','17','9','35','44'}",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'pop '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'push '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter Number To Push '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'push list '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'pop list '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[nMax]) to Listbox (List2) of Window (Win1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item nMax from Array aArray",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( nMax )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = win1.text1.Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = All Trim cItem",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cItem To Array aArray",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cItem )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*
