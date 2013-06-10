*---------------------------------------------------------------------------*
* Time : 02:52:42    Date : 06/10/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.04
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


Resistance R_ATTACKMETHODS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ATTACKMETHODS_18smart1() code
aDictionary := {}
AADD( aDictionary , {"Admin","System"})
AADD( aDictionary , {"sa","sa"})
AADD( aDictionary , {"human","password"})
AADD( aDictionary , {"person","password"})
AADD( aDictionary , {"admin","123"})
AADD( aDictionary , {"admin","123456"})
AADD( aDictionary , {"admin","123456789"})
Public cAttackerCommand
cAttackerCommand := ""
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1161 ;
HEIGHT 595 ;
ICON "PWCTICON" ;
TITLE "IS536 - Simple application to show the algorithms behind some types of attacks" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
DEFINE MAIN MENU
POPUP "File "
MENUITEM "Close Application " Action CloseApp()
END POPUP
END MENU
DEFINE STATUSBAR 
STATUSITEM "Ready"
END STATUSBAR
@ 409 ,13 BUTTONEX btn1;
CAPTION "Backdoor Attack";
ON CLICK BackDoor()  ;
WIDTH 360 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 449 ,391 BUTTONEX btn2;
CAPTION "Brute Force Attack";
ON CLICK BruteForce()  ;
WIDTH 360 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 449 ,769 BUTTONEX btn3;
CAPTION "Dictionary Attack";
ON CLICK Dictionary()  ;
WIDTH 360 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 58 ,13 LISTBOX listBackDoor;
WIDTH 360 ;
HEIGHT 340 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 108 ,391 LISTBOX listBruteForce;
WIDTH 360 ;
HEIGHT 330 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 238 ,769 LISTBOX listDictionary;
WIDTH 360 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 488 ,1030 BUTTONEX btn4;
CAPTION "Close ";
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 17 ,391 LABEL lbl1 ;
VALUE "Password Size " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 12 ,549 TEXTBOX textPassWordSize;
HEIGHT 30 ;
WIDTH 110 ;
VALUE 2 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 53 ,391 LABEL lbl2 ;
VALUE "ASCII Code from 0 to (MAX) " ;
WIDTH 160 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 47 ,549 TEXTBOX textAsciiCodeMax;
HEIGHT 30 ;
WIDTH 110 ;
VALUE "255" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 12 ,769 GRID GridDictionary;
WIDTH 240 ;
HEIGHT 120 ;
HEADERS {"User Name","Password"};
WIDTHS {100,100} ;
ITEMS aDictionary ;
VALUE 1 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 152 ,770 LABEL lbl3 ;
VALUE "Real User Name : " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 192 ,770 LABEL lbl4 ;
VALUE "Real Password : " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 152 ,899 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 230 ;
VALUE "admin" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 191 ,899 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 230 ;
VALUE "123" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 
@ 12 ,1029 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK AddToDictionary()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 52 ,1029 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK DeleteFromDictionary()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 19 ,13 LABEL lbl5 ;
VALUE "Port " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 16 ,61 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 80 ;
VALUE 1500 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 455 ,14 LABEL lbl6 ;
VALUE "Command/Message from attacker : " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 450 ,218 TEXTBOX textMsg;
HEIGHT 29 ;
WIDTH 155 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 486 ,283 BUTTONEX btnSend;
CAPTION "Send ";
ON CLICK SendMsg()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 100 ;
Action CheckCommand()
@ 492 ,20 LABEL lbl7 ;
VALUE "IP " ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 490 ,170 LABEL lbl8 ;
VALUE "Port " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 486 ,52 TEXTBOX textVictimIP;
HEIGHT 30 ;
WIDTH 110 ;
VALUE "127.0.0.1" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 486 ,218 TEXTBOX textVictimPort;
HEIGHT 30 ;
WIDTH 60 ;
VALUE "1500" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure CloseApp()
win1.Release ( )
return
procedure BackDoor()
Public oServerSocket
nPort := win1.textPort.Value
HB_INETInit()
oServerSocket = HB_INETServer(nPort)
cPort = STR ( nPort )
cPort = ALLTRIM ( cPort )
Win1.listBackDoor.Additem ( "Listen to port  " + cPort )
hb_threadstart("RemoteControl",@oServerSocket,@cAttackerCommand )
return
procedure BruteForce()
nPassWordSize := win1.textPassWordSize.Value
nLettersMaxCode := win1.textAsciiCodeMax.Value
aPasswords := {}
FOR x = 1 TO nPassWordSize STEP 1
aTemp := {}
FOR y = 0 TO nLettersMaxCode STEP 1
c1  = CHR(y)
AADD( aTemp , c1)
Next
IF x = 1
aPasswords := aTemp
ELSE
nMax  = LEN(aPasswords)
FOR y = 1 TO nMax STEP 1
FOR z = 1 TO nLettersMaxCode STEP 1
AADD( aPasswords , aPasswords[y] + aTemp[z])
Next
Next
ENDIF
Next
win1.listBruteForce.DeleteAllItems ( )
nMax  = LEN(aPasswords)
FOR x = 1 TO nMax STEP 1
cx = STR ( x )
cx = ALLTRIM ( cx )
Win1.listBruteForce.Additem ( "Try Password No. [" + cx + "] Value: " + aPasswords[x] )
Next
return
procedure Dictionary()
cRealUserName := win1.textUserName.Value
cRealPassword := win1.textPassword.Value
nMax := win1.GridDictionary.ItemCount
aDictionary := {}
FOR x = 1 TO nMax STEP 1
aTempItem := win1.GridDictionary.item(x)
AADD( aDictionary , aTempItem)
Next
nMax  = LEN(aDictionary)
win1.listDictionary.DeleteAllItems ( )
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Win1.ListDictionary.Additem ( "Try : Username: " + aDictionary[x][1] + " Password: " + aDictionary[x][2] )
IF aDictionary[x][1] = cRealUserName .and. aDictionary[x][2] = cRealPassword
Win1.ListDictionary.Additem ( "We get access to the system" )
Return 0
ENDIF
Next
ELSE
Win1.ListDictionary.Additem ( "No data inside the dictionary" )
ENDIF
Win1.ListDictionary.Additem ( "We cann't access the system" )
return
procedure AddToDictionary()
win1.GridDictionary.AddItem ( {"NewUserName","NewPassword"} )
return
procedure DeleteFromDictionary()
nValue := win1.GridDictionary.Value
IF .not. nValue = 0
win1.GridDictionary.DeleteItem ( nValue )
ELSE
MyOut := MSGBOX("Please Select an Item from the Dictionary list ","Sorry ")
ENDIF
return
Proc RemoteControl( oServerSocket,cAttackerCommand )
DO WHILE  .T.
oSocket := HB_INETAccept( oServerSocket )
cData = HB_INETRecvLine( oSocket )
IF .not. cdata == ""
cAttackerCommand := cData
ENDIF
ENDDO
Return Nil
procedure SendMsg()
cMsg := win1.textMsg.Value
cPort := win1.textVictimPort.Value
cIP := win1.textVictimIP.Value
cPort = ALLTRIM ( cPort )
oAttackerSocket = HB_INETConnect( cIP ,VAL(cPort) )
nError = HB_INETERRORCODE( oAttackerSocket )
IF nERROR > 0
Win1.listBackDoor.Additem ( "Cann't connect" )
Return 0
ENDIF
HB_INETSend( oAttackerSocket, cMsg + CHR(13) + CHR(10) )
HB_INETClose( oAttackerSocket )
Win1.listBackDoor.Additem ( "Attacker message sent." )
return
Proc CheckCommand
IF .not. cAttackerCommand == ""
Win1.listBackDoor.Additem ( "Backdoor get msg :  " + cAttackerCommand )
cAttackerCommand := ""
ENDIF
Return Nil

