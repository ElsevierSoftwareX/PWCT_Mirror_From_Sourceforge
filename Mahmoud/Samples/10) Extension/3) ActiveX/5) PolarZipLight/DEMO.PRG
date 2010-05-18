#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 16:34:13    Date : 11/22/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 250 ;
HEIGHT 155 ;
ICON "PWCTICON" ;
TITLE "PolarZipLight" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,40 LABEL lbl1 ;
VALUE "Add t1.txt and t2.txt to Test.zip" ;
WIDTH 160 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 40 ,10 LABEL lbl2 ;
VALUE "Extract Test.zip , Extract Folder = Output" ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 74 ,17 BUTTONEX btn1;
CAPTION "Do the operation";
ON CLICK mywork()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Win1", "PolarZIPLight.ZIPLight.5" , 10 , 10 , 1 , 1)
oActiveX:Load()
END WINDOW

win1.Center ( )
ACTIVATE WINDOW win1

Proc mywork
oactivex:OOLE:filestoprocess := "t1.txt | t2.txt "
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:sourcedirectory := currentfolder
oactivex:OOLE:zipfilename := currentfolder+"\test.zip"
oactivex:OOLE:add ( )
oactivex:OOLE:extractdirectory := "output"
oactivex:OOLE:extract ( )
MSGBOX("Opearion Done !!!","Ok")
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.filestoprocess := 't1.txt | t2.txt '",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","CurrentFolder := Get Current Folder",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.sourcedirectory := currentfolder",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.zipfilename := currentfolder+'\test.zip'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.add ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.extractdirectory := 'output'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.extract ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Opearion Done !!!' Title 'Ok' Type: Message Box",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
