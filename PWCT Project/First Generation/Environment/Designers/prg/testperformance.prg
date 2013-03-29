*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\TESTPERFORMANCE.PRG
*:
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	Mahmoud Fayed
*:	Programming without coding technology 1.8 (Smart)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.8 (Smart)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   testperformance
*:   testperformance
testperformance()
*!******************************************************************************
*!
*! Procedure TESTPERFORMANCE
*!
*!  Calls
*!      myiid
*!
*!******************************************************************************
FUNCTION testperformance

	s1 = SECONDS()


	DIMENSION myiid(1)
	myiid(1) = "_10001"

	FOR x = 1 TO 1400

		nmax = ALEN(myiid,1)

		myadd = .T.

		FOR T = 1 TO nmax
			IF myiid(T) == ALLTRIM(STR(x))
				myadd = .F.
			ENDIF
		NEXT

		IF myadd = .T.
			DIMENSION myiid(ALEN(myiid,1)+1)

			myiid(ALEN(myiid,1)) = "_1000" + ALLTRIM(STR(x))
		ENDIF



	NEXT

	s2 = SECONDS()
	? s2 - s1
