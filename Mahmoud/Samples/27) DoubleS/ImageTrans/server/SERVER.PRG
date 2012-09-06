*---------------------------------------------------------------------------*
* Time : 22:05:01    Date : 09/06/2012
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
			Atom myatom                        
				Shell K                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
						Variable myfile Value ""
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
					Resistance myresistance                  
					Resistance acceptconnection              
					Resistance newfile                       
					Resistance savefile                      
					Resistance AcceptFileByte                
					Resistance newline                       
	VetoUnit :
		Receiving Veto acceptconnection
		Veto myveto
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance myresistance
		Veto acceptconnection
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance acceptconnection
		Veto newfile
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance newfile
		Veto savefile
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance savefile
		Veto AcceptFileByte
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance AcceptFileByte
		Veto newline
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance newline
		Channel inchannel
				Type     Input Channel
				Atom     myatom
				Shell    K
				SubShell P
		Channel outchannel2
				Type     Output Channel
				Atom     myatom
				Shell    K
				SubShell D
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SERVER_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_SERVER_18smart2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_SERVER_18smart3() address Code Unit : Circuits\Main\Main\acceptconnection

Resistance R_SERVER_18smart4() address Code Unit : Circuits\Main\Main\newfile

Resistance R_SERVER_18smart5() address Code Unit : Circuits\Main\Main\savefile

Resistance R_SERVER_18smart6() address Code Unit : Circuits\Main\Main\AcceptFileByte

Resistance R_SERVER_18smart7() address Code Unit : Circuits\Main\Main\newline


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SERVER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT vetostart()  ;
ICON "PWCTICON" ;
TITLE "Chat based on Veto System Level (4) - GUI " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 316 ,16 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 350 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 13 ,16 EDITBOX edit1;
WIDTH 457 ;
HEIGHT 289;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 315 ,374 BUTTONEX btn1;
CAPTION "Send";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action myservice()
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mystart
BEGIN SEQUENCE WITH { |e| break(e) }
win1.timer1.Enabled := false
mydata := win1.text1.Value
START REPLY
CON_SENDDATA (mydata)
CON_SENDVETO myveto
END REPLY
win1.timer1.Enabled := true
RECOVER
END SEQUENCE
Return Nil
Proc myservice
CHECK_VETO_SERVICES
Return Nil
Proc vetostart
SET VETO SYSTEM LEVEL 4
Declare server "Server1" address "127.0.0.1" port 1200
Select Input Channel  inchannel
DO SS_VSL4VSL4_feedbackON
DO SS_VSL4VSL4_multisendON
START BIND
Return Nil


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\myresistance
Resistance R_SERVER_18smart2() code
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + mydata
else
Win1.Edit1.VALUE := mydata
endif
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\acceptconnection
Resistance R_SERVER_18smart3() code
mycheck := REQUEST_TYPE_CONNECTION
IF mycheck
ACCEPT CONNECTION
ENDIF


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\newfile
Resistance R_SERVER_18smart4() code
Select Address myatom:k:f
Load Active SubShell From Memory
myfile := ""


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\savefile
Resistance R_SERVER_18smart5() code
PutFile := PutFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,myfile)
FCLOSE(RPWI_TH)


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\AcceptFileByte
Resistance R_SERVER_18smart6() code
newdata := ""
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
newdata := newdata + mydata
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel
myfile := myfile + newdata


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\newline
Resistance R_SERVER_18smart7() code
Open Channel inchannel
ADD NEW ELECTRON datablock TYPE 2
temp_c1  = CHR(13)
temp_c2  = CHR(10)
temp_c1 := temp_c1 + temp_c2
Set Active Electron Value To &temp_c1


End Of Resistance

