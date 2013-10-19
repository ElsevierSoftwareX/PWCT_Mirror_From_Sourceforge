*---------------------------------------------------------------------------*
* Time : 16:47:26    Date : 10/19/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.15
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


Resistance R_TEST_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 162 ;
ICON "PWCTICON" ;
TITLE "Print more than one line to the text file  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 
win1.Center ( )
@ 46 ,105 BUTTONEX btn1;
CAPTION "write to test.txt & test2.txt ";
ON CLICK pPrint()  ;
WIDTH 290 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pPrint()
mystr := ""
mystr := mystr + CHR(13) + CHR(10) + "first line "
mystr := mystr + CHR(13) + CHR(10) + "second line "
mystr := mystr + CHR(13) + CHR(10) + "third line "
RPWI_TH = FCREATE("test.txt",0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Execute File "test.txt"
fp = FCREATE( "test2.txt" , 0 )
cStr := "First Line"
cStr := cStr + CHR(13) + CHR(10) + "Second line"
cStr := cStr + CHR(13) + CHR(10) + "Third line"
nError = FWRITE( fp,cStr,Len(cStr))
FCLOSE ( fp )
Execute File "test2.txt"
return

End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Print more than one line to the text file  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'write to test.txt & test2.txt '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPrint",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPrint ( Event : CLICK )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = ''",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('first line ') to string (mystr)",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('second line ') to string (mystr)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('third line ') to string (mystr)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File 'test.txt'",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'test.txt'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Create file 'test2.txt' Store handle in fp",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = 'First Line'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = cStr + CHR(13) + CHR(10) + 'Second line'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = cStr + CHR(13) + CHR(10) + 'Third line'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Write to file, handle fp, buffer cStr bytes Len(cStr) check nError",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Close file fp",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'test2.txt'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
