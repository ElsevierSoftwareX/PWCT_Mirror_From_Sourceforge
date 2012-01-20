*---------------------------------------------------------------------------*
* Time : 14:18:46    Date : 01/19/2012
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


Resistance R_16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 567 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Save numbers & Get Maximum one " ;
MAIN ;
BACKCOLOR {0,0,255} 

@ 29 ,3 LABEL lbl1 ;
VALUE "Number : " ;
WIDTH 113 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 28 ,107 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 253 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 29 ,380 BUTTONEX btn1;
CAPTION "Add to list";
ON CLICK myadd()  ;
WIDTH 145 HEIGHT 38 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 88 ,99 LISTBOX list1;
WIDTH 253 ;
HEIGHT 203 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0}
@ 312 ,99 BUTTONEX btn2;
CAPTION "Get Max. No.";
ON CLICK mymax()  ;
WIDTH 253 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myadd()
num := win1.text1.Value
num = STR ( num )
Win1.List1.Additem ( num )
return
procedure mymax()
count := win1.list1.ItemCount
IF count==0
MyOut := MSGBOX("There is no Maximum number .","Maximun No.")
ENDIF
IF count==1
num := win1.list1.item(1)
MyOut := MSGBOX("Maximun number is "  +  " " + num,"Max . No .")
ENDIF
IF count > 1
num := win1.list1.item(1)
num = VAL ( num )
FOR x = 2 TO count STEP 1
numx := win1.list1.item(x)
numx = VAL ( numx )
IF numx > num
num := numx
ENDIF
Next
num = STR ( num )
MyOut := MSGBOX("Max No.  Is "  + "" + num,"Text Here")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Save numbers & Get Maximum one '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number : '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add to list'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Get Max. No.'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.text1.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (num) to Listbox (List1) of Window (Win1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.list1.ItemCount",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count==0 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is no Maximum number .' Title 'Maximun No.' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count==1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.list1.item(1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Maximun number is '  +  ' ' + num Title 'Max . No .' Type: Message Box",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count > 1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.list1.item(1)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To count Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","numx = win1.list1.item(x)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","numx = CONVERT numx TO Numeric",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( numx > num )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","num = numx",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Max No.  Is '  + '' + num Title 'Text Here' Type: Message Box",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
