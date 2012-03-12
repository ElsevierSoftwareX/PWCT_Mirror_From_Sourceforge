*---------------------------------------------------------------------------*
* Time : 20:48:52    Date : 02/28/2012
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


Resistance R_LES12_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES12_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 426 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÃßÈÑ ÚÏÏ " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 54 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 290 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 12 ,219 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 70 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 111 ,236 BUTTONEX btn1;
CAPTION "ÅÖÇÝÉ ÇáÑÞã";
ON CLICK add()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 163 ,236 BUTTONEX btn2;
CAPTION "ÊÍÏíÏ ÇáÑÞã ÇáÃßÈÑ ";
ON CLICK maxy()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc add
mynum := win1.text1.Value
mynum = STR ( mynum )
win1.list1.AddItem ( mynum )
Return Nil
Proc maxy
mycount := win1.list1.ItemCount
IF mycount==0
MyOut := MSGBOX("ÇáÞÇÆãÉ ÎÇáíÉ ãä ÇáÃÑÞÇã ","ÎØÃ ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount==1
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã ")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"ÃßÈÑ ÑÞã ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES12
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÃßÈÑ ÚÏÏ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÅÖÇÝÉ ÇáÑÞã'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÊÍÏíÏ ÇáÑÞã ÇáÃßÈÑ '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxy",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = win1.text1.Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT mynum TO STRING",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mynum )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxy",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==0 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÎÇáíÉ ãä ÇáÃÑÞÇã ' Title 'ÎØÃ ' Type: Message Box",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==1 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã ' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÃßÈÑ ÑÞã ' Type: Message Box",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
