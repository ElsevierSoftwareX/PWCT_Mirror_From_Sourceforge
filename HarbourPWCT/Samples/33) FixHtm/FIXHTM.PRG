*---------------------------------------------------------------------------*
* Time : 00:12:46    Date : 03/11/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_FIXHTM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FIXHTM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 435 ;
HEIGHT 121 ;
ICON "PWCTICON" ;
TITLE "FixHtm  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 20 ,19 LABEL lbl1 ;
VALUE "File " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 11 ,98 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,305 BUTTONEX btn1;
CAPTION "Browse ";
ON CLICK mybrowse()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Ready"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mybrowse()
win1.statusbar.item(1) := "Ready"
GetFile := GetFile ( { {"html","*.htm"}  } , ;
, ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile
win1.text1.Value := GetFile
DO FixFile
ENDIF
return
procedure FixFile()
cFile := win1.text1.Value
CheckFile := File(cFile)
IF CheckFile
cStr := FILESTR( cFile )
cStr = STRTRAN(cStr,"2011","2013")
cStr = STRTRAN(cStr,"540","1080")
cStr = STRTRAN(cStr,"253","506")
RPWI_TH = FCREATE(cFile,0)
FWRITE(RPWI_TH,cStr)
FCLOSE(RPWI_TH)
win1.statusbar.item(1) := "Operation Done."
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_FIXHTM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'FixHtm  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'File '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Browse '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybrowse",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Ready'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := GetFile",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure FixFile",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FixFile ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = win1.text1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File cFile",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = Sub String '2011' FROM cStr TRANSFORM TO '2013'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = Sub String '540' FROM cStr TRANSFORM TO '1080'",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = Sub String '253' FROM cStr TRANSFORM TO '506'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","write String cStr to File cFile",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Operation Done.'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
