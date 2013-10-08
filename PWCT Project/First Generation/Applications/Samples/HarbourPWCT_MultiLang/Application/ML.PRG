*---------------------------------------------------------------------------*
* Time : 10:01:08    Date : 10/08/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.07
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadML
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

Resistance R_ML_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ML_19art1() code
Class MultiLang
Data cFileName init "english.txt"
Data cFileContent init ""
Data lLoad init False
Method Load
Method GetStr
Method GetNum
Method CheckLoad
EndClass
Method Load Class MultiLang
CheckFile := File(self:cFileName)
IF .not. CheckFile
MyOut := MSGBOX("Can't find the Language file : " + self:cFileName,"Sorry")
RPWI_TH = FCREATE(self:cFileName,0)
FWRITE(RPWI_TH,"")
FCLOSE(RPWI_TH)
MyOut := MSGBOX("New language file is created  : " + self:cFileName,"Ok")
Return 0
ENDIF
self:cFileContent := FILESTR( self:cFileName )
Return 0
Method GetStr(x,cText) Class MultiLang
Local nMax,t,aArray,cItem
out = self:CheckLoad()
IF self:cFileContent == ""
nMax := 0
ELSE
nMax = MLCOUNT( self:cFileContent , 254 )
ENDIF
IF x > nMax
aArray := {}
FOR t = 1 TO nMax STEP 1
cItem = MEMOLINE( self:cFileContent , 254 , t )
AADD( aArray , cItem)
Next
FOR t = nMax+1 TO x STEP 1
IF t = x
cItem := cText
ELSE
cItem := ""
ENDIF
AADD( aArray , cItem)
Next
self:cFileContent := ""
nMax  = LEN(aArray)
IF nMax > 0
FOR t = 1 TO nMax STEP 1
self:cFileContent := self:cFileContent + aArray[t] + CHR(13) + CHR(10)
Next
ENDIF
RPWI_TH = FCREATE(self:cFileName,0)
FWRITE(RPWI_TH,self:cFileContent)
FCLOSE(RPWI_TH)
cOutput := cText
ELSE
cOutput = MEMOLINE( self:cFileContent , 254 , x )
ENDIF
Return cOutput
Method GetNum(x,cText) Class MultiLang
nOutput = self:GetStr(x,cText)
nOutput = VAL ( nOutput )
Return nOutput
Method CheckLoad Class MultiLang
IF self:lLoad = False
out = self:Load()
self:lLoad := True
ENDIF
Return 0

End Of Resistance

*-------------------------------------------------------------------*
