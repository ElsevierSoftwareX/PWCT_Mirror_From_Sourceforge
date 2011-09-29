*---------------------------------------------------------------------------*
* Time : 08:19:20    Date : 09/29/2011
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
			Atom Test                          
				Shell ии                            
					SubShell P                             
						Variable name Value "Mahmoud"
						Variable Address
						Variable Phone
						Variable Fax
						Variable Notes
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell M                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell L                             
					SubShell P                             
					SubShell S                             
					SubShell D                             
					SubShell F                             
				Shell N                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell O                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell P                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell Q                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
			Atom nnm                           
			Vessel Test                          
						Atom Test                          
			Reaction Test                          
						Vessel Test                          
						Atom Test                          
						Shell K                             
						Shell L                             
						Shell M                             
						Shell N                             
						Shell O                             
						Shell P                             
						Shell Q                             
						Shell S(Sub)                        
						Shell P(Sub)                        
						Shell D(Sub)                        
						Shell F(Sub)                        
						SubShell K : S                         
						SubShell K : P                         
						SubShell K : D                         
						SubShell K : F                         
						SubShell L : S                         
						SubShell L : P                         
						SubShell L : D                         
						SubShell L : F                         
						SubShell M : S                         
						SubShell M : P                         
						SubShell M : D                         
						SubShell M : F                         
						SubShell N : S                         
						SubShell N : P                         
						SubShell N : D                         
						SubShell N : F                         
						SubShell O : S                         
						SubShell O : P                         
						SubShell O : D                         
						SubShell O : F                         
						SubShell P : S                         
						SubShell P : P                         
						SubShell P : D                         
						SubShell P : F                         
						SubShell Q : S                         
						SubShell Q : P                         
						SubShell Q : D                         
						SubShell Q : F                         
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
			Circuit        c2                            
				Branch     b3                            
					Resistance r9                            
					Resistance r7                            
					Resistance r8                            
				Branch     b4                            
					Resistance r11                           
					Resistance r13                           
					Resistance r10                           
			Circuit        c1                            
				Branch     b1                            
					Resistance r1                            
					Resistance r2                            
					Resistance r3                            
				Branch     b2                            
					Resistance r4                            
					Resistance r5                            
					Resistance r6                            
	VetoUnit :
		Veto v3
				Type Local : Inside Server
				Circuit    c2
				Branch     b4
				Resistance r13
		Veto v1
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance Main
		Veto v2
				Type Local : Inside Server
				Circuit    c1
				Branch     b1
				Resistance r1
		Channel c1
				Type     Input Channel
				Atom     Test
				Shell    K
				SubShell S
		Channel c2
				Type     Input Channel
				Atom     Test
				Shell    M
				SubShell D
		Channel c4
				Type     Input Channel
				Atom     Test
				Shell    M
				SubShell F
		Connection cob1
				Type          New Client (New Object )
				InputChannel  c1
				OutputChannel c1
				ReceivingVeto v1
				SendingVeto   v2
				Atom          Test
				Shell         K
				SubShell      S
				Electron      name
				Server        server1
				Server        server2
				Server        server3
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_START_18smart2() address Code Unit : Circuits\c1\b1\r1

Resistance R_START_18smart3() address Code Unit : Circuits\c1\b1\r2

Resistance R_START_18smart4() address Code Unit : Circuits\c1\b1\r3

Resistance R_START_18smart5() address Code Unit : Circuits\c1\b2\r4

Resistance R_START_18smart6() address Code Unit : Circuits\c1\b2\r5

Resistance R_START_18smart7() address Code Unit : Circuits\c1\b2\r6

Resistance R_START_18smart8() address Code Unit : Circuits\c2\b3\r9

Resistance R_START_18smart9() address Code Unit : Circuits\c2\b3\r7

Resistance R_START_18smart10() address Code Unit : Circuits\c2\b3\r8

Resistance R_START_18smart11() address Code Unit : Circuits\c2\b4\r11

Resistance R_START_18smart12() address Code Unit : Circuits\c2\b4\r13

Resistance R_START_18smart13() address Code Unit : Circuits\c2\b4\r10


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 434 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Welcome to PWCT" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 111 ,127 LABEL lbl1 ;
VALUE "Welcome to PWCT" ;
WIDTH 170 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 145 ,128 BUTTONEX btn1;
CAPTION "Close Window";
ON CLICK myclose()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
myobj = myclass()
myout = myobj:mymethod()
Return Nil
Class myclass
Method mymethod
EndClass
Method mymethod Class myclass
Select Address test:k:s
Load Active SubShell From Memory
MyOut := MSGBOX(x,"Text Here")
MyOut := MSGBOX(name,"Text Here")
Return 0


End Of Resistance

* Resistance Code Unit : Circuits\c1\b1\r1
Resistance R_START_18smart2() code

End Of Resistance

* Resistance Code Unit : Circuits\c1\b1\r2
Resistance R_START_18smart3() code

End Of Resistance

* Resistance Code Unit : Circuits\c1\b1\r3
Resistance R_START_18smart4() code

End Of Resistance

* Resistance Code Unit : Circuits\c1\b2\r4
Resistance R_START_18smart5() code

End Of Resistance

* Resistance Code Unit : Circuits\c1\b2\r5
Resistance R_START_18smart6() code

End Of Resistance

* Resistance Code Unit : Circuits\c1\b2\r6
Resistance R_START_18smart7() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b3\r9
Resistance R_START_18smart8() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b3\r7
Resistance R_START_18smart9() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b3\r8
Resistance R_START_18smart10() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b4\r11
Resistance R_START_18smart11() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b4\r13
Resistance R_START_18smart12() code

End Of Resistance

* Resistance Code Unit : Circuits\c2\b4\r10
Resistance R_START_18smart13() code

End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",222)
SS_ESARES("Circuits\c1\b1\r1",269)
SS_ESARES("Circuits\c1\b1\r2",274)
SS_ESARES("Circuits\c1\b1\r3",279)
SS_ESARES("Circuits\c1\b2\r4",284)
SS_ESARES("Circuits\c1\b2\r5",289)
SS_ESARES("Circuits\c1\b2\r6",294)
SS_ESARES("Circuits\c2\b3\r9",299)
SS_ESARES("Circuits\c2\b3\r7",304)
SS_ESARES("Circuits\c2\b3\r8",309)
SS_ESARES("Circuits\c2\b4\r11",314)
SS_ESARES("Circuits\c2\b4\r13",319)
SS_ESARES("Circuits\c2\b4\r10",324)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome to PWCT'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to PWCT'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class myclass",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.mymethod()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Select Address test:k:s",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Load Active SubShell From Memory",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message x Title 'Text Here' Type: Message Box",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message name Title 'Text Here' Type: Message Box",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",41,41)
Return
*-------------------------------------------------------------------*