INIT PROCEDURE Init_SERVER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",118)
SS_ESARES("Circuits\Main\Main\myresistance",184)
SS_ESARES("Circuits\Main\Main\acceptconnection",204)
SS_ESARES("Circuits\Main\Main\newfile",214)
SS_ESARES("Circuits\Main\Main\savefile",223)
SS_ESARES("Circuits\Main\Main\AcceptFileByte",237)
SS_ESARES("Circuits\Main\Main\newline",255)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\myresistance","myresistance")
SS_ESAGOAL("Circuits\Main\Main\acceptconnection","acceptconnection")
SS_ESAGOAL("Circuits\Main\Main\newfile","newfile")
SS_ESAGOAL("Circuits\Main\Main\savefile","savefile")
SS_ESAGOAL("Circuits\Main\Main\AcceptFileByte","AcceptFileByte")
SS_ESAGOAL("Circuits\Main\Main\newline","newline")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Chat based on Veto System Level (4) - GUI '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action vetostart()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.text1.Value",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Reply",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mydata)",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  myveto",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) End Reply",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myservice",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Check Veto Services",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure vetostart",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Set Veto System Level to 4",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Declare server 'Server1' address '127.0.0.1' port 1200",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Select Input Channel ( inchannel )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SS_VSL4VSL4_feedbackON",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SS_VSL4VSL4_multisendON",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Bind",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Open Channel inchannel",1,1)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO FIRST ELECTRON",2,2)
SS_ESASTEP("Circuits\Main\Main\myresistance","mymax := GET_ACTIVE_ELECTRONS_COUNT",3,3)
SS_ESASTEP("Circuits\Main\Main\myresistance","FOR LOOP ( From x = 1 To mymax Step 1)",4,4)
SS_ESASTEP("Circuits\Main\Main\myresistance","mydata := GET_ACTIVE_ELECTRON_VALUE",5,5)
SS_ESASTEP("Circuits\Main\Main\myresistance","Print text (mydata) to Editbox (Edit1) of Window (Win1)",6,10)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO NEXT ELECTRON",11,11)
SS_ESASTEP("Circuits\Main\Main\myresistance","End of For Loop",12,12)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Clear Channel",13,13)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Close Channel",14,14)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","mycheck := REQUEST_TYPE_CONNECTION",1,1)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","IF ( mycheck )",2,2)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","(DoubleS/Veto Unit) ACCEPT CONNECTION",3,3)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","END OF IF STATEMENT",4,4)
SS_ESASTEP("Circuits\Main\Main\newfile","Select Address myatom:k:f",1,1)
SS_ESASTEP("Circuits\Main\Main\newfile","Load Active SubShell From Memory",2,2)
SS_ESASTEP("Circuits\Main\Main\newfile","myfile = ''",3,3)
SS_ESASTEP("Circuits\Main\Main\savefile","PutFile := Put File",1,5)
SS_ESASTEP("Circuits\Main\Main\savefile","write String myfile to File PutFile",6,8)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","newdata = ''",1,1)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","(DoubleS/Veto Unit) Open Channel inchannel",2,2)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","GOTO FIRST ELECTRON",3,3)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","mymax := GET_ACTIVE_ELECTRONS_COUNT",4,4)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","FOR LOOP ( From x = 1 To mymax Step 1)",5,5)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","mydata := GET_ACTIVE_ELECTRON_VALUE",6,6)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","newdata = newdata + mydata",7,7)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","GOTO NEXT ELECTRON",8,8)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","End of For Loop",9,9)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","(DoubleS/Veto Unit) Clear Channel",10,10)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","(DoubleS/Veto Unit) Close Channel",11,11)
SS_ESASTEP("Circuits\Main\Main\AcceptFileByte","myfile = myfile + newdata",12,12)
SS_ESASTEP("Circuits\Main\Main\newline","(DoubleS/Veto Unit) Open Channel inchannel",1,1)
SS_ESASTEP("Circuits\Main\Main\newline","Add new electron called : datablock",2,2)
SS_ESASTEP("Circuits\Main\Main\newline","temp_c1 = Get character of ASCII Code 13",3,3)
SS_ESASTEP("Circuits\Main\Main\newline","temp_c2 = Get character of ASCII Code 10",4,4)
SS_ESASTEP("Circuits\Main\Main\newline","temp_c1 = temp_c1 + temp_c2",5,5)
SS_ESASTEP("Circuits\Main\Main\newline","Active Electron Value = &temp_c1",6,6)
Return
*-------------------------------------------------------------------*
