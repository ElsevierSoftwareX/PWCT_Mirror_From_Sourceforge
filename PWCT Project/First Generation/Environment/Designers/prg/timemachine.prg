DEFINE CLASS TimeMachineClass AS VPLRulesBase OF VPLRules.prg


PROCEDURE  ChangeTime(oGDForm)

					*** ActiveX Control Event ***
					LOCAL calias,hismax,mypos,myiid
					LOCAL mykey,mytxt,pkey
					LOCAL iidmin,iidmax,iiddir,nrecmark,nrecfriends,nnodelocation,nlocationcounter,nmylocation
					LOCAL mydsrec, PREC,looprs,loopre,myres,mynewlooprs,myrecnum,x,myend,T
					LOCAL nsteptype

					IF oGDForm.slider1.VALUE < oGDForm.slider1.MAX
						oGDForm.command1.ENABLED = .F.
						oGDForm.command2.ENABLED = .F.
						oGDForm.command3.ENABLED = .F. 
						oGDForm.command4.ENABLED = .F.

						oGDForm.command5.Visible = .F.
						oGDForm.command9.ENABLED = .F.
						oGDForm.command10.ENABLED = .F. 
					ELSE
						oGDForm.command1.ENABLED = .T.
						oGDForm.command2.ENABLED = .T.
						oGDForm.command3.ENABLED = .T.
						oGDForm.command4.ENABLED = .T.

						oGDForm.command5.Visible = .T.
						oGDForm.command9.ENABLED = .T.
						oGDForm.command10.ENABLED = .T.
					ENDIF

					stmsg(" Time Machine is working on the steps tree, Please wait ... ")

					oGDForm.slider1.ENABLED = .F.
					oGDForm.LOCKSCREEN = .T.

					oGDForm.container1.oletree.VISIBLE = .F.


					calias = ALIAS()

					hismax = 0
					mypos = oGDForm.slider1.VALUE
					myiid = "0"

					SELECT t46
					GOTO TOP
					SCAN
					
						SELECT t38
						
						LOCATE FOR UPPER(ALLTRIM(stepinterid)) == UPPER(ALLTRIM(t46->f_iid)) .AND. UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
						
				 
						
						IF FOUND()
							hismax = hismax + 1
							IF hismax = mypos
								myiid = stepinterid
								SELECT t46
								oGDForm.slider1.TEXT = " Date : " + f_hisdate + " Time : " + f_histime
							ENDIF
						ENDIF

						SELECT t46

					ENDSCAN
					GOTO bottom
					
					myiid = VAL(myiid)


					oldmyiid = oGDForm.timemachineiid

					oGDForm.timemachineiid = myiid

					IF oGDForm.slider1.VALUE <= oGDForm.slider1.MAX

						FOR x = 1 TO ALEN(sys_goalstimeframe,1)
							IF UPPER(ALLTRIM(sys_goalstimeframe(x,1))) == UPPER(ALLTRIM(t33->goalname))
								sys_goalstimeframe(x,2) = myiid
							ENDIF
						NEXT

					ELSE && Get ready for new steps to be added to the tree - so we can see results of these steps when we run the application

						FOR x = 1 TO ALEN(sys_goalstimeframe,1)
							IF UPPER(ALLTRIM(sys_goalstimeframe(x,1))) == UPPER(ALLTRIM(t33->goalname))
								sys_goalstimeframe(x,2) = 0
							ENDIF
						NEXT

					ENDIF


					IF oldmyiid < oGDForm.timemachineiid
						iidmin = oldmyiid
						iidmax = oGDForm.timemachineiid
						iiddir = 1 && forward direction , i.e. add steps to steps tree
					ELSE
						iidmax = oldmyiid
						iidmin = oGDForm.timemachineiid
						iiddir = 2 && backward direction , i.e. delete steps from steps tree
					ENDIF


					IF myiid >= 0

						* refresh step tree

						o = oGDForm.container1.oletree
						IF oGDForm.combo1.LISTCOUNT = 0 .OR. oGDForm.combo1.LISTINDEX = 0
							RETURN
						ENDIF
						SELECT t33
						GOTO oGDForm.combo1.LISTINDEX
						SELECT t38
						GOTO TOP
						SCAN FOR UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. VAL(stepinterid) > iidmin .AND. VAL(stepinterid) <= iidmax
							mykey = ALLTRIM(stepid)
							mytxt = ALLTRIM(stepname)
							pkey  = ALLTRIM(parentid)


							IF iiddir = 1 && forward direction - add steps

								* To fix a problem with adding step in an incorrect order , the step will inserted to a location
								nrecmark = RECNO()

								COUNT FOR UPPER(ALLTRIM(parentid)) = pkey .AND. UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
									VAL(stepinterid) <= iidmax TO nrecfriends

								IF nrecfriends = 1
									nnodelocation = 4
								ELSE

									nlocationcounter = 0
									nmylocation = 0

									GOTO TOP
									SCAN  FOR UPPER(ALLTRIM(parentid)) = pkey .AND. UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
											VAL(stepinterid) <= iidmax
										nlocationcounter = nlocationcounter + 1
										IF UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(mykey))
											nmylocation = nlocationcounter
										ENDIF
									ENDSCAN
									GOTO bottom
									

									IF nmylocation = nlocationcounter
										nnodelocation = 4
									ELSE && node is not that last node , must be inserted to the correct location
										nnodelocation = 3 && the node is placed before the relative node
										nlocationcounter = 0

										GOTO TOP
										SCAN  FOR UPPER(ALLTRIM(parentid)) = pkey .AND. UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
												VAL(stepinterid) <= iidmax
											nlocationcounter = nlocationcounter + 1
											IF nlocationcounter = nmylocation + 1
												pkey  = ALLTRIM(stepid) && set the next step as the realtive node
											ENDIF
										ENDSCAN
										GOTO bottom
										
									ENDIF

								ENDIF


								GOTO (nrecmark)
								****************************************

								TRY && used to avoid error when creating user steps (not generated) before creating the user step parent



									myadd = o.nodes.ADD(ALLTRIM(pkey), nnodelocation ,ALLTRIM(mykey), SPACE(2) + mytxt + SPACE(2) ,0)
									nsteptype = obj_stepscolors.setstepcolor(oGDForm)

									IF nsteptype = 3 && Generated (Rott)
										IF oGDForm.playmovie = .T.

											IF sys_tmusesound = .T.

												TRY
													sys_soundobject = CREATEOBJECT("SAPI.SpVoice.1")
													sys_soundobject.speak(ALLTRIM(mytxt),1)
												CATCH
												ENDTRY
											ENDIF

										ENDIF
									ENDIF



									IF stepdis  = .T.
										myadd.IMAGE = "ignore"
									ELSE
										IF EMPTY(ALLTRIM(stepinterid))
											myadd.IMAGE = "person"
										ELSE
											myadd.IMAGE = "cmd"
										ENDIF
									ENDIF


									oGDForm.container1.oletree.nodes.ITEM(ALLTRIM(stepid)).SELECTED = .T.

								CATCH
								ENDTRY


								* Add Childs Nodes

								GOTO (nrecmark)
								mydsrec = RECNO()
								*********************************************************
								PREC = RECNO()
								DIMENSION mykeyrecarr(1,2)
								mykeyrecarr(1,1) = t38->stepid
								mykeyrecarr(1,2) = PREC
								looprs = ALEN(mykeyrecarr,1)
								loopre = 0
								SELECT t38

								GOTO TOP

								DO WHILE looprs != loopre
									looprs = ALEN(mykeyrecarr,1)
									SELECT t38
									SCAN FOR UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
											VAL(stepinterid) <= iidmax
										* search if item is in select branch of tree
										myid = t38->parentid
										myres = .F.
										myend = ALEN(mykeyrecarr,1)
										FOR x = 1 TO myend
											IF UPPER(ALLTRIM(mykeyrecarr(x,1))) == UPPER(ALLTRIM(myid))
												myres = .T.
												EXIT
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
											DIMENSION mykeyrecarr(mynewlooprs,2)
											mykeyrecarr(mynewlooprs,1) = t38->stepid
											mykeyrecarr(mynewlooprs,2) = myrecnum
										ENDIF
									ENDSCAN
									GOTO BOTTOM
									loopre = ALEN(mykeyrecarr,1)
								ENDDO
								myend = ALEN(mykeyrecarr,1)
								FOR T = 1 TO myend
									myrec = mykeyrecarr(T,2)
									IF .NOT. myrec = 0
										SELECT t38
										GOTO myrec

										* Add Step to the steps tree

										TRY && used to avoid error when creating user steps (not generated) before creating the user step parent


											myadd = o.nodes.ADD(ALLTRIM(parentid), 4 ,ALLTRIM(stepid), SPACE(2) + ALLTRIM(stepname) + SPACE(2) ,0)
											obj_stepscolors.setstepcolor(oGDForm)

											IF stepdis  = .T.
												myadd.IMAGE = "ignore"
											ELSE
												IF EMPTY(ALLTRIM(stepinterid))
													myadd.IMAGE = "person"
												ELSE
													myadd.IMAGE = "cmd"
												ENDIF
											ENDIF


											oGDForm.container1.oletree.nodes.ITEM(ALLTRIM(stepid)).SELECTED = .T.

										CATCH
										ENDTRY

										****************************


									ENDIF
								NEXT
								SELECT t38


								GOTO TOP
								*********************************************************
								GOTO mydsrec



								***********************************************************************

							ELSE && backward direction - remove steps
								TRY
									o.nodes.REMOVE(ALLTRIM(mykey))
								CATCH
								ENDTRY

							ENDIF


						ENDSCAN
						GOTO bottom
						
						SET FILTER TO
						GOTO TOP
				 
						TRY
					 
								oGDForm.container1.oletree.CLICK
							 

							* select the step with the interaction id equal to the position in the interaction history
							LOCATE FOR UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. VAL(stepinterid) = myiid
							
							
					 
							
							IF FOUND()
							
								oGDForm.container1.oletree.nodes.ITEM(ALLTRIM(stepid)).SELECTED = .T.
								oGDForm.container1.oletree.nodes.ITEM(ALLTRIM(stepid)).ensurevisible
								oGDForm.container1.oletree.CLICK

						  ELSE
						  
						  	GOTO top
						  	
						  	
							ENDIF

						CATCH
						ENDTRY
					ENDIF


					SELECT (calias)

					oGDForm.container1.oletree.VISIBLE = .T.
					oGDForm.slider1.ENABLED = .T.

					oGDForm.LOCKSCREEN = .F.

					stmsg(" Time Machine operation done. ")


RETURN


ENDDEFINE
