*---------------------------------------------------------------------------*
* Time : 06:35:41    Date : 09/10/2012
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
					SubShell S                             
						Variable myelectron
					SubShell P                             
					SubShell D                             
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
					Resistance myresistance                  
					Resistance acceptconnection              
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
		Connection myconnection
				Type          Network to Network
				InputChannel  inchannel
				OutputChannel outchannel2
				ReceivingVeto nothing
				SendingVeto   nothing
				Atom          myatom
				Shell         K
				SubShell      S
				Electron      myelectron
				Server        Server1
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_CLIENT_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_CLIENT_18smart2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_CLIENT_18smart3() address Code Unit : Circuits\Main\Main\acceptconnection


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLIENT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 446 ;
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
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 315 ,374 BUTTONEX btn1;
CAPTION "Send";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action myservice()
@ 356 ,223 BUTTONEX btn2;
CAPTION "Send file ";
ON CLICK sendfile()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mystart
BEGIN SEQUENCE WITH { |e| break(e) }
win1.timer1.Enabled := false
mydata := win1.text1.Value
CON_SENDDATA (mydata)
CON_SENDVETO myveto
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
SELECT CLIENT CONNECTION myatom:K:S:myelectron
CON_CONNECT
Return Nil
Proc SendFile
GetFile := GetFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
CheckFile := File(GetFile)
TMP_M1 = 0
TMP_M2 = 0
myhandle = FOPEN( GetFile , TMP_M1 + TMP_M2 )
myerror := 1
mybuffer := space ( 1024*120 )
mybuffer := ""
mycounter := 0
CON_SENDVETO newfile
totalcount := 0
LASTCHAR := " "
DO WHILE  myerror = 1
mydata := space ( 1 )
myerror = FREAD( myhandle,@mydata,1)
realdata := ""
IF myerror = 1
realdata := mydata
mybuffer := mybuffer + realdata
mycounter := mycounter+1
totalcount := totalcount + 1
IF REALDATA = CHR(10) .AND. LASTCHAR = CHR(13)
MyBuffer = SUBSTR(MyBuffer,1,len(MyBuffer)-2)
CON_SENDDATA (mybuffer)
CON_SENDVETO acceptfilebyte
CON_SENDVETO newline
mybuffer := ""
mycounter := 0
ENDIF
LASTCHAR := MYDATA
ENDIF
IF mycounter = (1024*120)
CON_SENDDATA (mybuffer)
CON_SENDVETO acceptfilebyte
mybuffer := ""
mycounter := 0
ENDIF
ENDDO
IF mycounter > 0
CON_SENDDATA (mybuffer)
CON_SENDVETO acceptfilebyte
mybuffer := ""
ENDIF
CON_SENDVETO savefile
MyOut := MSGINFO(str(totalcount),"Client - File Size ")
Return Nil


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\myresistance
Resistance R_CLIENT_18smart2() code
select input channel inchannel
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
Resistance R_CLIENT_18smart3() code
mycheck := REQUEST_TYPE_CONNECTION
IF mycheck
ACCEPT CONNECTION
ENDIF


End Of Resistance

INIT PROCEDURE Init_CLIENT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",97)
SS_ESARES("Circuits\Main\Main\myresistance",216)
SS_ESARES("Circuits\Main\Main\acceptconnection",237)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\myresistance","myresistance")
SS_ESAGOAL("Circuits\Main\Main\acceptconnection","acceptconnection")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Chat based on Veto System Level (4) - GUI '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Send file '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sendfile",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.text1.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mydata)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  myveto",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myservice",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Check Veto Services",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure vetostart",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Set Veto System Level to 4",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Declare server 'Server1' address '127.0.0.1' port 1200",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT CLIENT CONNECTION myatom:K:S:myelectron",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection CONNECT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SendFile",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Open file GetFile store handle in myhandle",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","myerror = 1",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = String, length = 1024*120",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = ''",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mycounter = 0",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  newfile",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","totalcount = 0",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","LASTCHAR = ' '",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( myerror = 1 )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = String, length = 1",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Read From file, handle myhandle , buffer mydata bytes 1 check myerror",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","realdata = ''",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myerror = 1 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","realdata = mydata",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = mybuffer + realdata",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","mycounter = mycounter+1",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","totalcount = totalcount + 1",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( REALDATA = CHR(10) .AND. LASTCHAR = CHR(13) )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","MyBuffer = Sub String of MyBuffer From 1 Count len(MyBuffer)-2",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mybuffer)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  acceptfilebyte",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  newline",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = ''",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","mycounter = 0",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","LASTCHAR = MYDATA",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycounter = (1024*120) )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mybuffer)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  acceptfilebyte",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = ''",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","mycounter = 0",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycounter > 0 )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mybuffer)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  acceptfilebyte",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","mybuffer = ''",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  savefile",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message str(totalcount) Title 'Client - File Size ' Type: Message Info",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\myresistance","code",1,1)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Open Channel inchannel",2,2)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO FIRST ELECTRON",3,3)
SS_ESASTEP("Circuits\Main\Main\myresistance","mymax := GET_ACTIVE_ELECTRONS_COUNT",4,4)
SS_ESASTEP("Circuits\Main\Main\myresistance","FOR LOOP ( From x = 1 To mymax Step 1)",5,5)
SS_ESASTEP("Circuits\Main\Main\myresistance","mydata := GET_ACTIVE_ELECTRON_VALUE",6,6)
SS_ESASTEP("Circuits\Main\Main\myresistance","Print text (mydata) to Editbox (Edit1) of Window (Win1)",7,11)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO NEXT ELECTRON",12,12)
SS_ESASTEP("Circuits\Main\Main\myresistance","End of For Loop",13,13)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Clear Channel",14,14)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Close Channel",15,15)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","mycheck := REQUEST_TYPE_CONNECTION",1,1)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","IF ( mycheck )",2,2)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","(DoubleS/Veto Unit) ACCEPT CONNECTION",3,3)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","END OF IF STATEMENT",4,4)
Return
*-------------------------------------------------------------------*
