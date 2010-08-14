*---------------------------------------------------------------------------*
* Time : 22:22:31    Date : 05/17/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
set procedure to c:\ssbuild\mglib\mglib.PRG
CheckError = MGL_START(32,800,600)
MGL_RECTFILL(10,10,600,400,MGL_COLORRGB({255,255,255}))
nKey := MGL_WAITKEY()
mgl_startbanking()
FOR x = 1 TO 200 STEP 1
MGL_RECT(X,10,X,800,MGL_COLORRGB({X,X,X}))
Next
mgl_endbanking()
mgl_transon()
MGL_DRAWTEXT(" welcome",30,30,MGL_COLORRGB({0,255,0}),MGL_COLORRGB({0,0,0}))
myfont = mgl_loadfont("arial.ttf",30,1)
mgl_setfont(myfont)
mgl_transoff()
MGL_DRAWTEXT2(" Welcome",100,200,MGL_COLORRGB({0,0,0}),MGL_COLORRGB({255,255,255}))
MGL_SHOWMOUSE()
nKey := MGL_WAITKEY()
MGL_HIDEMOUSE()
mybmp1 = MGL_LOADBMP("pic1.BMP")
mybmp2 = MGL_LOADBMP("pic2.BMP")
MGL_showBMP(mybmp2,0,0)
mgl_transon()
MGL_showBMP(mybmp1,50,50)
MGL_DRAWTEXT(" Press Enter to close",30,30,MGL_COLORRGB({0,255,0}),MGL_COLORRGB({0,0,0}))
DO WHILE  True
vKey := MGL_GETCKEY(MGL_INKEY())
IF vkey == "ENTER" .OR. vkey == "ENTER_PAD"
Exit
ENDIF
ENDDO
Quit


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
