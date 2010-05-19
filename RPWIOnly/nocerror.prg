PARAMETERS noe_myinput

IF EMPTY(noe_myinput)
STMSG(sysmsg(1546))
?? CHR(7)
RETURN .f.
ENDIF

RETURN .T.

