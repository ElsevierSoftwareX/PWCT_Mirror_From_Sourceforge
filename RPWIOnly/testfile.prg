PARAMETERS myfile,myp2
LOCAL myalias
IF EMPTY(ALLTRIM(myfile))
RETURN
ENDIF
IF UPPER(RIGHT(MYFILE,4))== ".FPT"
MESSAGEBOX(sysmsg(1392),0,sysmsg(1393))
RETURN .F.
ENDIF
IF myp2 = 1111
RETURN .t.
ENDIF
myalias = ALIAS()
myrec = RECNO()
IF ! FILE(myfile)
MESSAGEBOX(sysmsg(1386),0,sysmsg(1385))
RETURN .f.
ENDIF
myrei = .t.
try
select 0
use (myfile) 
IF .not. AFIELDS(mytest) = myp2
IF AFIELDS(mytest) = 16 .and. myp2 = 22
ELSE
MESSAGEBOX(sysmsg(1387),0,sysmsg(1385))
USE
myrei = .f.
ENDIF
ENDIF
USE
CATCH
MESSAGEBOX(sysmsg(1387),0,sysmsg(1385))
myrei = .f.
ENDTRY
IF .not. EMPTY(ALLTRIM(myalias))
SELECT (myalias)
IF .not. myrec = 0 .and. .not. RECCOUNT() = 0 .and. .not. myrec > RECCOUNT()
GOTO myrec
ENDIF
ENDIF
RETURN myrei