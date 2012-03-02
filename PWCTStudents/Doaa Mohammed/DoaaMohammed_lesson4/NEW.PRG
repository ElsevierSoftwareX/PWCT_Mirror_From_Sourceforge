*---------------------------------------------------------------------------*
* Time : 00:01:55    Date : 03/02/2012
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


Resistance R_NEW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 516 ;
HEIGHT 343 ;
ICON "PWCTICON" ;
TITLE "main window  " ;
MAIN ;
BACKCOLOR {128,255,255} 

@ 260 ,168 BUTTONEX btn1;
CAPTION "login ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 212 ,208 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 274 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 214 ,58 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 93 ;
HEIGHT 34 ;
FONT "Arial Narrow" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 3 ,59 IMAGE image1;
PICTURE "D:\HH7_NET_13022774481.JPG";
STRETCH ;
WIDTH 419 HEIGHT 143
@ 162 ,205 TEXTBOX text2;
HEIGHT 37 ;
WIDTH 277 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 161 ,57 LABEL lbl2 ;
VALUE " Message " ;
WIDTH 95 ;
HEIGHT 33 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP " file "
MENUITEM " exit " Action close()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
Message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("please inter user name ","error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 357 ;
HEIGHT 202 ;
ICON "PWCTICON" ;
TITLE " hello " + user ;
MODAL ;
BACKCOLOR {0,255,255} 

@ 65 ,60 LABEL lbl3 ;
VALUE Message + "" + user ;
WIDTH 204 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL(" do you want to close app? "," close app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'main window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'D:\HH7_NET_13022774481.JPG'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Message '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' file '",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' exit ' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Message = win1.text2.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please inter user name ' Title 'error ' Type: Message Exclamation",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' hello ' + user",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : Message + '' + user",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' do you want to close app? ' Title ' close app ' Type: Message Ok/Cancel",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
Return
*-------------------------------------------------------------------*
