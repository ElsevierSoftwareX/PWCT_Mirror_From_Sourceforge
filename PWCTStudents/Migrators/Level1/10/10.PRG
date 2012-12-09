*---------------------------------------------------------------------------*
* Time : 01:07:31    Date : 11/10/2012
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


Resistance R_10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 18 ,15 LISTBOX list1;
WIDTH 265 ;
HEIGHT 330 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 38 ,334 BUTTONEX btn1;
CAPTION "«·«Œ »«—";
ON CLICK pwork()  ;
WIDTH 120 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 209 ,367 TEXTBOX From;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 248 ,368 TEXTBOX To;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 288 ,368 TEXTBOX Step;
HEIGHT 29 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 209 ,305 LABEL lbl1 ;
VALUE "From" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 248 ,305 LABEL lbl2 ;
VALUE "To" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 287 ,305 LABEL lbl3 ;
VALUE "Step" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 96 ,334 BUTTONEX btn2;
CAPTION "«·«Œ »«— 2";
ON CLICK pwork2()  ;
WIDTH 120 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pwork()
FOR x = 1 TO 5 STEP 2
Win1.List1.Additem ( "„—Õ»«" )
x2 = STR ( x )
Win1.List1.Additem ( x2 )
Next
return
procedure pwork2()
vfrom := win1.From.Value
vto := win1.To.Value
vstep := win1.Step.Value
win1.list1.DeleteAllItems ( )
FOR x = vfrom TO vto STEP vstep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return


End Of Resistance

INIT PROCEDURE Init_10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·«Œ »«—'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pwork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( From  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( To  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( Step  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'From'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Step'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·«Œ »«— 2'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pwork2",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pwork ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 5 Step 2)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('„—Õ»«') to Listbox (List1) of Window (Win1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pwork2 ( Event : CLICK )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","vfrom = win1.From.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","vto = win1.To.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","vstep = win1.Step.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = vfrom To vto Step vstep)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
Return
*-------------------------------------------------------------------*
