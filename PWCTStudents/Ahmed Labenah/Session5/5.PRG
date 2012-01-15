*---------------------------------------------------------------------------*
* Time : 13:24:44    Date : 01/10/2012
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


Resistance R_5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 541 ;
HEIGHT 613 ;
ICON "PWCTICON" ;
TITLE "Do you Know who is the founder of YouTube ?" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LABEL lbl1 ;
VALUE "Do you Know who is the founder of YouTube ?" ;
WIDTH 380 ;
HEIGHT 28 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,160}
@ 46 ,10 IMAGE image1;
PICTURE "220px-YouTube_TaiwanVersionLaunch_SteveChen-1.jpg";
ON MOUSEHOVER Hide1()  ;
ON MOUSELEAVE Show1()  ;
STRETCH ;
WIDTH 156 HEIGHT 171
@ 46 ,170 IMAGE image2;
PICTURE "220px-Chad_Hurley_-World_Economic_Forum_Annual_Meeting_Davos_2007.jpg";
ON MOUSEHOVER hide2()  ;
ON MOUSELEAVE Show2()  ;
STRETCH ;
WIDTH 156 HEIGHT 171
@ 46 ,330 IMAGE image3;
PICTURE "200px-Jawed_Karim_2008.jpg";
ON MOUSEHOVER Hide3()  ;
ON MOUSELEAVE Show3()  ;
STRETCH ;
WIDTH 156 HEIGHT 171
@ 263 ,177 BUTTONEX btn1;
CAPTION "The answer is...";
ON CLICK Answer()  ;
WIDTH 166 HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 301 ,10 LABEL lbl2 ;
VALUE "" ;
WIDTH 204 ;
HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 336 ,10 IMAGE image4;
PICTURE "";
STRETCH ;
WIDTH 156 HEIGHT 171
@ 336 ,170 IMAGE image5;
PICTURE "";
STRETCH ;
WIDTH 156 HEIGHT 171
@ 336 ,330 IMAGE image6;
PICTURE "";
STRETCH ;
WIDTH 156 HEIGHT 171
@ 221 ,30 LABEL lbl3 ;
VALUE "Steve Chen" ;
ON MOUSEHOVER Hide1()  ;
ON MOUSELEAVE Show1()  ;
WIDTH 107 ;
HEIGHT 27 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,160}
@ 221 ,190 LABEL lbl4 ;
VALUE "Chad Hurley" ;
ON MOUSEHOVER hide2()  ;
ON MOUSELEAVE Show2()  ;
WIDTH 107 ;
HEIGHT 27 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,160}
@ 221 ,350 LABEL lbl5 ;
VALUE "Jawed Karim" ;
ON MOUSEHOVER Hide3()  ;
ON MOUSELEAVE Show3()  ;
WIDTH 107 ;
HEIGHT 27 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Hide1()
win1.image1.Show ( )
win1.image2.Hide ( )
win1.image3.Hide ( )
win1.lbl3.Show ( )
win1.lbl4.Hide ( )
win1.lbl5.Hide ( )
return
procedure Show1()
win1.image1.Show ( )
win1.image2.Show ( )
win1.image3.Show ( )
win1.lbl3.Show ( )
win1.lbl4.Show ( )
win1.lbl5.Show ( )
return
procedure hide2()
win1.image1.Hide ( )
win1.image2.Show ( )
win1.image3.Hide ( )
win1.lbl3.Hide ( )
win1.lbl4.Show ( )
win1.lbl5.Hide ( )
return
procedure Show2()
win1.image1.Show ( )
win1.image2.Show ( )
win1.image3.Show ( )
win1.lbl3.Show ( )
win1.lbl4.Show ( )
win1.lbl5.Show ( )
return
procedure Hide3()
win1.image1.Hide ( )
win1.image2.Hide ( )
win1.image3.Show ( )
win1.lbl3.Hide ( )
win1.lbl4.Hide ( )
win1.lbl5.Show ( )
return
procedure Show3()
win1.image1.Show ( )
win1.image2.Show ( )
win1.image3.Show ( )
win1.lbl3.Show ( )
win1.lbl4.Show ( )
win1.lbl5.Show ( )
return
procedure Answer()
win1.lbl2.Value := "ITS ALL OF THEM ..."
win1.image4.Picture := "220px-YouTube_TaiwanVersionLaunch_SteveChen-1.jpg"
win1.image5.Picture := "220px-Chad_Hurley_-World_Economic_Forum_Annual_Meeting_Davos_2007.jpg"
win1.image6.Picture := "200px-Jawed_Karim_2008.jpg"
return


End Of Resistance

INIT PROCEDURE Init_5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Do you Know who is the founder of YouTube ?'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Do you Know who is the founder of YouTube ?'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '220px-YouTube_TaiwanVersionLaunch_SteveChen-1.jpg'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action Hide1",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show1",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : '220px-Chad_Hurley_-World_Economic_Forum_Annual_Meeting_Davos_2007.jpg'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide2",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show2",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : '200px-Jawed_Karim_2008.jpg'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action Hide3",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show3",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'The answer is...'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Answer",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : ''",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : ''",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : ''",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Steve Chen'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action Hide1()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show1()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Chad Hurley'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide2()",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show2()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Jawed Karim'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action Hide3()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSELEAVE : Action Show3()",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hide1 - Event : MOUSEHOVER",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Hide ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Hide ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Show ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Hide ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Hide ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Show1 - Event : MOUSELEAVE",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Show ( )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Show ( )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Show ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Show ( )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Show ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 - Event : MOUSEHOVER",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Hide ( )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Show ( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Hide ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Hide ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Show ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Hide ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Show2 - Event : MOUSELEAVE",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Show ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Show ( )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Show ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Show ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Show ( )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hide3 - Event : MOUSEHOVER",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Hide ( )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Hide ( )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Show ( )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Hide ( )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Hide ( )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Show ( )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Show3 - Event : MOUSELEAVE",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Show ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Show ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Show ( )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Show ( )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Show ( )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Answer ( Event : CLICK )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'ITS ALL OF THEM ...'",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image4.Picture := '220px-YouTube_TaiwanVersionLaunch_SteveChen-1.jpg'",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image5.Picture := '220px-Chad_Hurley_-World_Economic_Forum_Annual_Meeting_Davos_2007.jpg'",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image6.Picture := '200px-Jawed_Karim_2008.jpg'",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
Return
*-------------------------------------------------------------------*
