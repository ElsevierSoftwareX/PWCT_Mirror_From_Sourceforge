*---------------------------------------------------------------------------*
* Time : 22:09:32    Date : 11/11/2012
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


Resistance R_12_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_12_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÇÌÑÇÁÇÊ" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 18 ,30 LISTBOX list1;
WIDTH 371 ;
HEIGHT 256 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 292 ,192 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 209 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 292 ,412 LABEL lbl1 ;
VALUE " ÇáÇÓã " ;
WIDTH 46 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 301 ,31 BUTTONEX btn1;
CAPTION " ÅÖÇÝÉ ";
ON CLICK padd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure padd()
cname := win1.text1.Value
cname = ALLTRIM ( cname )
ncount = addletters ( cname )
ccount = STR ( ncount )
MyOut := MSGBOX("ÚÏÏ ÇáÍÑæÝ " + ccount," ÍÓÇÈ ")
return
Function  addletters ( cinput )
Local nmax
nmax  = LEN(cinput)
IF nmax > 1
FOR x = 1 TO nmax STEP 1
cletter = SUBSTR(cinput,x,1)
Win1.List1.Additem ( cletter )
Next
ENDIF
Return nmax


End Of Resistance

INIT PROCEDURE Init_12
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÊÚÑÝ Úáì ÇáÏæÇá æÇáÇÌÑÇÁÇÊ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' ÇáÇÓã '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ÅÖÇÝÉ '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action padd",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure padd ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","cname = All Trim cname",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ncount = Call Function addletters ( cname )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ccount = CONVERT ncount TO STRING",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÏÏ ÇáÍÑæÝ ' + ccount Title ' ÍÓÇÈ ' Type: Message Box",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function addletters ( cinput )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Local nmax",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = Get Length of String/Variable/Array cinput",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 1 )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax Step 1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","cletter = Sub String of cinput From x Count 1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cletter) to Listbox (List1) of Window (Win1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nmax)",57,57)
Return
*-------------------------------------------------------------------*
