#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:53:51    Date : 10/10/2008
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

Proc mywork
win1.timer2.Enabled := .f.
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
@ 410 ,658 BUTTON btn3;
CAPTION "Exit";
ON CLICK win1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

win2.Center ( )
myfile = strtran(getexefilename(),"MAIN.exe","test.htm")



oactivex:OOLE:navigate ( myfile )
ACTIVATE WINDOW win2

Return Nil
Proc mywork2
win2.timer1.Enabled := .f.
mydata = filestr("Data.txt")
myemail = alltrim(memoline(mydata,,1))
mypassword = alltrim(memoline(mydata,,2))


oactivex:OOLE:Document:All:username:value := myemail
oactivex:OOLE:Document:All:passwd:value := mypassword
oactivex:OOLE:Document:All:dotsave:click ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer2 )",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer2.Enabled := .f.",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win2 )",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Set File Name & Path",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.navigate ( myfile )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork2",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win2.timer1.Enabled := .f.",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","mydata",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:username:value := myemail",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:passwd:value := mypassword",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:dotsave:click ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
