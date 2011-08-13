*---------------------------------------------------------------------------*
* Time : 00:20:39    Date : 08/14/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_VSL4CLIENT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_VSL4CLIENT_18smart1() code
Set Procedure to "VSL4.PRG"
? " Welcome to VSL4 Client "
INKEY(1)
SS_VSL4STARTUP ()
SS_VSL4Connect ( "127.0.0.1","5080" )
SS_VSL4SENDDATA ( "Data 1" )
SS_VSL4SENDDATA ( "Data 2" )
SS_VSL4SENDVETO ( "VETO 1" )
SS_VSL4SENDVETO ( "VETO 2" )
DO WHILE  True
SS_VSL4ENGINE ()
Key := INKEY()
IF key != 0
Exit
ENDIF
ENDDO
SS_VSL4ClientClose ()
WAIT "Done"


End Of Resistance

INIT PROCEDURE Init_VSL4CLIENT
START DOUBLES
Return
*-------------------------------------------------------------------*
