*---------------------------------------------------------------------------*
* Time : 23:47:03    Date : 10/12/2011
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
win1.timer2.Enabled := .f.
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 782 ;
HEIGHT 488 ;
TITLE "Mail Browser" ;
CHILD ;
NOSYSMENU 

oActiveX := TActiveX():New( "Win2", "Shell.Explorer.2" , 8 , 6 , 764 , 394)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mywork2()
@ 410 ,658 BUTTONEX btn3;
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
EndIF

Return Nil
Proc mywork2
win2.timer1.Enabled := .f.
mydata = filestr("Data.txt")
myemail = alltrim(memoline(mydata,,1))
mypassword = alltrim(memoline(mydata,,2))


oactivex:OOLE:Document:All:username:value := myemail
oactivex:OOLE:Document:All:passwd:value := mypassword
oactivex:OOLE:Document:All:dotsave:click ( )


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
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer2.Enabled := .f.",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Mail Browser'",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.release()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Set File Name & Path",83,86)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.navigate ( myfile )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork2",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win2.timer1.Enabled := .f.",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","mydata",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:username:value := myemail",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:passwd:value := mypassword",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.Document:All:dotsave:click ( )",101,101)
Return
*-------------------------------------------------------------------*
