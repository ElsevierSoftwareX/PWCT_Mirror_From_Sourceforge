*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\GOALTORES.PRG
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
*:   goaltores
*:   arrstree
*:   arrdtree
*:   findgoals - used by HarbourPWCT
*:   mycodeex
*:   mygoalscode
*:   ss_arrtree
*:   myfastgoalscode - used by RPWI
*:   myfastcodeex - CALLED By findgoals - HarbourPWCT
*:   myfastcompress
*!******************************************************************************
*!
*! Procedure ARRSTREE
*!
*!******************************************************************************
FUNCTION arrstree() && arrange steps tree
	SELECT t38pic
	DELETE ALL
	PACK
	SELECT t38
	DIMENSION mytree(1,3)
	mytree(1,1) = "SP_"
	mytree(1,2) = "SP_"
	mytree(1,3) = 0
	IF .NOT. RECCOUNT() = 0
		SCAN
			DIMENSION mytree(ALEN(mytree,1)+1,3)
			mytree(ALEN(mytree,1),1) = ALLTRIM(parentid)
			mytree(ALEN(mytree,1),2) = ALLTRIM(stepid)
			mytree(ALEN(mytree,1),3) = RECNO()
		ENDSCAN
		GOTO BOTTOM
		IF .NOT. ALEN(mytree,1) = 0
			ss_arrtree()
			myend = ALEN(mytree,1)
			FOR x2 = 1 TO myend
				IF .NOT. mytree(x2,3) == 0
					GOTO mytree(x2,3)
					SELECT t38pic
					APPEND BLANK
					REPLACE goalid WITH ALLTRIM(t38->goalid)
					REPLACE stepid WITH ALLTRIM(t38->stepid)
					REPLACE stepname WITH t38->stepname
					REPLACE parentid WITH ALLTRIM(t38->parentid)
					REPLACE stepdis WITH t38->stepdis
					REPLACE stepdata WITH t38->stepdata
					REPLACE stepcode WITH t38->stepcode
					REPLACE stepana WITH t38->stepana
					REPLACE stepinf WITH t38->stepinf
					REPLACE stepinfo WITH t38->stepinfo
					REPLACE stephis WITH t38->stephis
					REPLACE stepinterid WITH t38->stepinterid
					REPLACE stepinternum WITH t38->stepinternum
					SELECT t38
				ENDIF
			NEXT
		ENDIF
	ENDIF
	SELECT t38
	DELETE ALL
	PACK
	SELECT t38pic
	SCAN
		SELECT t38
		APPEND BLANK
		REPLACE goalid WITH ALLTRIM(t38pic->goalid)
		REPLACE stepid WITH ALLTRIM(t38pic->stepid)
		REPLACE stepname WITH t38pic->stepname
		REPLACE parentid WITH ALLTRIM(t38pic->parentid)
		REPLACE stepdis WITH t38pic->stepdis
		REPLACE stepdata WITH t38pic->stepdata
		REPLACE stepcode WITH t38pic->stepcode
		REPLACE stepana WITH t38pic->stepana
		REPLACE stepinf WITH t38pic->stepinf
		REPLACE stepinfo WITH t38pic->stepinfo
		REPLACE stephis WITH t38pic->stephis
		REPLACE stepinterid WITH t38pic->stepinterid
		REPLACE stepinternum WITH t38pic->stepinternum
		SELECT t38pic
	ENDSCAN
	GOTO BOTTOM
	RETURN

*!******************************************************************************
*!
*! Procedure ARRDTREE
*!
*!******************************************************************************
FUNCTION arrdtree() && arrange domain tree
	SELECT t34pic
	DELETE ALL
	PACK
	SELECT t34
	DIMENSION mytree(1,3)
	mytree(1,1) = "0_"
	mytree(1,2) = "0_"
	mytree(1,3) = 0
	IF .NOT. RECCOUNT() = 0
		SCAN
			DIMENSION mytree(ALEN(mytree,1)+1,3)
			mytree(ALEN(mytree,1),1) = ALLTRIM(parentid)
			mytree(ALEN(mytree,1),2) = ALLTRIM(childid)
			mytree(ALEN(mytree,1),3) = RECNO()
		ENDSCAN
		GOTO BOTTOM
		IF .NOT. ALEN(mytree,1) = 0
			ss_arrtree()
			myend = ALEN(mytree,1)
			FOR x2 = 1 TO myend
				IF .NOT. mytree(x2,3) == 0
					GOTO mytree(x2,3)
					SELECT t34pic
					APPEND BLANK
					REPLACE childid WITH ALLTRIM(t34->childid)
					REPLACE domainname WITH t34->domainname
					REPLACE parentid WITH ALLTRIM(t34->parentid)
					SELECT t34
				ENDIF
			NEXT
		ENDIF
	ENDIF
	SELECT t34
	DELETE ALL
	PACK
	SELECT t34pic
	SCAN
		SELECT t34
		APPEND BLANK
		REPLACE childid WITH ALLTRIM(t34pic->childid)
		REPLACE domainname WITH t34pic->domainname
		REPLACE parentid WITH ALLTRIM(t34pic->parentid)

		SELECT t34pic
	ENDSCAN
	GOTO BOTTOM
	RETURN


