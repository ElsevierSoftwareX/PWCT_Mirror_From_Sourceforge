*---------------------------------------------------------------------------*
* Time : 07:14:38    Date : 01/04/2013
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
Function FFD
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

Resistance R_FFD_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FFD_18smart1() code
class FFDClass From RABaseClass
Data cWindowName init "FFWindow"
Data nConsolidation init 0
Method showwindow
Method closewindow
Method Process
Method PrintMsg
Method ShowProcess
EndClass
Method showwindow Class FFDClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1028 ;
HEIGHT 449 ;
ON INIT Self:ShowProcess()  ;
ICON "PWCTICON" ;
TITLE "First-Fit Decreasing (FFD)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 370 ,878 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 11 ,10 EDITBOX edit1;
WIDTH 997 ;
HEIGHT 346;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method closewindow Class FFDClass
&(self:cWindowName).Release ( )
Return 0
Method Process Class FFDClass
Local x,x2,x3,x4
myout = Self:PrepareData()
IF self:nConsolidation = 1
myout = self:PrepareStaticConsolidation()
ENDIF
myout = Self:StartSolutions()
nVMMax  = LEN(self:aVM)
self:nSolutionsStart := 1
FOR x = 1 TO nVMMax STEP 1
myout = Self:LoadVMData(x)
IF Self:VM_Description = "Create Request"
nSolutionsMax  = LEN(self:aSolutions)
IF self:nSolutionsStart <= nSolutionsMax
FOR x3 = Self:nSolutionsStart TO nSolutionsMax STEP 1
myout = Self:LoadSolution(x3)
nServersMax  = LEN(self:aServers)
FOR x2 = 1 TO nServersMax STEP 1
myout = Self:LoadServerData(x2)
myout = Self:CheckVMBind2Server()
IF myout = True
myout = Self:SaveState()
myout = Self:VMBind2Server()
myout = Self:UpdateServerData()
myout = Self:UpdateVMData()
myout = Self:SaveSolution()
myout = Self:RestoreState()
Exit
ENDIF
Next
Next
self:nSolutionsStart := nSolutionsMax + 1
ENDIF
ENDIF
IF self:nConsolidation = 2 .or. self:nConsolidation = 3
IF Self:VM_Description = "Update Request"
nSolutionsMax  = LEN(self:aSolutions)
aOldServerID := {}
IF self:nSolutionsStart <= nSolutionsMax
FOR x3 = Self:nSolutionsStart TO nSolutionsMax STEP 1
myout = Self:LoadSolution(x3)
FOR x2 = (x-1) TO 1 STEP -1
IF Self:aVM[X2][1] == self:VM_ID
AADD( aOldServerID , self:aVM[X2][2])
nServerIndex = self:UnBindVM(X2)
myout = Self:SaveSolution()
Exit
ENDIF
Next
Next
self:nSolutionsStart := nSolutionsMax + 1
ENDIF
nSolutionsMax  = LEN(self:aSolutions)
IF self:nSolutionsStart <= nSolutionsMax
FOR x3 = Self:nSolutionsStart TO nSolutionsMax STEP 1
myout = Self:LoadSolution(x3)
nServersMax  = LEN(self:aServers)
FOR x2 = 1 TO nServersMax STEP 1
myout = Self:LoadServerData(x2)
myout = Self:CheckVMBind2Server()
IF myout = True
myout = Self:SaveState()
myout = Self:VMBind2Server()
myout = Self:UpdateServerData()
myout = Self:UpdateVMData()
cOldServerID := aOldServerID[(x3-(self:nSolutionsstart)+1)]
lMigCounter := False
IF .not. (Self:aVM[X][2] == cOldServerID)
self:nMigrations := self:nMigrations + 1
lMigCounter := True
ENDIF
myout = Self:SaveSolution()
myout = Self:RestoreState()
IF lMigCounter = True
self:nMigrations := self:nMigrations - 1
ENDIF
Exit
ENDIF
Next
Next
self:nSolutionsStart := nSolutionsMax + 1
ENDIF
nSolutionsMax  = LEN(self:aSolutions)
IF self:nSolutionsStart <= nSolutionsMax
FOR x3 = Self:nSolutionsStart TO nSolutionsMax STEP 1
myout = Self:LoadSolution(x3)
myout = Self:SaveState()
myout = self:SetActiveVMRequests()
nServersMax  = LEN(self:aServers)
FOR x2 = 1 TO nServersMax STEP 1
IF self:aServers[x2][6] > 0
nMaxActiveVM  = LEN(self:aActiveVM)
lMigrationSuccess := True
FOR x4 = 1 TO nMaxActiveVM STEP 1
IF Self:aActiveVM[X4][2] =  self:aServers[x2][1]
IF Self:aActiveVM[X4][9] = True .and.  self:nConsolidation = 3
lMigrationSuccess := False
Exit
ENDIF
nServerIndex = self:UnBindVM(self:aActiveVM[X4][10])
myout = Self:LoadVMData(self:aActiveVM[X4][10])
lFound := False
FOR x5 = 1 TO nServersMax STEP 1
IF x5 = x2 .or. self:aServers[x5][6] = 0
Loop
ENDIF
myout = Self:LoadServerData(x5)
myout = Self:CheckVMBind2Server()
IF myout = True
myout = Self:VMBind2Server()
myout = Self:UpdateServerData()
myout = Self:UpdateVMData()
lFound := True
self:nMigrations := self:nMigrations + 1
myout = self:SetActiveVMRequests()
Exit
ENDIF
Next
IF lFound = False
lMigrationSuccess := False
Exit
ENDIF
ENDIF
Next
IF lMigrationSuccess = True
myout = Self:SaveState()
ELSE
myout = Self:RestoreState()
ENDIF
ENDIF
Next
myout = Self:SaveSolution()
Next
self:nSolutionsStart := nSolutionsMax + 1
ENDIF
ENDIF
ENDIF
Next
Return 0
Method PrintMsg(cMessage) Class FFDClass
cText := &(self:cWindowName).edit1.Value
cText := cText + CHR(13) + CHR(10) + cMessage
&(self:cWindowName).edit1.Value := cText
Return 0
Method ShowProcess Class FFDClass
myout = Self:Process()
myout = Self:PrintMsg("Solutions Count " + Str ( Self:GetSolutionsCount() ))
myout = Self:PrintMsg(Self:SolutionsReport())
Return 0



End Of Resistance

*-------------------------------------------------------------------*
