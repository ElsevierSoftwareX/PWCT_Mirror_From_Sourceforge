*---------------------------------------------------------------------------*
* Time : 14:56:55    Date : 03/10/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 396 ;
HEIGHT 428 ;
ICON "PWCTICON" ;
TITLE " Õ„Ì· ÊÕ›Ÿ «·„Õ ÊÏ ›Ï „·›" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -8 ,-6 IMAGE image1;
PICTURE "PICO\PIC.JPG";
STRETCH ;
WIDTH 408 HEIGHT 401
@ 278 ,203 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·„Õ ÊÏ ›Ï „·› ";
ON CLICK mysave()  ;
WIDTH 160 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 279 ,18 BUTTONEX btn2;
CAPTION " Õ„Ì· «·„Õ ÊÏ „‰ „·› ";
ON CLICK myload()  ;
WIDTH 166 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 43 ,18 EDITBOX edit1;
WIDTH 345 ;
HEIGHT 224;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU of win1
POPUP "„·› "
MENUITEM "Õ›Ÿ «·„Õ ÊÏ ›Ï „·› " Action mysave()
MENUITEM " Õ„Ì· «·„Õ ÊÏ „‰ „·› " Action myload()
MENUITEM "Œ—ÊÃ " Action exit()
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO RightToLeftControl WITH "win1","edit1"
ACTIVATE WINDOW win1
EndIF

procedure mysave()
myedit := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Õ›Ÿ «·„Õ ÊÏ ›Ï „·›" , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·› ","⁄›Ê« «·„·› „ÊÃÊœ „”»ﬁ« ")
IF Myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,myedit)
FCLOSE(RPWI_TH)
return
procedure myload()
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·„Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ENDIF
myedit = MEMOREAD ( getfile )
win1.edit1.Value := myedit
return
Proc exit
win1.Release ( )
Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Õ„Ì· ÊÕ›Ÿ «·„Õ ÊÏ ›Ï „·›'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\PIC.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ›Ÿ «·„Õ ÊÏ ›Ï „·› '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' Õ„Ì· «·„Õ ÊÏ „‰ „·› '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Õ›Ÿ «·„Õ ÊÏ ›Ï „·› ' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' Õ„Ì· «·„Õ ÊÏ „‰ „·› ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeftControl Parameters 'win1','edit1'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","myedit = win1.edit1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·› ' Title '⁄›Ê« «·„·› „ÊÃÊœ „”»ﬁ« ' Type: Message Ok/Cancel",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Myout==false )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","write String myedit to File PutFile",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile==false )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String myedit",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := myedit",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000,0x100000)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
