*---------------------------------------------------------------------------*
* Time : 14:11:32    Date : 09/19/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.09.15
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
			Atom myatom                        
				Shell K                             
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
		Veto ShowData
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
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SERVER_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_SERVER_18smart2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_SERVER_18smart3() address Code Unit : Circuits\Main\Main\acceptconnection


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
WIDTH 756 ;
HEIGHT 419 ;
ON INIT vetostart()  ;
ICON "PWCTICON" ;
TITLE "Server" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
@ -6 ,-6 IMAGE image1;
PICTURE "back.jpg";
STRETCH ;
WIDTH 818 HEIGHT 416
@ 316 ,116 TEXTBOX text1;
ON ENTER mystart()  ;
HEIGHT 30 ;
WIDTH 350 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 13 ,116 EDITBOX edit1;
WIDTH 457 ;
HEIGHT 289;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 315 ,474 BUTTONEX btn1;
CAPTION "Send";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action myservice()
@ 21 ,25 LABEL lbl1 ;
VALUE "Data Received " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 320 ,75 LABEL lbl2 ;
VALUE "Data " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 11 ,586 BUTTONEX btn2;
CAPTION "Database ";
ON CLICK ShowData()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 45 ,586 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK CloseApp()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc SendData( cData )
START REPLY
CON_SENDDATA (cdata)
CON_SENDVETO ShowData
END REPLY
Return Nil
Proc mystart
BEGIN SEQUENCE WITH { |e| break(e) }
win1.timer1.Enabled := false
mydata := win1.text1.Value
DO SendData WITH mydata
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
START BIND
Return Nil
procedure CloseApp()
win1.Release ( )
return
Proc ShowData
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 313 ;
ICON "PWCTICON" ;
TITLE "Patients Database" ;
CHILD ;
BACKCOLOR {236,233,216} 
@ 10 ,10 BUTTONEX btn1;
CAPTION "Show Records ";
ON CLICK DisplayData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 52 ,13 GRID Grid1;
WIDTH 459 ;
HEIGHT 171 ;
HEADERS {"Patient Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 233 ,373 BUTTONEX btn4;
CAPTION "Close ";
ON CLICK CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 233 ,13 BUTTONEX btn5;
CAPTION "Send Record ";
ON CLICK SendRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win2
EndIF
Return Nil
procedure DisplayData()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Serverdata.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from patient",oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
c1 := oRS:fields:item(alltrim("name")):value
c2 := oRS:fields:item(alltrim("address")):value
c3 := oRS:fields:item(alltrim("phone")):value
win2.Grid1.AddItem ( {c1,c2,c3} )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
return
procedure CloseWindow()
win2.Release ( )
return
Proc SendRecord
nRecord := win2.Grid1.Value
IF nRecord > 0
cName := win2.Grid1.cell(nRecord,1)
cAddress := win2.Grid1.cell(nRecord,2)
cPhone := win2.Grid1.cell(nRecord,3)
START REPLY
CON_SENDDATA (cName)
CON_SENDDATA (cAddress)
CON_SENDDATA (cPhone)
CON_SENDVETO NewRecord
END REPLY
ELSE
MyOut := MSGBOX("No record selected","Sorry ")
ENDIF
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

INIT PROCEDURE Init_SERVER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",82)
SS_ESARES("Circuits\Main\Main\myresistance",266)
SS_ESARES("Circuits\Main\Main\acceptconnection",285)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\myresistance","myresistance")
SS_ESAGOAL("Circuits\Main\Main\acceptconnection","acceptconnection")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Server'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action vetostart()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'back.jpg'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action mystart",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Data Received '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Data '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Database '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowData",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SendData( cData )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Reply",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (cdata)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  ShowData",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) End Reply",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.text1.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SendData Parameters mydata",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myservice",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Check Veto Services",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure vetostart",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Set Veto System Level to 4",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Declare server 'Server1' address '127.0.0.1' port 1200",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Select Input Channel ( inchannel )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Bind",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowData",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Patients Database'",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Records '",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DisplayData",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Patient Name','Address','Phone'}",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",119,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWindow",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Send Record '",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SendRecord",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",141,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DisplayData ( Event : CLICK )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Serv",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from patient'",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name') Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address') Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone') Value",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Grid1.AddItem ( {c1,c2,c3} )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWindow ( Event : CLICK )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SendRecord",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","nRecord = win2.Grid1.Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRecord > 0 )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win2.Grid1.cell(nRecord,1)",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win2.Grid1.cell(nRecord,2)",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win2.Grid1.cell(nRecord,3)",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Reply",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (cName)",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (cAddress)",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (cPhone)",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  NewRecord",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) End Reply",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record selected' Title 'Sorry ' Type: Message Box",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",186,186)
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
Return
*-------------------------------------------------------------------*
