*---------------------------------------------------------------------------*
* Time : 22:06:10    Date : 10/13/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO2_18smart1() code
if !iswindowdefined( win1 )
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
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 74 ,116 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 400 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 120 ,116 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 400 ;
FONT "arial" SIZE 9 ;
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
EndIF

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
PutFile := PutFile (  , ;
, ;
, ;
, ;
)
win1.text3.Value := putfile
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PolarCryptoLight'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Key'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Input File'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Output File'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Encryption'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myencryption()",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Decryption'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydecryption()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Browse'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybrowse1()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Browse'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybrowse2()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myencryption",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = win1.text2.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = All Trim myinput",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = win1.text3.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = All Trim myoutput",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","myvar = oactivex.encryptfile ( myinput,myoutput )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydecryption",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = win1.text1.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","mykey = All Trim mykey",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = win1.text2.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","myinput = All Trim myinput",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = win1.text3.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = All Trim myoutput",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.password := mykey",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","myvar = oactivex.decryptfile ( myinput,myoutput )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse1",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := getfile",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse2",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := putfile",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
Return
*-------------------------------------------------------------------*
