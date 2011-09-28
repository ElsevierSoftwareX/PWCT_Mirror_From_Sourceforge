*---------------------------------------------------------------------------*
* Time : 08:13:25    Date : 05/10/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function NOVAERR
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance RT_Error                      
	VetoUnit :

Resistance R_NOVAERR_15speed1() address Code Unit : Circuits\Main\Main\RT_Error


Return 

* Resistance Code Unit : Circuits\Main\Main\RT_Error
Resistance R_NOVAERR_15speed1() code
Proc RTE_Load
Public RTE_Errors,RTE_ControlStructureStack,RTE_Message
RTE_ControlStructureStack := "S"
RTE_Message := {}
RTE_Errors := {}
AADD( RTE_Errors , "Error Number (1) : Unexpected End IF Statement - Do IF Statement is required")
AADD( RTE_Errors , "Error Number (2) : Unclosed Do IF Statement structure- End IF Statement is required")
AADD( RTE_Errors , "Error Number (3) : Unexpected End While Statement - Do While Statement is required")
AADD( RTE_Errors , "Error Number (4) : Unclosed Do While Statement structure- End While Statement is required")
AADD( RTE_Errors , "Error Number (5) : General Syntax Error")
AADD( RTE_Errors , "Error Number (6) : Command Error, The Grammer is TRUE but the Command is undefined")
AADD( RTE_Errors , "Error Number (7) : Expression Error [Variable] is expected")
AADD( RTE_Errors , "Error Number (8) : Expression Error (Value) is expected")
AADD( RTE_Errors , "Error Number (9) : General Expression Error")
AADD( RTE_Errors , "Error Number (10) : Expression Error, Cann't determine expression result")
AADD( RTE_Errors , "Error Number (11) : Bad GUI Command (No Window Defined)")
AADD( RTE_Errors , "Error Number (12) : Bad GUI Command (No Object Defined)")
AADD( RTE_Errors , "Error Number (13) : Unexpected OK/End Function/End Procedure/End Of Instructions Statement")
AADD( RTE_Errors , "Error Number (14) : Unclosed Procedure/.....Instructions Are/Function Statement structure")
Return Nil
Proc RTE_Update( P1 )
Local myret
myret := True
IF p1 = 1
RTE_ControlStructureStack := RTE_ControlStructureStack + "F"
ENDIF
IF P1 = 2
MyOut = Right(RTE_ControlStructureStack,1)
IF myout = "F"
mylen  = LEN(RTE_ControlStructureStack)
RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
ELSE
myret := False
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[1])
ENDIF
ENDIF
IF p1 = 3
RTE_ControlStructureStack := RTE_ControlStructureStack + "W"
ENDIF
IF P1 = 4
MyOut = Right(RTE_ControlStructureStack,1)
IF myout = "W"
mylen  = LEN(RTE_ControlStructureStack)
RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
ELSE
myret := False
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[3])
ENDIF
ENDIF
IF p1 = 5
RTE_ControlStructureStack := RTE_ControlStructureStack + "N"
ENDIF
IF P1 = 6
MyOut = Right(RTE_ControlStructureStack,1)
IF myout = "N"
mylen  = LEN(RTE_ControlStructureStack)
RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
ELSE
myret := False
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[13])
ENDIF
ENDIF
Return myret
Return Nil
Proc RTE_Check
IF mystack == "" .and. myrule == "S" .and. mycmd == ""
ELSE
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[5])
AADD( RTE_Message , "Rule : " + myrule)
AADD( RTE_Message , "Stack : ")
myend = MLCOUNT( myrealstack , 254 )
FOR x = 1 TO myend STEP 1
myline = MEMOLINE( myrealstack , 254 , x )
AADD( RTE_Message , myline)
Next
ENDIF
mymax  = LEN(RTE_ControlStructureStack)
FOR x = 1 TO mymax STEP 1
mychar = SUBSTR(RTE_ControlStructureStack,x,1)
IF mychar = "F"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[2])
ENDIF
IF mychar = "W"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[4])
ENDIF
IF mychar = "N"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[14])
ENDIF
Next
IF len(RTE_Message) > 0
DEFINE WINDOW winerror ;
AT 10 ,10 ;
WIDTH 747 ;
HEIGHT 419 ;
ICON "PWCTICON" ;
TITLE "Supernova Programming Language" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,0,0} 

@ 50 ,10 LISTBOX list1;
WIDTH 711 ;
HEIGHT 271 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 334 ,318 BUTTONEX btn1;
CAPTION "Close";
ON CLICK winerror.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,298 LABEL lbl1 ;
VALUE "Program Error" ;
WIDTH 141 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {255,255,255}
END WINDOW

mymax  = LEN(RTE_Message)
FOR x = 1 TO mymax STEP 1
WinError.List1.Additem ( RTE_Message[x] )
Next
Activate Window WinError
SysSwitch := False
winscount := 0
DO domethod WITH "win1","release"
ENDIF
Return Nil
Proc RTE_AddError( p1 )
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[p1])
IF p1 = 6
AADD( RTE_Message , "Command Rule :" + mycmdrule)
AADD( RTE_Message , "Stack : " + mycmd)
ENDIF
mymax  = LEN(mydata)
IF mymax > 0
FOR x = 1 TO mymax STEP 1
AADD( RTE_Message , "Data : " + mydata[x])
Next
ENDIF
Return Nil
Proc RTE_ShowError( p1 )
DO RTE_AddError WITH p1
DO RTE_Check
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
