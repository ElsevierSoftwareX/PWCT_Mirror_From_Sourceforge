*---------------------------------------------------------------------------*
* Time : 23:50:06    Date : 10/20/2011
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 583 ;
HEIGHT 323 ;
ICON "MAIN" ;
TITLE "Yahoo Login" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {64,0,64} 

@ 0 ,0 IMAGE image1;
PICTURE "PWCT.jpg";
WIDTH 586 HEIGHT 103
@ 186 ,156 LABEL lbl1 ;
VALUE "Fast Login to Yahoo " ;
WIDTH 271 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 131 ,177 LABEL lbl2 ;
VALUE "Web Automation" ;
WIDTH 221 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
DEFINE TIMER Timer2 INTERVAL 1000 ;
Action mywork()
@ 259 ,92 LABEL lbl3 ;
VALUE "Developed by : Mahmoud Fayed (msfclipper@yahoo.com)" ;
WIDTH 411 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

win1.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mywork
win1.timer2.Enabled := False
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 782 ;
HEIGHT 488 ;
TITLE "Mail Browser" ;
CHILD ;
NOSYSMENU 

Public oActiveX
oActiveX := TActiveX():New( "Win2", "Shell.Explorer.2" , 8 , 6 , 764 , 394)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mywork2()
@ 410 ,658 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK win1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

win2.Center ( )
StartUpFolder := GetStartUpFolder()
myfile := startupfolder + "\test.htm"
oactivex:OOLE:navigate ( myfile )
ACTIVATE WINDOW win2
EndIF

Return Nil
Proc mywork2
win2.timer1.Enabled := False
mydata := FILESTR( "data.txt" )
myemail = MEMOLINE( mydata , 254 , 1 )
myemail = ALLTRIM ( myemail )
mypassword = MEMOLINE( mydata , 254 , 2 )
mypassword = ALLTRIM ( mypassword )
oactivex:OOLE:Document:All:username:value := myemail
oactivex:OOLE:Document:All:passwd:value := mypassword
oactivex:OOLE:Document:All:dotsave:click ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Yahoo Login'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PWCT.jpg'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Fast Login to Yahoo '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Web Automation'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer2 )",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Developed by : Mahmoud Fayed (msfclipper@yahoo.com)'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer2.Enabled := False",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Mail Browser'",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.release()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","myfile = startupfolder + '\test.htm'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.navigate ( myfile )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork2",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win2.timer1.Enabled := False",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","mydata := Read File 'data.txt'",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","myemail = LINE 1 FROM MEMO mydata",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","myemail = All Trim myemail",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","mypassword = LINE 2 FROM MEMO mydata",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","mypassword = All Trim mypassword",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:username:value := myemail",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:passwd:value := mypassword",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:dotsave:click ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
