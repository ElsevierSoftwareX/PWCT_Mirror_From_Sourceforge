*---------------------------------------------------------------------------*
* Time : 08:13:59    Date : 07/03/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
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


Resistance R_myprogram2_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_myprogram2_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 682 ;
HEIGHT 551 ;
ICON "PWCTICON" ;
TITLE " lessons From 22 to 40 " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 52 ,14 IMAGE image1;
PICTURE "IMAGES.PNG";
STRETCH ;
WIDTH 620 HEIGHT 407
@ 88 ,18 BUTTONEX btn22;
CAPTION "lesson22 ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson22()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 88 ,147 BUTTONEX btn23;
CAPTION "lesson23";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson23()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 88 ,277 BUTTONEX btn24;
CAPTION "lesson24";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson24()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 88 ,414 BUTTONEX btn25;
CAPTION "lesson25";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson25()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 88 ,548 BUTTONEX btn26;
CAPTION "lesson26";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson26()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,16 BUTTONEX btn27;
CAPTION "lesson27";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson27()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,149 BUTTONEX btn28;
CAPTION "lesson28";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson28()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,280 BUTTONEX btn29;
CAPTION "lesson29";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson29()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,417 BUTTONEX btn30;
CAPTION "lesson30";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson30()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,552 BUTTONEX btn31;
CAPTION "lesson31";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson31()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 209 ,151 BUTTONEX btn32;
CAPTION "lesson32";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson32()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 209 ,282 BUTTONEX btn33;
CAPTION "lesson33";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson33()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 209 ,414 BUTTONEX btn34;
CAPTION "lesson34";
FONTCOLOR {0,0,0};
BACKCOLOR {255,225,255};
ON CLICK lesson34()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 23 ,153 LABEL lbl1 ;
VALUE "Lessons From 22 to 34 " ;
WIDTH 374 ;
HEIGHT 50 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
DEFINE STATUSBAR 

STATUSITEM "Reem Mohammed Basheer" 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure lesson22()
obj22 = myClass()
out22 = obj22:method22("welcome to PWCT","lesson22")
out22 = obj22:method22("welcome to lesson22","lesson22")
out22 = obj22:sum22(12,8)
return
procedure lesson23()
obj23 = myClass()
out23 = obj23:showsum23(30,20)
return
procedure lesson24()
obj24 = Sum24()
obj24:num1 := 40
obj24:num2 := 60
out24 = obj24:Sum24()
out24 = obj24:showsum24()
return
procedure lesson25()
obj25 = Sum24()
obj25:num1 := 40
obj25:num2 := 60
out25 = obj25:Sum24()
MyOut := MSGBOX(obj25:num1,"number one ")
MyOut := MSGBOX(obj25:num2,"number tow ")
out25 = obj25:showSum24()
return
procedure lesson26()
obj26 = counter()
out = obj26:showWindow()
return
procedure lesson27()
obj27 = counter()
out = obj27:showWindow()
return
procedure lesson28()
obj28 = MainWindow()
out = obj28:showWindow()
return
procedure lesson29()
obj29 = MainWindow29()
out = obj29:showWindow29()
return
procedure lesson30()
obj30 = MainWindow30()
out = obj30:showWindow()
return
procedure lesson31()
obj31 = MainWindow31()
out = obj31:showWindow()
return
procedure lesson32()
obj32 = Notes()
out = obj32:showWindow()
return
procedure lesson33()
if !iswindowdefined( win33 )
DEFINE WINDOW win33 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE "lesson33  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 45 ,81 LABEL lbl33 ;
VALUE "Introduction Of Data Base " ;
WIDTH 301 ;
HEIGHT 45 ;
FONT "Arial Rounded MT Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 155,62 HYPERLINK Hyper1;
VALUE "PWCT Lesson 33 Video Click here" ;
ADDRESS "https://www.youtube.com/watch?v=HK6w-wYsc_k&list=PL7DDAB72548A4471C&index=33";
WIDTH 338 ;
HEIGHT 40 ;
FONT "Arial" ;
SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
HANDCURSOR 

