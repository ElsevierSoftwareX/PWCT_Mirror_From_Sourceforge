*---------------------------------------------------------------------------*
* Time : 21:43:14    Date : 09/18/2012
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


Resistance R_LESSON8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON8_18smart1() code
Public name,age,address
name := "mohammad"
age := "25"
address := "riyadh"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 484 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "listbox  " ;
MAIN ;
BACKCOLOR {128,128,255} 

@ 89 ,373 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 44 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 139 ,372 LABEL lbl2 ;
VALUE "«·⁄„—" ;
WIDTH 49 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 86 ,236 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 130 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 138 ,236 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 128 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 69 ,9 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 233 ,325 BUTTONEX btn1;
CAPTION "«÷› ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 233 ,220 BUTTONEX btn2;
CAPTION "Õ–› «·ﬂ· ";
ON CLICK hazf()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 186 ,370 LABEL lbl3 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 51 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 185 ,236 TEXTBOX text3;
HEIGHT 31 ;
WIDTH 128 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 278 ,273 BUTTONEX btn3;
CAPTION "«”‰«œ «·ﬁÌ„ ";
ON CLICK SetValues()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 35 ,330 BUTTONEX btn4;
CAPTION "‰”Œ ";
ON CLICK copy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 36 ,220 BUTTONEX btn5;
CAPTION "·’ﬁ";
ON CLICK paste()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
name := win1.text1.Value
Win1.List1.Additem ( name )
age := win1.text2.Value
Win1.List1.Additem ( age )
Address := win1.text3.Value
Win1.List1.Additem ( Address )
return
procedure hazf()
win1.list1.DeleteAllItems ( )
return
procedure SetValues()
Local name,age,address
name := "mohammad"
age := "25"
address := "riyadh"
name := "ali"
age := "65"
address := "Riaydh"
win1.text1.Value := "ali"
win1.text2.Value := "50"
win1.text3.Value := "Jeddah"
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ »‘ﬂ· „»«‘— ","Title ")
win1.text1.Value := name
win1.text2.Value := age
win1.text3.Value := address
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ","Title ")
return
procedure copy()
name := win1.text1.Value
age := win1.text2.Value
Address := win1.text3.Value
return
procedure paste()
win1.text1.Value := name
win1.text2.Value := age
win1.text3.Value := address
return


End Of Resistance

INIT PROCEDURE Init_LESSON8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public name,age,address",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","name = 'mohammad'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","age = '25'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","address = 'riyadh'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'listbox  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄„—'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷› '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Õ–› «·ﬂ· '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hazf",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·⁄‰Ê«‰ '",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«”‰«œ «·ﬁÌ„ '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SetValues",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '‰”Œ '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action copy",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '·’ﬁ'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action paste",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (name) to Listbox (List1) of Window (Win1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","age = win1.text2.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (age) to Listbox (List1) of Window (Win1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Address = win1.text3.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Address) to Listbox (List1) of Window (Win1)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hazf ( Event : CLICK )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetValues ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Local name,age,address",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","name = 'mohammad'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","age = '25'",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","address = 'riyadh'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","name = 'ali'",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","age = '65'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","address = 'Riaydh'",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'ali'",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := '50'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 'Jeddah'",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ »‘ﬂ· „»«‘— ' Title 'Title ' Type: Message Box",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := age",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := address",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ' Title 'Title ' Type: Message Box",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure copy ( Event : CLICK )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","age = win1.text2.Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Address = win1.text3.Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure paste ( Event : CLICK )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := age",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := address",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
Return
*-------------------------------------------------------------------*
