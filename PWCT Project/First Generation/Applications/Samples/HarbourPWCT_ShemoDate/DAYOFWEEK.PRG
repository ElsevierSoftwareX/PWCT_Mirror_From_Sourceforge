*---------------------------------------------------------------------------*
* Time : 20:33:45    Date : 02/11/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.01.31
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadDAYOFWEEK
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

Resistance R_DAYOFWEEK_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DAYOFWEEK_19art1() code
Class DayOfWeek
Method pCalc
EndClass
Method pCalc(nDay, nMonth, nYear) Class DayOfWeek
nDayOffset = pDayOffset ( nDay )
nMonthOffset = pMonthOffset ( nMonth )
nYearOffset = pYearOffset ( nYear )
nCenturyOffset = pCenturyOffset ( nYear )
nDayIndex = nDayOffset + nMonthOffset
nDayIndex = nDayIndex + nYearOffset
nDayIndex = nDayIndex + nCenturyOffset
nDayIndex = MOD( nDayIndex , 7 )
nDayIndex  = INT (nDayIndex)
Return nDayIndex
Function  pDayOffset ( nDay )
nDayOffset = MOD( nDay , 7 )
nDayOffset  = INT (nDayOffset)
Return nDayOffset
Function  pMonthOffset ( nMonth )
IF nMonth == 1
nDayOffset := 0
Return nMonthOffset
ENDIF
IF nMonth == 2
nMonthOffset = MOD( 31 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 3
nMonthOffset = MOD( 59 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 4
nMonthOffset = MOD( 90 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 5
nMonthOffset = MOD( 120 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 6
nMonthOffset = MOD( 151 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 7
nMonthOffset = MOD( 181 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 8
nMonthOffset = MOD( 212 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 9
nMonthOffset = MOD( 243 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 10
nMonthOffset = MOD( 31 , 273 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 11
nMonthOffset = MOD( 304 , 7 )
nMonthOffset  = INT (nMonthOffset)
Return nMonthOffset
ENDIF
IF nMonth == 12
nMonthOffset = MOD( 334 , 7 )
nMonthOffset  = INT (nMonthOffset)
ENDIF
Return nMonthOffset
Function  pYearOffset ( nYear )
nYear = MOD( nYear , 100 )
nYearOffset := nYear + (nYear / 4)
nYearOffset  = INT (nYearOffset)
nYearOffset = MOD( nYearOffset , 7 )
nYearOffset  = INT (nYearOffset)
Return nYearOffset
Function  pCenturyOffset ( nYear )
nCentury = nYear / 100
nCentury  = INT (nCentury)
nCenturyOffset = nCentury / 4
nCenturyOffset  = INT (nCenturyOffset)
nCenturyOffset = nCenturyOffset + 1
nCenturyOffset = nCenturyOffset * 4
nCenturyOffset = nCenturyOffset - 1
nCenturyOffset = nCenturyOffset - nCentury
nCenturyOffset = nCenturyOffset * 2
Return nCenturyOffset

End Of Resistance

*-------------------------------------------------------------------*