END WINDOW

ACTIVATE WINDOW win33
EndIF

return
procedure lesson34()
obj34 = customers()
out = obj34:ShowWindow()
return
Class myClass
Method method22
Method sum22
Method showsum23
EndClass
Method method22(massage22,title22) Class myClass
MyOut := MSGBOX(massage22,Title22)
Return 0
Method sum22(num1,num2) Class myClass
sum = num1 + num2
MyOut := MSGBOX(sum,"the sum ")
Return sum
Method showsum23(num1,num2) Class myClass
sum = num1 + num2
out = self:method22(sum,"the sum is")
Return 0
Class Sum24
Data num1 init 0
Data num2 init 0
Data datasum24 init 0
Method sum24
Method showsum24
EndClass
Method Sum24 Class Sum24
self:datasum24 = self:num1 + self:num2
Return 0
Method showSum24 Class Sum24
MyOut := MSGBOX(self:datasum24,"Sum lesson24 ")
Return 0
Class counter
Data nNumber26 init 0
Method increament
Method showWindow
Method btncount
Method Update
EndClass
Method increament Class counter
self:nNumber26 = self:nNumber26 + 1
Return 0
Method showWindow Class counter
if !iswindowdefined( winlesson26 )
DEFINE WINDOW winlesson26 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson 26  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 168 ,34 LABEL lbl26 ;
VALUE "increament " ;
WIDTH 102 ;
HEIGHT 38 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 34 ,154 LABEL lbl26count ;
VALUE "The Counter" ;
WIDTH 181 ;
HEIGHT 40 ;
FONT "Forte" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 306 ,345 BUTTONEX btn26add;
CAPTION "increament ";
FONTCOLOR {0,0,0};
BACKCOLOR {183,232,255};
ON CLICK self:btncount()  ;
WIDTH 111 HEIGHT 33 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 168 ,169 TEXTBOX text26;
ON CHANGE self:Update()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW winlesson26
EndIF

Return 0
Method btncount Class counter
myout = self:increament()
winlesson26.text26.Value := self:nNumber26
Return 0
Method Update Class counter
self:nNumber26 := winlesson26.text26.Value
Return 0
Class MainWindow
Method showWindow
Method CloseWindow
Method counter28
EndClass
Method showWindow Class MainWindow
if !iswindowdefined( winlesson28 )
DEFINE WINDOW winlesson28 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson28  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {217,242,255} 

winlesson28.Maximize ( )
DEFINE MAIN MENU of winlesson28
POPUP "File "
MENUITEM "counter " Action self:counter28()
MENUITEM "exit" Action self:closeWindow
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW winlesson28
EndIF

Return 0
Method closeWindow Class MainWindow
winlesson28.Release ( )
Return 0
Method counter28 Class MainWindow
objcounter = counter()
myout = objcounter:showWindow()
Return 0
Class MainWindow29
Data nWindows init 0
Method showWindow29
Method CloseWindow29
Method counter29
Method newWindow
EndClass
Method showWindow29 Class MainWindow29
if !iswindowdefined( win29 )
DEFINE WINDOW win29 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson28  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,225,255} 

win29.Maximize ( )
DEFINE MAIN MENU of win29
POPUP "File "
MENUITEM "counter " Action self:counter29()
MENUITEM "exit" Action self:closeWindow29
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win29
EndIF