*!******************************************************************************
*!
*! Procedure FINDGOALS
*!
*!******************************************************************************
FUNCTION findgoals(p1)
	LOCAL myret,myalias,myrec
	myalias = ALIAS()
	myrec = RECNO()
	myret = ""
	SELECT t33
	SCAN
		IF UPPER(ALLTRIM(goaltype)) = "OVERRIDE"
			myp1 = "Code Unit : Circuits\" + ALLTRIM(circuitname)+;
				"\"+ALLTRIM(branchname)+"\"+ALLTRIM(resistancename)
			IF UPPER(ALLTRIM(p1)) == UPPER(ALLTRIM(myp1))

				errmap2(err2_t,1) = "Circuits\" + ALLTRIM(circuitname)+;
					"\"+ALLTRIM(branchname)+"\"+ALLTRIM(resistancename)
				errmap2(err2_t,2) = ALLTRIM(goalname)
				err2_t = err2_t + 1
				DIMENSION errmap2(err2_t,2)

				myfh1 = ""
				*	MYRET = MYCODEEX("Circuits\" + ALLTRIM(CIRCUITNAME)+"\"+ALLTRIM(BRANCHNAME)+"\"+ALLTRIM(RESISTANCENAME))
				stmsg("Compiling Resistance : " + "Circuits\" + ALLTRIM(circuitname)+"\"+ALLTRIM(branchname)+"\"+ALLTRIM(resistancename) )
				myret = myfastcodeex("Circuits\" + ALLTRIM(circuitname)+"\"+ALLTRIM(branchname)+"\"+ALLTRIM(resistancename))


				myret = myfh1 + myret  + CHR(13) + CHR(10)
			ENDIF
		ENDIF
	ENDSCAN
	GOTO BOTTOM
	TRY
		SELECT (myalias)
		GOTO myrec
	CATCH
	ENDTRY
	RETURN myret

*!******************************************************************************
*!
*! Procedure MYCODEEX
*!
*!******************************************************************************
FUNCTION mycodeex(mypara1) && MYPARA1 = CIRCUIT ADDRESS
	PRIVATE mytree
	SELECT t33
	myfh = ""
	SELECT t38
	SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle)
	GOTO TOP
	DIMENSION mytree(1,3)
	mytree(1,1) = "SP_"
	mytree(1,2) = "SP_"
	mytree(1,3) = 0
	IF .NOT. RECCOUNT() = 0
		SCAN
			DIMENSION mytree(ALEN(mytree,1)+1,3)
			mytree(ALEN(mytree,1),1) = ALLTRIM(parentid)
			mytree(ALEN(mytree,1),2) = ALLTRIM(stepid)
			mytree(ALEN(mytree,1),3) = RECNO()
		ENDSCAN
		GOTO BOTTOM
		IF .NOT. ALEN(mytree,1) = 0
			ss_arrtree()
			myend = ALEN(mytree,1)
			mydebug = .T.
			FOR x2 = 1 TO myend
				IF .NOT. mytree(x2,3) == 0
					GOTO mytree(x2,3)
					IF stepdis = .F.
						errmap3(err3_t,1) = mypara1
						errmap3(err3_t,2) = STRTRAN(ALLTRIM(stepname),'"',"'")
						errmap3(err3_t,3) = 0
						errmap3(err3_t,4) = 0
						IF .NOT. EMPTY(ALLTRIM(stepcode))
							IF EMPTY(myfh)
								errmap3(err3_t,3) = MEMLINES(myfh) + 1
							ELSE
								errmap3(err3_t,3) = MEMLINES(myfh)
							ENDIF
							myfh= myfh + ALLTRIM(stepcode)
							errmap3(err3_t,4) =  errmap3(err3_t,3) + MEMLINES(ALLTRIM(stepcode)) - 2

						ENDIF
						err3_t = err3_t + 1
						DIMENSION errmap3(err3_t,4)
					ENDIF
				ENDIF
			NEXT
		ENDIF
	ENDIF
	SET FILTER TO
	GOTO TOP
	RETURN myfh

*!******************************************************************************
*!
*! Procedure MYGOALSCODE
*!
*!******************************************************************************
FUNCTION mygoalscode()
	PRIVATE mytree
	myfh = ""
	SELECT t33
	IF .NOT. RECCOUNT() = 0
		SCAN
			SELECT t38
			SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle)
			GOTO TOP
			DIMENSION mytree(1,3)
			mytree(1,1) = "SP_"
			mytree(1,2) = "SP_"
			mytree(1,3) = 0
			IF .NOT. RECCOUNT() = 0
				SCAN
					DIMENSION mytree(ALEN(mytree,1)+1,3)
					mytree(ALEN(mytree,1),1) = ALLTRIM(parentid)
					mytree(ALEN(mytree,1),2) = ALLTRIM(stepid)
					mytree(ALEN(mytree,1),3) = RECNO()
				ENDSCAN
				GOTO BOTTOM
				IF .NOT. ALEN(mytree,1) = 0
					ss_arrtree()
					myend = ALEN(mytree,1)
					mydebug = .T.
					FOR x2 = 1 TO myend
						IF .NOT. mytree(x2,3) == 0
							GOTO mytree(x2,3)
							IF stepdis = .F.
								IF .NOT. EMPTY(ALLTRIM(stepcode))
									myfh= myfh + ALLTRIM(stepcode)
								ENDIF
							ENDIF
						ENDIF
					NEXT
				ENDIF
			ENDIF
			SET FILTER TO
			GOTO TOP
			SELECT t33
		ENDSCAN
		GOTO bottom
		
	ENDIF
	
	SET PROCEDURE TO CGLevel2 additive
	oCGL2 = CREATEOBJECT("PWCT_CGLevel2")
	myfh2 = oCGL2.TabPushAndTabPop(myfh)
	
	RETURN myfh2


	*------------------------*
	* Arrange Tree           *
	*------------------------*
*!******************************************************************************
*!
*! Procedure SS_ARRTREE
*!
*!******************************************************************************

FUNCTION ss_arrtree()

	DIMENSION myda2(1,3)
	myda2(1,1) = mytree(1,1)
	myda2(1,2) = mytree(1,2)
	myda2(1,3) = mytree(1,3)
	
	syslogmsg("order start")
	syslogmsg("tree size : "+ ALLTRIM(STR(ALEN(mytree,1))))
	
	ss_depthfirst(1,.t.)

  syslogmsg("order end")
	
	syslogmsg("tree2 size : "+ ALLTRIM(STR(ALEN(myda2,1))))
	
	DIMENSION mytree(ALEN(myda2,1),3)
	ACOPY(myda2,mytree)
	
	syslogmsg("tree size : "+ ALLTRIM(STR(ALEN(mytree,1))))
	
Return

FUNCTION ss_DepthFirst(x,lstart)

	LOCAL t,nMax,nStart
    
  IF lstart = .f.
  	DIMENSION myda2(ALEN(myda2,1)+1,3)
  	nMax = ALEN(myda2,1)
		myda2(nMax,1) = mytree(x,1)
		myda2(nMax,2) = mytree(x,2)
		myda2(nMax,3) = mytree(x,3)
	ENDIF 
	
	nMax = ALEN(mytree,1)
	
	FOR t = 2 TO nMax

		IF ALLTRIM(mytree(t,1)) == ALLTRIM(mytree(x,2))
			ss_DepthFirst(t,.f.)
		ENDIF

	NEXT 

RETURN

FUNCTION old_ss_arrtree()

	LOCAL x,T,nItem,nMax
	
		&& MYTREE[N][1] = PARENT ID
		&& MYTREE[N][2] = ITEM ID
		&& MYTREE[N][3] = VALUE
		* mydarr is my arranged tree
		
		DIMENSION mydarr(1,3)
		* get first element , the root
		mydarr(1,1) = mytree(1,1)
		mydarr(1,2) = mytree(1,2)
		mydarr(1,3) = mytree(1,3)
		
		nMax = ALEN(mytree,1)
		FOR x = 1 TO nMax
		
		
				DIMENSION mydarr2(1,3)
				* ADD ELEMENTS FROM TOP ELEMENT TO CURRENT ELEMENT
				FOR T = 1 TO x
				
						DIMENSION mydarr2(T,3)
						mydarr2(T,1) = mydarr(T,1)
						mydarr2(T,2) = mydarr(T,2)
						mydarr2(T,3) = mydarr(T,3)
						
				NEXT
				
				myid = ALLTRIM(mydarr(x,2))
				* ADD SUCCESSOR
				FOR T = 2 TO ALEN(mytree,1)
				
						IF mytree(T,1) == myid
						
							DIMENSION mydarr2(ALEN(mydarr2,1)+1,3)
							nItem = ALEN(mydarr2,1)
							mydarr2(nItem,1) = mytree(T,1)
							mydarr2(nItem,2) = mytree(T,2)
							mydarr2(nItem,3) = mytree(T,3)
							
						ENDIF
						
				NEXT
				
				* ADD ELEMENTS THAT UNDER THE CURRENT ELEMENT
				FOR T = x+1 TO ALEN(mydarr,1)
			
					DIMENSION mydarr2(ALEN(mydarr2,1)+1,3)
					nItem = ALEN(mydarr2,1)
					mydarr2(nItem,1) = mydarr(T,1)
					mydarr2(nItem,2) = mydarr(T,2)
					mydarr2(nItem,3) = mydarr(T,3)
					
				NEXT
				
				DIMENSION mydarr(ALEN(mydarr2,1),3)
			  ACOPY(mydarr2,mydarr)
				
		
		NEXT 

		ACOPY(mydarr,mytree)
	
	RETURN


	******************************************************
	* version 1.5 (Speed)
	******************************************************
*!******************************************************************************
*!
*! Procedure MYFASTGOALSCODE
*!
*!******************************************************************************
FUNCTION myfastgoalscode() && USED BY RPWI Unit Only

	PRIVATE mytree

  * Determin VPL Name
  
  	sys_pkname = ""
  	
  	IF FILE(APPLICATION.DEFAULTFILEPATH+"\chpath.txt")

			sys_chfile = FILETOSTR(APPLICATION.DEFAULTFILEPATH+"\chpath.txt")

			sys_pkname = MLINE(sys_chfile,2)
			sys_pkname = ALLTRIM(sys_pkname)

		
    ENDIF 
    




	myfh = ""
	SELECT t33
	IF .NOT. RECCOUNT() = 0
		SCAN

			*********************** To support the Time Machine - i.e. to be able to run program from any time frame

			temp_tm_iid = -1

			DIMENSION sys_goalstimeframe(ALEN(sys_goalstimeframe,1),2)

			FOR x = 1 TO ALEN(sys_goalstimeframe,1)
				IF UPPER(ALLTRIM(sys_goalstimeframe(x,1))) == UPPER(ALLTRIM(goalname))
					temp_tm_iid = sys_goalstimeframe(x,2)
					EXIT
				ENDIF
			NEXT
			
			***********************

			SELECT t38
			IF .NOT. temp_tm_iid  = -1
				SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(stepinterid) <= temp_tm_iid
				GOTO TOP
				COUNT FOR ( ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(stepinterid) <= temp_tm_iid ) TO mysize
			ELSE
				SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle)
				GOTO TOP
				COUNT FOR ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) TO mysize
			ENDIF

			DIMENSION mytree(1,3)
			mytree(1,1) = "NOPARENT"
			mytree(1,2) = "SP_"
			mytree(1,3) = ""

			DIMENSION mytree(mysize+1,3)

			FOR T = 1 TO ALEN(mytree,1)
				mytree(T,1) = ""
				mytree(T,2) = ""
				mytree(T,3) = ""
			NEXT

			mytree(1,1) = "NOPARENT"
			mytree(1,2) = "SP_"
			mytree(1,3) = ""

			FOR T = 1 TO mysize
				mystate = mytree(T,2) && STEPID
				t2 = T+1  && PLACE TO INSERT BEFORE

				IF .NOT. temp_tm_iid  = -1
					SET FILTER TO ALLTRIM(t38->goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(t38->stepinterid) <= temp_tm_iid .AND. ALLTRIM(t38->parentid) == ALLTRIM(mystate)
					GOTO TOP
					COUNT FOR ( ALLTRIM(t38->goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(t38->stepinterid) <= temp_tm_iid .AND. ALLTRIM(t38->parentid) == ALLTRIM(mystate) ) TO mysize2
				ELSE

					SET FILTER TO ALLTRIM(t38->goalid) == ALLTRIM(t33->goalhandle) .AND. ALLTRIM(t38->parentid) == ALLTRIM(mystate)
					GOTO TOP
					COUNT FOR ALLTRIM(t38->goalid) == ALLTRIM(t33->goalhandle) .AND. ALLTRIM(t38->parentid) == ALLTRIM(mystate) TO mysize2
				ENDIF

				IF .NOT. mysize2 = 0
				
					SCAN

						AINS(mytree,t2)
						mytree(t2,1) = parentid
						mytree(t2,2) = stepid
						IF stepdis = .F.
							mytree(t2,3) = ALLTRIM(stepcode)
							
							IF EMPTY(ALLTRIM(stepinterid)) .and. UPPER(ALLTRIM(sys_pkname)) == "CPWCT"
								mytree(t2,3) = "/* " + ALLTRIM(stepname) + " */"+ CHR(13) + CHR(10)
							ENDIF 
							
						ELSE
							mytree(t2,3) = ""
						ENDIF

						t2 = t2+ 1

					ENDSCAN
					GOTO bottom
				ENDIF

			NEXT
			SET FILTER TO
			GOTO TOP
			SELECT t33

			myend = ALEN(mytree,1)
			FOR x = 1 TO myend
			* we do this process in a separate loop before code generation because we may modify previous lines in the generated loops
			* while the next loop do the generation process
			
								IF x-1 > 0
									IF (len(mytree(x-1,3)) > 5) .and. LEN(mytree(x,3)) > 5
										IF RIGHT(mytree(x-1,3),4) == "*/"+ CHR(13) + CHR(10)
											IF LEFT(mytree(x,3),3) = "/* "
												* merge the two comments in one comment
												mytree(x-1,3) = LEFT(mytree(x-1,3),LEN(mytree(x-1,3))-4) 
												mytree(x,3) = "** " + SUBSTR(mytree(x,3),3)
												IF LEFT(mytree(x-1,3),3) = "/* "
													mytree(x-1,3) = "/*"+CHR(13)+CHR(10)+"** "+SUBSTR(mytree(x-1,3),3)+CHR(13)+CHR(10)
												ENDIF 
												mytree(x,3) = LEFT(mytree(x,3),LEN(mytree(x,3))-4) + CHR(13) + CHR(10) + "*/"+CHR(13)+CHR(10)
											ENDIF 
										ENDIF 
									ENDIF 
								ENDIF 
			
			NEXT
			
	  	FOR x = 1 TO myend
			
				IF .not. EMPTY(ALLTRIM( mytree(x,3) ) ) .AND. .NOT. ALLTRIM( mytree(x,3) ) = CHR(13) + CHR(10)
					myfh = myfh + ALLTRIM( mytree(x,3) )
				ENDIF 
			NEXT

		ENDSCAN
		GOTO bottom
		
	ENDIF
	
	SET PROCEDURE TO CGLevel2 additive
	oCGL2 = CREATEOBJECT("PWCT_CGLevel2")
	myfh2 = oCGL2.TabPushAndTabPop(myfh)
	
	RETURN myfh2



*!******************************************************************************
*!
*! Procedure MYFASTCODEEX
*!
*!******************************************************************************
FUNCTION myfastcodeex(mypara1) && MYPARA1 = CIRCUIT ADDRESS
	LOCAL temp_tm_iid, x
	PRIVATE mytree

	SELECT t33
	myfh = ""

	*********************** To support the Time Machine - i.e. to be able to run program from any time frame


	temp_tm_iid = -1 && Time Machine is not used

	DIMENSION sys_goalstimeframe(ALEN(sys_goalstimeframe,1),2)

	FOR x = 1 TO ALEN(sys_goalstimeframe,1)
		IF UPPER(ALLTRIM(sys_goalstimeframe(x,1))) == UPPER(ALLTRIM(goalname))
			temp_tm_iid = sys_goalstimeframe(x,2)
			EXIT
		ENDIF
	NEXT

 

 
	***********************


	SELECT t38

	IF .NOT. temp_tm_iid  = -1
		COUNT FOR ( ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(stepinterid) <= temp_tm_iid ) TO mysize
	ELSE
		COUNT FOR ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) TO mysize
	ENDIF


	DIMENSION mytree(mysize+1,4)
	mytree(1,1) = "NOPARENT"
	mytree(1,2) = "SP_"
	mytree(1,3) = ""
	mytree(1,4) = "Start Point"

	FOR T = 1 TO mysize
		mystate = mytree(T,2) && STEPID
		t2 = T+1  && PLACE TO INSERT BEFORE
		IF .NOT. temp_tm_iid  = -1
			SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(stepinterid) <= temp_tm_iid .AND. ALLTRIM(parentid) == ALLTRIM(mystate)
			GOTO TOP
			COUNT FOR ( ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. VAL(stepinterid) <= temp_tm_iid .AND. ALLTRIM(parentid) == ALLTRIM(mystate) ) TO mysize2
		ELSE
			SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle)  .AND. ALLTRIM(parentid) == ALLTRIM(mystate)
			GOTO TOP
			COUNT FOR ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. ALLTRIM(parentid) == ALLTRIM(mystate) TO mysize2
		ENDIF

		IF .NOT. mysize2 = 0
			SCAN

				AINS(mytree,t2)
				mytree(t2,1) = parentid
				mytree(t2,2) = stepid
				IF stepdis = .F.
					mytree(t2,4) = ALLTRIM(stepname)
					mytree(t2,3) = ALLTRIM(stepcode)
				ELSE
					mytree(t2,3) = ""
					mytree(t2,4) = ""

				ENDIF

				t2 = t2+ 1

			ENDSCAN
			GOTO bottom
			

		ENDIF

	NEXT

	SET FILTER TO
	GOTO TOP

	IF .NOT. ALEN(mytree,1) = 0
		myend = ALEN(mytree,1)
		FOR x2 = 1 TO myend


			IF .NOT. EMPTY(ALLTRIM(mytree(x2,3))) .and. .not. ALLTRIM(mytree(x2,3)) = CHR(13) + CHR(10)
		
				***** Error System

				errmap3(err3_t,1) = mypara1
				errmap3(err3_t,2) = STRTRAN(ALLTRIM(mytree(x2,4)),'"',"'")
				errmap3(err3_t,3) = 0
				errmap3(err3_t,4) = 0

				IF EMPTY(myfh)
					errmap3(err3_t,3) = MEMLINES(myfh) + 1
				ELSE
					errmap3(err3_t,3) = MEMLINES(myfh)
				ENDIF

				myfh= myfh + ALLTRIM(mytree(x2,3))

				errmap3(err3_t,4) =  errmap3(err3_t,3) + MEMLINES(ALLTRIM(mytree(x2,3))) - 2


				err3_t = err3_t + 1
				DIMENSION errmap3(err3_t,4)


				*******************
				
			ENDIF

		NEXT
	ENDIF

	SELECT t33
	RETURN myfh



