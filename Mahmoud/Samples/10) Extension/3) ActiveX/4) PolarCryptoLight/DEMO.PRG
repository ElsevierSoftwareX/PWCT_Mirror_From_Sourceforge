#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:35:16    Date : 11/22/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "PolarCryptoLight" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "CryptoLight.CryptoLight.2.5" , 10 , 10 , 1 , 1)
oActiveX:Load()
@ 31 ,69 LABEL lbl1 ;
VALUE "Key" ;
WIDTH 30 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 77 ,39 LABEL lbl2 ;
VALUE "Plain Text" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,29 LABEL lbl3 ;
VALUE "Cipher Text" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 28 ,116 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 400 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 74 ,116 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 400 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 120 ,116 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 400 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 185 ,150 BUTTONEX btn1;
CAPTION "Encryption";
ON CLICK myencryption()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 185 ,272 BUTTONEX btn2;
CAPTION "Decryption";
ON CLICK mydecryption()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc myencryption
mykey := win1.text1.Value
mykey = ALLTRIM ( mykey )
myplain := win1.text2.Value
myplain = ALLTRIM ( myplain )
oactivex:OOLE:password := mykey
myoutput := oactivex:OOLE:encrypt ( myplain )
myoutput := oactivex:OOLE:encode ( myoutput,1 )
win1.text3.Value := myoutput
Return Nil
Proc mydecryption
mykey := win1.text1.Value
mykey = ALLTRIM ( mykey )
mycipher := win1.text3.Value
mycipher = ALLTRIM ( mycipher )
oactivex:OOLE:password := mykey
myoutput := oactivex:OOLE:decode ( mycipher,1 )
myoutput := oactivex:OOLE:decrypt ( myoutput )
myoutput := oactivex:OOLE:encode ( myoutput,3 )
win1.text2.Value := myoutput
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myencryption",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","myplain = win1.text2.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","myplain = All Trim myplain",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = oactivex.encrypt ( myplain )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = oactivex.encode ( myoutput,1 )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := myoutput",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydecryption",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","mycipher = win1.text3.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","mycipher = All Trim mycipher",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = oactivex.decode ( mycipher,1 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = oactivex.decrypt ( myoutput )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = oactivex.encode ( myoutput,3 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := myoutput",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
Return
*-------------------------------------------------------------------*
