*---------------------------------------------------------------------------*
* Time : 01:49:12    Date : 11/13/2012
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


Resistance R_18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_18_18smart1() code
aArray := {"1","5","7","12","20","30"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Using Array as Stack  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,20 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aArray ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,260 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 247 ,305 BUTTONEX btn1;
CAPTION "POP ";
ON CLICK pop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 240 ,20 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 301 ,57 BUTTONEX btn2;
CAPTION "Push ";
ON CLICK push()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pop()
nMax  = LEN(aArray)
IF nMax > 0
Win1.List2.Additem ( aArray[nMax] )
ADEL( aArray , nMax)
ASIZE( aArray , LEN( aArray ) - 1 )
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

INIT PROCEDURE Init_18
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {'1','5','7','12','20','30'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Array as Stack  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'POP '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Push '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop ( Event : CLICK )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[nMax]) to Listbox (List2) of Window (Win1)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item nMax from Array aArray",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( nMax )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = win1.text1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = All Trim cItem",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cItem To Array aArray",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cItem )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
