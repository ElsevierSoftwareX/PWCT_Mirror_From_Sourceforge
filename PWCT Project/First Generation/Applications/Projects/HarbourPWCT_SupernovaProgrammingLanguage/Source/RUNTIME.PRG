*---------------------------------------------------------------------------*
* Time : 00:42:34    Date : 10/01/2011
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
Function RUNTIME
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
					Resistance Runtime                       
	VetoUnit :

Resistance R_RUNTIME_18smart1() address Code Unit : Circuits\Main\Main\Runtime


Return 

* Resistance Code Unit : Circuits\Main\Main\Runtime
Resistance R_RUNTIME_18smart1() code
Proc myRuntime
Local m,myexemax,mytempproc,mytemplevel,myoldproc,oldobjscount
myExeMax  = LEN(myExecutable)
IF SysSwitch = False
Return 0
ENDIF
FOR m = 1 TO myExeMax STEP 1
mytempproc := MyExecutable[m][3]
mytemplevel := MyExecutable[m][4]
srccodefile := MyExecutable[m][5]
srccodeline := MyExecutable[m][6]
ProgramCounter := m
IF lower(alltrim(mytempproc)) == lower(alltrim(myactiveproc)) .and. mytemplevel = myactivelevel
myopcode := MyExecutable[m][1]
myopdata := MyExecutable[m][2]
IF myOpcode = -1002 .and. myactiveproc != myopdata[1]
myoldproc := myactiveproc
myactiveproc := myopdata[1]
myactiveproc = STRTRAN(myactiveproc," ","")
myactiveproc = LOWER ( myactiveproc )
myactiveproc = STRTRAN(myactiveproc,"������������","mouseclick")
myactiveproc = STRTRAN(myactiveproc,"������","change")
myactiveproc = STRTRAN(myactiveproc,"������������","gotfocus")
myactiveproc = STRTRAN(myactiveproc,"�����������","lostfocus")
myactiveproc = STRTRAN(myactiveproc,"�������������","mousemove")
myactiveproc = STRTRAN(myactiveproc,"������","move")
myactiveproc = STRTRAN(myactiveproc,"������������","resize")
myactiveproc = STRTRAN(myactiveproc,"�������","maximize")
myactiveproc = STRTRAN(myactiveproc,"�������","minimize")
myactiveproc = STRTRAN(myactiveproc,"�������","release")
myactiveproc = STRTRAN(myactiveproc,"�������","release")
DO myRuntimeUrgent
DO myRuntime
myactiveproc := myoldproc
Loop
ENDIF
IF myOpcode = -1002 .and. myactiveproc == myopdata[1]
RT_LoopSwitch := True
ENDIF
IF RT_LoopSwitch = True
RT_LoopSwitch := False
m := 0
Loop
ENDIF
IF myopcode > 0 .and. myopcode < 2000
DO RT_GUI
ENDIF
IF myopcode >= 2000 .and. myopcode < 3000
DO RT_Data
ENDIF
IF myopcode >= 3000 .and. myopcode < 4000
DO RT_ControlStructure
ENDIF
IF myopcode >= 4000 .and. myopcode < 5000
DO RT_GeneralIns
ENDIF
IF programcounter < m
m := ProgramCounter
ENDIF
IF SysSwitch = False
Return 0
ENDIF
IF RT_LoopSwitch = True
RT_LoopSwitch := False
m := 0
Loop
ENDIF
ENDIF
Next
Return Nil
Proc myRuntimeUrgent
Local m,myexemax,mytempproc,mytemplevel,myoldproc,oldobjscount
myExeMax  = LEN(myExecutable)
oldobjscount := objscount
FOR m = 1 TO myExeMax STEP 1
mytempproc := MyExecutable[m][3]
mytemplevel := MyExecutable[m][4]
IF lower(alltrim(mytempproc)) == lower(alltrim(myactiveproc)) .and. mytemplevel = myactivelevel
myopcode := MyExecutable[m][1]
myopdata := MyExecutable[m][2]
IF myOpcode = -1002 .and. myactiveproc != myopdata[1]
myoldproc := myactiveproc
myactiveproc := myopdata[1]
DO myRuntimeUrgent
myactiveproc := myoldproc
Loop
ENDIF
IF RT_LoopSwitch = True
RT_LoopSwitch := False
m := 0
Loop
ENDIF
DO RT_Urgent
ENDIF
Next
objscount := oldobjscount
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
