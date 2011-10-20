*---------------------------------------------------------------------------*
* Time : 22:21:32    Date : 10/13/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
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
EndIF

Proc mywork
oactivex:OOLE:filestoprocess := "t1.txt | t2.txt "
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:sourcedirectory := currentfolder
oactivex:OOLE:zipfilename := currentfolder+"\test.zip"
oactivex:OOLE:add ( )
oactivex:OOLE:extractdirectory := "output"
oactivex:OOLE:extract ( )
MyOut := MSGBOX("Opearion Done !!!","Ok")
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PolarZipLight'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Add t1.txt and t2.txt to Test.zip'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Extract Test.zip , Extract Folder = Output'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Do the operation'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.filestoprocess := 't1.txt | t2.txt '",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","CurrentFolder := Get Current Folder",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.sourcedirectory := currentfolder",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.zipfilename := currentfolder+'\test.zip'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.add ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.extractdirectory := 'output'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.extract ( )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Opearion Done !!!' Title 'Ok' Type: Message Box",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*
