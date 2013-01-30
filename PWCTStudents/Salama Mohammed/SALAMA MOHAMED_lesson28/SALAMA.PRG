*---------------------------------------------------------------------------*
* Time : 12:33:10    Date : 01/16/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
mainwindowobj = mainwindow()
myout = mainwindowobj:showwindow()
Class counter
Data nnumber init 0
Method increment
Method showwindow
Method btnincrement
Method class2userinterface
Method userinterface2class
EndClass
Method increment Class counter
self:nnumber = self:nnumber + 1
Return 0
Method showwindow Class counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,300 ;
WIDTH 529 ;
HEIGHT 159 ;
ICON "PWCTICON" ;
TITLE "counter  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 48 ,72 LABEL lbl1 ;
VALUE "number " ;
WIDTH 60 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0}
@ 44 ,136 TEXTBOX text1;
ON CHANGE self:userinterface2class()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 44 ,345 BUTTONEX btn1;
CAPTION "increment ";
ON CLICK self:btnincrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method btnincrement Class counter
myout = self:increment()
myout = self:class2userinterface()
Return 0
Method class2userinterface Class counter
win1.text1.Value := self:nnumber
Return 0
Method userinterface2class Class counter
self:nnumber := win1.text1.Value
Return 0
Class mainwindow
Method showwindow
Method closewindow
Method counter
EndClass
Method showwindow Class mainwindow
if !iswindowdefined( winmain )
DEFINE WINDOW winmain ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "counter aplication  " ;
MAIN ;
BACKCOLOR {128,0,128} 

DEFINE MAIN MENU
POPUP "file "
MENUITEM "counter " Action self:counter()
MENUITEM "Exit " Action self:closewindow()
END POPUP
END MENU
END WINDOW

winmain.Maximize ( )
ACTIVATE WINDOW winmain
EndIF

Return 0
Method closewindow Class mainwindow
winmain.Release ( )
Return 0
Method counter Class mainwindow
counterobj = counter()
myout = counterobj:showwindow()
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object mainwindowobj of Class mainwindow",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = mainwindowobj.showwindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data nnumber Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method increment",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnincrement",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2userinterface",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method userinterface2class",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increment Class counter",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = self:nnumber + 1",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class counter",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'counter  '",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'number '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:userinterface2class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'increment '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnincrement",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnincrement Class counter",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increment()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterface()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2userinterface Class counter",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := self:nnumber",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method userinterface2class Class counter",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = win1.text1.Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class mainwindow",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class mainwindow",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winmain ) , Title : 'counter aplication  '",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file '",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","winmain.Maximize ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class mainwindow",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","winmain.Release ( )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter Class mainwindow",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object counterobj of Class counter",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","myout = counterobj.showwindow()",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",101,101)
Return
*-------------------------------------------------------------------*
