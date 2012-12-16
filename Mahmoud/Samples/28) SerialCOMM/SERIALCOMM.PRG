*---------------------------------------------------------------------------*
* Time : 02:28:46    Date : 12/16/2012
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


Resistance R_SERIALCOMM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SERIALCOMM_18smart1() code
Public nHandle
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 657 ;
HEIGHT 424 ;
ICON "PWCTICON" ;
TITLE "SerialCOMM  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LABEL lbl1 ;
VALUE "Output " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 41 ,12 EDITBOX edit1;
WIDTH 620 ;
HEIGHT 230;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 290 ,14 BUTTONEX btn1;
CAPTION "Connect ";
ON CLICK connect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 330 ,14 BUTTONEX btn2;
CAPTION "Disconnect ";
ON CLICK Disconnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 289 ,513 BUTTONEX btn3;
CAPTION "Send ";
ON CLICK Send()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 289 ,304 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 327 ,513 BUTTONEX btn4;
CAPTION "Receive ";
ON CLICK Receive()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action Receive()
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure connect()
lWork = ISWORKING( nHandle )
IF lWork = True
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Already connected"
else
Win1.Edit1.VALUE := "Already connected"
endif
Return 0
ENDIF
nHandle := INIT_PORT( "COM1", 1920 , 8 , 0, 1, 8000 )
lWork = ISWORKING( nHandle )
IF lWork
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Connected "
else
Win1.Edit1.VALUE := "Connected "
endif
ELSE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Cann't connect "
else
Win1.Edit1.VALUE := "Cann't connect "
endif
ENDIF
return
procedure Disconnect()
lWork = ISWORKING( nHandle )
IF lWork = False
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "No connection "
else
Win1.Edit1.VALUE := "No connection "
endif
Return 0
ENDIF
UNINT_PORT( nHandle )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Disconnect "
else
Win1.Edit1.VALUE := "Disconnect "
endif
return
procedure Send()
lWork = ISWORKING( nHandle )
IF lWork = False
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "No connection "
else
Win1.Edit1.VALUE := "No connection "
endif
Return 0
ENDIF
cValue := win1.text1.Value
OUTCHR( nHandle , cValue )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Send :  " + cValue
else
Win1.Edit1.VALUE := "Send :  " + cValue
endif
return
procedure Receive()
lWork = ISWORKING( nHandle )
IF lWork = False
Return 0
ENDIF
nSize := INBUFSIZE( nHandle )
IF nSize > 0
cReceive := Space( nSize )
INCHR( nHandle, nSize, @cReceive )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Receive : " + cReceive
else
Win1.Edit1.VALUE := "Receive : " + cReceive
endif
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_SERIALCOMM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public nHandle",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'SerialCOMM  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Output '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Connect '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action connect",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Disconnect '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Disconnect",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Send '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Send",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Receive '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Receive",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect ( Event : CLICK )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork = True )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Already connected') to Editbox (Edit1) of Window (Win1)",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","nHandle = Serial - Init Port ( 'COM1' )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Connected ') to Editbox (Edit1) of Window (Win1)",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Cann't connect ') to Editbox (Edit1) of Window (Win1)",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork = False )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No connection ') to Editbox (Edit1) of Window (Win1)",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Serial - UnInit Port ( nHandle )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Disconnect ') to Editbox (Edit1) of Window (Win1)",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Send ( Event : CLICK )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork = False )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No connection ') to Editbox (Edit1) of Window (Win1)",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.text1.Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Serial - Send data ( Handle : nHandle , Data : cValue )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Send :  ' + cValue) to Editbox (Edit1) of Window (Win1)",118,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Receive ( Event : CLICK )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork = False )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","nSize = Serial - Get Input Buffer Size ( Handle : nHandle )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nSize > 0 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","cReceive = Serial Receive Data ( Handle : nHandle , Size : nSize )",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Receive : ' + cReceive) to Editbox (Edit1) of Window (Win1)",133,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
Return
*-------------------------------------------------------------------*
