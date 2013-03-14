* command3 : move up
* command4 : move down
* command10 : cut
* command8 : copy
* check1 : ignore
* command2 : delete
DEFINE CLASS GD_AvoidErrors as Custom

PROCEDURE AvoidGeneratedStepErrors(objGDWindow)
LOCAL objgdwindow as Form
IF .not. EMPTY(t38->stepinterid) .and. t38->stepinternum != 1
		objgdwindow.command3.enabled = .f.
		objgdwindow.command4.enabled = .f.
		objgdwindow.command10.enabled = .f.
		objgdwindow.command8.enabled = .f.
		objgdwindow.check1.enabled = .f.
		objgdwindow.command2.enabled = .f.
ELSE
		objgdwindow.command3.enabled = .t.
		objgdwindow.command4.enabled = .t.
		objgdwindow.command10.enabled = .t.
		objgdwindow.command8.enabled = .t.
		objgdwindow.check1.enabled = .t.
		objgdwindow.command2.enabled = .t.
ENDIF
RETURN

PROCEDURE DeleteStepsInTheSameInteraction(oGDWindow)
LOCAL tv_interid,tv_max,myinterlist,tv_x,mydsrec,prec,mykeyrecarr,looprs,loopre,myid,myres,myend,x,myrecnum,mynewlooprs,myrec,t
LOCAL c_table,n_record
c_table = ALIAS()
n_record = RECNO()



		* check history - if it's generated step 
					SELECT t46
					GOTO top
					IF .not. EMPTY(t38->stepinterid)
							locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
  						IF FOUND()
  				
										tv_interid = t38->stepinterid
										SELECT t38
										GOTO top
										tv_max = 0
										scan FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(tv_interid)) .and. UPPER(ALLTRIM(t38->goalid)) == UPPER(ALLTRIM(t33->goalhandle))
										tv_max = tv_max + 1
										DIMENSION myinterlist(tv_max)
										myinterlist(tv_max) = UPPER(ALLTRIM(stepid))
  									ENDSCAN
  					
  									SELECT t38
  									GOTO top
										FOR  tv_x = tv_max TO 1 STEP -1
													
													LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(myinterlist(tv_x)) .and. UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
													
													IF FOUND()
												
																					
									  			mydsrec = RECNO()
	  											*********************************************************
				 								 prec = RECNO()
												  DIMENSION mykeyrecarr(1,2)
												  mykeyrecarr(1,1) = t38->stepid
												  mykeyrecarr(1,2) = prec
			 						 		  looprs = ALEN(mykeyrecarr,1)
		 	 								  loopre = 0
				 				 			  SELECT t38
												  SET FILTER TO UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
												  GOTO top
	    								    DO WHILE looprs != loopre
  	 															looprs = ALEN(mykeyrecarr,1)
 																	SELECT t38
  																 SCAN
   																		* search if item is in select branch of tree 
  																			myid = t38->parentid
  																			myres = .f.
  																			myend = ALEN(mykeyrecarr,1)
 																		 	FOR x = 1 TO myend
  																						IF UPPER(ALLTRIM(mykeyrecarr(x,1))) == UPPER(ALLTRIM(myid))
  																									myres = .t.
	  																								EXIT
  																						ENDIF
  							  											NEXT
   																		 *******************************  	
   																		 * be sure that this record is not added before
    																		myrecnum = RECNO()
    																		myend = ALEN(mykeyrecarr,1)
    																		FOR x = 1 TO myend
  																					IF mykeyrecarr(x,2) = myrecnum
  																								myres = .f.
	 																					 		EXIT
 																			 		ENDIF
																		  	NEXT
   								 										IF myres = .t.
   																					 mynewlooprs = ALEN(mykeyrecarr,1) + 1
   																					 DIMENSION mykeyrecarr(mynewlooprs,2)
   																				   mykeyrecarr(mynewlooprs,1) = t38->stepid
   																					 mykeyrecarr(mynewlooprs,2) = myrecnum
  																		  ENDIF
  																 ENDSCAN
  																 GOTO bottom
 																 loopre = ALEN(mykeyrecarr,1)
 				 								enddo 
													MYEND = ALEN(mykeyrecarr,1)
													
											 
													FOR t = MYEND TO 1 STEP -1
																	myrec = mykeyrecarr(t,2)
																	IF .not. myrec = 0
																					SELECT t38
																					GOTO myrec
																				 IF DELETED() = .f.
																								oGDWindow.oleTree.Nodes.Remove(UPPER(ALLTRIM(stepid)))
  																		      		DELETE
  																		   ENDIF
  																		      		
  																		   
  																		      		
																	ENDIF
													NEXT
												 
													
												*	SELECT t38
													*SET FILTER TO 
													*GOTO top
				  								*********************************************************
													*GOTO mydsrec
													
													*DELETE
												*	PACK
				 								 *GOTO top
				 								 
													endif
									next
				 					
				 			*		SET FILTER TO 
				 					*GOTO top
				 					*PACK
				 					*GOTO top
				 					*oGDWindow.timemachinestartup()
				 					
									  
									 
					 		ENDIF
  				ENDIF
  				*--------------------------*
  				
  				SELECT (c_table)
  				GOTO n_record
  				
RETURN


ENDDEFINE