End Of Resistance

INIT PROCEDURE Init_ATTACKMETHODS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aDictionary",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'Admin','System'} To Array aDictionary",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'sa','sa'} To Array aDictionary",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'human','password'} To Array aDictionary",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'person','password'} To Array aDictionary",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'admin','123'} To Array aDictionary",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'admin','123456'} To Array aDictionary",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'admin','123456789'} To Array aDictionary",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Public cAttackerCommand",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","cAttackerCommand = ''",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'IS536 - Simple application to show the algorithms behind some types of attacks'",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close Application ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Backdoor Attack'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action BackDoor",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Brute Force Attack'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action BruteForce",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Dictionary Attack'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Dictionary",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listBackDoor )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listBruteForce )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listDictionary )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Password Size '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPassWordSize  )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",86,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'ASCII Code from 0 to (MAX) '",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAsciiCodeMax  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( GridDictionary ) , HEADERS : {'User Name','Password'}",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",111,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Real User Name : '",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",123,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Real Password : '",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",130,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textUserName  )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",136,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPassword  )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",144,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddToDictionary",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",155,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DeleteFromDictionary",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",161,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Port '",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",166,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPort  )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",172,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Command/Message from attacker : '",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",182,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textMsg  )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",188,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSend ) , Caption : 'Send '",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SendMsg",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",197,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",200,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'IP '",202,203)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",204,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Port '",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",211,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textVictimIP  )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",217,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textVictimPort  )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",225,231)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",232,233)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",234,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure BackDoor ( Event : CLICK )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Public oServerSocket",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","nPort = win1.textPort.Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Init",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","INET Server, Socket Object : oServerSocket , Port nPort",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","cPort = CONVERT nPort TO STRING",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","cPort = All Trim cPort",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Listen to port  ' + cPort) to Listbox (listBackDoor) of Window (Win1)",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Thread - Start - Function Name : 'RemoteControl' , Parameters : @oServerSocket,@cAttackerCommand",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure BruteForce ( Event : CLICK )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","nPassWordSize = win1.textPassWordSize.Value",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","nLettersMaxCode = win1.textAsciiCodeMax.Value",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aPasswords",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nPassWordSize Step 1)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aTemp",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 0 To nLettersMaxCode Step 1)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = Get character of ASCII Code y",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Add item c1 To Array aTemp",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x = 1 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","aPasswords = aTemp",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aPasswords",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To nMax Step 1)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From z = 1 To nLettersMaxCode Step 1)",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aPasswords[y] + aTemp[z] To Array aPasswords",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.listBruteForce.DeleteAllItems ( )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aPasswords",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","cx = CONVERT x TO STRING",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","cx = All Trim cx",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Try Password No. [' + cx + '] Value: ' + aPasswords[x]) to Listbox (listBruteForce) of Window (Win1)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Dictionary ( Event : CLICK )",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","cRealUserName = win1.textUserName.Value",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","cRealPassword = win1.textPassword.Value",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.GridDictionary.ItemCount",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","aDictionary = {}",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","aTempItem = win1.GridDictionary.item(x)",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aTempItem To Array aDictionary",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aDictionary",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.listDictionary.DeleteAllItems ( )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Try : Username: ' + aDictionary[x][1] + ' Password: ' + aDictionary[x][2]) to Listbox (",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aDictionary[x][1] = cRealUserName .and. aDictionary[x][2] = cRealPassword )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('We get access to the system') to Listbox (ListDictionary) of Window (Win1)",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No data inside the dictionary') to Listbox (ListDictionary) of Window (Win1)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('We cann't access the system') to Listbox (ListDictionary) of Window (Win1)",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddToDictionary ( Event : CLICK )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.GridDictionary.AddItem ( {'NewUserName','NewPassword'} )",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteFromDictionary ( Event : CLICK )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = win1.GridDictionary.Value",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. nValue = 0 )",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","win1.GridDictionary.DeleteItem ( nValue )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Select an Item from the Dictionary list ' Title 'Sorry ' Type: Message Box",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RemoteControl( oServerSocket,cAttackerCommand )",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( .T. )",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","oSocket = INET Accept : Server Socket Object : oServerSocket",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","cData = INET Receive Line - Socket Object : oSocket",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. cdata == '' )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","cAttackerCommand = cData",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SendMsg ( Event : CLICK )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","cMsg = win1.textMsg.Value",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","cPort = win1.textVictimPort.Value",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","cIP = win1.textVictimIP.Value",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","cPort = All Trim cPort",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","oAttackerSocket = INET - Connect, Address : cIP , Port : cPort",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","nError = INET Error Code , Socket Object oAttackerSocket",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nERROR > 0 )",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Cann't connect') to Listbox (listBackDoor) of Window (Win1)",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Send Data - Socket : oAttackerSocket , Data cMsg + CHR(13) + CHR(10)",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","Close Socket , Socket Object : oAttackerSocket",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Attacker message sent.') to Listbox (listBackDoor) of Window (Win1)",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CheckCommand",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. cAttackerCommand == '' )",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Backdoor get msg :  ' + cAttackerCommand) to Listbox (listBackDoor) of Window (Win1)",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","cAttackerCommand = ''",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",343,343)
Return
*-------------------------------------------------------------------*
