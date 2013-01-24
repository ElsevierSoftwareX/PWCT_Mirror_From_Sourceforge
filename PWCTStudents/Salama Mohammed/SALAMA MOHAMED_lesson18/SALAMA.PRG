*---------------------------------------------------------------------------*
* Time : 02:52:59    Date : 01/15/2013
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
aarray := {"1","2","20","44","9"}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "using array as stack  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 60 ,42 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aarray ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,255}
@ 60 ,253 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,255}
@ 273 ,283 BUTTONEX btn1;
CAPTION "pop ";
ON CLICK pop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
@ 270 ,42 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 115 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

@ 271 ,159 BUTTONEX btn2;
CAPTION "push ";
ON CLICK push()  ;
WIDTH 84 HEIGHT 32 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pop()
amax  = LEN(aarray)
IF amax >0
Win1.List2.Additem ( aarray[amax] )
ADEL( aarray , amax)
ASIZE( aarray , LEN( aarray ) - 1 )
win1.list1.DeleteItem ( amax )
ENDIF
return
procedure push()
citem := win1.text1.Value
citem = ALLTRIM ( citem )
AADD( aarray , citem)
win1.list1.AddItem ( citem )
return


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","aarray = {'1','2','20','44','9'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'using array as stack  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aarray",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'pop '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'push '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop ( Event : CLICK )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","amax = Get Length of String/Variable/Array aarray",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( amax >0 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aarray[amax]) to Listbox (List2) of Window (Win1)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item amax from Array aarray",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( amax )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","citem = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","citem = All Trim citem",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Add item citem To Array aarray",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( citem )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
