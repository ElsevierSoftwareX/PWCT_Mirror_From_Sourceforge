*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\STEPSCOLORS.PRG
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
*:   stepscolors
* #define SC_UserStep_BackColor RGB(0,0,255)
* #define SC_UserStep_ForeColor RGB(255,255,255)

*:******************************************************************************
*:
*: Class:gd_stepscolors  BaseClass: CUSTOM
*:
*:******************************************************************************

DEFINE CLASS gd_stepscolors AS CUSTOM
	
	lFindUsingIndex = .f.
	
	nhiddensteps = 0

	sc_created_backcolor = RGB(184,134,11)
	sc_created_forecolor = RGB(255,255,255)

	sc_generated_backcolor = RGB(255,255,255)
	sc_generated_forecolor = RGB(0,0,0)

	sc_generatedroot_backcolor = RGB(0,0,255)
	sc_generatedroot_forecolor = RGB(255,255,255)

	sc_generatedallowsub_backcolor = RGB(0,255,0)
	sc_generatedallowsub_forecolor = RGB(0,0,0)

	sc_generatedleaf_backcolor = RGB(255,255,255)
	sc_generatedleaf_forecolor = RGB(0,0,0)

	sc_generatedallowsubleaf_backcolor = RGB(0,255,0)
	sc_generatedallowsubleaf_forecolor = RGB(0,0,0)
	
	PROCEDURE checksamecolor()

		LOCAL lret

		lret = .F.

		IF THIS.sc_created_backcolor = THIS.sc_generated_backcolor .AND. ;
				THIS.sc_generated_backcolor = THIS.sc_generatedroot_backcolor .AND. ;
				THIS.sc_generatedroot_backcolor = THIS.sc_generatedallowsub_backcolor .AND. ;
				THIS.sc_generatedallowsub_backcolor = THIS.sc_generatedleaf_backcolor .AND. ;
				THIS.sc_generatedleaf_backcolor = THIS.sc_generatedallowsubleaf_backcolor .AND. ;
				THIS.sc_created_forecolor = THIS.sc_generated_forecolor .AND. ;
				THIS.sc_generated_forecolor = THIS.sc_generatedroot_forecolor .AND. ;
				THIS.sc_generatedroot_forecolor = THIS.sc_generatedallowsub_forecolor .AND. ;
				THIS.sc_generatedallowsub_forecolor = THIS.sc_generatedleaf_forecolor .AND. ;
				THIS.sc_generatedleaf_forecolor= THIS.sc_generatedallowsubleaf_forecolor

			lret = .T.

		ENDIF


		RETURN lret


	PROCEDURE setstepcolor(objgdwindow)

		LOCAL nsteptype
		LOCAL cmykey

		cmykey = ALLTRIM(t38->stepid)

		IF THIS.checksamecolor() = .F.

			nsteptype = THIS.determinesteptype()

			DO CASE

			CASE nsteptype = 1 && Created

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_created_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_created_forecolor

			CASE nsteptype = 2 && Generated

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_generated_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_generated_forecolor

			CASE nsteptype = 3 && Generated (Root)

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_generatedroot_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_generatedroot_forecolor

			CASE nsteptype = 4 && Generated (AllowSub)

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_generatedallowsub_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_generatedallowsub_forecolor


			CASE nsteptype = 5 && Generated leaf

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_generatedleaf_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_generatedleaf_forecolor


				* hide steps that uses that same font color and backcolor
				IF THIS.sc_generatedleaf_backcolor = THIS.sc_generatedleaf_forecolor
					objgdwindow.container1.oletree.nodes.REMOVE(cmykey)
  			ENDIF

			CASE nsteptype = 6 && Generated Allow Sub & leaf

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_generatedallowsubleaf_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_generatedallowsubleaf_forecolor

				* hide steps that uses that same font color and backcolor
				IF THIS.sc_generatedallowsubleaf_backcolor = THIS.sc_generatedallowsubleaf_forecolor
					objgdwindow.container1.oletree.nodes.REMOVE(cmykey)
				ENDIF


			ENDCASE

		ELSE

				objgdwindow.container1.oletree.nodes.ITEM(cmykey).BACKCOLOR = THIS.sc_created_backcolor
				objgdwindow.container1.oletree.nodes.ITEM(cmykey).FORECOLOR = THIS.sc_created_forecolor

		ENDIF


		RETURN nsteptype

		****************************************************************

	PROCEDURE determinesteptype()

		LOCAL myret
		LOCAL c_tablename,n_record
		LOCAL cstepid

		LOCAL ckey

		c_tablename = ALIAS()

		SELECT t38
		cstepid = t38->stepid
		n_record = RECNO()

		IF EMPTY(t38->stepinterid)
			myret = 1 && Created
		ELSE

			myret = 2 && Generated

			IF t38->stepinternum = 1 && Root

				myret = 3 && Generated (root)

			ENDIF

			IF THIS.checknewstep() = .T.

				myret = 4 && Generated (Allow Sub)

				SELECT t38
				GOTO TOP

			IF THIS.lFindUsingIndex = .f.
					LOCATE FOR ALLTRIM(t38->parentid) == ALLTRIM(cstepid)
			ELSE
			 			THIS.IndexFindParentID(ALLTRIM(cStepID))
			ENDIF
				
				IF .NOT. FOUND()
					myret = 6 && Generated Allow Sub & Leaf
				ENDIF


			ENDIF

			IF myret = 2



				SELECT t38
				GOTO TOP
		 IF THIS.lFindUsingIndex = .f.
								LOCATE FOR ALLTRIM(t38->parentid) == ALLTRIM(cstepid)
			 	ELSE
						this.IndexFindParentID(ALLTRIM(cStepID))
				ENDIF
				
				IF .NOT. FOUND()
					myret = 5 && Generated (Leaf)
				ENDIF


			ENDIF

		ENDIF

		SELECT t38
		GOTO n_record

		SELECT (c_tablename)


		RETURN myret


	PROCEDURE checknewstep()

		LOCAL c_table,n_record

		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule
		LOCAL cinterid
		LOCAL aRules 
		
		c_table = ALIAS()
		n_record = RECNO()

		myret = .F.

		IF .NOT. EMPTY(t38->stepinterid)

			cinternum = ALLTRIM(STR(t38->stepinternum))
			cinterid = ALLTRIM(t38->stepinterid)

			SELECT t46

			GOTO TOP
			
		IF THIS.lFindUsingIndex = .f.
						LOCATE FOR ALLTRIM(f_iid) == ALLTRIM(cinterid)
			ELSE
						This.IndexFindIID(cInterID)
			ENDIF

			IF FOUND()

		 
				cfile = UPPER(ALLTRIM(MLINE(f_myhis,9)))

				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = this.myFILETOSTR(cfile)
						
						crules = UPPER(crules)

						DIMENSION aRules(1)
				
						nMax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax

							cline = aRules(x)
							cline = ALLTRIM(cline)
							crule = "AllowInteraction: " + cinternum

							IF UPPER(cline) == UPPER(ALLTRIM(crule))
								myret = .T.
								EXIT
							ENDIF

						NEXT

					ENDIF

				ENDIF

			ENDIF


		ENDIF

		SELECT (c_table)
		GOTO n_record

		RETURN myret

		PROCEDURE myfiletostr(cFileName)

			LOCAL cJustName,x,nMax 
	 	
			cFileName = UPPER(ALLTRIM(cFileName))
			cJustName = JUSTFNAME(cFileName)
	 	 cJustName = LEFT(cJustName,LEN(cJustName)-6) && remove .Rules
	 	 
	 	 nMax = ASCAN( aFilesData, cJustName,-1,-1, 1, 8)
	 	 
 		 IF .not. nMax = 0
					return aFilesData(nMax,2)
		  ENDIF
	

				nMax = ALEN( aFilesData , 1) + 1
				DIMENSION aFilesData(nMax,2)
			
				aFilesData(nMax,1) = cJustName
				aFilesData(nMax,2) = FILETOSTR(cFileName)
				
		 return aFilesData(nMax,2)

		PROCEDURE CreateMyIndex()
		
		 
				
				This.DeleteMyIndex() 
				
				SELECT t38
				
				INDEX on stepid TAG mystepid
				INDEX on parentid TAG myparentid
				
				SELECT T46
				
				INDEX ON F_IID TAG myIID
		 
				
		RETURN
		
		PROCEDURE  IndexFindStepID(cID)
		  
				SELECT t38
				seek cID ORDER tag mystepid
				
		RETURN
		
		PROCEDURE IndexFindParentID(cID)
	 
				SELECT t38
				seek cID ORDER tag myparentid
				
		RETURN
		
		PROCEDURE  IndexFindIID(cID)
	 
				SELECT t46
				seek cID ORDER tag myIID
				
		RETURN
		
		PROCEDURE DeleteMyIndex()
		
				LOCAL cTableName,nRecord,nRecord2
				
 
			
				
				SELECT t38
 
				
				TRY 
						DELETE TAG mystepid
						DELETE TAG myparentid
				CATCH 
				ENDTRY 
				
		 
				
				SELECT t46
		 
				TRY
					 DELETE TAG myIID
				CATCH
				ENDTRY
				
 
					
		RETURN
		

ENDDEFINE
