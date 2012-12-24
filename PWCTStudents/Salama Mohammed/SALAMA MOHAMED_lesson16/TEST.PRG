*---------------------------------------------------------------------------*
* Time : 10:59:30    Date : 12/20/2012
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
aNumbers := {}
FOR x = 1 TO 10 STEP 1
AADD( aNumbers , {x , x*x})
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 150 ,360 ;
WIDTH 376 ;
HEIGHT 390 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "  «· ⁄«„· „⁄ „’›Ê›… –«  »⁄œÌ‰ Ê≈Ã—«¡ «·⁄„·Ì«  «·Õ”«»Ì… ⁄·Ï ⁄‰«’—«·„’›Ê›…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 23 ,93 LISTBOX list1;
WIDTH 179 ;
HEIGHT 303 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

FOR x = 1 TO 10 STEP 1
AADD( aNumbers , {x , x*x})
Next
procedure pWork()
nMax  = LEN(aNumbers)
FOR x = 1 TO nMax STEP 1
nSum := aNumbers[x][1]+aNumbers[x][2]
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
Win1.List1.Additem ( cSum )
Next
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x , x*x} To Array aNumbers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  «· ⁄«„· „⁄ „’›Ê›… –«  »⁄œÌ‰ Ê≈Ã—«¡ «·⁄„·Ì«  «·Õ”«»Ì… ⁄·Ï ⁄‰«’—«·„’›Ê›…'",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x , x*x} To Array aNumbers",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aNumbers",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = aNumbers[x][1]+aNumbers[x][2]",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cSum) to Listbox (List1) of Window (Win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
