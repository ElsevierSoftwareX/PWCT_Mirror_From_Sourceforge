TESTPERFORMANCE()
FUNCTION TESTPERFORMANCE

S1 = SECONDS()


DIMENSION MYIID(1)
MYIID(1) = "_10001"

FOR X = 1 TO 1400

NMAX = ALEN(MYIID,1)

MYADD = .T.

FOR T = 1 TO NMAX
	IF MYIID(T) == ALLTRIM(STR(X))
		MYADD = .F.
	ENDIF
NEXT

IF MYADD = .T.
DIMENSION MYIID(ALEN(MYIID,1)+1)

MYIID(ALEN(MYIID,1)) = "_1000" + ALLTRIM(STR(X))
ENDIF



NEXT

S2 = SECONDS()
? S2 - S1