Return 0
Method closeWindow29 Class MainWindow29
win29.Release ( )
Return 0
Method counter29 Class MainWindow29
objcounter = counter2()
out = self:newWindow("counterWindow",@objcounter)
myout = objcounter:showWindow()
Return 0
Method newWindow(cWindow,wObject) Class MainWindow29
self:nWindows = self:nWindows + 1
cNum = STR ( self:nWindows )
cNum = ALLTRIM ( cNum )
wObject:cWindowName := cWindow+cNum
Return 0
class counter2 From counter
Data nNumber29 init 0
Data cWindowName init "counterWindow"
Method increament
Method showWindow
Method btncount
Method update
EndClass
Method increament Class counter2
self:nNumber29 = self:nNumber29 + 1
Return 0
Method showWindow Class counter2
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson 29  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 168 ,34 LABEL lbl29 ;
VALUE "increament " ;
WIDTH 102 ;
HEIGHT 38 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 34 ,154 LABEL lbl29count ;
VALUE "The Counter" ;
WIDTH 181 ;
HEIGHT 40 ;
FONT "Forte" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 306 ,345 BUTTONEX btn29add;
CAPTION "increament ";
FONTCOLOR {0,0,0};
BACKCOLOR {183,232,255};
ON CLICK self:btncount()  ;
WIDTH 111 HEIGHT 33 ;
FONT "arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 168 ,169 TEXTBOX text29;
ON CHANGE self:Update()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method btncount Class counter2
myout = self:increament()
&(self:cWindowName).text29.Value := self:nNumber29
Return 0
Method Update Class counter2
self:nNumber29 := &(self:cWindowName).text29.Value
Return 0
class MainWindow30 From MainWindow
Method showWindow
Method CloseWindow
Method counter28
Method counter30
EndClass
Method showWindow Class MainWindow30
if !iswindowdefined( winlesson30 )
DEFINE WINDOW winlesson30 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson30  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {220,185,255} 

winlesson30.Maximize ( )
DEFINE MAIN MENU of winlesson30
POPUP "File "
MENUITEM "counter " Action self:counter28()
MENUITEM "counter By Ten " Action self:counter30
MENUITEM "exit" Action self:closeWindow
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW winlesson30
EndIF

Return 0
Method closeWindow Class MainWindow30
winlesson30.Release ( )
Return 0
Method counter28 Class MainWindow30
objcounter = counter()
myout = objcounter:showWindow()
Return 0
Method counter30 Class MainWindow30
objcounter = counter3()
myout = objcounter:showWindow()
Return 0
class counter3 From counter
Data nNumber30 init 0
Method increament
Method showWindow
Method btncount
Method Update
EndClass
Method increament Class counter3
self:nNumber30 = self:nNumber30 + 10
Return 0
Method showWindow Class counter3
if !iswindowdefined( win30 )
DEFINE WINDOW win30 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "lesson 30 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {226,175,221} 

@ 168 ,34 LABEL lbl30 ;
VALUE "increament " ;
WIDTH 102 ;
HEIGHT 38 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {226,175,221} ;
FONTCOLOR {255,0,0}
@ 34 ,131 LABEL lbl30count ;
VALUE "The Ten Counter" ;
WIDTH 238 ;
HEIGHT 43 ;
FONT "Forte" SIZE 26  ;
BACKCOLOR {226,175,221} ;
FONTCOLOR {255,255,255}
@ 306 ,345 BUTTONEX btn30add;
CAPTION "increament ";
FONTCOLOR {0,0,0};
ON CLICK self:btncount()  ;
WIDTH 111 HEIGHT 33 ;
FONT "arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 168 ,169 TEXTBOX text30;
ON CHANGE self:Update()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,232,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win30
EndIF

Return 0
Method btncount Class counter3
myout = self:increament()
win30.text30.Value := self:nNumber30
Return 0
Method Update Class counter3
self:nNumber30 := win30.text30.Value
Return 0
class MainWindow31 From MainWindow
Method showWindow
Method CloseWindow
Method counter28
Method counter31
EndClass
Method showWindow Class MainWindow31
if !iswindowdefined( winlesson31 )
DEFINE WINDOW winlesson31 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson31  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {217,242,255} 

winlesson31.Maximize ( )
DEFINE MAIN MENU of winlesson31
POPUP "File "
MENUITEM "counter " Action self:counter28()
MENUITEM "counter 11" Action self:counter31()
MENUITEM "exit" Action self:closeWindow
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW winlesson31
EndIF

