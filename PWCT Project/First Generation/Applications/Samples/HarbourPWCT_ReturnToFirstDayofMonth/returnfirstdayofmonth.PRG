*---------------------------------------------------------------------------*
* Time : 18:22:30    Date : 11/11/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.11
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
* Get parameters from command line
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


Resistance R_returnfirstdayofmonth_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_returnfirstdayofmonth_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 515 ;
HEIGHT 200 ;
ICON "PWCTICON" ;
TITLE "Return the Date First Day Of Month --->> By Khaled ABID" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 59 ,398 DATEPICKER datepickerDS;
ON CHANGE Dateto1stDay()  ;
WIDTH 20 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 59 ,187 TEXTBOX text1;
ON CHANGE Dateto1stDay()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 62 ,51 LABEL lbl1 ;
VALUE "Date Selected " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Dateto1stDay
win1.text1.Value := ""
dDate := win1.datepickerDS.Value
cDate = DTOC ( dDate )
Set cent ON
Set date FRENCH
YYYY = SUBSTR(cDate,7,4)
MM = SUBSTR(cDate,4,2)
DD = SUBSTR(cDate,1,2)
DD := "01"
win1.text1.Value := DD+"/"+MM+"/"+YYYY
Return Nil


End Of Resistance

INIT PROCEDURE Init_returnfirstdayofmonth
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Return the Date First Day Of Month --->> By Khaled ABID'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New DatePicker ( datepickerDS )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Dateto1stDay",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DatePicker Properties",13,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Dateto1stDay",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Date Selected '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Dateto1stDay",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","dDate = win1.datepickerDS.Value",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date dDate TO String",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format FRENCH",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","YYYY = Sub String of cDate From 7 Count 4",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","MM = Sub String of cDate From 4 Count 2",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","DD = Sub String of cDate From 1 Count 2",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","DD = '01'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value = DD+'/'+MM+'/'+YYYY",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
