*---------------------------------------------------------------------------*
* Time : 04:56:25    Date : 09/07/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 599 ;
HEIGHT 422 ;
ON INIT mycodeex()  ;
ON SIZE myadjust()  ;
ON MAXIMIZE myadjust()  ;
ICON "PWCTICON" ;
TITLE "Code Extractor Application" ;
MAIN ;
BACKCOLOR {255,255,255} 

win1.Center ( )
DEFINE TAB Tab1;
AT 10 ,10;
WIDTH 566;
HEIGHT 330;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
PAGE "Code"
@ 49 ,29 EDITBOX edit1;
WIDTH 500 ;
HEIGHT 250;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END PAGE
PAGE "Steps Tree"
@ 49 ,29 EDITBOX edit2;
WIDTH 500 ;
HEIGHT 250;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END PAGE
END TAB
@ 343 ,476 BUTTONEX btn1;
CAPTION "Close";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myclose()
win1.Release ( )
return

function myadjust()
declare window win1
win1.tab1.width := win1.width - 33
win1.tab1.height := win1.height - 112
win1.btn1.row := win1.height - 82
win1.btn1.col := win1.width - 123
win1.edit1.width := win1.tab1.width - 70
win1.edit2.width := win1.tab1.width - 70
win1.edit1.height := win1.tab1.height - 80
win1.edit2.height := win1.tab1.height - 80
return

function mycodeex()
cDirName = getstartupfolder()
file_1 =cDirName + "\t1.DBF"
file_2 =cDirName + "\t2.DBF"
REQUEST DBFCDX
SELECT 1
USE (FILE_1) ALIAS T1 VIA "DBFCDX"
SELECT 2
USE (FILE_2) ALIAS T2 VIA "DBFCDX"
SELECT 1
GOTO TOP
MYLAST = RECCOUNT()
myfh = fcreate(cDirName + "\o_code.txt")
myfh2 = fcreate(cDirName + "\o_steps.txt")
FOR X = 1 TO MYLAST
SELECT 2
   SET FILTER TO ALLTRIM(GOALID) == ALLTRIM(T1->GOALHANDLE)
   GOTO TOP
      MYTREE = {{"SP_","SP_",0}}
      IF .NOT. RECCOUNT() = 0
      do while !eof()
            AADD(MYTREE,{PARENTID,STEPID,RECNO()})
            SKIP 1
      enddo
      IF .NOT. LEN(MYTREE) = 0
      mylevels = {{"SP_",-1}} && Step ID, Level	
      MYTREE = ss_ARRTREE(MYTREE)
      MYEND = LEN(MYTREE)
      MYTABS = 0
      FOR X2 = 1 TO MYEND
      if .not. MYTREE[X2][3] = 0
                goto mytree[x2][3]
                if stepdis = .f.
		mytmax = len(mylevels)
		mynewlevel = 0
		for t = 1 to mytmax
			if alltrim(mylevels[t][1]) == alltrim(PARENTID)
			mynewlevel = mylevels[t][2] + 1
			aadd(mylevels,{ALLTRIM(STEPID),mynewlevel})
			exit
			endif
		next
                V_MYMAX = MLCOUNT( STEPCODE , 254 )
		FOR  v_ln = 1 TO V_MYMAX 
        		V_DATA = MEMOLINE( STEPCODE , 254 , V_LN )
			IF UPPER(ALLTRIM(V_DATA)) == "<RPWI:TABPUSH>"
				MYTABS := MYTABS+1
			ELSEIF UPPER(ALLTRIM(V_DATA)) == "<RPWI:TABPOP>"
				MYTABS := MAX(MYTABS-1,0)
			ELSE
		  	        win1.edit1.value := win1.edit1.value + replicate(chr(9),mytabs)+ V_DATA + chr(13) + chr(10)
				fwrite(myfh,replicate(chr(9),mytabs)+ V_DATA + chr(13) + chr(10))
			ENDIF
		NEXT
                win1.edit2.value := win1.edit2.value + replicate(chr(9),mynewlevel) + alltrim(stepname) + chr(13) + chr(10)
               
                fwrite(myfh2,alltrim(stepname))
                endif
      endif
      NEXT
      ENDIF
      ENDIF
   SET FILTER TO 
   GOTO TOP
SELECT 1
SKIP 1
NEXT
CLOSE DATABASE
fclose(myfh)
myfh = fcreate(cDirName + "\JOBDONE.MSG")
fclose(myfh)
return

*------------------------*
* Arrange Tree           *
*------------------------*
function SS_arrtree(mytree)
local x,t
                                && MYTREE[N][1] = PARENT ID
                                && MYTREE[N][2] = ITEM   ID
                                && MYTREE[N][3] = VALUE
* mydarr is my arranged tree
mydarr = {}
* get first element , the root
AADD(MYDARR,{MYTREE[1][1],MYTREE[1][2],MYTREE[1][3]})
X = 1                                               
DO WHILE .t.
      MYDARR2 = {}
      * ADD ELEMENTS FROM TOP ELEMENT TO CURRENT ELEMENT
      FOR T = 1 TO X
           AADD(MYDARR2,{MYDARR[T][1],MYDARR[T][2],MYDARR[T][3]})
      NEXT                                                      
      MYID = upper(alltrim(MYDARR[X][2]))
      * ADD SUCCESSOR
      FOR T = 2 TO LEN(MYTREE)
                  IF upper(alltrim(MYTREE[T][1])) == MYID
                        AADD(MYDARR2,{MYTREE[T][1],MYTREE[T][2],MYTREE[T][3]})
                  ENDIF
      NEXT
      * ADD ELEMENTS THAT UNDER THE CURRENT ELEMENT
      FOR T = X+1 TO LEN(MYDARR)
           AADD(MYDARR2,{MYDARR[T][1],MYDARR[T][2],MYDARR[T][3]})
      NEXT
      MYDARR = MYDARR2
X = X + 1
if X > LEN(MYDARR)
        exit
endif
ENDDO
return mydarr
   



End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
Return
*-------------------------------------------------------------------*
