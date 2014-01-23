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

 

DEFINE CLASS gd_stepscolors AS VPLRulesBase OF VPLRules.prg 
	
	lFindUsingIndex = .f.
	

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
	
	istate_reccount = 0
	
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

			IF t38->stepinternum = 1 .or. this.CheckAllowRoot() && Root

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
		if .not. n_Record = 0 .and. .not. n_Record > Reccount()
			GOTO n_record
		ENDIF 

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

		 
				cfile = this.GETCOMPONENTFILE()

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

							IF STRTRAN(UPPER(cline)," ","") == STRTRAN(UPPER(ALLTRIM(crule))," ","")
								myret = .T.
								EXIT
							ENDIF

						NEXT

					ENDIF

				ENDIF

			ENDIF


		ENDIF

		SELECT (c_table)
		if .not. n_Record = 0 .and. .not. n_Record > Reccount()
			GOTO n_record
		ENDIF 

		RETURN myret

		

		 
		PROCEDURE SaveStyle(objgdwindow)
				
				LOCAL cStyle,cStyleFile
				
				cStyle = ""
				
				cStyle = cStyle + "StepsTreeFontName : " + objGDWindow.container1.oletree.font.name + CHR(13) + CHR(10)
				cStyle = cStyle + "StepsTreeFontSize : " + ALLTRIM(STR(objGDWindow.container1.oletree.font.size)) + CHR(13) + CHR(10)
		
				IF objGDWindow.check3.value = .t.
	  			cStyle = cStyle + "SyntaxDirectedEditor : True" + CHR(13) + CHR(10)
				ELSE
					cStyle = cStyle + "SyntaxDirectedEditor : False" + CHR(13) + CHR(10)
				ENDIF
					
				cStyle = cStyle + "CreatedStepForeColor : " + ALLTRIM(STR(this.sc_created_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "CreatedStepBackColor : " + ALLTRIM(STR(this.sc_created_backcolor)) + CHR(13) + CHR(10)
				
				cStyle = cStyle + "GeneratedStepForeColor : " + ALLTRIM(STR(this.sc_generated_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "GeneratedStepBackColor : " + ALLTRIM(STR(this.sc_generated_backcolor)) + CHR(13) + CHR(10)
				
				cStyle = cStyle + "GeneratedRootStepForeColor : " + ALLTRIM(STR(this.sc_generatedroot_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "GeneratedRootStepBackColor : " + ALLTRIM(STR(this.sc_generatedroot_backcolor)) + CHR(13) + CHR(10)
				
				cStyle = cStyle + "GeneratedAllowSubStepForeColor : " + ALLTRIM(STR(this.sc_GeneratedAllowSub_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "GeneratedAllowSubStepBackColor : " + ALLTRIM(STR(this.sc_GeneratedAllowSub_backcolor)) + CHR(13) + CHR(10)
					
				cStyle = cStyle + "GeneratedAllowSubLeafStepForeColor : " + ALLTRIM(STR(this.sc_GeneratedAllowSubLeaf_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "GeneratedAllowSubLeafStepBackColor : " + ALLTRIM(STR(this.sc_GeneratedAllowSubLeaf_backcolor)) + CHR(13) + CHR(10)
			
			
				cStyle = cStyle + "GeneratedLeafStepForeColor : " + ALLTRIM(STR(this.sc_GeneratedLeaf_forecolor)) + CHR(13) + CHR(10)
				cStyle = cStyle + "GeneratedLeafStepBackColor : " + ALLTRIM(STR(this.sc_GeneratedLeaf_backcolor)) + CHR(13) + CHR(10) 
		
		   
						
				cStyleFile = JUSTPATH(APPLICATION.SERVERNAME)+"\Style.txt"
				
				STRTOFILE(cStyle,cStyleFile)
			
				stmsg("Style Saved")
				
		RETURN
		
		PROCEDURE LoadStyle(objgdwindow)

				LOCAL cStyle,cStyleFile
				LOCAL x,nMax
				LOCAL cLine,cAt,cCmd,cData
				LOCAL ARRAY aStyle(1)
				
				cStyleFile = JUSTPATH(APPLICATION.SERVERNAME)+"\Style.txt"
				
				syslogmsg("Loading style file...")
				
				
				IF FILE(cStyleFile)
				
						syslogmsg("Style file opened...")
				
						cStyle = FILETOSTR(cStyleFile)
						
						 
						nMax = ALINES(aStyle,cStyle)
						
						
						FOR x = 1 TO nMax
								
						 
								cLine = aStyle(x)
								
								nAt = AT(":",cLine)
								cCmd = LEFT(cLine,nAt-1)
								
								cData = SUBSTR(cLine,nAt+1)
								cData = ALLTRIM(cData)
								
								cCmd = UPPER(ALLTRIM(cCmd))
								
								IF cCmd = "STEPSTREEFONTNAME"
								
									syslogmsg("Style contains : Steps Tree Font Name")
				
									objGDWindow.container1.oletree.font.name = cData
									LOOP
								ENDIF
								
								IF cCmd = "STEPSTREEFONTSIZE"
								
									syslogmsg("Style contains : Steps Tree Font Size")
									
									objGDWindow.container1.oletree.font.size = VAL(cData)
									LOOP
								ENDIF
								
								
								
								IF cCmd = "SYNTAXDIRECTEDEDITOR"
								
									syslogmsg("Style contains : Syntex Directed Editor")
									
										IF UPPER(cData) == "TRUE"
											objGDWindow.check3.value = .T.
											obj_avoiderrors.lvisualcompiler = .T.
										ELSE
											objGDWindow.check3.value = .F.
											obj_avoiderrors.lvisualcompiler = .F.
										ENDIF
											
									LOOP
								ENDIF
								
								IF cCmd = "CREATEDSTEPFORECOLOR"
								
									syslogmsg("Style contains : Created Step ForeColor")
									this.sc_created_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "CREATEDSTEPBACKCOLOR"
								
									syslogmsg("Style contains : Created Step BackColor")
									this.sc_created_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDSTEPFORECOLOR"
								
									syslogmsg("Style contains : Generated Step ForeColor")
									this.sc_GENERATED_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDSTEPBACKCOLOR"
								
									syslogmsg("Style contains : Generated Step BackColor")
									this.sc_GENERATED_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDROOTSTEPFORECOLOR"
								
									syslogmsg("Style contains : GeneratedRoot Step ForeColor")
									this.sc_GENERATEDROOT_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDROOTSTEPBACKCOLOR"
								
									syslogmsg("Style contains : GeneratedRoot Step BackColor")
									this.sc_GENERATEDROOT_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDALLOWSUBSTEPFORECOLOR"
								
									syslogmsg("Style contains : GeneratedAllowSub Step ForeColor")
									this.sc_GENERATEDALLOWSUB_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDALLOWSUBSTEPBACKCOLOR"
								
									syslogmsg("Style contains : GeneratedAllowSub Step BackColor")
									this.sc_GENERATEDALLOWSUB_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDLEAFSTEPFORECOLOR"
								
									syslogmsg("Style contains : GeneratedLeaf Step ForeColor")
									this.sc_GENERATEDLEAF_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDLEAFSTEPBACKCOLOR"
								
									syslogmsg("Style contains : GeneratedLeaf Step BackColor")
									this.sc_GENERATEDLEAF_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDALLOWSUBLEAFSTEPFORECOLOR"
								
									syslogmsg("Style contains : GeneratedAllowSubLeaf Step ForeColor")
									this.sc_GENERATEDALLOWSUBLEAF_forecolor = VAL(cData)
									LOOP
									
								ENDIF
								
								IF cCmd = "GENERATEDALLOWSUBLEAFSTEPBACKCOLOR"
								
									syslogmsg("Style contains : GeneratedAllowSubLeaf Step BackColor")
									this.sc_GENERATEDALLOWSUBLEAF_backcolor = VAL(cData)
									LOOP
									
								ENDIF
								
								
						NEXT
						
						stmsg("Style Loaded")
						
				endif
				
		RETURN
		
		PROCEDURE NewStepsBlockStart()
		
			LOCAL cTableName,nRecord
			
			cTableName = ALIAS()
			nRecord = RECNO()
			
			SELECT t38
			this.istate_reccount = RECCOUNT()
		
			SELECT (cTableName)
			if .not. nRecord = 0 .and. .not. nRecord > Reccount()
					GOTO nRecord
			ENDIF 
			
		RETURN
		
		PROCEDURE NewStepsBlockEnd(objGDWindow)
		
			LOCAL istate_node,istate_recno,istate_max,istate_x
		
			LOCAL cTableName,nRecord
			LOCAL lLockStatus
			
			cTableName = ALIAS()
			nRecord = RECNO()
			
			* Set Colors for new steps

			SELECT t38

			IF RECCOUNT() > this.istate_reccount

				istate_node = objGDWindow.container1.oletree.SELECTEDITEM.KEY

				istate_recno = RECNO()
				istate_max = RECCOUNT()

				lLockStatus = objGDWindow.LOCKSCREEN
				objGDWindow.LOCKSCREEN = .T.


				FOR istate_x = this.istate_reccount + 1 TO istate_max
				
					SELECT t38
					GOTO istate_x
					TRY
						objGDWindow.container1.oletree.nodes.ITEM(ALLTRIM(t38->stepid)).SELECTED = .T.
						this.setstepcolor(objGDWindow)
					CATCH
					ENDTRY

				NEXT

				objGDWindow.LOCKSCREEN = lLockStatus

				TRY
					GOTO istate_recno
					objGDWindow.container1.oletree.nodes.ITEM(ALLTRIM(istate_node)).SELECTED = .T.
				CATCH
				ENDTRY

			ENDIF
	
			SELECT (cTableName)
			if .not. nRecord = 0 .and. .not. nRecord > Reccount()
					GOTO nRecord
			ENDIF 
			
	RETURN
	

ENDDEFINE
