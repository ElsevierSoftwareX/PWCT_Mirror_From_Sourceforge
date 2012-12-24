*---------------------------------------------------------------------------*
* Time : 14:37:01    Date : 12/17/2012
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
aArray1 := {}
AADD( aArray1 , "1")
AADD( aArray1 , "2")
AADD( aArray1 , "3")
AADD( aArray1 , "4")
AADD( aArray1 , "5")
AADD( aArray1 , "One")
AADD( aArray1 , "Two")
AADD( aArray1 , "Three")
AADD( aArray1 , "Four")
AADD( aArray1 , "Fve")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " ÇáÊÚÇãá ãÚ ÇáãÕÝæÝÇÊ " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 33 ,40 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aArray1 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 33 ,249 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 273 ,141 BUTTONEX btn1;
CAPTION "Add Items    ÅÖÇÝÉ ÇáÚäÇÕÑ";
ON CLICK pAdd()  ;
WIDTH 208 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
nMax  = LEN(aArray1)
FOR x = 1 TO nMax STEP 1
nLen  = LEN(aArray1[x])
IF nLen > 1
Win1.List2.Additem ( aArray1[x] )
ENDIF
Next
return


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray1",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '1' To Array aArray1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '2' To Array aArray1",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '3' To Array aArray1",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '4' To Array aArray1",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '5' To Array aArray1",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'One' To Array aArray1",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Two' To Array aArray1",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Three' To Array aArray1",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Four' To Array aArray1",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Fve' To Array aArray1",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÇáÊÚÇãá ãÚ ÇáãÕÝæÝÇÊ '",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray1",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Items    ÅÖÇÝÉ ÇáÚäÇÕÑ'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray1",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","nLen = Get Length of String/Variable/Array aArray1[x]",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLen > 1 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray1[x]) to Listbox (List2) of Window (Win1)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
