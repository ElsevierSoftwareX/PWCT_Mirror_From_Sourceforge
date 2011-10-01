*---------------------------------------------------------------------------*
* Time : 00:51:49    Date : 10/01/2011
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
Function CODEGEN
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
					Resistance CodeGen                       
	VetoUnit :

Resistance R_CODEGEN_18smart1() address Code Unit : Circuits\Main\Main\CodeGen


Return 

* Resistance Code Unit : Circuits\Main\Main\CodeGen
Resistance R_CODEGEN_18smart1() code
Proc myCodeGen
myOpMax  = LEN(myOperations)
FOR R = 1 TO myOpMax STEP 1
IF myOperations[R][1] == myCmdRule
IF myOperations[R][2] == myCmd
myCmd := ""
myCmdRule := ""
AADD( myExecutable , {myOperations[R][3],myData,myopproc,myoplevel,srccodefile,srccodeline})
myOut := True
IF len(myOperations[R]) > 3
MyOut = RTE_Update ( MyOperations[R][4] )
ENDIF
IF MyOut = True
IF myOperations[R][3] = -1000
AADD( myopprocstack , myopproc)
myopproc := lower(alltrim(mydata[1]))
myopproc = STRTRAN(myopproc," ","")
myopproc = STRTRAN(myopproc,"«·‰ﬁ—»«·›«—…","mouseclick")
myopproc = STRTRAN(myopproc,"«· €Ì—","change")
myopproc = STRTRAN(myopproc,"«„ ·«ﬂ«·»ƒ—…","gotfocus")
myopproc = STRTRAN(myopproc,"›ﬁœ«‰«·»ƒ—…","lostfocus")
myopproc = STRTRAN(myopproc,"«· Õ—ﬂ»«·›«—…","mousemove")
myopproc = STRTRAN(myopproc,"«· Õ—ﬂ","move")
myopproc = STRTRAN(myopproc,"«⁄«œ…«· ÕÃÌ„","resize")
myopproc = STRTRAN(myopproc,"«· ﬂ»Ì—","maximize")
myopproc = STRTRAN(myopproc,"«· ’€Ì—","minimize")
myopproc = STRTRAN(myopproc,"«·«‰Â«¡","release")
myopproc = STRTRAN(myopproc,"«·≈‰Â«¡","release")
ENDIF
IF myOperations[R][3] = -1001
stacklen  = LEN(myopprocstack)
myopproc := myopprocstack[stacklen]
ADEL( myopprocstack , stacklen)
ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
ENDIF
IF myOperations[R][3] = -1003
AADD( FilesList , mydata[1])
ENDIF
IF myOperations[R][3] = 3050
RT_LoopVars := RT_LoopVars + 1
mytemparr := {}
AADD( mytemparr , alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true"))
AADD( mytemparr , mydata[1])
AADD( myExecutable , {3052,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
AADD( myopprocstack , myopproc)
myopproc := alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true")
AADD( RT_LoopCondition , mydata[1])
AADD( RT_ActiveLoops , RT_LoopVars)
ENDIF
IF myOperations[R][3] = 3051
mytemparr := {}
AADD( mytemparr , alltrim("[sn_loopvar"+alltrim(str(RT_ActiveLoops[len(RT_ActiveLoops)]))+"]"))
AADD( mytemparr , RT_LoopCondition[len(RT_LoopCondition)])
AADD( myExecutable , {3053,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
stacklen  = LEN(RT_LoopCondition)
ADEL( RT_LoopCondition , stacklen)
ASIZE( RT_LoopCondition , LEN( RT_LoopCondition ) - 1 )
stacklen  = LEN(myopprocstack)
myopproc := myopprocstack[stacklen]
ADEL( myopprocstack , stacklen)
ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
stacklen  = LEN(RT_ActiveLoops)
ADEL( RT_ActiveLoops , stacklen)
ASIZE( RT_ActiveLoops , LEN( RT_ActiveLoops ) - 1 )
ENDIF
IF myOperations[R][3] = 3060
RT_LoopVars := RT_LoopVars + 1
mytemparr := {}
AADD( mytemparr , alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true"))
AADD( mytemparr , mydata[1])
AADD( myExecutable , {3062,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
AADD( myopprocstack , myopproc)
myopproc := alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true")
AADD( RT_LoopCondition , mydata[1])
AADD( RT_ActiveLoops , RT_LoopVars)
ENDIF
IF myOperations[R][3] = 3061
mytemparr := {}
AADD( mytemparr , alltrim("[sn_loopvar"+alltrim(str(RT_ActiveLoops[len(RT_ActiveLoops)]))+"]"))
AADD( mytemparr , RT_LoopCondition[len(RT_LoopCondition)])
AADD( myExecutable , {3063,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
stacklen  = LEN(RT_LoopCondition)
ADEL( RT_LoopCondition , stacklen)
ASIZE( RT_LoopCondition , LEN( RT_LoopCondition ) - 1 )
stacklen  = LEN(myopprocstack)
myopproc := myopprocstack[stacklen]
ADEL( myopprocstack , stacklen)
ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
stacklen  = LEN(RT_ActiveLoops)
ADEL( RT_ActiveLoops , stacklen)
ASIZE( RT_ActiveLoops , LEN( RT_ActiveLoops ) - 1 )
ENDIF
ENDIF
myData := {}
Exit
ENDIF
ENDIF
Next
IF mycmd == "" .and. mycmdrule == ""
ELSE
DO RTE_AddError WITH 6
ENDIF
myCmd := ""
myCmdRule := ""
myData := {}
Return Nil
Proc GenStar
myMax  = LEN(myExecutable)
outFile := sp1 + ".Star"
outStr := "Supernova Programming Language Object File"
FOR R = 1 TO MyMax STEP 1
outstr := outstr + CHR(13) + CHR(10) + "1  "
outStr := outStr + CHR(13) + CHR(10) + "2  " + alltrim(str(myexecutable[R][1]))
outStr := outStr + CHR(13) + CHR(10) + "3  " + myexecutable[R][3]
outStr := outStr + CHR(13) + CHR(10) + "4  " + alltrim(str(myexecutable[R][4]))
outStr := outStr + CHR(13) + CHR(10) + "5  " + alltrim(myexecutable[R][5])
outStr := outStr + CHR(13) + CHR(10) + "6  " + alltrim(str(myexecutable[R][6]))
myexedata := myexecutable[R][2]
myMax2  = LEN(myExeDATA)
FOR R2 = 1 TO MyMax2 STEP 1
tempmax = MLCOUNT( myexedata[R2] , 254 )
IF .not. tempmax = 1
MYMAX3  = LEN(myexedata[R2])
TEMPLINE := ""
outstr := outstr +CHR(13)+CHR(10)
FOR R3 = 1 TO MYMAX3 STEP 1
myadd = SUBSTR(MYEXEDATA[R2],R3,1)
templine := templine + myadd
mycheck = Right(templine,2)
IF mycheck == chr(13) + chr(10) .or. R3 = MYMAX3
IF .NOT. R3 = MYMAX3
TEMPLINE = Left(TEMPLINE,LEN(TEMPLINE)-2)
ENDIF
templine := templine + "\E"+ chr(13)+chr(10)
outstr := outstr + "7  " + templine
templine := ""
ENDIF
Next
outstr := outstr + "7  " +"\n"
ELSE
outStr := outStr + CHR(13) + CHR(10) + "7  " + myexedata[R2]
outstr := outstr + "\n"
ENDIF
Next
Next
outstr = STRTRAN(outstr,chr(9),"        ")
outstr := charxor(outstr,"Super123456789Nova")
RPWI_TH = FCREATE(outFile,0)
FWRITE(RPWI_TH,outStr)
FCLOSE(RPWI_TH)
Return Nil
Proc LoadStar( p1 )
Local codestar,mymax,myline,x,lopcode,lopdata,mylast,lopdstack,mytag
codestr = MEMOREAD ( p1 )
codestr := charxor(codestr,"Super123456789Nova")
mymax = MLCOUNT( codestr , 254 )
myline = MEMOLINE( codestr , 254 , 1 )
lopdstack := ""
IF ALLTRIM(MYLINE) == "Supernova Programming Language Object File"
myexecutable := {}
mylast := 0
FOR x = 2 TO mymax STEP 1
myline = MEMOLINE( codestr , 254 , x )
lopcode = Left(myline,3)
lopdata = SUBSTR(myline,4,len(myline)-4)
lopcode = VAL ( lopcode )
IF lopcode = 1
AADD( myexecutable , {0,{},"","","",""})
mylast := mylast + 1
ENDIF
IF lopcode = 2
myexecutable[mylast][1] := val(lopdata)
ENDIF
IF lopcode = 3
myexecutable[mylast][3] := alltrim(lopdata)
ENDIF
IF lopcode = 4
myexecutable[mylast][4] := val(lopdata)
ENDIF
IF lopcode = 5
myexecutable[mylast][5] := alltrim(lopdata)
ENDIF
IF lopcode = 6
myexecutable[mylast][6] := val(lopdata)
ENDIF
IF lopcode = 7
lopdata = RTRIM ( lopdata )
Mytag = Right(lopdata,2)
IF mytag = "\n"
lopdata = Left(lopdata,len(lopdata)-2)
lopdata := lopdstack + lopdata
AADD( myexecutable[mylast][2] , "" + lopdata)
lopdstack := ""
ELSE
lopdata = Left(lopdata,len(lopdata)-2)
lopdstack := lopdstack + lopdata + CHR(13) + CHR(10)
ENDIF
ENDIF
Next
ENDIF
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