Return 0
Method closeWindow Class MainWindow31
winlesson31.Release ( )
Return 0
Method counter28 Class MainWindow31
objcounter = counter()
myout = objcounter:showWindow()
Return 0
Method counter31 Class MainWindow31
objcounter = counter4()
myout = objcounter:showWindow()
Return 0
class counter4 From counter3
Data nNumber31 init 0
Method increament
Method showWindow
Method btncount
Method Update
EndClass
Method increament Class counter4
self:nNumber31 = self:nNumber31 + 11
Return 0
Method showWindow Class counter4
if !iswindowdefined( win31 )
DEFINE WINDOW win31 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "lesson 31 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {226,175,221} 

@ 168 ,34 LABEL lbl31 ;
VALUE "increament " ;
WIDTH 102 ;
HEIGHT 38 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {226,175,221} ;
FONTCOLOR {255,0,0}
@ 34 ,131 LABEL lbl31count ;
VALUE " Counter 11" ;
WIDTH 238 ;
HEIGHT 43 ;
FONT "Forte" SIZE 26  ;
BACKCOLOR {226,175,221} ;
FONTCOLOR {255,255,255}
@ 306 ,345 BUTTONEX btn31add;
CAPTION "increament ";
FONTCOLOR {0,0,0};
ON CLICK self:btncount()  ;
WIDTH 111 HEIGHT 33 ;
FONT "arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 168 ,169 TEXTBOX text31;
ON CHANGE self:Update()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
BACKCOLOR {255,232,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win31
EndIF

Return 0
Method btncount Class counter4
myout = self:increament()
win31.text31.Value := self:nNumber31
Return 0
Method Update Class counter4
self:nNumber31 := win31.text31.Value
Return 0
Class Notes
Data cData init ""
Method showWindow
Method loadData
Method SaveData
Method CloseWindow
Method User2interface
Method interface2user
EndClass
Method ShowWindow Class Notes
if !iswindowdefined( winlesson32 )
DEFINE WINDOW winlesson32 ;
AT 10 ,10 ;
WIDTH 590 ;
HEIGHT 458 ;
ICON "PWCTICON" ;
TITLE "lesson32  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 56 ,28 EDITBOX edit32;
ON CHANGE self:User2interface()  ;
WIDTH 423 ;
HEIGHT 325;
FONT "Courier New" SIZE 12 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0}
@ 22 ,6 LABEL lbl32 ;
VALUE "Notes " ;
WIDTH 72 ;
HEIGHT 29 ;
FONT "Arial Rounded MT Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 56 ,455 BUTTONEX Savebtn32;
CAPTION "Save ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK self:SaveData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 111 ,455 BUTTONEX Loadbtn32;
CAPTION "Load ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:loadData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 170 ,455 BUTTONEX Closebtn32;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {251,87,79};
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson32
EndIF

Return 0
Method loadData Class Notes
GetFile := GetFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
self:cData := FILESTR( GetFile )
out = self:interface2user()
Return 0
Method SaveData Class Notes
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,self:cData)
FCLOSE(RPWI_TH)
myout = self:User2interface()
Return 0
Method CloseWindow Class Notes
winlesson32.Release ( )
Return 0
Method User2interface Class Notes
self:cData := winlesson32.edit32.Value
Return 0
Method interface2user Class Notes
winlesson32.edit32.Value := self:cData
Return 0
Class customers
Method ShowWindow
Method Connect
Method DisConnect
Method RecordData
EndClass
Method ShowWindow Class customers
if !iswindowdefined( win34 )
DEFINE WINDOW win34 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Lesson 34  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 86 ,172 BUTTONEX btnConnect;
CAPTION "Connect ";
FONTCOLOR {255,0,128};
BACKCOLOR {255,225,255};
ON CLICK self:Connect()  ;
WIDTH 146 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 226 ,170 BUTTONEX btnDisconnect;
CAPTION "Disconnect ";
FONTCOLOR {255,0,128};
BACKCOLOR {255,225,255};
ON CLICK self:DisConnect()  ;
WIDTH 146 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 156 ,172 BUTTONEX btnRecord;
CAPTION "Record Number";
FONTCOLOR {255,0,128};
BACKCOLOR {255,225,255};
ON CLICK self:RecordData()  ;
WIDTH 146 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win34
EndIF

