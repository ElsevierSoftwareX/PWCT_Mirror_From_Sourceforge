*---------------------------------------------------------------------------*
* Time : 17:29:48    Date : 12/24/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.12.23
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MD5_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MD5_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 735 ;
HEIGHT 198 ;
ICON "PWCTICON" ;
TITLE "MD5 Encryption/Decryption  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 28 ,11 LABEL lbl1 ;
VALUE "Plain Text " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 75 ,11 LABEL lbl2 ;
VALUE "Cipher Text " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 28 ,123 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 420 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 75 ,122 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 420 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 28 ,558 BUTTONEX btn1;
CAPTION "Clear ";
ON CLICK ClearText1()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 75 ,558 BUTTONEX btn2;
CAPTION "Clear ";
ON CLICK ClearText2()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 28 ,638 BUTTONEX btn3;
CAPTION "Encrypt ";
ON CLICK Encrypt()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 75 ,638 BUTTONEX btn4;
CAPTION "Decrypt ";
ON CLICK Decrypt()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 122 ,558 BUTTONEX btn5;
CAPTION "Close ";
ON CLICK win1.Release()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 130 ,10 LABEL lbl3 ;
VALUE "Password " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 118 ,121 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 420 ;
VALUE "123" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure ClearText1()
win1.text1.Value := ""
return
procedure ClearText2()
win1.text2.Value := ""
return
procedure Encrypt()
cText = hb_MD5Encrypt ( win1.text1.Value , win1.text3.value )
win1.text2.Value := cText
return
procedure Decrypt()
cText = hb_MD5Decrypt ( win1.text2.Value , win1.text3.value )
win1.text1.Value := cText
return

End Of Resistance

INIT PROCEDURE Init_MD5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'MD5 Encryption/Decryption  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Plain Text '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Cipher Text '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Clear '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ClearText1",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Clear '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ClearText2",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Encrypt '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Encrypt",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Decrypt '",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Decrypt",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Password '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ClearText1 ( Event : CLICK )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ClearText2 ( Event : CLICK )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Encrypt ( Event : CLICK )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","cText = Call Function hb_MD5Encrypt ( win1.text1.Value , win1.text3.value )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := cText",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Decrypt ( Event : CLICK )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","cText = Call Function hb_MD5Decrypt ( win1.text2.Value , win1.text3.value )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cText",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
Return
*-------------------------------------------------------------------*
