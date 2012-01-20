*---------------------------------------------------------------------------*
* Time : 02:32:27    Date : 01/21/2012
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


Resistance R_17_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_17_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 459 ;
HEIGHT 440 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,255} 

TRANS_TEMP = "tel"
@ 45 ,65 ;
BROWSE browse1 ;
WIDTH 353 ;
HEIGHT 258 ;
HEADERS {" «· ·Ì›Ê‰" , " «·⁄‰Ê«‰ " , " «·«”„ " } ;
WIDTHS { 100 , 100 , 100 } ;
WORKAREA &TRANS_TEMP ;
FIELDS { "tel->phone" , "tel->address" , "tel ->name" } ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 317 ,111 BUTTONEX btn1;
CAPTION "≈÷«›… ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 317 ,265 BUTTONEX btn2;
CAPTION "Õ–› ";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure opendb()
CheckFile := File("tel.dbf")
IF checkfile = false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH " name ",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address ",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone ",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
return
procedure myadd()
SELECT tel
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
return
procedure mydel()
SELECT tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec -1
Goto myrec
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
return


End Of Resistance

INIT PROCEDURE Init_17
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",14,25)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Õ–› '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb - Event : INIT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Field : ' name ' , Type  : 'c' , Length  : 50",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address ' , Type  : 'c' , Length  : 50",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone ' , Type  : 'c' , Length  : 20",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec -1",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
Return
*-------------------------------------------------------------------*
