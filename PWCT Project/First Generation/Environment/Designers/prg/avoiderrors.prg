*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\AVOIDERRORS.PRG
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
*:   avoiderrors
* command3 : move up
* command4 : move down
* command10 : cut
* command8 : copy
* check1 : ignore
* command2 : delete
* COMMAND5 : Interact

*:******************************************************************************
*:
*: Class:gd_avoiderrors  BaseClass: CUSTOM
*:
*:******************************************************************************

 

DEFINE CLASS gd_avoiderrors AS VPLRulesBase OF VPLRules.prg

	lvisualcompiler = .T.

	nParentScope = 0 && 0 = not determined   1 = General   2 = Custom
	
	cDuplicationComponent = "NoComponent" && component file (*.TRF)
	cDuplicationVariable = "" 
	cDuplicationScope = "NotDetermined"  && Not Determined  or General (All the content of the visual source file) or Parent (Parent step only)
	
	lCheckNewDuplication = .f.
  cDuplicationParentID = "NotDetermined"
  
  lFixDuplication = .f.
  cDuplicationName = "Name"
  lNoFix = .f.
  lThereisDuplication = .f.
  
  Dimension aDuplicationList(1,2)
  
	PROCEDURE avoidgeneratedsteperrors(objgdwindow)
	
		LOCAL objgdwindow AS FORM
		
		LOCAL result

		LOCAL lGenerated
		
		IF .NOT. EMPTY(t38->stepinterid)
				lGenerated = .T.
		ELSE
				lGenerated = .F.
		ENDIF
				
		
		IF lGenerated = .T. .AND.  t38->stepinternum != 1  .AND. THIS.lvisualcompiler = .T. .and. this.checkAllowRoot() = .f.
				
			objgdwindow.command3.ENABLED = .F.
			objgdwindow.command4.ENABLED = .F.
			objgdwindow.command10.ENABLED = .F.
			objgdwindow.command8.ENABLED = .F.
			objgdwindow.check1.ENABLED = .F.
			objgdwindow.command2.ENABLED = .F.
			
		ELSE
		
			objgdwindow.command3.ENABLED = .T.
			objgdwindow.command4.ENABLED = .T.
			objgdwindow.command10.ENABLED = .T.
			objgdwindow.command8.ENABLED = .T.
			objgdwindow.check1.ENABLED = .T.
			objgdwindow.command2.ENABLED = .T.
			
		ENDIF

		IF lGenerated = .T. .AND. THIS.lvisualcompiler = .T.

			result = THIS.checknewstep()

			* new step
			objgdwindow.command1.ENABLED = result
			* Interact
			objgdwindow.command5.Visible = result
			* paste
			objgdwindow.command9.ENABLED = result
			
		ELSE
		
			* new step
			objgdwindow.command1.ENABLED = .T.
			* Interact
			objgdwindow.command5.Visible = .T.
			* paste
			objgdwindow.command9.ENABLED = .T.
			
			
		ENDIF

		* MOVE DOWN
		IF objgdwindow.command4.ENABLED = .T.
			IF ISNULL( objgdwindow.container1.oletree.nodes.ITEM(objgdwindow.container1.oletree.SELECTEDITEM.KEY).NEXT )
				objgdwindow.command4.ENABLED = .F.
			ENDIF
		ENDIF

		* MOVE UP
		IF objgdwindow.command3.ENABLED = .T.
			IF ISNULL( objgdwindow.container1.oletree.nodes.ITEM(objgdwindow.container1.oletree.SELECTEDITEM.KEY).previous )
				objgdwindow.command3.ENABLED = .F.
			ENDIF
		ENDIF

		IF objgdwindow.container1.oletree.SELECTEDITEM.KEY = "SP_"
		
			* new step
			objgdwindow.command1.ENABLED = .T.
			* Interact
			objgdwindow.command5.Visible = .F.
			* paste
			objgdwindow.command9.ENABLED = .T.

  		* MOVE DOWN
			objgdwindow.command4.ENABLED = .F.
			
			* MOVE UP
			objgdwindow.command3.ENABLED = .F.
			
			* Enable/Disable
			objgdwindow.check1.ENABLED = .F.
			
			* Cut
			objgdwindow.command10.ENABLED = .T.
			
			* Copy
			objgdwindow.command8.ENABLED = .T.
			
			objgdwindow.command11.VISIBLE = .F. && MODIFY
			
			objgdwindow.command6.ENABLED = .F.
			
	  	objgdwindow.command2.ENABLED = .T.
			
		ELSE
			
			IF	lGenerated = .f.

				objgdwindow.command11.VISIBLE = .F. && MODIFY
				
				objgdwindow.check1.ENABLED = .T.
				
				objgdwindow.command6.ENABLED = .T.  && EDIT STEP
				
				objgdwindow.command2.ENABLED = .T. && delete 
		
			ELSE
			
				objgdwindow.command11.VISIBLE = .T. && MODIFY
				
			ENDIF
			
			
		ENDIF
		


		RETURN


	 


	PROCEDURE taskonstepsinthesameinteraction(ogdwindow,cprocname)
		LOCAL PREC,mykeyrecarr,looprs,loopre,myid,myres,myend,x,myrecnum,mynewlooprs,myrec,T
		LOCAL c_table,n_record
		LOCAL myiid

		c_table = ALIAS()
		n_record = RECNO()

		SELECT t38

		*********************************************************
		PREC = RECNO()
		DIMENSION mykeyrecarr(1,4)
		mykeyrecarr(1,1) = t38->stepid
		mykeyrecarr(1,2) = PREC
		mykeyrecarr(1,3) = t38->stepinterid
		mykeyrecarr(1,4) = t38->stepinternum

		looprs = ALEN(mykeyrecarr,1)
		loopre = 0
		SELECT t38
		SET FILTER TO UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
		GOTO TOP
		DO WHILE looprs != loopre
			looprs = ALEN(mykeyrecarr,1)
			SELECT t38
			SCAN
				* search if item is in select branch of tree or belong to the same interaction
				myid = t38->parentid
				myiid = t38->stepinterid
				myres = .F.
				myend = ALEN(mykeyrecarr,1)
				FOR x = 1 TO myend
					IF UPPER(ALLTRIM(mykeyrecarr(x,1))) == UPPER(ALLTRIM(myid))
						myres = .T.
						EXIT
					ENDIF
					IF .NOT. EMPTY(ALLTRIM(myiid))
						IF UPPER(ALLTRIM(mykeyrecarr(x,3))) == UPPER(ALLTRIM(myiid))
							myres = .T.
							EXIT
						ENDIF

					ENDIF

				NEXT
				*******************************
				* be sure that this record is not added before
				myrecnum = RECNO()
				myend = ALEN(mykeyrecarr,1)
				FOR x = 1 TO myend
					IF mykeyrecarr(x,2) = myrecnum
						myres = .F.
						EXIT
					ENDIF
				NEXT
				IF myres = .T.
					mynewlooprs = ALEN(mykeyrecarr,1) + 1
					DIMENSION mykeyrecarr(mynewlooprs,4)
					mykeyrecarr(mynewlooprs,1) = t38->stepid
					mykeyrecarr(mynewlooprs,2) = myrecnum
					mykeyrecarr(mynewlooprs,3) = t38->stepinterid
					mykeyrecarr(mynewlooprs,4) = t38->stepinternum
				ENDIF
			ENDSCAN
			GOTO BOTTOM
			loopre = ALEN(mykeyrecarr,1)
		ENDDO
		myend = ALEN(mykeyrecarr,1)


		FOR T = myend TO 1 STEP -1
			myrec = mykeyrecarr(T,2)
			IF .NOT. myrec = 0
				SELECT t38
				GOTO myrec


				************** Task

				&cprocname(ogdwindow)


				****************************


			ENDIF
		NEXT


		*--------------------------*

		SELECT (c_table)
		GOTO n_record

		RETURN

	PROCEDURE ignorestep(ogdwindow)

		SELECT t38
		REPLACE stepdis WITH ogdwindow.check1.VALUE

		TRY && AVOID ERROR WHEN CANN'T SELECT A REMOVED STEP (STEP REMOVED BY COLORS SYSTEM (READ MODE) )
			ogdwindow.oletree.nodes.ITEM(ALLTRIM(stepid)).SELECTED = .T.
			IF  ogdwindow.check1.VALUE = .T.
				ogdwindow.container1.oletree.SELECTEDITEM.IMAGE = "ignore"
			ELSE

				IF EMPTY(ALLTRIM(stepinterid))
					ogdwindow.container1.oletree.SELECTEDITEM.IMAGE = "person"
				ELSE
					ogdwindow.container1.oletree.SELECTEDITEM.IMAGE = "cmd"
				ENDIF
			ENDIF
		CATCH
		ENDTRY

		RETURN

	PROCEDURE deletestep(ogdwindow)
		IF DELETED() = .F.

			TRY && AVOID ERROR WHEN CANN'T SELECT A REMOVED STEP (STEP REMOVED BY COLORS SYSTEM (READ MODE) )
				ogdwindow.oletree.nodes.REMOVE(UPPER(ALLTRIM(stepid)))
			CATCH
			ENDTRY

			DELETE
		ENDIF
		RETURN

	PROCEDURE checknewstep()

		LOCAL c_table,n_record

		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule
		LOCAL ARRAY aRules[1]
		
		
		IF THIS.lvisualcompiler = .F.
			RETURN .T.
		ENDIF

		c_table = ALIAS()
		n_record = RECNO()

		* Don't allow creating new step from a disabled component
		SELECT t38
		IF t38->stepdis = .T.
			SELECT (c_table)
			GOTO n_record
			RETURN .F.
		ENDIF
		*********************************************************

		myret = .F.

		cinternum = ALLTRIM(STR(t38->stepinternum))

		SELECT t46

		IF .NOT. EMPTY(t38->stepinterid)

			GOTO TOP
				
			IF THIS.lFindUsingIndex = .f.		
					LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			ELSE
				  This.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
			ENDIF
			

			IF FOUND()

				chis = f_myhis
		 
				cFile = this.GETCOMPONENTFILE()
				
				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = this.myFILETOSTR(cfile)
						crules = UPPER(crules)

					 
						nMax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax

						 
							cLine = aRules(x)
							
							cline = ALLTRIM(cline)
							crule = "AllowInteraction: " + cinternum

							IF UPPER(ALLTRIM(cline)) == UPPER(ALLTRIM(crule))
								myret = .T.
								EXIT
							ENDIF

						NEXT

					ELSE
						stmsg( " (Check New Step) Cann't find the Rules file : " + cfile )
						myret = .T.
					ENDIF

				ENDIF

			ENDIF


		ENDIF

		SELECT (c_table)
		GOTO n_record

		RETURN myret


	PROCEDURE isthisstepistheroot()

	* is this step belong to SP_ (Start Point) without generated step between them
	* for example when the user create a step called (The First Step) from the start point
	* Then the step (The First Step) is considered (The Root) because this step belong to 
	* the start point without any of the generated step between them
	
		LOCAL  c_table,n_record,n_record2
		LOCAL myret,lcont,cparent

		myret = .F.

		c_table = ALIAS()
		n_record = RECNO()

		SELECT t38

		n_record2 = RECNO()


		IF  EMPTY(t38->stepinterid)

			myret = .T.

			lcont = .T.
			cparent = t38->parentid

			DO WHILE lcont = .T.

				GOTO TOP

				IF THIS.lFindUsingIndex = .f.		
						LOCATE FOR ALLTRIM(t38->stepid) == ALLTRIM(cparent)
				ELSE
						THIS.IndexFindStepID(ALLTRIM(cparent))
				ENDIF
				

				IF FOUND()

					IF .NOT. EMPTY(t38->stepinterid)
						myret = .F.
						lcont = .F.
					ELSE
						lcont = .T.
						cparent = t38->parentid
					ENDIF
				ENDIF

				IF UPPER(ALLTRIM(cparent)) == "SP_"
					lcont = .F.
				ENDIF


			ENDDO
		ENDIF

		GOTO n_record2


		SELECT (c_table)
		GOTO n_record


		RETURN myret

		PROCEDURE GetRealStepParent()
		
		* When we cut a step and paste it inside another step we need to check the parent step component
		* if the parent is a created step we must go to it's parent until we find a generated step or we become sure that the step belong to the root
		
				LOCAL nParentRec && STEPID OF THE REAL PARENT
				LOCAL cTableName,nRecord,nRecord2
				LOCAL lCont,cParent
				
				cTableName = ALIAS()
				nRecord = RECNO()
				
				nParentRec = 0
				
				SELECT t38

				nRecord2 = RECNO()


				IF  EMPTY(t38->stepinterid)

					nParentRec = 0
					
					lcont = .T.
					cparent = t38->parentid

					DO WHILE lcont = .T.

						GOTO TOP

						IF THIS.lFindUsingIndex = .f.	
								LOCATE FOR ALLTRIM(t38->stepid) == ALLTRIM(cparent)
						ELSE
								THIS.IndexFindStepID(ALLTRIM(cparent))
						ENDIF
						

						IF FOUND()

							IF .NOT. EMPTY(t38->stepinterid)

								nParentRec = RECNO()
								lcont = .F.
								
							ELSE
							
								lcont = .T.
								cparent = t38->parentid
								
							ENDIF
							
						ENDIF

						IF UPPER(ALLTRIM(cparent)) == "SP_"
							lcont = .F.
						ENDIF


					ENDDO
					
			  ELSE
			  			nParentRec = RECNO()
				ENDIF

				SELECT t38
				GOTO nRecord2


				SELECT (cTableName)
				GOTO nRecord
		
		RETURN nParentRec
		
		PROCEDURE GetRealStepChild()
		RETURN
		

	* used to know if this component allow any child (general) or not
	* used by the VPL Compiler to avoid doing unrequired checks when the scope is general
	
	PROCEDURE checkIsScopeGeneral()
		
		LOCAL c_table,n_record
		LOCAL cInterNum,chis,cfile,cacfile,crules,cline,x,nmax,crule,t 
		LOCAL ARRAY aRules[1]
		
		c_table = ALIAS()
		n_record = RECNO()
		
		cinternum = ALLTRIM(STR(t38->stepinternum))

		SELECT t46
		GOTO TOP
		
		IF .NOT. EMPTY(t38->stepinterid)

			IF THIS.lFindUsingIndex = .f.	
					LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			ELSE
					this.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
			ENDIF
			
			IF FOUND()

				chis = f_myhis
		 
				cFile = this.GETCOMPONENTFILE()
				cacfile = cfile

				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = this.myFILETOSTR(cfile)
						crules = UPPER(crules)

				 
						
						nmax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax
						
					 
							cLine = aRules(x)
							cline = ALLTRIM(cline)
							crule = "AllowInteraction: " + cinternum
							
							IF UPPER(ALLTRIM(cline)) == UPPER(ALLTRIM(crule))


								FOR T = x TO nmax

					 
									cline = aRules(T)
									
									cline = UPPER(ALLTRIM(cline))

									crule = "SCOPE:"
									
									IF LEFT(cline,6) == crule
									
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										
										IF cline == "GENERAL"
												
											RETURN .t.
									 
										ENDIF
										
									ENDIF
									
							 NEXT
							 
					 	ENDIF
					 	
				 NEXT
				 ENDIF
			ENDIF
		ENDIF
	ENDIF
	
	SELECT (c_table)
  GOTO n_record
  
 RETURN .f.
	

	PROCEDURE checksubcomponent(ccomponentfile)

		LOCAL c_table,n_record
		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule,T
		LOCAL cacfile
		LOCAL nRecord2,lParentChanged
		LOCAL ARRAY aRules[1]
		
		this.nParentScope = 0 && not determined
		
		* this procedure is called from the components browser window
		* Also called from Goal Designer - Paste button
		* Also called from the VPL Compiler

		* if the syntax directed editor is disabled
		
		IF THIS.lvisualcompiler = .F. .OR. THIS.isthisstepistheroot() = .T.
			RETURN .T.
		ENDIF


		c_table = ALIAS()
		n_record = RECNO()

		myret = .F.

  	lParentChanged = .f.
		IF EMPTY(t38->stepinterid)
				X = THIS.GetRealStepParent()
				IF .NOT. X = 0
					SELECT t38
					nRecord2 = RECNO()
					GOTO x 
					lParentChanged = .t.
					syslogmsg(" Check sub component - parent changed ")
				ENDIF
		ENDIF
		
		* Load the rules of the active component (will be the parent) and save the component file to variable cACFile

		cinternum = ALLTRIM(STR(t38->stepinternum))

		
		SELECT t46
		GOTO TOP
		
		IF .NOT. EMPTY(t38->stepinterid)
			IF THIS.lFindUsingIndex = .f.	
						LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			ELSE
						This.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
			ENDIF
			
			IF FOUND()

				chis = f_myhis
	 
				cFile = this.GETCOMPONENTFILE()
				cacfile = cfile

				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = this.myFILETOSTR(cfile)
						crules = UPPER(crules)

				 
						nMax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax
				 
							cLine = aRules(x)
							
							cline = ALLTRIM(cline)
							crule = "AllowInteraction: " + cinternum
							IF UPPER(ALLTRIM(cline)) == UPPER(ALLTRIM(crule))


								FOR T = x TO nmax

						 
									cline = aRules(T)
									
									cline = UPPER(ALLTRIM(cline))

									crule = "SCOPE:"
									IF LEFT(cline,6) == crule
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										IF cline == "GENERAL"
										
											this.nParentScope = 1 && General
		
											myret = .T.
											EXIT
										ELSE
											this.nParentScope = 2 && Custom
										ENDIF
									ENDIF

									crule = "ALLOW:"
									IF LEFT(cline,6) == crule
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										cline = cline + ".TRF"
										IF RIGHT(UPPER(ALLTRIM(ccomponentfile)),LEN(cline)) == cline
											myret = .T.
											EXIT
										ELSE
											LOOP
										ENDIF
									ENDIF

									crule = "END"
									IF LEFT(cline,3) == crule
										EXIT
									ENDIF

								NEXT

								EXIT

							ENDIF
						NEXT


					ELSE
						stmsg( " (Check Sub Component) Cann't find the Rules file : " + cfile )
						myret = .T.
					ENDIF
				ENDIF

			ENDIF
			
 	ENDIF 		


		IF  lParentChanged = .t.
				SELECT t38
				GOTO nRecord2
		ENDIF
		
		SELECT (c_table)
		GOTO n_record

		RETURN myret

	PROCEDURE checkparentcomponent()

		LOCAL c_table,n_record
		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule,T
		LOCAL ccomponentfile
		LOCAL lcont,cparent
		LOCAL ARRAY aRules[1]
		
		* Used by (Goal Designer - Ignore Step) to determine is this operation is allowed or not

		* Checking starts from the child

		* If the syntax directed editor is disabled , return true

		IF THIS.lvisualcompiler = .F.
			RETURN .T.
		ENDIF


		ccomponentfile = "NoComponentFile"

		c_table = ALIAS()
		n_record = RECNO()

		myret = .T.

		* Load the rules of the current component to the variable cRules

		cinternum = ALLTRIM(STR(t38->stepinternum))

		SELECT t46
		
		GOTO TOP
		
		IF .NOT. EMPTY(t38->stepinterid)
		
			IF THIS.lFindUsingIndex = .f.	
					LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			ELSE
					This.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
			ENDIF
			
			IF FOUND()

				chis = f_myhis
 
				cFile = this.GETCOMPONENTFILE()
				
				IF FILE(cfile)
				
					cfile = STRTRAN(cfile,".TRF",".RULES")
					
					IF FILE(cfile)
					
						crules = this.myFILETOSTR(cfile)
						
						crules = UPPER(crules)

						************* Determine component name
						* Get the file name of the parent component then load the parent component rules
						* the parent component must be active (not disabled)
						* when you get the parent component store it in the variable : cComponentFile

						SELECT t38

						lcont = .T.
						cparent = t38->parentid

						DO WHILE lcont = .T.
							GOTO TOP

							IF THIS.lFindUsingIndex = .f.	
									LOCATE FOR UPPER(ALLTRIM(t38->stepid)) == UPPER(ALLTRIM(cparent))
							ELSE
									This.IndexFindStepID(UPPER(ALLTRIM(cparent)))
							ENDIF
							

							IF FOUND()

								IF t38->stepdis = .F.
								
									lcont = .F.
									
								ELSE
								
									lcont = .T.
									cparent = t38->parentid
									
								ENDIF
								
							ENDIF

							IF UPPER(ALLTRIM(cparent)) == "SP_"
								lcont = .F.
							ENDIF


						ENDDO

						cparent = UPPER(ALLTRIM(cparent))
						
						IF .NOT. EMPTY(cparent)
						
							IF .NOT. cparent == "SP_"

								SELECT t46
								GOTO TOP
								
								IF .NOT. EMPTY(t38->stepinterid)
								
									IF THIS.lFindUsingIndex = .f.	
											LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
									ELSE
											This.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
									ENDIF
									
									IF FOUND()
								 
										cComponentFile = this.GETCOMPONENTFILE()
										
									ENDIF
									
								ENDIF

							ENDIF
							
						ENDIF

						SELECT t38
						GOTO n_record

						*************
						* Now you have the component rules stored in the variable : cRules
						* And you have the parent component stored in the varaible : cComponentFile
						* Check the rules to know if this parent component is allowed or not


					 
						nMax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax
					 
							cLine = aRules(x)
							
							cline = ALLTRIM(cline)
							crule = "ALLOWPARENT:"
							
							IF  LEFT(UPPER(ALLTRIM(cline)),12) == UPPER(ALLTRIM(crule))

								cline = SUBSTR(cline,13)
								cline = UPPER(ALLTRIM(cline))
								
								IF cline == "GENERAL"
								
									myret = .T.
									EXIT
									
								ELSE
								
									myret = .F.
									
								ENDIF


								FOR T = x TO nmax
								 
									cLine = aRules(T)
									cline = UPPER(ALLTRIM(cline))

									crule = "ALLOW:"
									IF LEFT(cline,6) == crule
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										cline = cline + ".TRF"
										IF RIGHT(UPPER(ALLTRIM(ccomponentfile)),LEN(cline)) == cline
											myret = .T.
											EXIT
										ELSE
											LOOP
										ENDIF
									ENDIF

									crule = "END"
									IF LEFT(cline,3) == crule
										EXIT
									ENDIF

								NEXT

								EXIT

							ENDIF
						NEXT

					ELSE
						stmsg( " (Check Parent Component) Cann't find the Rules file : " + cfile )
						myret = .T.
					ENDIF
				ENDIF

			ENDIF
		ENDIF

		SELECT (c_table)
		GOTO n_record

		RETURN myret

	PROCEDURE isparentallowedforcomponent(ccomponentfile)

		LOCAL cfile,crules,myret,nmax,x,cline,crule
		LOCAL c_table,n_record
		LOCAL cparentcomponentfile
		LOCAL lParentChanged,nRecord2
		LOCAL ARRAY aRules[1]
		
		* written to be called from the components browser
		* checking starts while the active step in the steps tree is the parent
		* the child is not added yet, this check called before adding the child to be sure that it's allowed

		* called also from (Goal Designer - Paste button)

		IF THIS.lvisualcompiler = .F.
				RETURN .T.
		ENDIF
		

		myret = .F.

		c_table = ALIAS()
		n_record = RECNO()


		 lParentChanged = .f.
			IF EMPTY(t38->stepinterid)
					X = THIS.GetRealStepParent()
					IF .NOT. X = 0
						SELECT t38
						nRecord2 = RECNO()
						GOTO x 
						lParentChanged = .t.
						syslogmsg(" Is parent allowed for component - parent changed ")
					ENDIF
			ENDIF


		* Get the parent

		cparentcomponentfile = "NoComponent"

		SELECT t46
		GOTO TOP
		IF .NOT. EMPTY(t38->stepinterid)
			IF THIS.lFindUsingIndex = .f.	
				LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			ELSE
				This.IndexFindIID(UPPER(ALLTRIM(t38->stepinterid)))
			ENDIF
			
			
			IF FOUND()
				cParentComponentFile = this.GETCOMPONENTFILE()
			ENDIF
		ENDIF


		cfile = STRTRAN(ccomponentfile,".TRF",".RULES")

		**** Written to avoid problem when the component is EXE file , not TRF File
		IF cfile == ccomponentfile
			RETURN .F.
		ENDIF
		********************************

		IF FILE(cfile)

			crules = this.myFILETOSTR(cfile)
			crules = UPPER(crules)

			 
			nMax = ALINES(aRules,cRules)
			

			FOR x = 1 TO nmax

		 
				cLine = aRules(x)
				
				cline = ALLTRIM(cline)

				crule = "ALLOWPARENT:"

				IF  LEFT(UPPER(ALLTRIM(cline)),12) == UPPER(ALLTRIM(crule))

					cline = SUBSTR(cline,13)
					cline = UPPER(ALLTRIM(cline))
					IF cline == "GENERAL"
						myret = .T.
						EXIT
					ELSE
						myret = .F.
					ENDIF

					FOR T = x TO nmax

				 
						cLine = aRules(T)
						
						cline = UPPER(ALLTRIM(cline))

						crule = "ALLOW:"
						IF LEFT(cline,6) == crule
							cline = SUBSTR(cline,7)
							cline = ALLTRIM(cline)
							cline = cline + ".TRF"
							IF RIGHT(UPPER(ALLTRIM(cparentcomponentfile)),LEN(cline)) == cline
								myret = .T.
								EXIT
							ELSE
								LOOP
							ENDIF
						ENDIF

						crule = "END"
						IF LEFT(cline,3) == crule
							EXIT
						ENDIF

					NEXT

					EXIT

				ENDIF

			NEXT

		ELSE
			stmsg( " (Check Parent Component) Cann't find the Rules file : " + cfile  )
			myret = .T.
		ENDIF

		IF  lParentChanged = .t.
				SELECT t38
				GOTO nRecord2
		ENDIF


		SELECT (c_table)
		GOTO n_record

		RETURN myret

		*------------------------------------*
		* Duplication Errors
		* Reasons
		* (1) copy and paste step without changing the name of (control/procedure)
		* (2) copy and paste event without changing the event type
		* (3) create new step with the same event or name(control/procedure)
		* Operations
		* (1) Interact (Ok/Again)
		* (2) Modigy (OK)
		* (3) Paste
		* Goal
		* (1) Detect
		* (2) Prevent
		* (3) Fix (Rename)
		* Rules Syntax
		* NoDuplication: VariableNameInsideTheInteractionPage
		* [NoFix]
		* Scope: <General/Parent>
		* END
		*------------------------------------*

		PROCEDURE CheckNewDuplication(objForm)
		
		* Called from Interaction using transporter window
		* To prevent duplication when we using Interct/Modify buttons in the Goal Designer
		
			LOCAL oObj
		
		  LOCAL lRet,myrn,cValue
		  
		  LOCAL nCount,nRecord 
		  
		  lRet = .f. 

			this.lCheckNewDuplication = .t.
	 
			SELECT t38
		  nRecord = RECNO()
	 
					  IF this.IsComponentAllowDuplication(cActiveComponentFile) = .F.
					
									SELECT t42
								 
									
									cValue = UPPER(ALLTRIM(this.cDuplicationVariable))
									
									LOCATE FOR RIGHT(UPPER(ALLTRIM(t42->o_var)),LEN(cValue)) == cValue
							 
									IF FOUND()
																									 
																  myrn = RECNO()
										 						 oObj = objForm._scrollcontainer1.viewframe.clientarea.CONTROLS(myrn)
									 			 
										 						 IF t42->rectype = 2 && textbox
																		cValue = oObj.Value							
																	ENDIF
																	IF t42->rectype = 3 && listbox
																		cValue = ALLTRIM(STR(oObj.ListIndex))
																	ENDIF
																	IF t42->rectype = 4 && checkbox
																		cValue = ALLTRIM(STR(oObj.Value))
																	ENDIF
									 
									 
																 IF pv_his = .f.				&& Interact
																	
														
																					  this.cDuplicationParentID = this.GetParentIDForDuplicationCheck(.F.)
																					  
																						nCount = this.CheckDuplication(ALLTRIM(cValue))
																				
																				  	
																				  	IF nCount > 0
																				  			lRet = .t.
																				  	ENDIF
																	
																	ELSE									 && Modify
																	
																		  		  SELECT t38
																		  		  nRecord = RECNO()
																		  		  GOTO nActiveStepRecord
																		  		  
													  								this.cDuplicationParentID = this.GetParentIDForDuplicationCheck(.T.)
																				  	nCount = this.CheckDuplication(ALLTRIM(cValue))
																				
																				  	
																				  	IF nCount > 0
																				  			lRet = .t.
																				  	ENDIF
																		  		 
																		  		  SELECT t38
																		  		  GOTO nRecord
																	ENDIF
											 
								  ELSE
								  			SELECT t42
								  			GOTO top
								  ENDIF
										
								 
									
									
						ENDIF
						

			SELECT t38
		 
		  GOTO nRecord
		  
  		this.lCheckNewDuplication = .f.
			
		RETURN lRet
		

		PROCEDURE CheckStepDuplication()
		
			LOCAL cTableName,nRecord
			LOCAL cComponentFile,cValue,nCount
			LOCAL nRequiredCount
			
			cTableName = ALIAS()
			nRecord = RECNO()

			THIS.lNoFix = .F.
			this.lThereisDuplication = .f.
			
			nRequiredCount = 1
			
			SELECT t46
			
			IF THIS.lFindUsingIndex = .f.		
					LOCATE FOR ALLTRIM(f_IID) == ALLTRIM(t38->StepInterID)
			ELSE
					this.indexfindIID(ALLTRIM(t38->StepInterID))
			ENDIF
			
			
			IF FOUND()
			
						cComponentFile =  this.GetComponentFile()
						
						IF this.IsComponentAllowDuplication(cComponentFile) = .F.
						
									IF  this.lFixDuplication = .t.
									
											this.cDuplicationParentID = this.GetParentIDForDuplicationCheck(.T.)
											nRequiredCount = 0
											this.lCheckNewDuplication = .t.
											
									ENDIF
									
						
									cValue = this.GetDuplicationValue()
									nCount = this.CheckDuplication(cValue)
						
									IF  this.lFixDuplication = .t.
									
											this.lCheckNewDuplication = .f.
											
									ENDIF
									
									SELECT (cTableName)
									GOTO nRecord
									
									IF nCount > nRequiredCount
									
											this.lThereisDuplication = .T.
											
											IF  this.lFixDuplication = .t. .AND.  THIS.lNoFix = .F.
											
												this.FixDuplicationValue()
												
											ENDIF
											
									
											RETURN .T.
											
									ELSE
									
											RETURN .F.
											
									ENDIF
									
						ENDIF
						
			
			
			ENDIF
			
			SELECT (cTableName)
			GOTO nRecord
							
		
		RETURN .F.
		

		PROCEDURE IsComponentAllowDuplication(cFile)
		
				LOCAL cRules,nMax,X,cLine,T,cRule
				LOCAL lRet
				LOCAL cListFile,nListCount,nListStart,cListLine,nListCol,nArraySize,lFirstTime
				
				this.lNoFix = .f.
				
				lRet = .T.
				
				
				DIMENSION this.aDuplicationList(1,2)
		 
				
				IF FILE(cfile)

					THIS.cDuplicationComponent = UPPER(ALLTRIM(cFile))
					This.cDuplicationName = "Name"
					
					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = this.myFILETOSTR(cfile)
					 
						
						nmax = ALINES(aRules,cRules)
						
						FOR x = 1 TO nmax
						
							cLine = aRules(x)
							cline = UPPER(ALLTRIM(cline))
							crule = "NODUPLICATION:" 
							
							IF LEFT(cline,LEN(cRule)) == crule

								lRet = .F.
								this.cDuplicationVariable = SUBSTR(cLine,LEN(cRule)+1) && store the duplication variable in the object state

								FOR T = x TO nmax

					 
									cline = aRules(T)
									
									cline = ALLTRIM(cline)

									crule = "SCOPE:"
									
									IF UPPER(LEFT(cline,6)) == crule
									
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										
										  This.cDuplicationScope = UPPER(ALLTRIM(cLine)) && store the duplication scope in the object state
									
									ENDIF
									
									crule = "NAME:"
									
									IF UPPER(LEFT(cline,5)) == crule
									
										cline = SUBSTR(cline,6)
										cline = ALLTRIM(cline)
										
										This.cDuplicationName = ALLTRIM(cLine) && store the default name 
									
									ENDIF
									
									cRule = "NOFIX"
									
									IF UPPER(LEFT(cLine,5)) == cRule
									 THIS.lNoFix = .T.
									ENDIF
									
									
									cRule = "LIST:"   && more than one component sharing the same scope for the name like labels & buttons names in the same window
									
									IF UPPER(LEFT(cLine,5)) == cRule
										cline = SUBSTR(cline,6)
										cline = ALLTRIM(cline)
										cline = JUSTPATH(cFile) + "\" + cline
										
										IF FILE(cLine)
										
												clistfile = FILETOSTR(cLine)
												nListCount = MEMLINES(cListFile)
												lFirstTime = .T.
												
												FOR nListStart = 1 TO nListCount
												
														cListLine = MLINE(cListFile,nListStart)
														nListCol = AT(":",cListLine)
														
														IF  nListCol > 0
														
															IF lFirstTime = .F.
																	nArraySize = ALEN(this.aDuplicationList,1)
																	nArraySize = nArraySize + 1
															ELSE
																	nArraySize = 1
																	lFirstTime = .F.
															ENDIF
															
															DIMENSION this.aDuplicationList(nArraySize,2)
															this.aDuplicationList(nArraySize,1) = JUSTPATH(cFile) + "\" + ALLTRIM(LEFT(cListLine,nListCol - 1)) + ".TRF"
															this.aDuplicationList(nArraySize,2) = SUBSTR(cListLine,nListCol + 1)
														 
															
														ENDIF					
																	
												NEXT
												
												
												 
												
												
										ENDIF
										
										
									 
									ENDIF
									
									crule = "END"
									IF UPPER(LEFT(cline,3)) == crule
										EXIT
									ENDIF
									
									
							 NEXT
							 
					 	ENDIF
					 	
				 	NEXT
				 ENDIF
			ENDIF
		
	
		  nArraySize = ALEN(this.aDuplicationList,1)
		  
		  IF nArraySize = 1
		  
							this.aDuplicationList(1,1) = THIS.cDuplicationComponent
							this.aDuplicationList(1,2) = this.cDuplicationVariable
														
			ENDIF
			
		
		
		RETURN lRet
		
		
		PROCEDURE FixDuplicationValue()  
		
			LOCAL cTableName,nRecord
			LOCAL ARRAY aValues(1)
			LOCAL x,nMax
			LOCAL T,cNewHis,cComponentFile
			
			cTableName = ALIAS()
			nRecord = RECNO()
			
			SELECT t46
			IF THIS.lFindUsingIndex = .f.	
				LOCATE FOR ALLTRIM(f_IID) == ALLTRIM(t38->StepInterID)
			ELSE
				This.IndexFindIID(ALLTRIM(t38->StepInterID))
			ENDIF
			
			IF FOUND()
			
							nMax = ALINES(aValues,f_myhis)
							
							FOR x = 1 TO nMax
							
										IF AT(this.cDuplicationVariable,aValues(x)) > 0
										
										 
										 	 cComponentFile = this.GetComponentFile()
												aValues(x) = LEFT(aValues(x),AT("=",aValues(x)) )
												aValues(x) = aValues(x) + this.cDuplicationName + ALLTRIM(STR(THIS.GetAutoNumber(cComponentFile)))
												cNewHis = ""
												
												FOR t = 1 TO nMax
												cNewHis = cNewHis + aValues(t) + CHR(13) + CHR(10)
												NEXT
												
												
												replace f_myhis WITH cNewHis
												
											 
										    updatecode(t46->F_IID)
										    
												SELECT (cTableName)
												GOTO nRecord
												
												RETURN  
										
										
										
										ENDIF
										
							
							NEXT
							
			
			ENDIF
			
		
			SELECT (cTableName)
			GOTO nRecord
				
		RETURN  
		
		
		
	PROCEDURE GetAutoNumber(trf_file)
	
		LOCAL trf_file,myiidarray,mynum,mynummax,myrec,myrec2,myline1,doadd
		LOCAL tv_x,tv_max,tv_myline1,x2,tv_letter,numcach
		LOCAL cTableName,nRecord
		
		cTableName = ALIAS()
		nRecord = RECNO()
		

		DIMENSION myiidarray(1)
		myiidarray(1) = "0"

		mynum = 0 						&& the number to increment based on control count
		mynummax = 0 				 && the maximum number extracted from controls names

		SELECT t38
		myrec = RECNO()
		
		GOTO TOP
		
		SCAN
		
			SELECT t46
			myrec2 = RECNO()
			
			GOTO TOP
			
			LOCATE FOR ALLTRIM(f_iid) == ALLTRIM(t38->stepinterid)
			
			IF FOUND()
			
				myline1 = MLINE(f_myhis,9)

				IF UPPER(ALLTRIM(myline1)) == UPPER(ALLTRIM(trf_file))

					doadd = .T.
					
					FOR x = 1 TO ALEN(myiidarray)
					
						IF myiidarray(x) = f_iid
						
							doadd = .F.
							
						ENDIF
						
					NEXT
					
					IF doadd = .T.
					
						mynum = mynum + 1
						DIMENSION myiidarray(ALEN(myiidarray)+1)
						myiidarray(ALEN(myiidarray)) = f_iid
						
					ENDIF

					* check control name and get the number
					tv_max = MEMLINES(f_myhis)
					numcach = ""
					FOR x = 10 TO tv_max
						tv_myline1 = MLINE(f_myhis,x)
						IF AT("NAME",UPPER(tv_myline1)) > 0
							IF AT("=",tv_myline1) > 0
								FOR x2= AT("=",tv_myline1) TO LEN(tv_myline1)
									tv_letter = SUBSTR(tv_myline1,x2,1)
									IF tv_letter = "0" .OR. tv_letter = "1" .OR. tv_letter = "2" .OR. tv_letter = "3" .OR. ;
											tv_letter = "4" .OR. tv_letter = "5" .OR. tv_letter = "6" .OR. tv_letter = "7" .OR. ;
											tv_letter = "8" .OR. tv_letter = "9"
										numcach = numcach + tv_letter
									ENDIF
								NEXT
							ENDIF
							EXIT
						ENDIF

					NEXT
					IF VAL(numcach) > mynummax
						mynummax = VAL(numcach)
					ENDIF
					*

				ENDIF
			ELSE
				GOTO TOP
			ENDIF
			
			IF .NOT. myrec2 = 0 .AND. .NOT. myrec2 > RECCOUNT()
				GOTO myrec2
			ENDIF

			SELECT t38
			
		ENDSCAN
		GOTO TOP

		IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
			GOTO myrec
		ENDIF

		IF mynum <= mynummax
			mynum = mynummax + 1
		ENDIF
		
		SELECT (cTableName)
		GOTO nRecord
	
	RETURN mynum
		
		
		
		PROCEDURE GetDuplicationValue() && procedure name or control name which we need to prevent it from duplication
		
			LOCAL cTableName,nRecord
			LOCAL ARRAY aValues(1)
			LOCAL x,nMax
			
			cTableName = ALIAS()
			nRecord = RECNO()
			
			SELECT t46
			IF THIS.lFindUsingIndex = .f.	
				LOCATE FOR ALLTRIM(f_IID) == ALLTRIM(t38->StepInterID)
			ELSE
				This.IndexFindIID(ALLTRIM(t38->StepInterID))
			ENDIF
			
			IF FOUND()
			
							nMax = ALINES(aValues,f_myhis)
							
							FOR x = 1 TO nMax
							
										IF AT(this.cDuplicationVariable,aValues(x)) > 0
										
												SELECT (cTableName)
												GOTO nRecord
												
											 
												RETURN SUBSTR(aValues(x),AT("=",aValues(x))+1)
										
										ENDIF
										
							
							NEXT
							
			
			ENDIF
			
		
			SELECT (cTableName)
			GOTO nRecord
				
		RETURN "NOTDETERMINED"
		
		
		PROCEDURE CheckDuplication(cValue)
		
				LOCAL cTableName,nRecord,nRecord2,cComponentFile,nRecord3,nRecord4
				LOCAL cExpr,cParentID
				LOCAL x,nAvoid
				LOCAL lFind,y,cOldDuplicationVariable
				
				LOCAL nCount
				
				nCount = 0
				
				cTableName = ALIAS()
				nRecord = RECNO()
				
				SELECT t38
				nRecord2 = RECNO()
				nRecord3 = nRecord2
				
				nAvoid = 0
				
			
				IF this.lCheckNewDuplication = .t.
							cParentID = this.cDuplicationParentID
  						nRecord2 = RECCOUNT()
							nAvoid = nRecord3
				ELSE
							cParentID = ALLTRIM(t38->ParentID)
				ENDIF
				
		
				IF this.cDuplicationScope = "GENERAL"
									cExpr = "t38->StepInterNum = 1  .and. .not. EMPTY(ALLTRIM(t38->stepInterID))"
				ELSE
									cExpr = "t38->StepInterNum = 1  .and. .not. EMPTY(ALLTRIM(t38->stepInterID)) .AND. ALLTRIM(this.GetParentIDForDuplicationCheck(.T.)) == cParentID"								 
				ENDIF
				
				FOR x = nRecord2 TO 1 STEP -1
				
							IF x = nAvoid && don't count the current record (Interaction using transporter - Interact/Modify Process)
										* in modify case we will avoid the active step 
										* in interact case we will avoid the parent step - not necessary/required but not a problem at all when we do this
										LOOP
							ENDIF
							
							GOTO x
													
							if  &cExpr
										
										SELECT t46
										nRecord4 = RECNO()
										
										IF THIS.lFindUsingIndex = .f.
												LOCATE FOR ALLTRIM(f_IID) == ALLTRIM(t38->StepInterID)
										ELSE
												This.IndexFindIID(ALLTRIM(t38->StepInterID))
										ENDIF
										
										IF FOUND()
										
													cComponentFile = this.GetComponentFile()
													cOldDuplicationVariable = this.cDuplicationVariable
													
													lFind = .f.
													
													FOR y = 1 TO ALEN(this.aDuplicationList,1)
														 
															IF UPPER(ALLTRIM(this.aDuplicationList(y,1))) == UPPER(ALLTRIM(cComponentFile))
															
																	lFind = .t.
																	this.cDuplicationVariable = UPPER(ALLTRIM(this.aDuplicationList(y,2)))
														 
															ENDIF		
																										
													NEXT
													
													 
													IF lFind = .t.
													
																IF UPPER(ALLTRIM(this.GetDuplicationValue())) == UPPER(ALLTRIM(cValue))
																
																	nCount = nCount + 1
																	
																	IF nCount > 1
																	
																			SELECT t38
																			GOTO nRecord3
																			
																			SELECT (cTableName)
																			GOTO nRecord
																	
																	    this.cDuplicationVariable = cOldDuplicationVariable
																	    
																			RETURN nCount
																			
																	ENDIF
																	
																	
																ENDIF
																
													
													ENDIF
													
													
													this.cDuplicationVariable = cOldDuplicationVariable
													
										ENDIF
										
										SELECT t46
										GOTO nRecord4 
										
										SELECT t38
										
							ENDIF
							
			  NEXT 
				
				SELECT t38
				GOTO nRecord3
				
				SELECT (cTableName)
				GOTO nRecord
				
		RETURN nCount
		
		PROCEDURE GetParentIDForDuplicationCheck(lGotoParent)
			
	
				LOCAL nParentRec && STEPID OF THE REAL PARENT
				LOCAL cTableName,nRecord,nRecord2
				LOCAL lCont,cParent
				
			  
				
				cTableName = ALIAS()
				nRecord = RECNO()
				
				nParentRec = 0
				
				SELECT t38

				nRecord2 = RECNO()

				* GO TO THE PARENT
				IF lGotoParent = .t.
				
							cParent = t38->parentid
							
							IF THIS.lFindUsingIndex = .f.	
									LOCATE FOR ALLTRIM(t38->stepid) == ALLTRIM(cparent)
							ELSE
									THIS.IndexFindStepID(ALLTRIM(cparent))
							ENDIF
							
				ELSE
				
							cParent = t38->StepID
							
				ENDIF
				

				IF  EMPTY(t38->stepinterid)

					nParentRec = 0
					
					lcont = .T.
					cparent = t38->parentid

					DO WHILE lcont = .T.

						GOTO TOP

						IF THIS.lFindUsingIndex = .f.	
								LOCATE FOR ALLTRIM(t38->stepid) == ALLTRIM(cparent)
						ELSE
								THIS.IndexFindStepID(ALLTRIM(cparent))
						ENDIF
						

						IF FOUND()

							IF .NOT. EMPTY(t38->stepinterid)

								nParentRec = RECNO()
								lcont = .F.
								
							ELSE
							
								lcont = .T.
								cparent = t38->parentid
								
							ENDIF
							
						ENDIF

						IF UPPER(ALLTRIM(cparent)) == "SP_"
							lcont = .F.
						ENDIF


					ENDDO
					
			  ELSE
			  			nParentRec = RECNO()
				ENDIF

				SELECT t38
				GOTO nRecord2


				SELECT (cTableName)
				GOTO nRecord
		
		RETURN ALLTRIM(cParent)
		

		*-----------------------------*
		* Navigation (Next/Previous)
		* Used to move from step to another step in the same interaction
		* Useful for moving from event step to event procedure step
		*-----------------------------*

	PROCEDURE movetostepinthesameinteraction(ogdwindow,nstepstomove)

		LOCAL n_record
		LOCAL cinteractionid,ninteractionnumber

		SELECT t38

		n_record = RECNO()

		cinteractionid = t38->stepinterid
		ninteractionnumber = t38->stepinternum

		ninteractionnumber = ninteractionnumber + nstepstomove

		IF .NOT. EMPTY(cinteractionid)

			GOTO TOP

			LOCATE FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(cinteractionid)) .AND. t38->stepinternum = ninteractionnumber

			IF .NOT. FOUND()

				GOTO n_record

			ENDIF

			ogdwindow.oletree.nodes.ITEM(ALLTRIM(t38->stepid)).SELECTED = .T.

		ENDIF


		RETURN

	PROCEDURE checkmovetostepinthesameinteraction(ogdwindow,nstepstomove)

		LOCAL myret
		LOCAL c_table,n_record,nrecord2

		myret = .F.

		c_table = ALIAS()
		n_record = RECNO()


		SELECT t38

		n_record2 = RECNO()

		cinteractionid = t38->stepinterid
		ninteractionnumber = t38->stepinternum

		ninteractionnumber = ninteractionnumber + nstepstomove

		IF .NOT. EMPTY(cinteractionid)

			GOTO TOP

			LOCATE FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(cinteractionid)) .AND. t38->stepinternum = ninteractionnumber

			IF FOUND()

				myret = .T.


			ENDIF

			GOTO n_record2

		ENDIF


		SELECT (c_table)
		GOTO n_record

		RETURN myret

		*******************************************

	PROCEDURE getnodechilds(onode, objgdwindow)

		LOCAL N

		SELECT t38
		GOTO TOP

		IF THIS.lFindUsingIndex = .f.	
			LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(onode.KEY))
		ELSE
			This.IndexFindStepID(UPPER(ALLTRIM(onode.KEY)))
		ENDIF
		
		IF FOUND()
			cthestepscode = cthestepscode + CHR(13) + CHR(10) + t38->stepcode
		ENDIF


		lckeys = lckeys + onode.KEY + [/]
		nkeyscount = nkeyscount + 1
		IF onode.children > 0
			N = onode.CHILD.INDEX
			DO WHILE N # onode.lastsibling.INDEX
				THIS.getnodechilds(objgdwindow.container1.oletree.nodes(N),objgdwindow)
				IF NOT ISNULL(objgdwindow.container1.oletree.nodes(N).NEXT)
					N = objgdwindow.container1.oletree.nodes(N).NEXT.INDEX
				ELSE
					EXIT
				ENDIF
			ENDDO
		ENDIF

		RETURN

	PROCEDURE allnodesinorder(ogdwindow)
		LOCAL vfile

		PRIVATE lckeys  , nkeyscount , cthestepscode

		nkeyscount = 0
		cthestepscode = ""
		lckeys = []

		ogdwindow.container1.oletree.nodes.ITEM("SP_").SELECTED = .T.

		onode = ogdwindow.container1.oletree.SELECTEDITEM

		THIS.getnodechilds(onode , ogdwindow)

		vfile = GETFILE("*.prg")
		STRTOFILE(cthestepscode,vfile)

		MESSAGEBOX(ALLTRIM(STR(nkeyscount)),0,"wow")

		RETURN

		**********************************************************************


	PROCEDURE movestepup(ogdwindow)

		LOCAL x,plist

		* When you change the parent of the node to the same parent the node is moved to be the first node in the same level
		* to move step up
		* 1 - move the first previous node
		* 2 - move the step that we want to move up
		* 3 - move the second previous node (if found)
		* 4 - move the third previous  node (if found) and so on

		IF .NOT. ISNULL( ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).previous )

			ogdwindow.LOCKSCREEN = .T.

			DIMENSION plist(1)
			plist(1) = ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).previous.KEY

			* CREATE LIST OF PREVIOUS NODES

			DO WHILE .NOT. ISNULL( ogdwindow.container1.oletree.nodes.ITEM( plist(ALEN(plist,1)) ).previous )

				DIMENSION plist(ALEN(plist,1)+1)

				plist(ALEN(plist,1)) = ogdwindow.container1.oletree.nodes.ITEM( plist(ALEN(plist,1)-1) ).previous.KEY

			ENDDO

			ogdwindow.container1.oletree.nodes.ITEM(plist(1)).PARENT = ogdwindow.container1.oletree.nodes.ITEM(plist(1)).PARENT
			ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).PARENT = ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).PARENT

			IF ALEN(plist,1) > 1
				FOR x = 2 TO ALEN(plist,1)
					ogdwindow.container1.oletree.nodes.ITEM(plist(x)).PARENT = ogdwindow.container1.oletree.nodes.ITEM(plist(x)).PARENT
				NEXT
			ENDIF

			ogdwindow.LOCKSCREEN = .F.

		ENDIF


		RETURN

	PROCEDURE movestepdown(ogdwindow)

		* instead of writing new algorithm from scratch to move the step down
		* we will move the next step up

		LOCAL ckey

		IF .NOT. ISNULL( ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).NEXT )

			ckey = ogdwindow.container1.oletree.SELECTEDITEM.KEY

			ogdwindow.container1.oletree.nodes.ITEM( ogdwindow.container1.oletree.nodes.ITEM(ogdwindow.container1.oletree.SELECTEDITEM.KEY).NEXT.KEY ).SELECTED = .T.

			THIS.movestepup(ogdwindow)

			ogdwindow.container1.oletree.nodes.ITEM( ckey ).SELECTED = .T.

		ENDIF


		RETURN



ENDDEFINE