Return 0
Method Connect Class customers
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Driver={Microsoft Access Driver (*.mdb)};Dbq=DataSystem.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers",oCon,3,3 )
Return 0
Method DisConnect Class customers
oRS:Close()
oCon:CLOSE()
Return 0
Method RecordData Class customers
nOutput := oRS:RecordCount
MyOut := MSGBOX(nOutput,"Record Count ")
Return 0


End Of Resistance

INIT PROCEDURE Init_myprogram2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (wincounter29) with (&(self:cWindowName))",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' lessons From 22 to 40 '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGES.PNG'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn22 ) , Caption : 'lesson22 '",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson22",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn23 ) , Caption : 'lesson23'",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson23",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn24 ) , Caption : 'lesson24'",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson24",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn25 ) , Caption : 'lesson25'",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson25",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn26 ) , Caption : 'lesson26'",56,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson26",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn27 ) , Caption : 'lesson27'",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson27",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn28 ) , Caption : 'lesson28'",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson28",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn29 ) , Caption : 'lesson29'",83,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson29",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn30 ) , Caption : 'lesson30'",92,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson30",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn31 ) , Caption : 'lesson31'",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson31",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn32 ) , Caption : 'lesson32'",110,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson32",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn33 ) , Caption : 'lesson33'",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson33",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn34 ) , Caption : 'lesson34'",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson34",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Lessons From 22 to 34 '",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",139,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Items",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Reem Mohammed Basheer' )",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",153,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson22 ( Event : CLICK )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj22 of Class myClass",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","out22 = obj22.method22('welcome to PWCT','lesson22')",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","out22 = obj22.method22('welcome to lesson22','lesson22')",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","out22 = obj22.sum22(12,8)",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson23 ( Event : CLICK )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj23 of Class myClass",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","out23 = obj23.showsum23(30,20)",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson24 ( Event : CLICK )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj24 of Class Sum24",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","obj24.num1 = 40",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","obj24.num2 = 60",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","out24 = obj24.Sum24()",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","out24 = obj24.showsum24()",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson25 ( Event : CLICK )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj25 of Class Sum24",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","obj25.num1 = 40",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","obj25.num2 = 60",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","out25 = obj25.Sum24()",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message obj25:num1 Title 'number one ' Type: Message Box",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message obj25:num2 Title 'number tow ' Type: Message Box",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","out25 = obj25.showSum24()",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson26 ( Event : CLICK )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj26 of Class counter",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj26.showWindow()",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson27 ( Event : CLICK )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj27 of Class counter",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj27.showWindow()",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson28 ( Event : CLICK )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj28 of Class MainWindow",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj28.showWindow()",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson29 ( Event : CLICK )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj29 of Class MainWindow29",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj29.showWindow29()",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson30 ( Event : CLICK )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj30 of Class MainWindow30",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj30.showWindow()",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson31 ( Event : CLICK )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj31 of Class MainWindow31",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj31.showWindow()",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson32 ( Event : CLICK )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj32 of Class Notes",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj32.showWindow()",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson33 ( Event : CLICK )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win33 ) , Title : 'lesson33  '",211,215)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",216,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl33 ) , Caption : 'Introduction Of Data Base '",224,225)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",226,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",231,242)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",243,244)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",245,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson34 ( Event : CLICK )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj34 of Class customers",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj34.ShowWindow()",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myClass",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Method method22",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Method sum22",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Method showsum23",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method method22(massage22,title22) Class myClass",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message massage22 Title Title22 Type: Message Box",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sum22(num1,num2) Class myClass",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","sum = num1 + num2",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message sum Title 'the sum ' Type: Message Box",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return sum)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showsum23(num1,num2) Class myClass",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","sum = num1 + num2",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.method22(sum,'the sum is')",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Sum24",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Data num1 Init Value 0",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Data num2 Init Value 0",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Data datasum24 Init Value 0",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Method sum24",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Method showsum24",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum24 Class Sum24",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","self:datasum24 = self:num1 + self:num2",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showSum24 Class Sum24",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message self:datasum24 Title 'Sum lesson24 ' Type: Message Box",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber26 Init Value 0",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Method increament",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Method btncount",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Method Update",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increament Class counter",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber26 = self:nNumber26 + 1",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class counter",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson26 ) , Title : 'lesson 26  '",293,297)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",298,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26 ) , Caption : 'increament '",306,307)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",308,312)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26count ) , Caption : 'The Counter'",313,314)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",315,319)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn26add ) , Caption : 'increament '",320,323)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btncount",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",325,328)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text26  )",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Update",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",331,337)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",338,339)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",340,342)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btncount Class counter",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increament()",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson26.text26.Value := self:nNumber26",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Update Class counter",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber26 = winlesson26.text26.Value",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter28",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class MainWindow",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson28 ) , Title : 'lesson28  '",357,361)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",362,369)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson28.Maximize( )",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (winlesson28)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",377,378)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",379,381)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closeWindow Class MainWindow",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson28.Release( )",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter28 Class MainWindow",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow29",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","Data nWindows Init Value 0",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow29",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow29",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter29",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","Method newWindow",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow29 Class MainWindow29",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win29 ) , Title : 'lesson28  '",398,402)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",403,410)
SS_ESASTEP("Circuits\Main\Main\Main","win29.Maximize( )",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win29)",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",418,419)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",420,422)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closeWindow29 Class MainWindow29",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","win29.Release( )",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter29 Class MainWindow29",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter2",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.newWindow('counterWindow',@objcounter)",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method newWindow(cWindow,wObject) Class MainWindow29",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","self:nWindows = self:nWindows + 1",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = CONVERT self:nWindows TO STRING",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = All Trim cNum",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","wObject.cWindowName = cWindow+cNum",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter2 From counter",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber29 Init Value 0",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","Data cWindowName Init Value 'counterWindow'",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","Method increament",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Method btncount",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","Method update",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increament Class counter2",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber29 = self:nNumber29 + 1",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class counter2",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( wincounter29 ) , Title : 'lesson 29  '",450,454)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",455,462)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl29 ) , Caption : 'increament '",463,464)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",465,469)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl29count ) , Caption : 'The Counter'",470,471)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",472,476)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn29add ) , Caption : 'increament '",477,480)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btncount",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",482,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text29  )",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Update",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",488,494)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",495,496)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",497,499)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btncount Class counter2",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increament()",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","wincounter29.text29.Value := self:nNumber29",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Update Class counter2",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber29 = wincounter29.text29.Value",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow30 From MainWindow",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter28",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter30",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class MainWindow30",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson30 ) , Title : 'lesson30  '",515,519)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",520,527)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson30.Maximize( )",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (winlesson30)",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter By Ten ' )",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",536,537)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",538,540)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closeWindow Class MainWindow30",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson30.Release( )",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter28 Class MainWindow30",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter30 Class MainWindow30",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter3",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter3 From counter",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber30 Init Value 0",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","Method increament",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","Method btncount",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","Method Update",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increament Class counter3",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber30 = self:nNumber30 + 10",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class counter3",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win30 ) , Title : 'lesson 30 '",564,568)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",569,576)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl30 ) , Caption : 'increament '",577,578)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",579,583)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl30count ) , Caption : 'The Ten Counter'",584,585)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",586,590)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn30add ) , Caption : 'increament '",591,593)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btncount",594,594)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",595,598)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text30  )",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Update",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",601,607)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",608,609)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",610,612)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btncount Class counter3",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increament()",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","win30.text30.Value := self:nNumber30",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Update Class counter3",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber30 = win30.text30.Value",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow31 From MainWindow",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter28",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter31",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class MainWindow31",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson31 ) , Title : 'lesson31  '",628,632)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",633,640)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson31.Maximize( )",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (winlesson31)",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter 11' )",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",649,650)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",651,653)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closeWindow Class MainWindow31",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson31.Release( )",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter28 Class MainWindow31",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter31 Class MainWindow31",662,662)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objcounter of Class counter4",663,663)
SS_ESASTEP("Circuits\Main\Main\Main","myout = objcounter.showWindow()",664,664)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter4 From counter3",666,666)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber31 Init Value 0",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","Method increament",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","Method btncount",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","Method Update",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",672,672)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increament Class counter4",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber31 = self:nNumber31 + 11",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class counter4",676,676)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win31 ) , Title : 'lesson 31 '",677,681)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",682,689)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl31 ) , Caption : 'increament '",690,691)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",692,696)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl31count ) , Caption : ' Counter 11'",697,698)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",699,703)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn31add ) , Caption : 'increament '",704,706)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btncount",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",708,711)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text31  )",712,712)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Update",713,713)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",714,720)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",721,722)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",723,725)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",726,726)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btncount Class counter4",727,727)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increament()",728,728)
SS_ESASTEP("Circuits\Main\Main\Main","win31.text31.Value := self:nNumber31",729,729)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",730,730)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Update Class counter4",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber31 = win31.text31.Value",732,732)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",733,733)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Notes",734,734)
SS_ESASTEP("Circuits\Main\Main\Main","Data cData Init Value ''",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",736,736)
SS_ESASTEP("Circuits\Main\Main\Main","Method loadData",737,737)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveData",738,738)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",739,739)
SS_ESASTEP("Circuits\Main\Main\Main","Method User2interface",740,740)
SS_ESASTEP("Circuits\Main\Main\Main","Method interface2user",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Notes",743,743)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson32 ) , Title : 'lesson32  '",744,748)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",749,756)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit32 )",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:User2interface",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",759,763)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl32 ) , Caption : 'Notes '",764,765)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",766,770)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( Savebtn32 ) , Caption : 'Save '",771,774)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveData",775,775)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",776,779)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( Loadbtn32 ) , Caption : 'Load '",780,783)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:loadData",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",785,788)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( Closebtn32 ) , Caption : 'Close'",789,792)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",794,797)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",798,799)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",800,802)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method loadData Class Notes",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",805,809)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData := Read File GetFile",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.interface2user()",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveData Class Notes",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",814,818)
SS_ESASTEP("Circuits\Main\Main\Main","write String self:cData to File PutFile",819,821)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.User2interface()",822,822)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",823,823)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Notes",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson32.Release( )",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method User2interface Class Notes",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData = winlesson32.edit32.Value",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method interface2user Class Notes",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson32.edit32.Value := self:cData",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordData",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class customers",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win34 ) , Title : 'Lesson 34  '",840,844)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",845,852)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnConnect ) , Caption : 'Connect '",853,856)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Connect",857,857)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",858,861)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDisconnect ) , Caption : 'Disconnect '",862,865)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DisConnect",866,866)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",867,870)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnRecord ) , Caption : 'Record Number'",871,874)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordData",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",876,879)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",880,881)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",882,884)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",886,886)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",887,888)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=DataSystem.mdb'",889,889)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",890,891)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",892,894)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",895,895)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",896,896)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",897,897)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",898,898)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordData Class customers",900,900)
SS_ESASTEP("Circuits\Main\Main\Main","nOutput := ADODB RecordSet (oRS) , Get Records Count",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message nOutput Title 'Record Count ' Type: Message Box",902,902)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",903,903)
Return
*-------------------------------------------------------------------*
