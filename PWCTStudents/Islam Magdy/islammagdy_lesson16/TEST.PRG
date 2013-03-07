*---------------------------------------------------------------------------*
* Time : 09:21:04    Date : 10/31/2012
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

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aArray ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 9 ,246 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 235 ,307 BUTTONEX btn1;
CAPTION "pop ";
ON CLICK pop()  ;
WIDTH 104 HEIGHT 39 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 231 ,19 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 158 ;
FONT "arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 284 ,54 BUTTONEX btn2;
CAPTION "push ";
ON CLICK push()  ;
WIDTH 110 HEIGHT 36 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pop()
nMax  = LEN(aArray)
ADEL( aArray , nMax)
ASIZE( aArray , LEN( aArray ) - 1 )
IF nMax >0
Win1.List2.Additem ( aArray(nMax) )
win1.list1.DeleteItem ( nMax )
ENDIF
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
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {'1','2','17','9','35','44'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'using array as stack  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'pop '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'push '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item nMax from Array aArray",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray(nMax)) to Listbox (List2) of Window (Win1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( nMax )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = win1.text1.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = All Trim cItem",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cItem To Array aArray",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cItem )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
