	PARAMETERS objRunTrfForm
	LOCAL myobj

	fs_sw = 1

	* save the parent
	theparent = mygstree.SELECTEDITEM.KEY

	*------- RPWI TEMP VARIABLES
	DIMENSION rpwi_vars(1,2)
	rpwi_vars(1,1) = "VARNAME_HERE"
	rpwi_vars(1,2) = "VARVALUE_HERE"
	rpwi_vars_count =  1
	rpwi_active_var = 1
	*----------------------------------
	SELECT t38
	my38rec = RECNO()
	lv_delsemi = .F.
	lv_semichar = ""
	lv_semilevel = 1
	lv_level2code = stepid
	lv_level3code = parentid
	mystepcounter = 0
	IF myhisrec > 0
		SELECT t46
		v_nowiid = f_iid
		stepsnum = stepsnum + 1
		v_mykey = ALLTRIM(STR(stepsnum) + "_")
		IF pv_his = .F.
			APPEND BLANK
			REPLACE f_iid WITH v_mykey
			REPLACE f_stepid WITH t38->stepid
		ELSE
			REPLACE f_iid WITH v_nowiid
		ENDIF
		REPLACE f_myhis WITH myhis
		REPLACE f_hisdate WITH DTOC(DATE())
		REPLACE f_histime WITH TIME()
		SELECT t38
	ENDIF
	SELECT t42
	mylast = MEMLINES(m_pair1)
	old_mask = m_mask

	*-----------------------------------------* needed for error checkig
	* store m_mask into array , remove tabs
	tv_lines = MEMLINES(m_mask)
	IF tv_lines > 0
		DIMENSION tv_error(tv_lines)
		FOR tv_x = 1 TO tv_lines
			tv_error(tv_x) = MLINE(m_mask,tv_x)
			DO WHILE ASC(LEFT(tv_error(tv_x),1)) = 9
				tv_error(tv_x) = SUBSTR(tv_error(tv_x),2)
			ENDDO
			tv_error(tv_x) = ALLTRIM(tv_error(tv_x))
		NEXT
	ENDIF
	*-----------------------------------------*

	FOR x = 1 TO mylast
		myvar = UPPER(ALLTRIM(MLINE(m_pair1,x)))
		myvar2 = UPPER(ALLTRIM(MLINE(m_pair2,x)))
		LOCATE FOR UPPER(ALLTRIM(o_var)) == UPPER(ALLTRIM(myvar))
		IF FOUND()
			myrn = RECNO()
			myobj = objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLS(myrn)
			IF t42->rectype = 2 && textbox
				myvalue = ALLTRIM(myobj.VALUE)
				myvalueh = myvalue
			ENDIF
			IF t42->rectype = 3 && listbox
				IF o_trans = 0
					myvalue = ALLTRIM(STR(myobj.LISTINDEX))
					myvalueh = myvalue
				ELSE
					myid = myobj.INDEXTOITEMID(myobj.LISTINDEX)
					myvalue = ALLTRIM(myobj.LISTITEM(myid))
					myvalueh = ALLTRIM(STR(myobj.LISTINDEX))
				ENDIF
			ENDIF
			IF t42->rectype = 4 && checkbox
				myvalue = ALLTRIM(STR(myobj.VALUE))
				myvalueh = myvalue
			ENDIF
			m_mask = STRTRAN(m_mask,myvar2,myvalue)

			*-------------------------------------------* needed for error checkig
			* replace test variables with corrosponding values
			FOR tv_x = 1 TO tv_lines
				IF UPPER(LEFT(tv_error(tv_x),11)) == "<RPWI:TEST>"
					tv_error(tv_x) = STRTRAN(tv_error(tv_x),myvar2,myvalue)
				ENDIF
			NEXT
			*-------------------------------------------*

			SELECT t46
			REPLACE f_myhis WITH f_myhis + UPPER(ALLTRIM(myvar)) + "=" +  myvalueh + CHR(13)
			SELECT t42
		ENDIF
	NEXT

	*-------------------------------------------* needed for error checkig
	* restore array to memo, replace m_mask with this memo
	tv_testcode = ""
	FOR tv_x = 1 TO tv_lines
		tv_testcode = tv_testcode + tv_error(tv_x) + CHR(13) + CHR(10)
	NEXT
	tv_mask = m_mask
	m_mask = tv_testcode
	*-------------------------------------------*

	*******************************
	* Determine total steps, and array determine for each step, it's used or not
	myv_steps = 0
	mymemo = m_mask
	mylast = MEMLINES(mymemo)
	FOR x = 1 TO mylast
		myvar = ALLTRIM(MLINE(mymemo,x))
		DO WHILE ASC(LEFT(myvar,1)) = 9
			myvar = SUBSTR(myvar,2)
		ENDDO
		IF UPPER(LEFT(myvar,14)) == "<RPWI:NEWSTEP>"
			myv_steps  = myv_steps  + 1
		ENDIF
	NEXT
	DIMENSION myv_stepuse[MYV_STEPS]
	FOR x = 1 TO myv_steps
		myv_stepuse[MYV_STEPS] = .F.
	NEXT
	*-------- <RPWI:TEST>
	myttype = 0 && NEGATIVE TEST TYPE
	addres = .T.
	mytvalue = "0" && MYTESTVALUE
	mycont = .T.
	DO WHILE mycont = .T.
		mycont = .F.
		mymemo = m_mask
		myres = ""
		myinfres = ""
		mylast = MEMLINES(mymemo)
		FOR x = 1 TO mylast
			myvar = ALLTRIM(MLINE(mymemo,x))
			DO WHILE ASC(LEFT(myvar,1)) = 9
				myvar = SUBSTR(myvar,2)
			ENDDO
			IF UPPER(LEFT(myvar,15)) == "<RPWI:POSITIVE>"
				myttype = 1
				IF .NOT. EMPTY(myvar)
					myres = myres + myvar + CHR(13) + CHR(10)
				ENDIF
				LOOP
			ENDIF
			IF UPPER(LEFT(myvar,15)) == "<RPWI:NEGATIVE>"
				myttype = 0
				IF .NOT. EMPTY(myvar)
					myres = myres + myvar + CHR(13) + CHR(10)
				ENDIF
				LOOP
			ENDIF
			IF UPPER(LEFT(myvar,12)) == "<RPWI:VALUE>"
				mytvalue = ALLTRIM(SUBSTR(myvar,13))
				IF .NOT. EMPTY(myvar)
					myres = myres + myvar + CHR(13) + CHR(10)
				ENDIF
				LOOP
			ENDIF
			IF UPPER(LEFT(myvar,11)) == "<RPWI:TEST>"
				mycount = 1
				myvar2 = SUBSTR(myvar,12)
				IF AT(mytvalue,myvar2) >= 1
					IF myttype = 0
						addres = .F.
					ELSE
						addres = .T.
					ENDIF
				ELSE
					IF myttype = 0
						addres = .T.
					ELSE
						addres = .F.
					ENDIF
				ENDIF
				mystart = x+1
				FOR T = mystart TO mylast
					myvar3 = ALLTRIM(MLINE(mymemo,T))
					DO WHILE ASC(LEFT(myvar3,1)) = 9
						myvar3 = SUBSTR(myvar3,2)
					ENDDO
					IF UPPER(LEFT(myvar3,11)) == "<RPWI:TEST>"
						mycont = .T.
						mycount = mycount + 1
					ENDIF
					IF UPPER(LEFT(myvar3,14)) == "<RPWI:ENDTEST>"
						IF mycount = 1
							IF addres = .T.
								FOR Y = x+1 TO T-1
									myvar4 = ALLTRIM(MLINE(mymemo,Y))
									DO WHILE ASC(LEFT(myvar4,1)) = 9
										myvar4 = SUBSTR(myvar4,2)
									ENDDO
									myres = myres + myvar4 + CHR(13) + CHR(10)
								NEXT
							ELSE
								* EACH STEP - ONE UNIQUE ID
								FOR Y = x+1 TO T-1
									myvar4 = ALLTRIM(MLINE(mymemo,Y))
									DO WHILE ASC(LEFT(myvar4,1)) = 9
										myvar4 = SUBSTR(myvar4,2)
									ENDDO
									IF UPPER(LEFT(myvar,14)) == "<RPWI:NEWSTEP>"
										mystepcounter = mystepcounter + 1
									ENDIF
								NEXT

							ENDIF
							x = T
							EXIT
						ELSE
							IF .NOT. mycount = 1
								mycount = mycount - 1
							ENDIF
						ENDIF
					ENDIF
				NEXT
			ELSE
				IF .NOT. EMPTY(myvar)
					myres = myres + myvar + CHR(13) + CHR(10)
				ENDIF
			ENDIF
		NEXT
		m_mask = myres
	ENDDO
	mymemo = m_mask
	myres = ""
	mylast = MEMLINES(mymemo)
	FOR x = 1 TO mylast
		myvar = ALLTRIM(MLINE(mymemo,x))
		DO WHILE ASC(LEFT(myvar,1)) = 9
			myvar = SUBSTR(myvar,2)
		ENDDO
		IF UPPER(LEFT(myvar,15)) == "<RPWI:POSITIVE>"
			myttype = 1
			LOOP
		ENDIF
		IF UPPER(LEFT(myvar,15)) == "<RPWI:NEGATIVE>"
			myttype = 0
			LOOP
		ENDIF
		IF UPPER(LEFT(myvar,12)) == "<RPWI:VALUE>"
			mytvalue = ALLTRIM(SUBSTR(myvar,13))
			LOOP
		ENDIF
		IF .NOT. EMPTY(myvar)
			myres = myres + myvar + CHR(13) + CHR(10)
		ENDIF
	NEXT

	*-------------------------------------------* needed for error checkig
	* replace  the variables (not after test)
	mylast = MEMLINES(m_pair1)
	FOR x = 1 TO mylast
		myvar = UPPER(ALLTRIM(MLINE(m_pair1,x)))
		myvar2 = UPPER(ALLTRIM(MLINE(m_pair2,x)))
		SELECT t42
		GOTO TOP
		LOCATE FOR UPPER(ALLTRIM(o_var)) == UPPER(ALLTRIM(myvar))
		IF FOUND()
			myrn = RECNO()
			myobj = objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLS(myrn)
			IF t42->rectype = 2 && textbox
				myvalue = ALLTRIM(myobj.VALUE)
				myvalueh = myvalue
				myvaluet = myvalueh
			ENDIF
			IF t42->rectype = 3 && listbox
				IF o_trans = 0
					myvalue = ALLTRIM(STR(myobj.LISTINDEX))
					myvalueh = myvalue
					myvaluet = myvalueh
				ELSE
					myid = myobj.INDEXTOITEMID(myobj.LISTINDEX)
					myvalue = ALLTRIM(myobj.LISTITEM(myid))
					myvalueh = ALLTRIM(STR(myobj.LISTINDEX))
					myvaluet = "1"
				ENDIF
			ENDIF
			IF t42->rectype = 4 && checkbox
				myvalue = ALLTRIM(STR(myobj.VALUE))
				myvalueh = myvalue
				myvaluet = myvalueh
			ENDIF


			IF AT(myvar2,myres) > 0 .OR. AT(myvar2,pstepcode) > 0
				tv_cont = nocerror(myvaluet)
				IF tv_cont = .F.
					RETURN
				ENDIF
			ENDIF

			myres = STRTRAN(myres,myvar2,myvalue)
			pstepcode = STRTRAN(pstepcode,myvar2,myvalue)

		ENDIF
	NEXT
	SELECT t42
	GOTO TOP
	*-------------------------------------------*


	*--------
	pstepcode = pstepcode + myres
	pinf = pinf + myinfres
	m_mask = old_mask
	********************************************
	*----------------------------------* RPWI STATEMENTS FOR GOAL DESIGNER
	DIMENSION stepsarr(1)
	stepsarrsize = 0
	lastscode = mygstree.SELECTEDITEM.KEY && LAST STEP CODE
	DIMENSION mymark[30]
	FOR m = 1 TO 30
		mymark(m) = lastscode
	NEXT
	mymemo = pstepcode
	mymemo2 = ""
	mylast = MEMLINES(mymemo)
	myft = .T.
	FOR x = 1 TO mylast
		myvar = ALLTRIM(MLINE(mymemo,x))
		rpwicmd = .F.
		IF UPPER(LEFT(myvar,11)) == "<RPWI:NOTE>"
			rpwicmd = .T.
			myvar = ""
		ENDIF
		IF UPPER(LEFT(myvar,17)) == "<RPWI:IGNORELAST>"
			lv_delsemi = .T.
			lv_semichar = ALLTRIM(SUBSTR(myvar,18))
			rpwicmd = .T.
			myvar = ""
		ENDIF
		IF UPPER(LEFT(myvar,18)) == "<RPWI:IGNORELEVEL>"
			lv_semilevel = VAL(ALLTRIM(SUBSTR(myvar,19)))
			rpwicmd = .T.
			myvar = ""
		ENDIF
		IF UPPER(LEFT(myvar,3)) == "<*>"
			rpwicmd = .T.
			myvar = ""
		ENDIF
		IF UPPER(LEFT(myvar,18)) == "<RPWI:INFORMATION>"
			rpwicmd = .T.
			myivalue = ALLTRIM(SUBSTR(myvar,19))
			myinfres = myinfres + myivalue + CHR(13) + CHR(10)
			myvar = ""
		ENDIF

		IF UPPER(LEFT(myvar,13)) == "<RPWI:NEWVAR>"
			rpwicmd = .T.
			myivalue = ALLTRIM(SUBSTR(myvar,14))
			rpwi_vars_count = rpwi_vars_count + 1
			DIMENSION rpwi_vars(rpwi_vars_count,2)
			rpwi_vars(rpwi_vars_count,1) = myivalue
			rpwi_vars(rpwi_vars_count,2) = myivalue
			rpwi_active_var = rpwi_vars_count
			myvar = ""
		ENDIF

		IF UPPER(LEFT(myvar,18)) == "<RPWI:SETVARVALUE>"
			rpwicmd = .T.
			myivalue = ALLTRIM(SUBSTR(myvar,19))
			IF .NOT. rpwi_active_var = 1
				rpwi_vars(rpwi_active_var,2) = myivalue
			ENDIF
			myvar = ""
		ENDIF

		IF UPPER(LEFT(myvar,16)) == "<RPWI:SELECTVAR>"
			rpwicmd = .T.
			myivalue = ALLTRIM(SUBSTR(myvar,17))
			rpwi_active_var = 1
			IF .NOT. rpwi_vars_count = 1
				FOR tv_x = 2 TO rpwi_vars_count
					IF UPPER(ALLTRIM(rpwi_vars(tv_x,1))) == UPPER(ALLTRIM(myivalue))
						rpwi_active_var = tv_x
						EXIT
					ENDIF
				NEXT
			ENDIF
			myvar = ""
		ENDIF

		IF UPPER(LEFT(myvar,28)) == "<RPWI:REPLACEVARSWITHVALUES>"
			rpwicmd = .T.
			IF .NOT. rpwi_vars_count = 1
				FOR tv_x = 2 TO rpwi_vars_count
					myivalue = "<" + ALLTRIM(UPPER(rpwi_vars(tv_x,1))) + ">"
					mymemo = STRTRAN(mymemo,myivalue,rpwi_vars(tv_x,2))
				NEXT
			ENDIF
			myvar = ""
		ENDIF


		IF UPPER(LEFT(myvar,14)) == "<RPWI:PUTMARK>"
			rpwicmd = .T.
			myvalue = VAL(ALLTRIM(SUBSTR(myvar,15)))
			IF myvalue <= 30 .AND. myvalue > 1
				mymark(myvalue) = lastscode
				myvar = ""
			ENDIF
		ENDIF
		********************* Select step by name - this amazing command enable us to create related components (Very useful for C#PWCT)
		IF UPPER(LEFT(myvar,23)) == "<RPWI:SELECTSTEPBYNAME>"
			rpwicmd = .T.
			myvalue = ALLTRIM(SUBSTR(myvar,24))

			* save the current step code
			SELECT t38
			REPLACE stepcode WITH stepcode + mymemo2
			mygframe.page4.edit1.VALUE = pstepcode
			REPLACE stepinf WITH stepinf +  myinfres
			myinfres = ""
			mymemo2 = ""
			* goto the step that is determined by the Name
			SELECT t38
			LOCATE FOR UPPER(ALLTRIM(stepid)) = UPPER(ALLTRIM(lv_level2code)) .AND. ;
				UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
			lv_stepinterid = stepinterid
			LOCATE FOR UPPER(ALLTRIM(stepinterid)) = UPPER(ALLTRIM(lv_stepinterid)) .AND. ;
				UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
				UPPER(ALLTRIM(stepname)) = UPPER(ALLTRIM(myvalue))
			IF FOUND()
				mygstree.nodes.ITEM(UPPER(ALLTRIM(stepid))).SELECTED = .T.
				myvar = ""

			ELSE

				* step not in the same interaction level - search all over the goal

				LOCATE FOR UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
					UPPER(ALLTRIM(stepname)) = UPPER(ALLTRIM(myvalue))
				IF FOUND()
					mygstree.nodes.ITEM(UPPER(ALLTRIM(stepid))).SELECTED = .T.
					myvar = ""
				ENDIF



			ENDIF
		ENDIF
		**********************



		IF UPPER(LEFT(myvar,14)) == "<RPWI:SETMARK>"
			rpwicmd = .T.
			myvalue = VAL(ALLTRIM(SUBSTR(myvar,15)))
			IF myvalue <= 30 .AND. myvalue >= 1
				* save the current step code
				SELECT t38
				REPLACE stepcode WITH stepcode + mymemo2
				mygframe.page4.edit1.VALUE = pstepcode
				*IF myogroup.Value = 1
				REPLACE stepinf WITH stepinf +  myinfres
				*ELSE
				* 	 replace stepinf WITH MYINFRES
				* 	ENDIF
				myinfres = ""
				mymemo2 = ""
				* goto the step that is determined by the mark
				mygstree.nodes.ITEM(mymark(myvalue)).SELECTED = .T.
				myvar = ""
				* goto the record where step is found
				SELECT t38
				LOCATE FOR UPPER(ALLTRIM(stepid)) = UPPER(ALLTRIM(mygstree.SELECTEDITEM.KEY)) .AND. ;
					UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
			ENDIF
		ENDIF
		IF UPPER(LEFT(myvar,14)) == "<RPWI:NEWSTEP>"
			mystepcounter = mystepcounter + 1
			myv_stepuse[MYSTEPCOUNTER] = .T.
			rpwicmd = .T.
			myvalue = ALLTRIM(SUBSTR(myvar,15))
			SELECT t38
			REPLACE stepcode WITH stepcode + mymemo2
			mygframe.page4.edit1.VALUE = pstepcode
			REPLACE stepinf WITH stepinf +  myinfres
			myinfres = ""
			mymemo2 = ""
			o = mygstree
			IF !ISNULL(o.SELECTEDITEM) THEN
				mytxt = myvalue
				IF .NOT. EMPTY(mytxt)
					pkey = o.SELECTEDITEM.KEY
					IF myogroup.VALUE = 1 && add
						mykey = mygdform.newkey()
						myadd = o.nodes.ADD(ALLTRIM(pkey), 4, ALLTRIM(mykey), SPACE(2) + mytxt + SPACE(2),0)
						myadd.IMAGE = "cmd"
						o.nodes.ITEM(ALLTRIM(mykey)).SELECTED = .T.
						lastscode = ALLTRIM(mykey)
						o.nodes.ITEM(ALLTRIM(pkey)).SELECTED = .T.
						SELECT t38
						APPEND BLANK
						IF lv_semilevel = 1
							stepsarrsize = stepsarrsize + 1
							DIMENSION stepsarr(stepsarrsize)
							stepsarr(stepsarrsize) = RECNO()
						ENDIF
						REPLACE goalid WITH t33->goalhandle
						REPLACE parentid WITH ALLTRIM(pkey)
						REPLACE stepid WITH ALLTRIM(mykey)
						REPLACE stepname WITH ALLTRIM(mytxt)
						REPLACE stepinterid WITH t46->f_iid
						REPLACE stepinternum WITH mystepcounter

						* Set Step Colors
						obj_stepscolors.setstepcolor(mygdform)
						****************************************************

					ELSE && modify
						SELECT t38
						v_myend = RECCOUNT()
						v_found = .F.
						IF v_myend > 0
							FOR v_x = v_myend TO 1 STEP -1
								GOTO v_x
								IF stepinternum = mystepcounter .AND. ;
										ALLTRIM(stepinterid) == ALLTRIM(v_nowiid)  .AND. ;
										UPPER(ALLTRIM(parentid)) == UPPER(ALLTRIM(pkey))
									IF lv_semilevel = 1
										stepsarrsize = stepsarrsize + 1
										DIMENSION stepsarr(stepsarrsize)
										stepsarr(stepsarrsize) = RECNO()
									ENDIF
									lastscode = ALLTRIM(stepid)
									REPLACE stepcode WITH ""
									REPLACE stepinf WITH ""
									REPLACE stepname WITH ALLTRIM(mytxt)
									myoldkey = mygstree.SELECTEDITEM.KEY
									mygstree.nodes.ITEM(ALLTRIM(stepid)).SELECTED = .T.
									mygstree.SELECTEDITEM.TEXT = SPACE(2) + ALLTRIM(mytxt) + SPACE(2)
									mygstree.nodes.ITEM(ALLTRIM(myoldkey)).SELECTED = .T.
									v_found = .T.
									EXIT
								ENDIF
							NEXT
						ENDIF
						IF v_found = .F. && add operation
							mykey = mygdform.newkey()
							myadd = o.nodes.ADD(ALLTRIM(pkey), 4, ALLTRIM(mykey),SPACE(2) + mytxt + SPACE(2),0)
							myadd.IMAGE = "cmd"
							o.nodes.ITEM(ALLTRIM(mykey)).SELECTED = .T.
							lastscode = ALLTRIM(mykey)
							o.nodes.ITEM(ALLTRIM(pkey)).SELECTED = .T.
							SELECT t38
							APPEND BLANK
							IF lv_semilevel = 1
								stepsarrsize = stepsarrsize + 1
								DIMENSION stepsarr(stepsarrsize)
								stepsarr(stepsarrsize) = RECNO()
							ENDIF
							REPLACE goalid WITH t33->goalhandle
							REPLACE parentid WITH ALLTRIM(pkey)
							REPLACE stepid WITH ALLTRIM(mykey)
							REPLACE stepname WITH mytxt
							REPLACE stepinterid WITH t46->f_iid
							REPLACE stepinternum WITH mystepcounter

							* Set Step Colors
							obj_stepscolors.setstepcolor(mygdform)
							****************************************************

						ENDIF
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		IF  rpwicmd = .F.
			IF .NOT. EMPTY(ALLTRIM(myvar))
				mymemo2 = mymemo2 + myvar + CHR(13) + CHR(10)
			ENDIF
		ENDIF
	NEXT
	SELECT t38
	pstepcode = mymemo2
	IF myogroup.VALUE = 1 .AND. myft = .T.
		mygframe.page4.edit1.VALUE = stepcode +  pstepcode
	ELSE
		mygframe.page4.edit1.VALUE =  pstepcode
	ENDIF
	REPLACE stepcode WITH mygframe.page4.edit1.VALUE
	IF myogroup.VALUE = 1
		REPLACE stepinf WITH stepinf +  myinfres
	ELSE
		REPLACE stepinf WITH myinfres
	ENDIF
	mygframe.page3.edit1.VALUE = stepinf
	********************************************
	IF lv_delsemi = .T.
		SELECT t38
		myrec = RECNO()
		IF lv_semilevel = 2 && PARENT
			SCAN FOR UPPER(ALLTRIM(parentid)) == UPPER(ALLTRIM(lv_level2code))
				stepsarrsize = stepsarrsize + 1
				DIMENSION stepsarr(stepsarrsize)
				stepsarr(stepsarrsize) = RECNO()
			ENDSCAN
			GOTO BOTTOM
		ENDIF
		IF lv_semilevel = 3 && PARENT OF PARENT
		ENDIF
		lv_done = .F.
		IF stepsarrsize > 0
			FOR T = stepsarrsize TO 1 STEP -1
				SELECT t38
				GOTO stepsarr(T)
				lv_stepcode = t38->stepcode
				lv_max = MEMLINES(lv_stepcode)
				lv_myres = ""
				FOR t2 = lv_max TO 1 STEP -1
					lv_line = ALLTRIM(MLINE(lv_stepcode,t2))
					IF RIGHT(lv_line,LEN(lv_semichar)) = lv_semichar .AND. lv_done = .F.
						lv_done = .T.
						lv_line	= LEFT(lv_line,LEN(lv_line)-1)
					ENDIF
					lv_myres = lv_line + CHR(13) + CHR(10) + lv_myres
				NEXT
				REPLACE t38->stepcode WITH lv_myres
				IF lv_done = .T.
					EXIT
				ENDIF
			NEXT
		ENDIF
		SELECT t38
		GOTO myrec
		mygframe.page4.edit1.VALUE = stepcode
	ENDIF
	********************************************
	pstepcode = ""
	GOTO my38rec
	*********************** Delete steps not used
	SELECT t38
	myrec = RECNO()
	FOR x = 1 TO myv_steps
		IF myv_stepuse[X] = .F.
			LOCATE FOR stepinterid = t46->f_iid .AND. stepinternum = x
			IF FOUND()
				mygstree.nodes.REMOVE(UPPER(ALLTRIM(stepid)))
				DELETE
			ENDIF
		ENDIF
	NEXT
	GOTO TOP
	mylast = RECCOUNT()
	FOR x = 1 TO mylast
		GOTO x
		myid = UPPER(ALLTRIM(parentid))
		IF .NOT. UPPER(ALLTRIM(myid)) == "SP_"
			LOCATE FOR UPPER(ALLTRIM(stepid)) == myid .AND. .NOT. DELETED()
			IF .NOT. FOUND()
				GOTO x
				DELETE
			ENDIF
		ENDIF
	NEXT
	PACK
	GOTO myrec
	********************************************
	stmsg(sysmsg(1566))

	* restore the parent
	mygstree.nodes.ITEM(ALLTRIM(theparent)).SELECTED = .T.

	* autoname
	mymax = objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLCOUNT
	FOR x = 1 TO mymax
		TRY
			IF objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLS(x).lautoname = .T.
				temp_caption = objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLS(x).tautoname
				temp_caption = sys_autonumber(temp_caption)
				objRunTrfForm._scrollcontainer1.viewframe.clientarea.CONTROLS(x).VALUE = temp_caption
			ENDIF
		CATCH
		ENDTRY

	NEXT