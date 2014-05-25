*---------------------------------------------------------------------------*
* Time : 14:59:25    Date : 05/25/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.04.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadSYSDB
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

Resistance R_SYSDB_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SYSDB_19art1() code
Class Database
Data cFileName init "\Data\Images.dbf"
Method Open
Method NewRecord
Method DeleteRecord
Method Open2
EndClass
Method Open Class Database
Local cFile
StartUpFolder := GetStartUpFolder()
cFile := StartUpFolder+self:cFileName
CheckFile := File(cFile)
IF .not. CheckFile
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "f_Date",;
Field_type WITH "C",;
Field_len WITH 10,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "f_Time",;
Field_type WITH "C",;
Field_len WITH 10,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "f_source",;
Field_type WITH "C",;
Field_len WITH 10,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "f_file",;
Field_type WITH "C",;
Field_len WITH 100,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "f_count",;
Field_type WITH "C",;
Field_len WITH 10,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "f_faceinf",;
Field_type WITH "M",;
Field_len WITH 4,;
Field_dec WITH 0
CLOSE
CREATE (cFile) FROM TempStru
ENDIF
Use (cFile)
Return 0
Method NewRecord(cDate,cTime,cImageSource,cImageFile,cPeopleCount,cFaceInf) Class Database
Append Blank
REPLACE f_Date WITH cDate
REPLACE f_time WITH cTime
REPLACE f_source WITH cImageSource
REPLACE f_file WITH cImageFile
REPLACE f_count WITH cPeopleCount
IF pCount() < 6
cFaceInf := ""
ENDIF
REPLACE f_faceinf WITH cFaceinf
Return 0
Method DeleteRecord Class Database
delete
Pack
Goto Top
Return 0
Method Open2 Class Database
self:cFileName := "\ServerData\Images.dbf"
out = self:Open()
self:cFileName := "\Data\Images.dbf"
Return 0


End Of Resistance

*-------------------------------------------------------------------*
