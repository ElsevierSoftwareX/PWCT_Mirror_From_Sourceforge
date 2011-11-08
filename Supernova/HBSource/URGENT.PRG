*---------------------------------------------------------------------------*
* Time : 14:30:49    Date : 11/05/2011
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
Function URGENT
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance RT_Urgent                     
	VetoUnit :

Resistance R_URGENT_18smart1() address Code Unit : Circuits\Main\Main\RT_Urgent


Return 

* Resistance Code Unit : Circuits\Main\Main\RT_Urgent
Resistance R_URGENT_18smart1() code
Proc RT_Urgent
IF myopcode = 1
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cwinname := "win_"+cobjscount
MyOpWinName := cwinname
ELSEIF (myopcode >= 700 .and. myopcode <=712) .or. (myopcode >= 750 .and. myopcode <=755 )
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
DO RTE_Check
ENDIF
ELSEIF myopcode = 700
AADD( RT_GUI_Statusbar , {myopwinname,"arial",10,false,false,false,false,{}})
ELSEIF myopcode = 701
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][2] := myopdata[1]
ELSEIF myopcode = 702
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][3] := myopdata[1]
ELSEIF myopcode = 703
mylast  = LEN(RT_GUI_Statusbar)
avalue := myopdata[1]
avalue := &avalue
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][4] := avalue
ELSEIF myopcode = 704
mylast  = LEN(RT_GUI_Statusbar)
avalue := myopdata[1]
avalue := &avalue
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][5] := avalue
ELSEIF myopcode = 705
mylast  = LEN(RT_GUI_Statusbar)
avalue := myopdata[1]
avalue := &avalue
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][6] := avalue
ELSEIF myopcode = 706
mylast  = LEN(RT_GUI_Statusbar)
avalue := myopdata[1]
avalue := &avalue
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][7] := avalue
ELSEIF myopcode = 707
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Statusbar[mylast][8] , {1,"statusbar item",100})
ELSEIF myopcode = 708
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Statusbar[mylast][8] , {2,"clock",100})
ELSEIF myopcode = 709
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Statusbar[mylast][8] , {3,"date",100})
ELSEIF myopcode = 710
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Statusbar[mylast][8] , {4,"keyboard",100})
ELSEIF myopcode = 711
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_Statusbar[mylast][8])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][8][mylast2][2] := myopdata[1]
ELSEIF myopcode = 712
mylast  = LEN(RT_GUI_Statusbar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_Statusbar[mylast][8])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Statusbar[mylast][8][mylast2][3] := myopdata[1]
ELSEIF myopcode = 750
AADD( RT_GUI_Menubar , {myopwinname,{}})
ELSEIF myopcode = 751
mylast  = LEN(RT_GUI_Menubar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Menubar[mylast][2] , {"popupcaption",{}})
ELSEIF myopcode = 752
mylast  = LEN(RT_GUI_menubar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_menubar[mylast][2])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Menubar[mylast][2][mylast2][1] := myopdata[1]
ELSEIF myopcode = 753
mylast  = LEN(RT_GUI_Menubar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_Menubar[mylast][2])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
AADD( RT_GUI_Menubar[mylast][2][mylast2][2] , {"itemcaption","item"})
ELSEIF myopcode = 754
mylast  = LEN(RT_GUI_menubar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_menubar[mylast][2])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast3  = LEN(RT_GUI_menubar[mylast][2][mylast2][2])
IF mylast3 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Menubar[mylast][2][mylast2][2][mylast3][1] := myopdata[1]
ELSEIF myopcode = 755
mylast  = LEN(RT_GUI_menubar)
IF mylast = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast2  = LEN(RT_GUI_menubar[mylast][2])
IF mylast2 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
mylast3  = LEN(RT_GUI_menubar[mylast][2][mylast2][2])
IF mylast3 = 0
DO RTE_AddError WITH 12
DO RTE_Check
ENDIF
RT_GUI_Menubar[mylast][2][mylast2][2][mylast3][2] := myopdata[1]
ENDIF
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
