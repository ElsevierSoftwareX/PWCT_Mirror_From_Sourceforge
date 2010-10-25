*---------------------------------------------------------------------------*
* Time : 12:08:29    Date : 05/15/2010
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
Function SYNTAX
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
					Resistance Syntax                        
	VetoUnit :

Resistance R_SYNTAX_15speed1() address Code Unit : Circuits\Main\Main\Syntax


Return 

* Resistance Code Unit : Circuits\Main\Main\Syntax
Resistance R_SYNTAX_15speed1() code
Proc mySyntax
Local stackbackup
stackbackup := mystack
DO mySetSwitches
GoodRes := False
GOTRANSFORM1 := False
GOTRANSFORM2 := False
myTokensMax  = LEN(myTokens)
vslen  = LEN(mystack)
FOR JVAR = 1 TO 5 STEP 1
IF mySwitches[JVAR][2] = True
IF GOODRES = False
FOR T = TOKENMAP[JVAR][2] TO TOKENMAP[JVAR][3] STEP 1
IF vslen = myTokens[T][4]
IF mystack == myTokens[T][2]
MyRule := MyRule + TOKENMAP[JVAR][1]
myCmd := myCmd + myStack
myStack := ""
myRealStack := ""
GoodRes := True
IF myTokens[T][3] = 1
GOTRANSFORM1 := True
ENDIF
IF myTokens[T][3] = 2
GOTRANSFORM2 := True
ENDIF
Exit
ENDIF
ENDIF
Next
IF GOODRES = True
Exit
ENDIF
ENDIF
ENDIF
Next
IF mySwitches[6][2] = True .and. GOODRES = False
vdone := false
IF vdone = false .and. mydataflag = false .and. mychar = "."
GOODRES := True
GoTransform1 := True
myRule := myRule + "D"
mylen  = LEN(myRealStack)
myDataVar = SUBSTR(myRealStack,1,mylen-1)
AADD( mydata , mydatavar)
myRealStack := ""
myStack := ""
vdone := True
ENDIF
IF vdone = false .and. mydataflag = false .and. mychar = '"'
mylen  = LEN(mystack)
mystack = SUBSTR(mystack,1,mylen-1)
mydataflag := True
mydatachar := '"'
vdone := true
myRealStack := ""
ENDIF
IF vdone = false .and. mydataflag = false .and. mychar = "'"
mylen  = LEN(mystack)
mystack = SUBSTR(mystack,1,mylen-1)
mydataflag := True
mydatachar := "'"
vdone := true
myRealStack := ""
ENDIF
IF vdone = false .and. mydataflag = true .and. mychar = mydatachar
MyRule := MyRule + "D"
MyLen  = LEN(MyRealStack)
myDataVar = SUBSTR(myRealStack,1,mylen-1)
AADD( mydata , mydatavar)
myRealStack := ""
myStack := ""
mydataflag := false
mydatachar := "."
vdone := True
GOODRES := True
GoTransform1 := True
ENDIF
ENDIF
IF GoTransform2 = true
tempvar  = LEN(myrule)
GoTransform1 := true
myTransMax  = LEN(myTransform2)
FOR T = 1 TO myTransmax STEP 1
LS1 := myTransform2[T][1]
LS2 := myTransform2[T][2]
RS1 := myTransform2[T][3]
RS2 := myTransform2[T][4]
RLS1 = Right(MyRule,Len(LS1))
RLS2 := StackBackup
IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) = alltrim(LS2) .and. myTransform2[T][5] = 0
MYRULE = Left(MYRULE,tempvar-len(LS1))
MYRULE := MYRULE + RS1
tempvar2  = LEN(mycmd)
tempvar3  = LEN(stackbackup)
mycmd = Left(mycmd,tempvar2-tempvar3)
mycmd := mycmd + RS2
STACKBACKUP := RS2
DO mySetSwitches
T := 0
MYSTACK := ""
MYREALSTACK := ""
Loop
ENDIF
RLS2 = Right(MYCMD,LEN(LS2))
IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) == alltrim(LS2) .and. myTransform2[T][5] = 1
MYRULE = Left(MYRULE,tempvar-len(LS1))
MYRULE := MYRULE + RS1
MYCMD := RS2
STACKBACKUP := RS2
DO mySetSwitches
mydata[len(mydata)] := LS2 + mydata[len(mydata)]
T := 0
Loop
ENDIF
Next
ENDIF
IF GoTransform1 = true
tempvar  = LEN(myrule)
myTransMax  = LEN(myTransform)
FOR T = 1 TO myTransmax STEP 1
LS1 := myTransform[T][1]
LS2 := myTransform[T][2]
RS1 := myTransform[T][3]
RS2 := myTransform[T][4]
RLS1 = Right(MyRule,Len(LS1))
RLS2 := StackBackup
IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) = alltrim(LS2) .and. myTransform[T][5] = 0
MYRULE = Left(MYRULE,tempvar-len(LS1))
MYRULE := MYRULE + RS1
tempvar2  = LEN(mycmd)
tempvar3  = LEN(stackbackup)
mycmd = Left(mycmd,tempvar2-tempvar3)
mycmd := mycmd + RS2
STACKBACKUP := RS2
DO mySetSwitches
T := 0
MYSTACK := ""
MYREALSTACK := ""
Loop
ENDIF
RLS2 = Right(MYCMD,LEN(LS2))
IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) == alltrim(LS2) .and. myTransform[T][5] = 1
MYRULE = Left(MYRULE,tempvar-len(LS1))
MYRULE := MYRULE + RS1
MYCMD := RS2
STACKBACKUP := RS2
DO mySetSwitches
mydata[len(mydata)] := LS2 + mydata[len(mydata)]
T := 0
Loop
ENDIF
Next
ENDIF
IF GoodRes = True
mygogen := false
IF myrule = "SDI"
myfetchopstart := rulesmap[1][2]
myfetchopend := rulesmap[1][3]
mygogen := true
ENDIF
IF myrule = "SDVD"
myfetchopstart := rulesmap[2][2]
myfetchopend := rulesmap[2][3]
mygogen := true
ENDIF
IF myrule = "SCAVD"
myfetchopstart := rulesmap[3][2]
myfetchopend := rulesmap[3][3]
mygogen := true
ENDIF
IF myrule = "SPVC"
myfetchopstart := rulesmap[4][2]
myfetchopend := rulesmap[4][3]
mygogen := true
ENDIF
IF myrule = "SI"
myfetchopstart := rulesmap[5][2]
myfetchopend := rulesmap[5][3]
mygogen := true
ENDIF
IF MYGOGEN = TRUE
MYCMDRULE := MYRULE
MYRULE := "S"
DO MYCODEGEN
ENDIF
ENDIF
Return Nil
Proc mySetSwitches
Local LastToken
MyOut = Right(myRule,1)
IF myOut = "S"
mySwitches[1][2] := True
mySwitches[2][2] := False
mySwitches[3][2] := True
mySwitches[4][2] := False
mySwitches[5][2] := True
mySwitches[6][2] := True
ENDIF
IF myOut = "P"
mySwitches[1][2] := False
mySwitches[2][2] := True
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
IF myOut = "V"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := True
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
IF myOut = "C"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := False
mySwitches[4][2] := True
mySwitches[5][2] := False
mySwitches[6][2] := False
ENDIF
IF myOut = "A"
mySwitches[1][2] := False
mySwitches[2][2] := True
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := False
ENDIF
IF myOut = "D"
mySwitches[1][2] := False
mySwitches[2][2] := True
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := True
mySwitches[6][2] := False
ENDIF
IF myOut = "W" .or. myOut = "F" .or. myOut = "U" .or. myOut = "T" .or. myOut = "L"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
IF myOut = "PV"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := True
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := False
ENDIF
IF myOut = "DV"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
IF myOut = "CAV"
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
IF mydataflag = true
mySwitches[1][2] := False
mySwitches[2][2] := False
mySwitches[3][2] := False
mySwitches[4][2] := False
mySwitches[5][2] := False
mySwitches[6][2] := True
ENDIF
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
