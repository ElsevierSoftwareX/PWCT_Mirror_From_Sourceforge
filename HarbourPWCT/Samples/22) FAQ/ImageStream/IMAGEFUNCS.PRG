*---------------------------------------------------------------------------*
* Time : 05:14:46    Date : 10/23/2011
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


Resistance R_IMAGEFUNCS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IMAGEFUNCS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 172 ;
ICON "PWCTICON" ;
TITLE "Image To Stream & Stream To Image" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 27 ,70 BUTTONEX btn1;
CAPTION "Load Image to Stream - Then Save Stream to Image";
ON CLICK myWork()  ;
WIDTH 350 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,195 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK win1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myWork
GetFile := GetFile ( { {"Image","*.JPG" } } , ;
" 1 - Load Image to Stream " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile
MyStream = FileToStream ( GetFile )
PutFile := PutFile ( { {"Image","*.JPG" } } , ;
" Save Stream to Image " , ;
, ;
, ;
)
IF .not. PutFile == ""
StreamToFile ( MyStream,PutFile )
ENDIF
ENDIF
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
oMyObj:type := 1
oMyObj:open ( )
oMyObj:write ( sStream )
oMyObj:SaveToFile ( cFileName,1 )
oMyObj:close ( )
Return


End Of Resistance

INIT PROCEDURE Init_IMAGEFUNCS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Image To Stream & Stream To Image'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Load Image to Stream - Then Save Stream to Image'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myWork",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.release",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myWork",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","MyStream = Call Function FileToStream ( GetFile )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. PutFile == '' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function StreamToFile ( MyStream,PutFile )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
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
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.type := 1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.open ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.write ( sStream )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.SaveToFile ( cFileName,1 )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","oMyObj.close ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",68,68)
Return
*-------------------------------------------------------------------*
