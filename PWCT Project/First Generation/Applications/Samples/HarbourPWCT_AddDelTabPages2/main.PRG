*---------------------------------------------------------------------------*
* Time : 20:50:17    Date : 02/11/2016
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2015 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.12.27
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
nCount := 0
nPages := 0
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Add/Delete Tab Pages  " ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TAB Tab1;
AT 10 ,10;
WIDTH 328;
HEIGHT 318;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END TAB
@ 26 ,373 BUTTONEX btn1;
CAPTION "Add Page";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 67 ,373 BUTTONEX btn2;
CAPTION "Delete Page";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pDelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
nPages := nPages+1
win1.Tab1.AddPage ( nPages,"page"+ALLTRIM(str(nPages)) )
nCount := nCount+1
cName := alltrim("mybtn_"+alltrim(str(nCount)))
@ 50 ,50 BUTTONEX &cName;
PARENT win1 ;
CAPTION cName;
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
win1.Tab1.AddControl ( cName,nPages,50,50 )
win1.Tab1.Value := nPages
return
procedure pDelete()
IF nPages < 1
Return 0
ENDIF
win1.Tab1.DeletePage ( 1 )
nPages := nPages-1
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","nCount = 0",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","nPages = 0",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add/Delete Tab Pages  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",13,16)
SS_ESASTEP("Circuits\Main\Main\Main","Tab Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Page'",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Delete Page'",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pDelete",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","nPages = nPages+1",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.AddPage ( nPages,'page'+ALLTRIM(str(nPages)) )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = nCount+1",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","cName = alltrim('mybtn_'+alltrim(str(nCount)))",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( &cName ) , Caption : cName",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.AddControl ( cName,nPages,50,50 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.Value = nPages",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDelete ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nPages < 1 )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.DeletePage ( 1 )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","nPages = nPages-1",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
