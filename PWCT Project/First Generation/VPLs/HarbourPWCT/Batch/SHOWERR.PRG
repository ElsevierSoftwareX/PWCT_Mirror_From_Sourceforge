*---------------------------------------------------------------------------*
* Time : 01:15:24    Date : 01/13/2012
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


Resistance R_SHOWERR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHOWERR_18smart1() code
myres = mycheck ( sp1 )
IF myres = true
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE " HarbourPWCT -  Error  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 10 ,10 EDITBOX edit1;
WIDTH 468 ;
HEIGHT 310;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 329 ,195 BUTTONEX btn1;
CAPTION "Ok ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

ENDIF
Proc mycheck( sp1 )
CheckFile := File(sp1)
IF checkfile
mystr := FILESTR( sp1 )
c1 = AT("ERROR",upper(mystr))
IF C1 = 0
Return false
ENDIF
ELSE
Return false
ENDIF
Return true
Return Nil
procedure myclose()
win1.Release ( )
return
procedure mystart()
CheckFile := File(sp1)
IF checkfile
mystr := FILESTR( sp1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + mystr
else
Win1.Edit1.VALUE := mystr
endif
c1 = AT("ERROR",upper(mystr))
IF C1 = 0
win1.Release ( )
ENDIF
ELSE
win1.Release ( )
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_SHOWERR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","myres = Call Function mycheck ( sp1 )",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myres = true )",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' HarbourPWCT -  Error  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mystart",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,16)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ok '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycheck( sp1 )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File sp1",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","mystr := Read File sp1",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = GET START POSITION OF 'ERROR' IN upper(mystr)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( C1 = 0 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Return false",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Return false",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Return true",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart - Event : INIT",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File sp1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mystr := Read File sp1",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to Editbox (Edit1) of Window (Win1)",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = GET START POSITION OF 'ERROR' IN upper(mystr)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( C1 = 0 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
