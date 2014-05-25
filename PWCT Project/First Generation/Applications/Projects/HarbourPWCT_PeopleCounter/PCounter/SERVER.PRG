*---------------------------------------------------------------------------*
* Time : 15:02:52    Date : 05/25/2014
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server PCounterServer Type Slave Server Eigen Value 000
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
					Resistance displaydata                   
					Resistance acceptconnection              
					Resistance savefile                      
					Resistance SaveImage                     
	VetoUnit :
		Receiving Veto acceptconnection
		Veto displaydata
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance displaydata
		Veto acceptconnection
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance acceptconnection
		Veto savefile
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance savefile
		Veto SaveImage
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance SaveImage
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


Resistance R_SERVER_19art1() address Code Unit : Circuits\Main\Main\Main

Resistance R_SERVER_19art2() address Code Unit : Circuits\Main\Main\displaydata

Resistance R_SERVER_19art3() address Code Unit : Circuits\Main\Main\acceptconnection

Resistance R_SERVER_19art4() address Code Unit : Circuits\Main\Main\savefile

Resistance R_SERVER_19art5() address Code Unit : Circuits\Main\Main\SaveImage


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SERVER_19art1() code
Set Procedure to "sysdb.PRG"
oDatabase = Database()
myout = oDatabase:Open2()
oPCServer = PCServerClass()
oPCDisplayImages = PCDisplayImages()
myout = oPCServer:ShowWindow()
Class PCServerClass
Method ShowWindow
Method senddata
Method service
Method startserver
Method StopServer
Method endofeditbox
Method DisplayImages
EndClass
Method ShowWindow Class PCServerClass
if !iswindowdefined( winPCServer )
DEFINE WINDOW winPCServer ;
AT 10 ,10 ;
WIDTH 755 ;
HEIGHT 497 ;
ON INIT self:startserver()  ;
ICON "PWCTICON" ;
TITLE "People Counter - Server " ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -10 ,-10 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 770 HEIGHT 480
@ 399 ,88 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 390 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 71 ,89 EDITBOX edit1;
WIDTH 497 ;
HEIGHT 319;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 399 ,486 BUTTONEX btn1;
CAPTION "Send";
ON CLICK self:senddata()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action self:service()
@ 16 ,11 LABEL lbl1 ;
VALUE "Server IP " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,341 LABEL lbl2 ;
VALUE "Port " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,90 TEXTBOX textIP;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "127.0.0.1" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,386 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 200 ;
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
@ 16 ,595 BUTTONEX btn2;
CAPTION "Run the Server ";
ON CLICK self:StartServer()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 71 ,595 BUTTONEX btn3;
CAPTION "Stop the Server ";
ON CLICK self:StopServer()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 114 ,595 BUTTONEX btn4;
CAPTION "Display Images ";
ON CLICK self:DisplayImages()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winPCServer
EndIF

Return 0
Method senddata Class PCServerClass
BEGIN SEQUENCE WITH { |e| break(e) }
winPCServer.timer1.Enabled := false
mydata := winPCServer.text1.Value
START REPLY
CON_SENDDATA (mydata)
CON_SENDVETO displaydata
END REPLY
winPCServer.timer1.Enabled := true
RECOVER
END SEQUENCE
Return 0
Method service Class PCServerClass
winPCServer.Timer1.Enabled := False
CHECK_VETO_SERVICES
winPCServer.Timer1.Enabled := True
Return 0
Method startserver Class PCServerClass
Local cIP,cPort
cIP := winPCServer.textIP.Value
cPort := winPCServer.textPort.Value
SET VETO SYSTEM LEVEL 4
Declare server "PCounterServer" address (cIP) port (cPort)
Select Input Channel  inchannel
START BIND
winPCServer.timer1.Enabled := true
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Start Server"
else
winPCServer.Edit1.VALUE := "Start Server"
endif
myout = self:EndOfEditbox()
Return 0
Method StopServer Class PCServerClass
winPCServer.timer1.Enabled := false
SS_VSL4ServerCLOSE()
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Stop Server"
else
winPCServer.Edit1.VALUE := "Stop Server"
endif
myout = self:EndOfEditbox()
Return 0
Method EndofEditbox Class PCServerClass
myhandle = GetControlHandle ( "edit1","winPCServer" )
sendmessage ( myhandle,277,7,0 )
Return 0
Method DisplayImages Class PCServerClass
out = oPCDisplayImages:ShowWindow()
Return 0
Class PCDisplayImages
Data aLocations init {}
Method ShowWindow
Method CloseWindow
Method RefreshImages
EndClass
Method ShowWindow Class PCDisplayImages
if !iswindowdefined( winDI )
DEFINE WINDOW winDI ;
AT 10 ,10 ;
WIDTH 1256 ;
HEIGHT 756 ;
ICON "PWCTICON" ;
TITLE "Display Images  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

