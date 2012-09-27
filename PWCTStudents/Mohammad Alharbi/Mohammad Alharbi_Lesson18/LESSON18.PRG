*---------------------------------------------------------------------------*
* Time : 09:52:29    Date : 09/26/2012
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


Resistance R_LESSON18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON18_18smart1() code
aArray := {}
aArray := {"1","20","30","46","66","9"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 655 ;
HEIGHT 463 ;
ICON "PWCTICON" ;
TITLE "Using Stack  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 79 ,120 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"1","20","30","46","66","9"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 78 ,359 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 340 ,423 BUTTONEX btn1;
CAPTION "pop ";
ON CLICK pop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 342 ,156 BUTTONEX btn2;
CAPTION "push ";
ON CLICK push()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 288 ,181 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 97 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 12 ,255 LABEL lbl1 ;
VALUE "Stack Array " ;
WIDTH 230 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 59 ,152 LABEL lbl2 ;
VALUE "Push List " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 58 ,440 LABEL lbl3 ;
VALUE "Pop List " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 381 ,99 BUTTONEX btn3;
CAPTION "Delete All Items In Two Lists ";
ON CLICK Del()  ;
WIDTH 482 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 292 ,8 LABEL lbl4 ;
VALUE "Enter Number To Push " ;
WIDTH 168 ;
HEIGHT 35 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pop()
nmax  = LEN(aArray)
IF nmax>0
Win1.List2.Additem ( aArray[nmax] )
ADEL( aArray , nmax)
ASIZE( aArray , LEN( aArray ) - 1 )
ENDIF
win1.list1.DeleteItem ( nmax )
return
procedure push()
citem := win1.text1.Value
citem = ALLTRIM ( citem )
AADD( aArray , citem)
win1.list1.AddItem ( citem )
return
procedure Del()
win1.list1.DeleteAllItems ( )
win1.list2.DeleteAllItems ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON18
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {'1','20','30','46','66','9'}",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Stack  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','20','30','46','66','9'}",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'pop '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'push '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Stack Array '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Push List '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Pop List '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Delete All Items In Two Lists '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Del",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Enter Number To Push '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = Get Length of String/Variable/Array aArray",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax>0 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[nmax]) to Listbox (List2) of Window (Win1)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item nmax from Array aArray",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( nmax )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push ( Event : CLICK )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","citem = win1.text1.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","citem = All Trim citem",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Add item citem To Array aArray",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( citem )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Del ( Event : CLICK )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list2.DeleteAllItems ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
Return
*-------------------------------------------------------------------*
