*---------------------------------------------------------------------------*
* Time : 00:17:22    Date : 11/18/2012
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


Resistance R_32_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_32_18smart1() code
NotesObj = Notes()
myout = NotesObj:ShowWindow()
Class Notes
Data cData init ""
Method ShowWindow
Method LoadData
Method SaveData
Method CloseWindow
Method Class2UserI
Method UserI2Class
EndClass
Method ShowWindow Class Notes
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 558 ;
HEIGHT 348 ;
ICON "PWCTICON" ;
TITLE "Notes  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LABEL lbl1 ;
VALUE "Notes " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,61 EDITBOX edit1;
ON CHANGE self:UserI2Class()  ;
WIDTH 319 ;
HEIGHT 283;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 64 ,407 BUTTONEX btn1;
CAPTION "Save ";
ON CLICK self:SaveData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 21 ,407 BUTTONEX btn2;
CAPTION "Load ";
ON CLICK self:LoadData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 164 ,407 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method LoadData Class Notes
GetFile := GetFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
self:cData := FILESTR( GetFile )
myout = self:Class2UserI()
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
Return 0
Method CloseWindow Class Notes
win1.Release ( )
Return 0
Method Class2UserI Class Notes
win1.edit1.Value := self:cData
Return 0
Method UserI2Class Class Notes
self:cData := win1.edit1.Value
Return 0


End Of Resistance

INIT PROCEDURE Init_32
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object NotesObj of Class Notes",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = NotesObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Notes",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data cData Init Value ''",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadData",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveData",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserI",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserI2Class",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Notes",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notes  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Notes '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:UserI2Class",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveData",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Load '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LoadData",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadData Class Notes",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData := Read File GetFile",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveData Class Notes",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","write String self:cData to File PutFile",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Notes",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Notes",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := self:cData",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserI2Class Class Notes",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData = win1.edit1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
Return
*-------------------------------------------------------------------*