winDI.Maximize ( )
@ -10 ,-10 IMAGE image6;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 1560 HEIGHT 60
@ 7 ,6 BUTTONEX btn5;
CAPTION " X (Close Preview) ";
ON CLICK Self:CloseWindow()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,10 IMAGE image1;
PICTURE "";
STRETCH ;
WIDTH 590 HEIGHT 300
@ 109 ,659 IMAGE image2;
PICTURE "";
STRETCH ;
WIDTH 590 HEIGHT 300
@ 449 ,659 IMAGE image3;
PICTURE "";
STRETCH ;
WIDTH 590 HEIGHT 300
@ 449 ,8 IMAGE image4;
PICTURE "";
STRETCH ;
WIDTH 590 HEIGHT 300
@ 71 ,330 COMBOBOX combo1;
WIDTH 270 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 73 ,659 COMBOBOX combo2;
WIDTH 270 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 413 ,659 COMBOBOX combo3;
WIDTH 270 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 415 ,328 COMBOBOX combo4;
WIDTH 270 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer2 INTERVAL 500 ;
Action self:RefreshImages()
END WINDOW

ACTIVATE WINDOW winDI
EndIF

Return 0
Method CloseWindow Class PCDisplayImages
winDI.Release ( )
Return 0
Method RefreshImages Class PCDisplayImages
winDI.Timer2.Enabled := False
nMax  = LEN(self:aLocations)
n1 := winDI.combo1.Value
n3 := winDI.combo3.Value
n2 := winDI.combo2.Value
n4 := winDI.combo4.Value
winDI.combo1.DeleteAllItems ( )
winDI.combo2.DeleteAllItems ( )
winDI.combo3.DeleteAllItems ( )
winDI.combo4.DeleteAllItems ( )
FOR x = 1 TO nMax STEP 1
winDI.combo1.AddItem ( self:aLocations[x][1] )
winDI.combo2.AddItem ( self:aLocations[x][1] )
winDI.combo3.AddItem ( self:aLocations[x][1] )
winDI.combo4.AddItem ( self:aLocations[x][1] )
Next
winDI.combo1.Value := n1
winDI.combo2.Value := n2
winDI.combo3.Value := n3
winDI.combo4.Value := n4
n1 := winDI.combo1.Value
IF .not. n1 = 0
winDI.image1.Picture := self:aLocations[n1][2]
ENDIF
n2 := winDI.combo2.Value
IF .not. n2 = 0
winDI.image2.Picture := self:aLocations[n2][2]
ENDIF
n3 := winDI.combo3.Value
IF .not. n3 = 0
winDI.image3.Picture := self:aLocations[n3][2]
ENDIF
n4 := winDI.combo4.Value
IF .not. n4 = 0
winDI.image4.Picture := self:aLocations[n4][2]
ENDIF
winDI.Timer2.Enabled := True
Return 0


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\displaydata
Resistance R_SERVER_19art2() code
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + mydata
else
winPCServer.Edit1.VALUE := mydata
endif
GOTO NEXT ELECTRON
myout = oPCServer:EndOfEditbox()
Next
CLEAR CHANNEL
Close Channel
BEGIN SEQUENCE WITH { |e| break(e) }
START REPLY
CON_SENDDATA "Server : Data Received"
CON_SENDVETO displaydata
END REPLY
RECOVER
END SEQUENCE


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\acceptconnection
Resistance R_SERVER_19art3() code
mycheck := REQUEST_TYPE_CONNECTION
IF mycheck
ACCEPT CONNECTION
ENDIF


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\savefile
Resistance R_SERVER_19art4() code
Local myfile
Set decimals to 5
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "New File"
else
winPCServer.Edit1.VALUE := "New File"
endif
myfile := ""
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
myfile := myfile + mydata
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel
n1 := SECONDS()
n1 = STR ( n1 )
n1 = ALLTRIM ( n1 )
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Time" + n1
else
winPCServer.Edit1.VALUE := "Time" + n1
endif
BEGIN SEQUENCE WITH { |e| break(e) }
START REPLY
CON_SENDDATA "Server : File Received"
CON_SENDVETO displaydata
END REPLY
RECOVER
END SEQUENCE
PutFile := PutFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,myfile)
FCLOSE(RPWI_TH)
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Save File"
else
winPCServer.Edit1.VALUE := "Save File"
endif
myout = oPCServer:EndOfEditbox()


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\SaveImage
Resistance R_SERVER_19art5() code
Local cFile
Set decimals to 5
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "New Image"
else
winPCServer.Edit1.VALUE := "New Image"
endif
cFile := ""
Open Channel inchannel
nCount := GET_ACTIVE_ELECTRONS_COUNT
IF nCount != 7
CLEAR CHANNEL
Close Channel
Return 0
ENDIF
GOTO FIRST ELECTRON
cLocation := GET_ACTIVE_ELECTRON_VALUE
cLocation = ALLTRIM ( cLocation )
GOTO NEXT ELECTRON
cDate := GET_ACTIVE_ELECTRON_VALUE
GOTO NEXT ELECTRON
cTime := GET_ACTIVE_ELECTRON_VALUE
GOTO NEXT ELECTRON
cPeopleCount := GET_ACTIVE_ELECTRON_VALUE
GOTO NEXT ELECTRON
cImageName := GET_ACTIVE_ELECTRON_VALUE
GOTO NEXT ELECTRON
cImageSize := GET_ACTIVE_ELECTRON_VALUE
cImageSize = ALLTRIM ( cImageSize )
GOTO NEXT ELECTRON
cData := GET_ACTIVE_ELECTRON_VALUE
cFile := cFile + cData
FOR x = 1 TO 7 STEP 1
DELETE ACTIVE ELECTRON
Next
Close Channel
IF len(cFile) != val(cImageSize)
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Error in image file"
else
winPCServer.Edit1.VALUE := "Error in image file"
endif
Return 0
ENDIF
n1 := SECONDS()
n1 = STR ( n1 )
n1 = ALLTRIM ( n1 )
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Time : " + n1
else
winPCServer.Edit1.VALUE := "Time : " + n1
endif
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "File Size : " + cImageSize
else
winPCServer.Edit1.VALUE := "File Size : " + cImageSize
endif
BEGIN SEQUENCE WITH { |e| break(e) }
START REPLY
CON_SENDDATA "Server : Image File Received"
CON_SENDVETO displaydata
END REPLY
RECOVER
END SEQUENCE
StartUpFolder := GetStartUpFolder()
cImageName2 := StartupFolder+"\serverdata\"+cLocation+cImageName
RPWI_TH = FCREATE(cImageName2,0)
FWRITE(RPWI_TH,cFile)
FCLOSE(RPWI_TH)
myout = oDatabase:NewRecord(cDate,cTime,cLocation,(cLocation+cImageName),cPeopleCount)
if .not. empty(winPCServer.Edit1.VALUE)
winPCServer.Edit1.VALUE := winPCServer.Edit1.VALUE + CHR(13) + CHR(10) + "Save File : " + cImageName
else
winPCServer.Edit1.VALUE := "Save File : " + cImageName
endif
myout = oPCServer:EndOfEditbox()
nArrSize  = LEN(oPCDisplayImages:aLocations)
IF .not. nArrSize = 0
lFound := False
FOR x = 1 TO nArrSize STEP 1
IF upper(alltrim(oPCDisplayImages:aLocations[x][1])) == upper(alltrim(cLocation))
oPCDisplayImages:aLocations[x][2] := cImageName2
lFound := True
ENDIF
Next
IF lFound = False
AADD( oPCDisplayImages:aLocations , {cLocation,cImageName2})
ENDIF
ELSE
AADD( oPCDisplayImages:aLocations , {cLocation,cImageName2})
ENDIF


