*---------------------------------------------------------------------------*
* Time : 01:16:40    Date : 12/20/2012
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
aCounter := {}
AADD( aCounter , 1)
AADD( aCounter , 10)
AADD( aCounter , "«Â·« Ê„—Õ»« »ﬂ„ ›Ï «·⁄œ«œ «· ·ﬁ«∆Ï ")
AADD( aCounter , True)
set century on
dDate = DATE()
AADD( aCounter , dDate)
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 150 ,350 ;
WIDTH 374 ;
HEIGHT 447 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "  «·⁄œ«œ «· ·ﬁ«∆Ï «·–Ï Ì⁄„· »‰«¡ ⁄·Ï ﬁÌ„ ›Ï «·„’›Ê›…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 14 ,71 LISTBOX list1;
WIDTH 222 ;
HEIGHT 378 ;
FONT "Arial" SIZE 14 ;
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
IF aCounter[4] = True
FOR x = aCounter[2] TO aCounter[1] STEP -1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCounter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 1 To Array aCounter",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 10 To Array aCounter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '«Â·« Ê„—Õ»« »ﬂ„ ›Ï «·⁄œ«œ «· ·ﬁ«∆Ï ' To Array aCounter",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item True To Array aCounter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","dDate = System Date of today",6,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item dDate To Array aCounter",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  «·⁄œ«œ «· ·ﬁ«∆Ï «·–Ï Ì⁄„· »‰«¡ ⁄·Ï ﬁÌ„ ›Ï «·„’›Ê›…'",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[3]) to Listbox (List1) of Window (Win1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date aCounter[5] TO String",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate) to Listbox (List1) of Window (Win1)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[1] To aCounter[2] Step 1)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aCounter[4] = True )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[2] To aCounter[1] Step -1)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
