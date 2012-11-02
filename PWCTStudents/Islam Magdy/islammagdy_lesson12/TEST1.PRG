*---------------------------------------------------------------------------*
* Time : 14:12:11    Date : 10/25/2012
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


Resistance R_TEST1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST1_18smart1() code
aCounter := {}
AADD( aCounter , 1)
AADD( aCounter , 10)
AADD( aCounter , "«Â·« Ê„—Õ»« »ﬂ„ ›Ï «·⁄œ«œ «· ·ﬁ«∆Ï")
AADD( aCounter , false)
set century on
dDate = DATE()
AADD( aCounter , dDate)
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ «· ·ﬁ«∆Ï „‰ Œ·«· «·„’›Ê›…  " ;
MAIN ;
BACKCOLOR {255,128,64} 

@ 12 ,9 LISTBOX list1;
WIDTH 206 ;
HEIGHT 297 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
Win1.List1.Additem ( aCounter[3] )
cDate = DTOC ( aCounter[5] )
Win1.List1.Additem ( cDate )
FOR x = aCounter[1] TO aCounter[2] STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
IF aCounter[4]= true
FOR x = aCounter[2] TO aCounter[1] STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_TEST1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCounter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 1 To Array aCounter",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 10 To Array aCounter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '«Â·« Ê„—Õ»« »ﬂ„ ›Ï «·⁄œ«œ «· ·ﬁ«∆Ï' To Array aCounter",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item false To Array aCounter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","dDate = System Date of today",6,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item dDate To Array aCounter",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ «· ·ﬁ«∆Ï „‰ Œ·«· «·„’›Ê›…  '",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[3]) to Listbox (List1) of Window (Win1)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date aCounter[5] TO String",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate) to Listbox (List1) of Window (Win1)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[1] To aCounter[2] Step 1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aCounter[4]= true )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[2] To aCounter[1] Step 1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
Return
*-------------------------------------------------------------------*