End Of Resistance

INIT PROCEDURE Init_SERVER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",98)
SS_ESARES("Circuits\Main\Main\displaydata",395)
SS_ESARES("Circuits\Main\Main\acceptconnection",423)
SS_ESARES("Circuits\Main\Main\savefile",433)
SS_ESARES("Circuits\Main\Main\SaveImage",486)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\displaydata","displaydata")
SS_ESAGOAL("Circuits\Main\Main\acceptconnection","acceptconnection")
SS_ESAGOAL("Circuits\Main\Main\savefile","savefile")
SS_ESAGOAL("Circuits\Main\Main\SaveImage","SaveImage")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sysdb.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oDatabase of Class Database",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oDatabase.Open2()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oPCServer of Class PCServerClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oPCDisplayImages of Class PCDisplayImages",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oPCServer.ShowWindow()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class PCServerClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method senddata",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method service",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method startserver",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method StopServer",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method endofeditbox",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisplayImages",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class PCServerClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winPCServer ) , Title : 'People Counter - Server '",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:startserver",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Image\back.jpg'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:senddata",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 , Action : self:service() )",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Server IP '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Port '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textIP  )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",73,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPort  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Output '",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",90,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Run the Server '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:StartServer",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Stop the Server '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:StopServer",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Display Images '",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DisplayImages",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method senddata Class PCServerClass",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.timer1.Enabled := false",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = winPCServer.text1.Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Reply",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mydata)",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  displaydata",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) End Reply",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.timer1.Enabled := true",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method service Class PCServerClass",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.Timer1.Enabled := False",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Check Veto Services",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.Timer1.Enabled := True",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method startserver Class PCServerClass",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Local cIP,cPort",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","cIP = winPCServer.textIP.Value",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","cPort = winPCServer.textPort.Value",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Set Veto System Level to 4",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Declare server 'PCounterServer' address (cIP) port (cPort)",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Select Input Channel ( inchannel )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Start Bind",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.timer1.Enabled := true",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Start Server') to Editbox (Edit1) of Window (winPCServer)",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.EndOfEditbox()",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method StopServer Class PCServerClass",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","winPCServer.timer1.Enabled := false",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Close Server",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Stop Server') to Editbox (Edit1) of Window (winPCServer)",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.EndOfEditbox()",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EndofEditbox Class PCServerClass",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( 'edit1','winPCServer' )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function sendmessage ( myhandle,277,7,0 )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisplayImages Class PCServerClass",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","out = oPCDisplayImages.ShowWindow()",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class PCDisplayImages",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Data aLocations Init Value {}",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Method RefreshImages",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class PCDisplayImages",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winDI ) , Title : 'Display Images  '",177,181)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",182,190)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.Maximize ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'Image\back.jpg'",192,193)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' X (Close Preview) '",196,197)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CloseWindow",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",199,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : ''",202,203)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",204,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : ''",206,207)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",208,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : ''",210,211)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",212,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : ''",214,215)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",216,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",219,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo2 )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",225,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo3 )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",231,235)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo4 )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",237,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer2 , Action : self:RefreshImages() )",242,243)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",244,245)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",246,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class PCDisplayImages",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.Release ( )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RefreshImages Class PCDisplayImages",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.Timer2.Enabled := False",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:aLocations",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = winDI.combo1.Value",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","n3 = winDI.combo3.Value",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","n2 = winDI.combo2.Value",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","n4 = winDI.combo4.Value",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo1.DeleteAllItems ( )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo2.DeleteAllItems ( )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo3.DeleteAllItems ( )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo4.DeleteAllItems ( )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo1.AddItem ( self:aLocations[x][1] )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo2.AddItem ( self:aLocations[x][1] )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo3.AddItem ( self:aLocations[x][1] )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo4.AddItem ( self:aLocations[x][1] )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo1.Value := n1",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo2.Value := n2",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo3.Value := n3",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.combo4.Value := n4",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = winDI.combo1.Value",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. n1 = 0 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.image1.Picture := self:aLocations[n1][2]",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","n2 = winDI.combo2.Value",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. n2 = 0 )",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.image2.Picture := self:aLocations[n2][2]",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","n3 = winDI.combo3.Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. n3 = 0 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.image3.Picture := self:aLocations[n3][2]",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","n4 = winDI.combo4.Value",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. n4 = 0 )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.image4.Picture := self:aLocations[n4][2]",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","winDI.Timer2.Enabled := True",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",291,291)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Open Channel inchannel",1,1)
SS_ESASTEP("Circuits\Main\Main\displaydata","GOTO FIRST ELECTRON",2,2)
SS_ESASTEP("Circuits\Main\Main\displaydata","mymax := GET_ACTIVE_ELECTRONS_COUNT",3,3)
SS_ESASTEP("Circuits\Main\Main\displaydata","FOR LOOP ( From x = 1 To mymax Step 1)",4,4)
SS_ESASTEP("Circuits\Main\Main\displaydata","mydata := GET_ACTIVE_ELECTRON_VALUE",5,5)
SS_ESASTEP("Circuits\Main\Main\displaydata","Print text (mydata) to Editbox (Edit1) of Window (winPCServer)",6,10)
SS_ESASTEP("Circuits\Main\Main\displaydata","GOTO NEXT ELECTRON",11,11)
SS_ESASTEP("Circuits\Main\Main\displaydata","myout = oPCServer.EndOfEditbox()",12,12)
SS_ESASTEP("Circuits\Main\Main\displaydata","End of For Loop",13,13)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Clear Channel",14,14)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Close Channel",15,15)
SS_ESASTEP("Circuits\Main\Main\displaydata","Error Handling, Try",16,16)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Start Reply",17,17)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Connection - Send Data  'Server : Data Received'",18,18)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) Connection - Send Veto  displaydata",19,19)
SS_ESASTEP("Circuits\Main\Main\displaydata","(DoubleS/Veto Unit) End Reply",20,20)
SS_ESASTEP("Circuits\Main\Main\displaydata","Catch",21,21)
SS_ESASTEP("Circuits\Main\Main\displaydata","End Try",22,22)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","mycheck := REQUEST_TYPE_CONNECTION",1,1)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","IF ( mycheck )",2,2)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","(DoubleS/Veto Unit) ACCEPT CONNECTION",3,3)
SS_ESASTEP("Circuits\Main\Main\acceptconnection","END OF IF STATEMENT",4,4)
SS_ESASTEP("Circuits\Main\Main\savefile","Local myfile",1,1)
SS_ESASTEP("Circuits\Main\Main\savefile","Set decimals to 5",2,2)
SS_ESASTEP("Circuits\Main\Main\savefile","Print text ('New File') to Editbox (Edit1) of Window (winPCServer)",3,7)
SS_ESASTEP("Circuits\Main\Main\savefile","myfile = ''",8,8)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Open Channel inchannel",9,9)
SS_ESASTEP("Circuits\Main\Main\savefile","GOTO FIRST ELECTRON",10,10)
SS_ESASTEP("Circuits\Main\Main\savefile","mymax := GET_ACTIVE_ELECTRONS_COUNT",11,11)
SS_ESASTEP("Circuits\Main\Main\savefile","FOR LOOP ( From x = 1 To mymax Step 1)",12,12)
SS_ESASTEP("Circuits\Main\Main\savefile","mydata := GET_ACTIVE_ELECTRON_VALUE",13,13)
SS_ESASTEP("Circuits\Main\Main\savefile","myfile = myfile + mydata",14,14)
SS_ESASTEP("Circuits\Main\Main\savefile","GOTO NEXT ELECTRON",15,15)
SS_ESASTEP("Circuits\Main\Main\savefile","End of For Loop",16,16)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Clear Channel",17,17)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Close Channel",18,18)
SS_ESASTEP("Circuits\Main\Main\savefile","n1 := Get Time in seconds",19,19)
SS_ESASTEP("Circuits\Main\Main\savefile","n1 = CONVERT n1 TO STRING",20,20)
SS_ESASTEP("Circuits\Main\Main\savefile","n1 = All Trim n1",21,21)
SS_ESASTEP("Circuits\Main\Main\savefile","Print text ('Time' + n1) to Editbox (Edit1) of Window (winPCServer)",22,26)
SS_ESASTEP("Circuits\Main\Main\savefile","Error Handling, Try",27,27)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Start Reply",28,28)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Connection - Send Data  'Server : File Received'",29,29)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) Connection - Send Veto  displaydata",30,30)
SS_ESASTEP("Circuits\Main\Main\savefile","(DoubleS/Veto Unit) End Reply",31,31)
SS_ESASTEP("Circuits\Main\Main\savefile","Catch",32,32)
SS_ESASTEP("Circuits\Main\Main\savefile","End Try",33,33)
SS_ESASTEP("Circuits\Main\Main\savefile","PutFile := Put File",34,38)
SS_ESASTEP("Circuits\Main\Main\savefile","write String myfile to File PutFile",39,41)
SS_ESASTEP("Circuits\Main\Main\savefile","Print text ('Save File') to Editbox (Edit1) of Window (winPCServer)",42,46)
SS_ESASTEP("Circuits\Main\Main\savefile","myout = oPCServer.EndOfEditbox()",47,47)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Local cFile",1,1)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Set decimals to 5",2,2)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Print text ('New Image') to Editbox (Edit1) of Window (winPCServer)",3,7)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cFile = ''",8,8)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Open Channel inchannel",9,9)
SS_ESASTEP("Circuits\Main\Main\SaveImage","nCount := GET_ACTIVE_ELECTRONS_COUNT",10,10)
SS_ESASTEP("Circuits\Main\Main\SaveImage","IF ( nCount != 7 )",11,11)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Clear Channel",12,12)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Close Channel",13,13)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Return 0",14,14)
SS_ESASTEP("Circuits\Main\Main\SaveImage","END OF IF STATEMENT",15,15)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO FIRST ELECTRON",16,16)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cLocation := GET_ACTIVE_ELECTRON_VALUE",17,17)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cLocation = All Trim cLocation",18,18)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",19,19)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cDate := GET_ACTIVE_ELECTRON_VALUE",20,20)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",21,21)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cTime := GET_ACTIVE_ELECTRON_VALUE",22,22)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",23,23)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cPeopleCount := GET_ACTIVE_ELECTRON_VALUE",24,24)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",25,25)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cImageName := GET_ACTIVE_ELECTRON_VALUE",26,26)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",27,27)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cImageSize := GET_ACTIVE_ELECTRON_VALUE",28,28)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cImageSize = All Trim cImageSize",29,29)
SS_ESASTEP("Circuits\Main\Main\SaveImage","GOTO NEXT ELECTRON",30,30)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cData := GET_ACTIVE_ELECTRON_VALUE",31,31)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cFile = cFile + cData",32,32)
SS_ESASTEP("Circuits\Main\Main\SaveImage","FOR LOOP ( From x = 1 To 7 Step 1)",33,33)
SS_ESASTEP("Circuits\Main\Main\SaveImage","DELETE ACTIVE ELECTRON",34,34)
SS_ESASTEP("Circuits\Main\Main\SaveImage","End of For Loop",35,35)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Close Channel",36,36)
SS_ESASTEP("Circuits\Main\Main\SaveImage","IF ( len(cFile) != val(cImageSize) )",37,37)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Print text ('Error in image file') to Editbox (Edit1) of Window (winPCServer)",38,42)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Return 0",43,43)
SS_ESASTEP("Circuits\Main\Main\SaveImage","END OF IF STATEMENT",44,44)
SS_ESASTEP("Circuits\Main\Main\SaveImage","n1 := Get Time in seconds",45,45)
SS_ESASTEP("Circuits\Main\Main\SaveImage","n1 = CONVERT n1 TO STRING",46,46)
SS_ESASTEP("Circuits\Main\Main\SaveImage","n1 = All Trim n1",47,47)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Print text ('Time : ' + n1) to Editbox (Edit1) of Window (winPCServer)",48,52)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Print text ('File Size : ' + cImageSize) to Editbox (Edit1) of Window (winPCServer)",53,57)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Error Handling, Try",58,58)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Start Reply",59,59)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Connection - Send Data  'Server : Image File Received'",60,60)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) Connection - Send Veto  displaydata",61,61)
SS_ESASTEP("Circuits\Main\Main\SaveImage","(DoubleS/Veto Unit) End Reply",62,62)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Catch",63,63)
SS_ESASTEP("Circuits\Main\Main\SaveImage","End Try",64,64)
SS_ESASTEP("Circuits\Main\Main\SaveImage","StartUpFolder := Get StartUp Folder",65,65)
SS_ESASTEP("Circuits\Main\Main\SaveImage","cImageName2 = StartupFolder+'\serverdata\'+cLocation+cImageName",66,66)
SS_ESASTEP("Circuits\Main\Main\SaveImage","write String cFile to File cImageName2",67,69)
SS_ESASTEP("Circuits\Main\Main\SaveImage","myout = oDatabase.NewRecord(cDate,cTime,cLocation,(cLocation+cImageName),cPeopleCount)",70,70)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Print text ('Save File : ' + cImageName) to Editbox (Edit1) of Window (winPCServer)",71,75)
SS_ESASTEP("Circuits\Main\Main\SaveImage","myout = oPCServer.EndOfEditbox()",76,76)
SS_ESASTEP("Circuits\Main\Main\SaveImage","nArrSize = Get Length of String/Variable/Array oPCDisplayImages:aLocations",77,77)
SS_ESASTEP("Circuits\Main\Main\SaveImage","IF ( .not. nArrSize = 0 )",78,78)
SS_ESASTEP("Circuits\Main\Main\SaveImage","lFound = False",79,79)
SS_ESASTEP("Circuits\Main\Main\SaveImage","FOR LOOP ( From x = 1 To nArrSize Step 1)",80,80)
SS_ESASTEP("Circuits\Main\Main\SaveImage","IF ( upper(alltrim(oPCDisplayImages:aLocations[x][1])) == upper(alltrim(cLocation)) )",81,81)
SS_ESASTEP("Circuits\Main\Main\SaveImage","oPCDisplayImages:aLocations[x][2] = cImageName2",82,82)
SS_ESASTEP("Circuits\Main\Main\SaveImage","lFound = True",83,83)
SS_ESASTEP("Circuits\Main\Main\SaveImage","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\SaveImage","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\SaveImage","IF ( lFound = False )",86,86)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Add item {cLocation,cImageName2} To Array oPCDisplayImages:aLocations",87,87)
SS_ESASTEP("Circuits\Main\Main\SaveImage","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\SaveImage","ELSE",89,89)
SS_ESASTEP("Circuits\Main\Main\SaveImage","Add item {cLocation,cImageName2} To Array oPCDisplayImages:aLocations",90,90)
SS_ESASTEP("Circuits\Main\Main\SaveImage","END OF IF STATEMENT",91,91)
Return
*-------------------------------------------------------------------*
