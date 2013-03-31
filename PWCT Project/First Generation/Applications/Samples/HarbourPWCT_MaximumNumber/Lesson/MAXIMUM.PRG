*---------------------------------------------------------------------------*
* Time : 23:02:24    Date : 10/19/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_MAXIMUM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAXIMUM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 599 ;
HEIGHT 514 ;
ICON "PWCTICON" ;
TITLE "maximum" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 5 ,79 IMAGE image1;
PICTURE "MAXI.JPG";
STRETCH ;
WIDTH 421 HEIGHT 118
@ 428 ,477 BUTTONEX btn1;
CAPTION "Max";
ON CLICK mymax()  ;
WIDTH 105 HEIGHT 37 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 216 ,171 LISTBOX list1;
WIDTH 334 ;
HEIGHT 206 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 155 ,29 LABEL lbl1 ;
VALUE "the number" ;
WIDTH 151 ;
HEIGHT 38 ;
FONT "Jokerman" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 153 ,402 BUTTONEX btn2;
CAPTION "add number";
ON CLICK myadd()  ;
WIDTH 177 HEIGHT 35 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 155 ,186 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 211 ;
FONT "Cooper Black" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
NUMERIC 

@ 209 ,2 IMAGE image2;
PICTURE "NOSA.JPG";
STRETCH ;
WIDTH 148 HEIGHT 236
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd()
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax()
myreem := win1.list1.ItemCount
IF myreem=0
MyOut := MSGBOX("The listis empty","alert")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF myreem=1
MyOut := MSGBOX(mymax,"the maximum")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO myreem STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"maximum")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAXIMUM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'maximum'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'MAXI.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Max'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'the number'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'add number'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'NOSA.JPG'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd()",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","myreem = win1.list1.ItemCount",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myreem=0 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The listis empty' Title 'alert' Type: Message Box",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myreem=1 )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'the maximum' Type: Message Box",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To myreem Step 1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'maximum' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
Return
*-------------------------------------------------------------------*
