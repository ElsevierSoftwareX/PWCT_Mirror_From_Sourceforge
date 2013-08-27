*---------------------------------------------------------------------------*
* Time : 12:26:47    Date : 08/27/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.08.24
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
Set Procedure to "Database.PRG"
Set Procedure to "Items_Data.PRG"
ItemsObject = ItemsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "Save & Restore Images from Database" ;
MAIN ;
BACKCOLOR {236,233,216} 
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action closesystem()
END POPUP
POPUP "Data"
MENUITEM "Items Data" Action ItemsObject:ShowWindow()
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
procedure SysStart()
Execute File "installodbc.bat" MINIMIZE
return
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
oMyObj:type := 1
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Items_Data.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ItemsObject of Class ItemsClass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Save & Restore Images from Database'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Data'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Items Data' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc.bat' , MINIMIZE",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function FileToStream ( cFileName )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Local sStream,oMyObj",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.LoadFromFile ( cFileName )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","sStream = oMyObj.Read ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return sStream)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function StreamToFile ( sStream,cFileName )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Local oMyObj",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMyObj of Type 'adodb.stream'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.write ( sStream )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.SaveToFile ( cFileName,1 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",62,62)
Return
*-------------------------------------------------------------------*
