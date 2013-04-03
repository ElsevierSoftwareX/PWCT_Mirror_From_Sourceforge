*---------------------------------------------------------------------------*
* Time : 07:15:00    Date : 01/04/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Function RABASE
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
					Resistance Main                          
	VetoUnit :

Resistance R_RABASE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RABASE_18smart1() code
Class RABaseClass
Data aServers init {}
Data aSLA init {}
Data aVM init {}
Data S_ID init 0
Data S_CPU init 0
Data S_Memory init 0
Data S_Storage init 0
Data S_Bandwidth init 0
Data S_Status init "OFF"
Data S_Index init 0
Data A_ID init 0
Data A_UserName init ""
Data A_VMs init 0
Data A_CPU init 0
Data A_Memory init 0
Data A_Storage init 0
Data A_Bandwidth init 0
Data A_Hours init 0
Data A_Index init 0
Data VM_ID init 0
Data VM_ServerID init 0
Data VM_UserID init 0
Data VM_CPU init 0
Data VM_Memory init 0
Data VM_Storage init 0
Data VM_Bandwidth init 0
Data VM_Description init 0
Data VM_Index init 0
Data aOLDServers init {}
Data aOLDSLA init {}
Data aOLDVM init {}
Data aSolutions init {}
Data nSolutionsStart init 1
Data nPhysicalServersUsed init 0
Data nMigrations init 0
Data nRightSolution init 0
Data nRSPhysicalServers init 0
Data nRSMigrations init 0
Data nOldMigrations init 0
Data aActiveVM init {}
Method LoadServerData
Method LoadSLAData
Method LoadVMData
Method CheckVMBind2Server
Method VMBind2Server
Method UpdateServerData
Method UpdateVMData
Method PrepareData
Method SaveState
Method RestoreState
Method SaveSolution
Method StartSolutions
Method LoadSolution
Method GetSolutionsCount
Method SolutionsReport
Method DetermineRightSolution
Method PrepareStaticConsolidation
Method UnBindVM
Method SetActiveVMRequests
Method FindBestFit
Method FindWorstFit
Method FindAlmostWorstFit
EndClass
Method LoadServerData(nIndex) Class RABaseClass
Self:S_ID := Self:aServers[nIndex][1]
Self:S_CPU := Self:aServers[nIndex][2]
Self:S_Memory := Self:aServers[nIndex][3]
Self:S_Storage := Self:aServers[nIndex][4]
Self:S_Bandwidth := Self:aServers[nIndex][5]
Self:S_Status := Self:aServers[nIndex][6]
Self:S_Index := nIndex
Return 0
Method LoadSLAData(nIndex) Class RABaseClass
Self:A_ID := Self:aSLA[nIndex][1]
Self:A_UserName := Self:aSLA[nIndex][2]
Self:A_VMs := Self:aSLA[nIndex][3]
Self:A_CPU := Self:aSLA[nIndex][4]
Self:A_Memory := Self:aSLA[nIndex][5]
Self:A_Storage := Self:aSLA[nIndex][6]
Self:A_Bandwidth := Self:aSLA[nIndex][7]
Self:A_Hours := Self:aSLA[nIndex][8]
Self:A_Index := nIndex
Return 0
Method LoadVMData(nIndex) Class RABaseClass
Self:VM_ID := Self:aVM[nIndex][1]
Self:VM_ServerID := Self:aVM[nIndex][2]
Self:VM_UserID := Self:aVM[nIndex][3]
Self:VM_CPU := Self:aVM[nIndex][4]
Self:VM_Memory := Self:aVM[nIndex][5]
Self:VM_Storage := Self:aVM[nIndex][6]
Self:VM_Bandwidth := Self:aVM[nIndex][7]
Self:VM_Description := Self:aVM[nIndex][8]
Self:VM_Index := nIndex
Return 0
Method CheckVMBind2Server Class RABaseClass
Local lRet
lRet := True
IF Self:VM_CPU > Self:S_CPU
lRet := False
ENDIF
IF Self:VM_Memory > Self:S_Memory
lRet := False
ENDIF
IF Self:VM_Storage > Self:S_Storage
lRet := False
ENDIF
IF Self:VM_Bandwidth > Self:S_Bandwidth
lRet := False
ENDIF
Return lRet
Method VMBind2Server Class RABaseClass
Self:S_CPU := Self:S_CPU - Self:VM_CPU
Self:S_Memory := Self:S_Memory - Self:VM_Memory
Self:S_Storage := Self:S_Storage - Self:VM_Storage
Self:S_Bandwidth := Self:S_Bandwidth - Self:VM_Bandwidth
Self:S_Status := Self:S_Status + 1
Self:VM_ServerID := Self:S_ID
Return 0
Method UpdateServerData Class RABaseClass
Local nIndex
nIndex := self:s_index
self:aServers[nIndex][1] := self:S_ID
self:aServers[nIndex][2] := self:S_CPU
self:aServers[nIndex][3] := self:S_Memory
self:aServers[nIndex][4] := self:S_Storage
self:aServers[nIndex][5] := self:S_Bandwidth
self:aServers[nIndex][6] := self:S_Status
Return 0
Method UpdateVMData Class RABaseClass
Local nIndex
nIndex := self:VM_index
self:aVM[nIndex][2] := self:VM_ServerID
Return 0
Method PrepareData Class RABaseClass
nMax  = LEN(self:aServers)
FOR x = 1 TO nMax STEP 1
self:aServers[x][2] = VAL ( self:aServers[x][2] )
self:aServers[x][3] = VAL ( self:aServers[x][3] )
self:aServers[x][4] = VAL ( self:aServers[x][4] )
self:aServers[x][5] = VAL ( self:aServers[x][5] )
self:aServers[x][6] = VAL ( self:aServers[x][6] )
Next
nMax  = LEN(self:aVM)
FOR x = 1 TO nMax STEP 1
self:aVM[X][4] = VAL ( self:aVM[X][4] )
self:aVM[X][5] = VAL ( self:aVM[X][5] )
self:aVM[X][6] = VAL ( self:aVM[X][6] )
self:aVM[X][7] = VAL ( self:aVM[X][7] )
Next
Return 0
Method SaveState Class RABaseClass
self:aOLDServers := ACLONE( self:aServers )
self:aOLDSLA := ACLONE( self:aSLA )
self:aOLDVM := ACLONE( self:aVM )
Return 0
Method RestoreState Class RABaseClass
self:aServers := ACLONE( self:aOLDServers )
self:aSLA := ACLONE( self:aOLDSLA )
self:aVM := ACLONE( self:aOLDVM )
Return 0
Method SaveSolution Class RABaseClass
Local a1,a2,a3,x,nMax,nCounter,nMigrations
a1 := ACLONE( self:aServers )
a2 := ACLONE( self:aSLA )
a3 := ACLONE( self:aVM )
nCounter := 0
nMax  = LEN(a1)
FOR x = 1 TO nMax STEP 1
IF a1[x][6] > 0
nCounter := nCounter + 1
ENDIF
Next
nMigrations := self:nMigrations
AADD( self:aSolutions , {a1,a2,a3,nCounter,nMigrations})
Return 0
Method StartSolutions Class RABaseClass
Local x,nMax
Self:aSolutions := {}
self:nRightSolution := 0
self:nMigrations := 0
myout = Self:SaveSolution()
Return 0
Method LoadSolution(nIndex) Class RABaseClass
self:aServers := ACLONE( self:aSolutions[nIndex][1] )
self:aSLA := ACLONE( self:aSolutions[nIndex][2] )
self:aVM := ACLONE( self:aSolutions[nIndex][3] )
Self:nPhysicalServersUsed := self:aSolutions[nIndex][4]
Self:nMigrations := self:aSolutions[nIndex][5]
Return 0
Method GetSolutionsCount Class RABaseClass
nRet  = LEN(self:aSolutions)
nRet := nRet - self:nSolutionsStart + 1
Return nRet
Method SolutionsReport Class RABaseClass
Local x,nMax,a1,a2,a3,cReport
IF Self:GetSolutionsCount() = 0
Return ""
ENDIF
nMax  = LEN(self:aSolutions)
cReport := ""
FOR x = self:nSolutionsStart TO nMax STEP 1
cReport := cReport + CHR(13) + CHR(10) + "Solution [" + alltrim(str(x-(self:nSolutionsStart)+1)) + "]"
a1 := ACLONE( self:aSolutions[x][1] )
a2 := ACLONE( self:aSolutions[x][2] )
a3 := ACLONE( self:aSolutions[x][3] )
nMax2  = LEN(a3)
FOR x2 = 1 TO nMax2 STEP 1
cReport := cReport + CHR(13) + CHR(10) + "VM ID [" +a3[x2][1] + "]  ----" + a3[x2][8] +   "--- Binded to Server ID [ " +  A3[X2][2] + "]"
Next
a4 := self:aSolutions[x][4]
a4 = STR ( a4 )
a4 = ALLTRIM ( a4 )
cReport := cReport + CHR(13) + CHR(10) + "Number of physical servers used : " + a4
a5 := self:aSolutions[x][5]
a5 = STR ( a5 )
a5 = ALLTRIM ( a5 )
cReport := cReport + CHR(13) + CHR(10) + "Number of migrations : " + a5
cReport := cReport + CHR(13) + CHR(10) + "======================="
Next
myout = Self:DetermineRightSolution()
cReport := cReport + CHR(13) + CHR(10) + "The Right Solution "
cx := self:nRightSolution - self:nSolutionsStart + 1
cx = STR ( cx )
cx = ALLTRIM ( cx )
cReport := cReport + CHR(13) + CHR(10) + "Solution Number   " + cx
cx := self:nRSPhysicalServers
cx = STR ( cx )
cx = ALLTRIM ( cx )
cReport := cReport + CHR(13) + CHR(10) + "Number of Physical Servers used : " + cx
cx := self:nRSMigrations
cx = STR ( cx )
cx = ALLTRIM ( cx )
cReport := cReport + CHR(13) + CHR(10) + "Number of Migrations : " + cx
cReport := cReport + CHR(13) + CHR(10) + "======================="
Return cReport
Method DetermineRightSolution Class RABaseClass
nMax  = LEN(self:aSolutions)
FOR x = self:nSolutionsStart TO nMax STEP 1
a4 := self:aSolutions[x][4]
a5 := self:aSolutions[x][5]
IF self:nRightSolution = 0
Self:nRightSolution := x
Self:nRSPhysicalServers := a4
Self:nRSMigrations := a5
ELSE
IF a4 < self:nRSPhysicalServers
Self:nRightSolution := x
Self:nRSPhysicalServers := a4
Self:nRSMigrations := a5
ENDIF
IF a4 = self:nRSPhysicalServers .and. a5 < self:nRSMigrations
Self:nRightSolution := x
Self:nRSPhysicalServers := a4
Self:nRSMigrations := a5
ENDIF
ENDIF
Next
Return 0
Method PrepareStaticConsolidation Class RABaseClass
Local x,nMax,x2
nMax  = LEN(self:aVM)
FOR x = 1 TO nMax STEP 1
IF self:aVM[X][8] = "Create Request"
FOR x2 = x+1 TO nMax STEP 1
IF self:aVM[X][1] = self:aVM[X2][1]
nA1 := MAX(self:aVM[X][4],self:aVM[X2][4])
nA2 := MAX(self:aVM[X][5],self:aVM[X2][5])
nA3 := MAX(self:aVM[X][6],self:aVM[X2][6])
nA4 := MAX(self:aVM[X][7],self:aVM[X2][7])
Self:aVM[X][4] := nA1
Self:aVM[X][5] := nA2
Self:aVM[X][6] := nA3
Self:aVM[X][7] := nA4
ENDIF
Next
ENDIF
Next
Return 0
Method UnBindVM(nIndex) Class RABaseClass
Local nCPU,nMemory,nStorage,nBandwidth,cServerID,x,nMax
nCPU := self:aVM[nIndex][4]
nMemory := self:aVM[nIndex][5]
nStorage := self:aVM[nIndex][6]
nBandwidth := self:aVM[nIndex][7]
cServerID := self:aVM[nIndex][2]
nMax  = LEN(self:aServers)
FOR x = 1 TO nMax STEP 1
IF self:aServers[x][1] == cServerID
self:aServers[x][2] := self:aServers[x][2]  + nCPU
self:aServers[x][3] := self:aServers[x][3]  + nMemory
self:aServers[x][4] := self:aServers[x][4]  + nStorage
self:aServers[x][5] := self:aServers[x][5]  + nBandwidth
self:aServers[x][6] := self:aServers[x][6] - 1
Exit
ENDIF
Next
Return x
Method SetActiveVMRequests Class RABaseClass
Local x,nMax,v1,v2,v3,v4,v5,v6,v7,v8,lFound,x2,nMax2
Self:aActiveVM := {}
nMax  = LEN(self:aVM)
FOR x = nMax TO 1 STEP -1
a1 := self:aVM[X][1]
a2 := self:aVM[X][2]
a3 := self:aVM[X][3]
a4 := self:aVM[X][4]
a5 := self:aVM[X][5]
a6 := self:aVM[X][6]
a7 := self:aVM[X][7]
a8 := self:aVM[X][8]
lFound := False
nMax2  = LEN(self:aActiveVM)
FOR x2 = 1 TO nMax2 STEP 1
IF self:aActiveVM[X2][1] = a1
lFound := True
self:aActiveVM[X2][9] := False
Exit
ENDIF
Next
IF lFound = False
AADD( self:aActiveVM , {a1,a2,a3,a4,a5,a6,a7,a8,True,x})
ENDIF
Next
Return 0
Method FindBestFit Class RABaseClass
Local x,nMax,nServerIndex,nCPU,nStorage,nMemory,Bandwidth
nMax  = LEN(self:aServers)
nServerIndex := 0
nCPU := 0
nMemory := 0
nStorage := 0
nBandwidth := 0
FOR x = 1 TO nMax STEP 1
myout = self:LoadServerData(x)
myout = Self:CheckVMBind2Server()
IF myout = True
IF nServerIndex = 0
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  < nCPU
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  = nCPU
IF self:aServers[x][3]  < nMemory
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][3]  = nMemory
IF self:aServers[x][4]  < nStorage
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][4]  = nStorage
IF self:aServers[x][5]  < nBandwidth
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
Next
Return nServerIndex
Method FindWorstFit Class RABaseClass
Local x,nMax,nServerIndex,nCPU,nStorage,nMemory,Bandwidth
nMax  = LEN(self:aServers)
nServerIndex := 0
nCPU := 0
nMemory := 0
nStorage := 0
nBandwidth := 0
FOR x = 1 TO nMax STEP 1
myout = self:LoadServerData(x)
myout = Self:CheckVMBind2Server()
IF myout = True
IF nServerIndex = 0
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  > nCPU
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  = nCPU
IF self:aServers[x][3]  > nMemory
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][3]  = nMemory
IF self:aServers[x][4]  > nStorage
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][4]  = nStorage
IF self:aServers[x][5] > nBandwidth
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
Next
Return nServerIndex
Method FindAlmostWorstFit Class RABaseClass
Local x,nMax,nServerIndex,nCPU,nStorage,nMemory,Bandwidth,nWorst
nWorst = Self:FindWorstFit()
nServerIndex := 0
nCPU := 0
nMemory := 0
nStorage := 0
nBandwidth := 0
nMax  = LEN(self:aServers)
FOR x = 1 TO nMax STEP 1
IF x = nWorst
Loop
ENDIF
myout = self:LoadServerData(x)
myout = Self:CheckVMBind2Server()
IF myout = True
IF nServerIndex = 0
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  > nCPU
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][2]  = nCPU
IF self:aServers[x][3]  > nMemory
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][3]  = nMemory
IF self:aServers[x][4]  > nStorage
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ELSE
IF self:aServers[x][4]  = nStorage
IF self:aServers[x][5] > nBandwidth
nServerIndex := x
nCPU := self:aServers[x][2]
nMemory := self:aServers[x][3]
nStorage := self:aServers[x][4]
nBandwidth := self:aServers[x][5]
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
ENDIF
Next
IF nServerIndex = 0
nServerIndex := nWorst
ENDIF
Return nServerIndex


End Of Resistance

*-------------------------------------------------------------------*
