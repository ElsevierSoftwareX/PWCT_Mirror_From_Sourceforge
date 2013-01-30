*---------------------------------------------------------------------------*
* Time : 10:54:10    Date : 01/17/2013
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
Data cwindowname init "counterwindow"
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
if !iswindowdefined( &(self:cwindowname) )
DEFINE WINDOW &(self:cwindowname) ;
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

ACTIVATE WINDOW &(self:cwindowname)
EndIF

Return 0
Method btnincrement Class counter
myout = self:increment()
myout = self:class2userinterface()
Return 0
Method class2userinterface Class counter
&(self:cwindowname).text1.Value := self:nnumber
Return 0
Method userinterface2class Class counter
self:nnumber := &(self:cwindowname).text1.Value
Return 0
Class mainwindow
Data nwindows init 0
Method showwindow
Method closewindow
Method counter
Method newwindow
Method counter2
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
MENUITEM "counter 2" Action self:counter2()
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
myout = self:newwindow("counterwindow",@counterobj)
myout = counterobj:showwindow()
Return 0
Method newwindow(cwindow,wobject) Class mainwindow
self:nwindows = self:nwindows + 1
cnum = STR ( self:nwindows )
cnum = ALLTRIM ( cnum )
wobject:cwindowname := cwindow + cnum
Return 0
Method counter2 Class mainwindow
counterobj = counter2()
myout = self:newwindow("counter2window",@counterobj)
myout = counterobj:showwindow()
Return 0
class counter2 From counter
Method increment
EndClass
Method increment Class counter2
self:nnumber = self:nnumber + 5
myout = Super:increment()
Return 0



End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (mywindowname) with (&(self:cwindowname))",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object mainwindowobj of Class mainwindow",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myout = mainwindowobj.showwindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data nnumber Init Value 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cwindowname Init Value 'counterwindow'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method increment",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnincrement",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2userinterface",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method userinterface2class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increment Class counter",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = self:nnumber + 1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class counter",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( mywindowname ) , Title : 'counter  '",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'number '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:userinterface2class",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'increment '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnincrement",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnincrement Class counter",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increment()",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterface()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2userinterface Class counter",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","mywindowname.text1.Value := self:nnumber",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method userinterface2class Class counter",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = mywindowname.text1.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class mainwindow",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Data nwindows Init Value 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Method newwindow",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Method counter2",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class mainwindow",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winmain ) , Title : 'counter aplication  '",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file '",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter ' )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'counter 2' )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","winmain.Maximize ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class mainwindow",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","winmain.Release ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter Class mainwindow",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object counterobj of Class counter",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.newwindow('counterwindow',@counterobj)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","myout = counterobj.showwindow()",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method newwindow(cwindow,wobject) Class mainwindow",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","self:nwindows = self:nwindows + 1",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cnum = CONVERT self:nwindows TO STRING",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cnum = All Trim cnum",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","wobject.cwindowname = cwindow + cnum",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method counter2 Class mainwindow",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object counterobj of Class counter2",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.newwindow('counter2window',@counterobj)",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myout = counterobj.showwindow()",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter2 From counter",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Method increment",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increment Class counter2",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = self:nnumber + 5",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Super.increment()",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",127,127)
Return
*-------------------------------------------------------------------*
