*---------------------------------------------------------------------------*
* Time : 19:28:19    Date : 02/28/2012
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


Resistance R_LES11_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES11_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " œÊÌ‰ «·„·«ÕŸ«   " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 48 ,11 EDITBOX edit1;
WIDTH 465 ;
HEIGHT 210;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 296 ,240 BUTTONEX btn1;
CAPTION "Õ›Ÿ ";
ON CLICK save()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,347 BUTTONEX btn2;
CAPTION "› Õ";
ON CLICK open()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "› Õ " Action open()
MENUITEM "Õ›Ÿ" Action savee()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc open
GetFile := GetFile ( { {"Text","*.txt"}} , ;
" ﬁ Õ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile == false
Return 0
ELSE
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
ENDIF
Return Nil
Proc save
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„·› " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF CheckFile
MyOut := MSGOKCANCEL("ÌÊÃœ „·› »‰›” «·«”„ , Â·  —Ìœ «” »œ«·Â ø ","  √ﬂÌœ «” »œ«· «·„·›")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc savee
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„·› " , ;
, ;
, ;
)
CheckFile := File(putfile)
IF CheckFile
MyOut := MSGOKCANCEL("ÌÊÃœ „·› »‰›” «·«”„ , Â·  —Ìœ «” »œ«·Â ø ","  √ﬂÌœ «” »œ«· «·„·›")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' œÊÌ‰ «·„·«ÕŸ«   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ›Ÿ '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '› Õ'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action open",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '› Õ ' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Õ›Ÿ' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure open",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile == false )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String mystr",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÌÊÃœ „·› »‰›” «·«”„ , Â·  —Ìœ «” »œ«·Â ø ' Title '  √ﬂÌœ «” »œ«· «·„·›' Type: Message Ok/Cancel",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure savee",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File putfile",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÌÊÃœ „·› »‰›” «·«”„ , Â·  —Ìœ «” »œ«·Â ø ' Title '  √ﬂÌœ «” »œ«· «·„·›' Type: Message",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
Return
*-------------------------------------------------------------------*
