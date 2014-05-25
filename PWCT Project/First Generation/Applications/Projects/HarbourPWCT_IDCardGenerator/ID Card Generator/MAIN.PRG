*---------------------------------------------------------------------------*
* Time : 00:41:17    Date : 05/16/2014
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
Set Procedure to "database.PRG"
Set Procedure to "About.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "studentidcard.PRG"
Set Procedure to "studentsdetails.PRG"
Set Procedure to "studentsreport.PRG"
AboutObject = AboutClass()
studentsidcardObject = studentsidcardClass()
studentsdetailsObject = studentsdetailsClass()
studentsreportObject = studentsreportClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hazrat Omar (R) Model Academy" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "Student ID Card "
MENUITEM "Student Details " Action studentsDetailsObject:ShowWindow()
MENUITEM "Student ID Card Report " Action studentsidcardObject:ShowWindow()
MENUITEM "Students Details Report " Action studentsreportObject:ShowWindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
Function  FileToStream ( cFileName )
Local sStream,oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:type := 1
oMyObj:open ( )
oMyObj:LoadFromFile ( cFileName )
sStream := oMyObj:Read (  )
oMyObj:close ( )
Return sStream
Function  StreamToFile ( sStream,cFileName )
Local oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:Type := 1
oMyObj:open ( )
oMyObj:write ( sStream )
oMyObj:SaveToFile ( cFileName,1 )
oMyObj:close ( )
Return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'database.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'studentidcard.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'studentsdetails.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'studentsreport.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object studentsidcardObject of Class studentsidcardClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object studentsdetailsObject of Class studentsdetailsClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object studentsreportObject of Class studentsreportClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hazrat Omar (R) Model Academy'",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Student ID Card '",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Student Details ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Student ID Card Report ' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Students Details Report ' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function FileToStream ( cFileName )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Local sStream,oMyObj",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.LoadFromFile ( cFileName )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","sStream = oMyObj.Read ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return sStream)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function StreamToFile ( sStream,cFileName )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Local oMyObj",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.Type := 1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.write ( sStream )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.SaveToFile ( cFileName,1 )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",68,68)
Return
*-------------------------------------------------------------------*
