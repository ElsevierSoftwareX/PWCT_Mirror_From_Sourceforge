*---------------------------------------------------------------------------*
* Time : 00:48:12    Date : 05/09/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 549 ;
HEIGHT 358 ;
ICON "PWCTICON" ;
TITLE "using listbox" ;
MAIN ;
BACKCOLOR {255,128,192} 

@ 10 ,138 LISTBOX list1;
WIDTH 208 ;
HEIGHT 206 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {121,217,217} ;
FONTCOLOR {0,0,0}
@ 230 ,178 BUTTONEX btn1;
CAPTION "«÷«›… «·⁄‰«’—";
ON CLICK mywork()  ;
WIDTH 145 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 281 ,214 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK closeapplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
win1.list1.AddItem ( "one" )
win1.list1.AddItem ( "two" )
win1.list1.AddItem ( "two" )
win1.list1.AddItem ( "„’—" )
win1.list1.AddItem ( "«·ﬁ«Â—…" )
win1.list1.AddItem ( "«·«”ﬂ‰œ—Ì…" )
win1.list1.AddItem ( "«·„‰’Ê—…" )
win1.list1.AddItem ( "ﬂ›— «·‘ÌŒ" )
win1.list1.AddItem ( "»·ÿÌ„" )
Win1.List1.Additem ( "1" )
Win1.List1.Additem ( "2" )
Win1.List1.Additem ( "3" )
Win1.List1.Additem ( "4" )
Win1.List1.Additem ( "»·ÿÌ„" )
return
procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'using listbox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… «·⁄‰«’—'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'one' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'two' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'two' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '„’—' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·ﬁ«Â—…' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·«”ﬂ‰œ—Ì…' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·„‰’Ê—…' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'ﬂ›— «·‘ÌŒ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '»·ÿÌ„' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('4') to Listbox (List1) of Window (Win1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('»·ÿÌ„') to Listbox (List1) of Window (Win1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*
