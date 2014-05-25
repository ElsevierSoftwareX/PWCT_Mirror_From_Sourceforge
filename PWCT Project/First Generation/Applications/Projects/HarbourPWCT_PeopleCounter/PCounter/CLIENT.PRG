*---------------------------------------------------------------------------*
* Time : 02:08:22    Date : 05/10/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.04.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadCLIENT
Public True,False 
True = .T. 
False = .F. 
New Server PCounterClient Type Slave Server Eigen Value 000
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
					Resistance displaydata                   
	VetoUnit :
		Receiving Veto acceptconnection
		Veto displaydata
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance displaydata
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
				Server        PCounterServer
End Of Server 

Resistance R_CLIENT_19art1() address Code Unit : Circuits\Main\Main\Main

Resistance R_CLIENT_19art2() address Code Unit : Circuits\Main\Main\displaydata


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLIENT_19art1() code
Class PCClientClass
Data lConnected init False
Data lServerReceivedTheFile init True
Method ShowWindow
Method senddata
Method service
Method connect
Method sendfile
Method DisConnect
Method SendImage
Method EndofEditbox
EndClass
Method ShowWindow Class PCClientClass
if !iswindowdefined( winPCClient )
DEFINE WINDOW winPCClient ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 465 ;
ON INIT self:connect()  ;
ON RELEASE self:disconnect()  ;
ICON "PWCTICON" ;
TITLE "People Counter - Client" ;
CHILD ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -11 ,-10 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 800 HEIGHT 460
@ 370 ,206 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 280 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 64 ,70 EDITBOX edit1;
WIDTH 557 ;
HEIGHT 296;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 370 ,500 BUTTONEX btn1;
CAPTION "Send";
ON CLICK self:senddata()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action self:service()
@ 370 ,102 BUTTONEX btn2;
CAPTION "Send file ";
ON CLICK self:sendfile()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 16 ,11 LABEL lbl1 ;
VALUE "Server IP " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 15 ,281 LABEL lbl2 ;
VALUE "Port " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 15 ,70 TEXTBOX textIP;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "127.0.0.1" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 15 ,325 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 80 ;
VALUE "1200" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 67 ,12 LABEL lbl3 ;
VALUE "Output " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 17 ,411 LABEL lbl4 ;
VALUE "Location " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,477 TEXTBOX textLocation;
HEIGHT 30 ;
WIDTH 150 ;
VALUE "Room1" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,651 BUTTONEX btn3;
CAPTION "Connect ";
ON CLICK self:Connect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 64 ,651 BUTTONEX btn4;
CAPTION "DisConnect ";
ON CLICK Self:DisConnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winPCClient
EndIF

Return 0
Method senddata Class PCClientClass
BEGIN SEQUENCE WITH { |e| break(e) }
winPCClient.timer1.Enabled := false
mydata := winPCClient.text1.Value
CON_SENDDATA (mydata)
CON_SENDVETO displaydata
winPCClient.timer1.Enabled := true
RECOVER
END SEQUENCE
Return 0
Method service Class PCClientClass
winPCClient.Timer1.Enabled := False
CHECK_VETO_SERVICES
winPCClient.Timer1.Enabled := True
Return 0
Method connect Class PCClientClass
Local cIP,cPort
cIP := winPCClient.textIP.Value
cPort := winPCClient.textPort.Value
SET VETO SYSTEM LEVEL 4
Declare server "PCounterServer" address (cIP) port (cPort)
SELECT CLIENT CONNECTION myatom:K:S:myelectron
CON_CONNECT
self:lConnected := CONNECTION_ACCEPTED
IF self:lConnected
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + "Connected to the server"
else
winPCClient.Edit1.VALUE := "Connected to the server"
endif
winPCClient.timer1.Enabled := True
ELSE
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + "No connection, Can't connect to the server"
else
winPCClient.Edit1.VALUE := "No connection, Can't connect to the server"
endif
ENDIF
myout = self:EndofEditbox()
Return 0
Method sendfile Class PCClientClass
GetFile := GetFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
Set decimals to 5
n1 := SECONDS()
n1 = STR ( n1 )
n1 = ALLTRIM ( n1 )
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + "Time" + n1
else
winPCClient.Edit1.VALUE := "Time" + n1
endif
myout = self:EndofEditbox()
cFile := FILESTR( GetFile )
CON_SENDDATA (cFile)
CON_SENDVETO savefile
Return 0
Method DisConnect Class PCClientClass
IF self:lConnected
self:lConnected := False
winPCClient.timer1.Enabled := false
CON_DISCONNECT
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + "Disconnected"
else
winPCClient.Edit1.VALUE := "Disconnected"
endif
myout = self:EndofEditbox()
self:lServerReceivedTheFile := True
ENDIF
Return 0
Method SendImage(cDate,cTime,cImageFile,cImageName,cPeopleCount) Class PCClientClass
Local cFile
IF Self:lServerReceivedTheFile = True
IF self:lConnected
cFile := FILESTR( cImageFile )
cFSize := alltrim(str(len(cFile)))
cLocation := winPCClient.textLocation.Value
CON_SENDDATA (cLocation)
CON_SENDDATA (cDate)
CON_SENDDATA (cTime)
CON_SENDDATA (cPeopleCount)
CON_SENDDATA (cImageName)
CON_SENDDATA (cFSize)
CON_SENDDATA (cFile)
CON_SENDVETO saveimage
nError = HB_INETERRORCODE( VSL4_osocket )
IF nError != 0
myout = self:DisConnect()
myout = self:Connect()
self:lConnected := True
Return 0
ENDIF
Set decimals to 5
n1 := SECONDS()
n1 = STR ( n1 )
n1 = ALLTRIM ( n1 )
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + "Image sent, Time : " + n1
else
winPCClient.Edit1.VALUE := "Image sent, Time : " + n1
endif
myout = self:EndofEditbox()
ENDIF
ENDIF
Return 0
Method EndofEditbox Class PCClientClass
myhandle = GetControlHandle ( "edit1","winPCClient" )
sendmessage ( myhandle,277,7,0 )
Return 0


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\displaydata
Resistance R_CLIENT_19art2() code
Select Input Channel  inchannel
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
if .not. empty(winPCClient.Edit1.VALUE)
winPCClient.Edit1.VALUE := winPCClient.Edit1.VALUE + CHR(13) + CHR(10) + mydata
else
winPCClient.Edit1.VALUE := mydata
endif
GOTO NEXT ELECTRON
myhandle = GetControlHandle ( "edit1","winPCClient" )
sendmessage ( myhandle,277,7,0 )
Next
CLEAR CHANNEL
Close Channel


End Of Resistance

*-------------------------------------------------------------------*
