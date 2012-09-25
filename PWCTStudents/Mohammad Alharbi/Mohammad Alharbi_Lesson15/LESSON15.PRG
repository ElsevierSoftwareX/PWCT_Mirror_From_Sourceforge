*---------------------------------------------------------------------------*
* Time : 16:12:14    Date : 09/24/2012
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


Resistance R_LESSON15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON15_18smart1() code
aCounter := {}
AADD( aCounter , 1)
AADD( aCounter , 10)
AADD( aCounter , "«Â·« Ê”Â·« »ﬂ„ ›Ì «·⁄œ«œ «· ·ﬁ«∆Ì")
AADD( aCounter , True)
set century on
cDate = DATE()
AADD( aCounter , cDate)
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 409 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ «· ·ﬁ«∆Ì »‰«¡ ⁄·Ï «·ﬁÌ„ ›Ì «·„’›Ê›…  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 16 ,54 LISTBOX list1;
WIDTH 348 ;
HEIGHT 263 ;
FONT "Arial" SIZE 15 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 280 ,52 BUTTONEX btn1;
CAPTION "„”Õ";
ON CLICK clear()  ;
WIDTH 350 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 306 ,53 BUTTONEX btn2;
CAPTION "«Œ›«¡ «·ﬁ«∆„… ";
ON CLICK hide()  ;
WIDTH 350 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 334 ,52 BUTTONEX btn3;
CAPTION "«ŸÂ«— «·ﬁ«∆„… ";
ON CLICK show()  ;
WIDTH 352 HEIGHT 29 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
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
IF aCounter[4]=True
FOR x = aCounter[2] TO aCounter[1] STEP -1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
ENDIF
return
procedure clear()
win1.list1.DeleteAllItems ( )
return
procedure hide()
win1.list1.Hide ( )
return
procedure show()
win1.list1.Show ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON15
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCounter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 1 To Array aCounter",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 10 To Array aCounter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '«Â·« Ê”Â·« »ﬂ„ ›Ì «·⁄œ«œ «· ·ﬁ«∆Ì' To Array aCounter",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item True To Array aCounter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = System Date of today",6,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cDate To Array aCounter",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ «· ·ﬁ«∆Ì »‰«¡ ⁄·Ï «·ﬁÌ„ ›Ì «·„’›Ê›…  '",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '„”Õ'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clear",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«Œ›«¡ «·ﬁ«∆„… '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«ŸÂ«— «·ﬁ«∆„… '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action show",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[3]) to Listbox (List1) of Window (Win1)",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date aCounter[5] TO String",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate) to Listbox (List1) of Window (Win1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[1] To aCounter[2] Step 1)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aCounter[4]=True )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = aCounter[2] To aCounter[1] Step -1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clear ( Event : CLICK )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide ( Event : CLICK )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Hide ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show ( Event : CLICK )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Show ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
Return
*-------------------------------------------------------------------*