*!******************************************************************************
*!
*! Procedure MYFASTCOMPRESS
*!
*!******************************************************************************
FUNCTION myfastcompress()
	PRIVATE mytree
	myfh = ""
	SELECT t33
	IF .NOT. RECCOUNT() = 0
		SCAN

			SELECT t38
			SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle)
			GOTO TOP

			COUNT FOR ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) TO mysize
			DIMENSION mytree(1,3)
			mytree(1,1) = "NOPARENT"
			mytree(1,2) = "SP_"
			mytree(1,3) = 0

			DIMENSION mytree(mysize+1,3)
			mytree(1,1) = "NOPARENT"
			mytree(1,2) = "SP_"
			mytree(1,3) = 0

			FOR T = 1 TO mysize
				mystate = mytree(T,2) && STEPID
				t2 = T+1  && PLACE TO INSERT BEFORE
				SET FILTER TO ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. ALLTRIM(parentid) == ALLTRIM(mystate)
				GOTO TOP
				COUNT FOR ALLTRIM(goalid) == ALLTRIM(t33->goalhandle) .AND. ALLTRIM(parentid) == ALLTRIM(mystate) TO mysize2
				IF .NOT. mysize2 = 0
					SCAN

						AINS(mytree,t2)
						mytree(t2,1) = parentid
						mytree(t2,2) = stepid
						mytree(t2,3) = RECNO()

						t2 = t2+ 1

					ENDSCAN
					GOTO bottom
					
				ENDIF

			NEXT


			DELETE ALL


			IF .NOT. ALEN(mytree,1) = 0
				myend = ALEN(mytree,1)
				FOR x2 = 1 TO myend
					IF .NOT. mytree(x2,3) == 0
						GOTO mytree(x2,3)
						stmsg(ALLTRIM(stepname))
						RECALL
					ENDIF

				NEXT
			ENDIF

			SET FILTER TO
			GOTO TOP

			PACK


			SELECT t33

		ENDSCAN
		GOTO bottom
		
	ENDIF
	RETURN myfh
