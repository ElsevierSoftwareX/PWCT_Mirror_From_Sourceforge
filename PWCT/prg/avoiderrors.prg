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
DEFINE CLASS gd_avoiderrors AS CUSTOM

	lvisualcompiler = .T.

	PROCEDURE avoidgeneratedsteperrors(objgdwindow)
		LOCAL objgdwindow AS FORM
		LOCAL result

		IF .NOT. EMPTY(t38->stepinterid) .AND. t38->stepinternum != 1 .AND. THIS.lvisualcompiler = .T.
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

		IF .NOT. EMPTY(t38->stepinterid) .AND. THIS.lvisualcompiler = .T.

			result = THIS.checknewstep()

			* new step
			objgdwindow.command1.ENABLED = result
			* Interact
			objgdwindow.command5.ENABLED = result
			* paste
			objgdwindow.command9.ENABLED = result
		ELSE
			* new step
			objgdwindow.command1.ENABLED = .T.
			* Interact
			objgdwindow.command5.ENABLED = .T.
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

			LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))

			IF FOUND()

				chis = f_myhis
				cfile = UPPER(ALLTRIM(MLINE(chis,9)))

				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = FILETOSTR(cfile)
						crules = UPPER(crules)

						nmax = MEMLINES(crules)

						FOR x = 1 TO nmax

							cline = MLINE(crules,x)
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

				LOCATE FOR ALLTRIM(t38->stepid) == ALLTRIM(cparent)

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


	PROCEDURE checksubcomponent(ccomponentfile)

		LOCAL c_table,n_record
		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule,T
		LOCAL cacfile

		* this procedure is called from the components browser window

		* if the syntax directed editor is disabled
		IF THIS.lvisualcompiler = .F. .OR. THIS.isthisstepistheroot() = .T.
			RETURN .T.
		ENDIF


		c_table = ALIAS()
		n_record = RECNO()

		myret = .F.


		* Load the rules of the active component (will be the parent) and save the component file to variable cACFile

		cinternum = ALLTRIM(STR(t38->stepinternum))

		SELECT t46
		GOTO TOP

		IF .NOT. EMPTY(t38->stepinterid)
			LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))

			IF FOUND()

				chis = f_myhis
				cfile = UPPER(ALLTRIM(MLINE(chis,9)))
				cacfile = cfile

				IF FILE(cfile)

					cfile = STRTRAN(cfile,".TRF",".RULES")

					IF FILE(cfile)

						crules = FILETOSTR(cfile)
						crules = UPPER(crules)

						nmax = MEMLINES(crules)
						FOR x = 1 TO nmax
							cline = MLINE(crules,x)
							cline = ALLTRIM(cline)
							crule = "AllowInteraction: " + cinternum
							IF UPPER(ALLTRIM(cline)) == UPPER(ALLTRIM(crule))


								FOR T = x TO nmax

									cline = MLINE(crules,T)
									cline = UPPER(ALLTRIM(cline))

									crule = "SCOPE:"
									IF LEFT(cline,6) == crule
										cline = SUBSTR(cline,7)
										cline = ALLTRIM(cline)
										IF cline == "GENERAL"
											myret = .T.
											EXIT
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

		SELECT (c_table)
		GOTO n_record

		RETURN myret

	PROCEDURE checkparentcomponent()

		LOCAL c_table,n_record
		LOCAL myret,chis,cfile,crules,cinternum,nmax,x,cline,crule,T
		LOCAL ccomponentfile
		LOCAL lcont,cparent

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
			LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))

			IF FOUND()

				chis = f_myhis
				cfile = UPPER(ALLTRIM(MLINE(chis,9)))
				IF FILE(cfile)
					cfile = STRTRAN(cfile,".TRF",".RULES")
					IF FILE(cfile)
						crules = FILETOSTR(cfile)
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

							LOCATE FOR UPPER(ALLTRIM(t38->stepid)) == UPPER(ALLTRIM(cparent))

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
									LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
									IF FOUND()
										ccomponentfile = ALLTRIM(MLINE(f_myhis,9))
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


						nmax = MEMLINES(crules)
						FOR x = 1 TO nmax
							cline = MLINE(crules,x)
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

									cline = MLINE(crules,T)
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

		* written to be called from the components browser
		* checking starts while the active step in the steps tree is the parent
		* the child is not added yet, this check called before adding the child to be sure that it's allowed

		* called also from (Goal Designer - Paste button)

		myret = .F.

		c_table = ALIAS()
		n_record = RECNO()

		* Get the parent

		cparentcomponentfile = "NoComponent"

		SELECT t46
		GOTO TOP
		IF .NOT. EMPTY(t38->stepinterid)
			LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			IF FOUND()
				cparentcomponentfile = ALLTRIM(MLINE(f_myhis,9))
			ENDIF
		ENDIF


		cfile = STRTRAN(ccomponentfile,".TRF",".RULES")

		**** Written to avoid problem when the component is EXE file , not TRF File
		IF cfile == ccomponentfile
			RETURN .F.
		ENDIF
		********************************

		IF FILE(cfile)

			crules = FILETOSTR(cfile)
			crules = UPPER(crules)

			nmax = MEMLINES(crules)

			FOR x = 1 TO nmax

				cline = MLINE(crules,x)
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

						cline = MLINE(crules,T)
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

		SELECT (c_table)
		GOTO n_record

		RETURN myret



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

		LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(onode.KEY))
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




