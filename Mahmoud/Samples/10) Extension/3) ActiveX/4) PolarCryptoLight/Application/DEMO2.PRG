#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:35:45    Date : 11/22/2008
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
WIDTH 644 ;
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
VALUE "Input File" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,29 LABEL lbl3 ;
VALUE "Output File" ;
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
@ 185 ,206 BUTTONEX btn1;
CAPTION "Encryption";
ON CLICK myencryption()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 185 ,328 BUTTONEX btn2;
CAPTION "Decryption";
ON CLICK mydecryption()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,528 BUTTONEX btn3;
CAPTION "Browse";
ON CLICK mybrowse1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 120 ,528 BUTTONEX btn4;
CAPTION "Browse";
ON CLICK mybrowse2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc myencryption
mykey := win1.text1.Value
mykey = ALLTRIM ( mykey )
myinput := win1.text2.Value
myinput = ALLTRIM ( myinput )
myoutput := win1.text3.Value
myoutput = ALLTRIM ( myoutput )
oactivex:OOLE:password := mykey
myvar := oactivex:OOLE:encryptfile ( myinput,myoutput )
Return Nil
Proc mydecryption
mykey := win1.text1.Value
mykey = ALLTRIM ( mykey )
myinput := win1.text2.Value
myinput = ALLTRIM ( myinput )
myoutput := win1.text3.Value
myoutput = ALLTRIM ( myoutput )
oactivex:OOLE:password := mykey
myvar := oactivex:OOLE:decryptfile ( myinput,myoutput )
Return Nil
Proc mybrowse1
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
win1.text2.Value := getfile
Return Nil
Proc mybrowse2
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
win1.text3.Value := getfile
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO2
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myencryption",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = win1.text2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = All Trim myinput",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = win1.text3.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = All Trim myoutput",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","myvar = oactivex.encryptfile ( myinput,myoutput )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydecryption",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = win1.text2.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = All Trim myinput",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = win1.text3.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = All Trim myoutput",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","myvar = oactivex.decryptfile ( myinput,myoutput )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse1",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",104,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := getfile",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse2",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := getfile",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
