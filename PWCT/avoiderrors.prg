* command3 : move up
* command4 : move down
* command10 : cut
* command8 : copy
* check1 : ignore
* command2 : delete
DEFINE CLASS GD_AvoidErrors as Custom

PROCEDURE AvoidGeneratedStepErrors(objGDWindow)
LOCAL objgdwindow as Form
LOCAL result
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

IF .not. EMPTY(t38->stepinterid)
  result = this.checknewstep()
  
	* new step
	objgdwindow.command1.enabled = result
	* Interact
	objgdwindow.command5.enabled = result
	* paste
	objgdwindow.command9.enabled = result
ELSE
  * new step
	objgdwindow.command1.enabled = .t.
	* Interact
	objgdwindow.command5.enabled = .t.
	* paste
	objgdwindow.command9.enabled = .t.
ENDIF


RETURN

PROCEDURE TaskonStepsInTheSameInteraction(oGDWindow,cProcName)
LOCAL prec,mykeyrecarr,looprs,loopre,myid,myres,myend,x,myrecnum,mynewlooprs,myrec,t
LOCAL c_table,n_record
LOCAL myiid

c_table = ALIAS()
n_record = RECNO()

  		 	 		SELECT t38
																					
													*********************************************************
				 								 prec = RECNO()
												  DIMENSION mykeyrecarr(1,4)
												  mykeyrecarr(1,1) = t38->stepid
												  mykeyrecarr(1,2) = prec
												  mykeyrecarr(1,3) = t38->stepinterid
												  mykeyrecarr(1,4) = t38->stepinternum
												  
			 						 		  looprs = ALEN(mykeyrecarr,1)
		 	 								  loopre = 0
				 				 			  SELECT t38
												  SET FILTER TO UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
												  GOTO top
	    								    DO WHILE looprs != loopre
  	 															looprs = ALEN(mykeyrecarr,1)
 																	SELECT t38
  																 SCAN
   																		* search if item is in select branch of tree or belong to the same interaction
  																			myid = t38->parentid
  																			myiid = t38->stepinterid
  																			myres = .f.
  																			myend = ALEN(mykeyrecarr,1)
 																		 	FOR x = 1 TO myend
  																						IF UPPER(ALLTRIM(mykeyrecarr(x,1))) == UPPER(ALLTRIM(myid)) 
  																									myres = .t.
	  																								EXIT
  																						ENDIF
  																						IF .not. EMPTY(ALLTRIM(myiid))
  																						if UPPER(ALLTRIM(mykeyrecarr(x,3))) == UPPER(ALLTRIM(myiid))
  																									myres = .t.
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
  																								myres = .f.
	 																					 		EXIT
 																			 		ENDIF
																		  	NEXT
   								 										IF myres = .t.
   																					 mynewlooprs = ALEN(mykeyrecarr,1) + 1
   																					 DIMENSION mykeyrecarr(mynewlooprs,4)
   																				   mykeyrecarr(mynewlooprs,1) = t38->stepid
   																					 mykeyrecarr(mynewlooprs,2) = myrecnum
   																					 mykeyrecarr(mynewlooprs,3) = t38->stepinterid
												 										 mykeyrecarr(mynewlooprs,4) = t38->stepinternum
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
																			
																			
																		************** Task

																		&cProcName(oGDWindow)
																	
																												  
																		****************************
																		   
  																		      		
																	ENDIF
													NEXT
					 
											
  				*--------------------------*
  				
  				SELECT (c_table)
  				GOTO n_record
  				
RETURN

PROCEDURE IgnoreStep(oGDWindow)

  		SELECT t38
			replace stepdis WITH oGDWindow.check1.Value
			oGDWindow.oletree.Nodes.item(ALLTRIM(stepid)).Selected = .T.
			IF  oGDWindow.check1.Value = .t.
				oGDWindow.container1.oletree.selectedItem.Image = "ignore"
			ELSE

				IF empty(ALLTRIM(stepinterid))
			 	 oGDWindow.container1.oletree.selectedItem.image = "person"
				else
			 	 oGDWindow.container1.oletree.selectedItem.image = "cmd"
				endif

			ENDIF
RETURN

PROCEDURE DeleteStep(oGDWindow)
 		IF DELETED() = .f.
						oGDWindow.oleTree.Nodes.Remove(UPPER(ALLTRIM(stepid)))
  					DELETE
     ENDIF
RETURN

PROCEDURE CheckNewStep()

LOCAL cTable,nRecord
LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule
 
c_table = ALIAS()
n_record = RECNO()
 
myret = .f.
	
cInterNum = ALLTRIM(STR(t38->stepinternum))
	
SELECT t46
GOTO top
IF .not. EMPTY(t38->stepinterid)
	locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
	
  IF FOUND()
  
  	cHis = f_myhis
  	cFile = UPPER(ALLTRIM(MLINE(cHis,9)))
  	IF FILE(cFile)
  		cFile = STRTRAN(cFile,".TRF",".RULES")
  		IF FILE(cFile)
  			cRules = FILETOSTR(cFile)
  			cRules = UPPER(cRules)
  			
  			nMax = MEMLINES(cRules)
  			FOR X = 1 TO nMax
  				cLine = MLINE(cRules,x)
  				cLine = ALLTRIM(cLine)
  				cRule = "AllowInteraction: " + cInterNum
  				IF UPPER(ALLTRIM(cLine)) == UPPER(ALLTRIM(cRule))
  			 		myret = .t.
  			  ENDIF  
  			NEXT
  			
  					
  		ENDIF
  	ENDIF
  
  ENDIF
ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

  
ENDDEFINE


			

