*---------------------------------------------------------------------------*
* Time : 17:12:25    Date : 09/07/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 756 ;
HEIGHT 358 ;
ICON "PWCTICON" ;
TITLE "Using Http  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 28 ,84 LABEL lbl1 ;
VALUE "ID " ;
WIDTH 30 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,0,64}
@ 28 ,124 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 28 ,622 BUTTONEX btn1;
CAPTION "Send ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pSend()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 89 ,20 LABEL lbl2 ;
VALUE "Response " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,0,64}
@ 85 ,124 EDITBOX edit1;
WIDTH 470 ;
HEIGHT 200;
FONT "Arial" SIZE 14 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 85 ,622 BUTTONEX btn2;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSend()
Local nID,cID
nID := win1.text1.Value
cID = STR ( nID )
cID = ALLTRIM ( cID )
Public MyCon
MyCon := THttp():New()
MyCon:Connect( 'www.mywebsite.com', 80 )
GET URL "/myScript.php?id="+cID TO Response CONNECTION MyCon
CLOSE CONNECTION MyCon
win1.edit1.Value := response
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Http  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ID '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send '",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSend",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Response '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSend ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Local nID,cID",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","nID = win1.text1.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","cID = CONVERT nID TO STRING",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cID = All Trim cID",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Open Connection (MyCon) Server ('www.mywebsite.com') Port (80)",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Get URL ('/myScript.php?id='+cID) Connection (MyCon) Variable-Response (Response)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Close Connection (MyCon)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value = response",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
Return
*-------------------------------------------------------------------*
