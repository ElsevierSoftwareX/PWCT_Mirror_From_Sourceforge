PARAMETERS P_IID,lRefreshsteps

LOCAL cSelectedItem

* The idea behind using lRefreshSteps is to fix a problem related to updating steps based on components updates
* the problem is when the interaction page contains listbox and this listbox returns item instead of index
* in this case the update code must open the interaction page file to map the listbox index to listbox item
* then the listbox item is used for updating the code mask instead of listbox index to avoid bad code generation. 

IF PCOUNT() > 1
lRefreshSteps = .t.
ELSE
lRefreshSteps = .f.
ENDIF

PSTEPCODE = ""
PINF = ""

* prepare t46
SELECT T46
GOTO TOP

LOCATE FOR UPPER(ALLTRIM(F_IID)) == UPPER(ALLTRIM(P_IID))
AX_MYHIS = F_MYHIS
MYHIS = F_MYHIS
IF FOUND()
**** [Start of updating ] ********************************************************
* prepare t38
SELECT t38
mygdform.container1.oletree.Nodes.item(ALLTRIM(UPPER(ALLTRIM(t46->f_stepid)))).Selected = .T.
mygdform.container1.oletree.Nodes.item(ALLTRIM(UPPER(ALLTRIM(t46->f_stepid)))).Expanded = .F.
IF .not. UPPER(ALLTRIM(t46->f_stepid)) == "SP_"
LOCATE FOR UPPER(STEPID) == UPPER(ALLTRIM(t46->f_stepid))
ENDIF
* prepare masks
run_trf = ALLTRIM(MLINE(t46->f_myhis,9))
IF FILE(run_trf)
SELECT 0
USE (run_trf) ALIAS "t_trf"
GOTO top
m_mask = t_trf->f_mask
m_pair1 = t_trf->f_pair1
m_pair2 = t_trf->f_pair2
IF lRefreshSteps = .t.
m_pages = t_trf->f_pages
m_files = t_trf->f_files
endif
USE
ENDIF

*****************************
IF lRefreshSteps = .t.
FOR tv_x1 = 1 TO MEMLINES(m_files)
myfile = MLINE(m_files,tv_x1)
mypstr = "[" + ALLTRIM(mLINE(m_pages,tv_x1)) + "] "
IF FILE(myfile)
	SELECT 0
	USE (myfile) ALIAS "idf_open"
	SCAN
	  
		IF rectype = 3
		

		IF idf_open->o_trans = 0

		ELSE

						tvar_vname = mypstr + ALLTRIM(idf_open->o_var)
						tvar_options = idf_open->o_options
						
						* update the history to replace list index with list item
						ax_max = MEMLINES(ax_myhis)
						FOR ax_x = 13 TO ax_max
  						
									  axline = MLINE(AX_MYHIS,ax_x)
  									axline = UPPER(ALLTRIM(axline))
									  axline = LEFT(axline,AT("=",axline)-1)
									  
							 	   IF UPPER(ALLTRIM(tvar_vname)) == UPPER(ALLTRIM(axline))
							 	   
											 	  axline = MLINE(AX_MYHIS,ax_x)
									    	   myvalue = SUBSTR(axline,AT("=",axline)+1)
									    	   mynewvalue = ALLTRIM(MLINE(tvar_options,VAL(myvalue)))
									    	   mynewaxline = UPPER(ALLTRIM(tvar_vname)) +"=" + mynewvalue
									    	   
									    	   * MESSAGEBOX(MYNEWAXLINE,0,AXLINE)
									    	   
		 										  ax_myhis = STRTRAN(ax_myhis,axline,mynewaxline)
		 										  
		 										  exit
									  ENDIF
  							
						NEXT
						
						***********************************************************
						
		ENDIF

   ENDIF

  	SELECT idf_open
 	ENDSCAN
 	GOTO bottom
	USE
ENDIF

NEXT
ENDIF


************ LET MASK VARIABLES BE IN CAPITAL LETTERS
LV_MYMAX = MEMLINES(M_MASK)
LV_RES = ""
LV_TEMP = 0
FOR LV_X = 1 TO LV_MYMAX
LV_LINE = MLINE(M_MASK,LV_X)
LV_MYMAX2 = LEN(LV_LINE)
  LV_STATUS = 0
	FOR LV_X2 = 1 TO LV_MYMAX2
		LV_MYLET = SUBSTR(LV_LINE,LV_X2,1)
		IF LV_MYLET = "<"
		LV_STATUS = 1
		LV_TEMP = LV_X2
		ENDIF
		IF LV_STATUS = 0
		LV_RES = LV_RES + LV_MYLET
		ENDIF
		IF LV_MYLET = ">" .AND.	LV_STATUS = 1
		LV_WORD = UPPER(ALLTRIM(SUBSTR(LV_LINE,LV_TEMP,LV_X2-LV_TEMP+1)))
		LV_RES = LV_RES + LV_WORD
		LV_STATUS = 0
		LV_TEMP = 0
		ENDIF
	NEXT
	LV_RES  = LV_RES + CHR(13) + CHR(10)
NEXT
M_MASK = LV_RES
* run the code mask
*------- RPWI TEMP VARIABLES 
DIMENSION RPWI_VARS(1,2)
RPWI_VARS(1,1) = "VARNAME_HERE"
RPWI_VARS(1,2) = "VARVALUE_HERE"
RPWI_VARS_COUNT =  1
RPWI_ACTIVE_VAR = 1
*----------------------------------
SELECT t38
lv_delsemi = .F.
LV_SEMICHAR = ""
LV_SEMILEVEL = 1
LV_LEVEL2CODE = STEPID
LV_LEVEL3CODE = PARENTID
mystepcounter = 0
SELECT t46
v_nowiid = f_iid
STEPSNUM = STEPSNUM + 1
v_myKey = ALLTRIM(STR(STEPSNUM) + "_")

SELECT t38


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
	tv_error(tv_x) = alltrim(tv_error(tv_x))
NEXT
ENDIF
*-----------------------------------------*


ax_max = MEMLINES(ax_myhis)
FOR ax_x = 13 TO ax_max
  		ax_max2 = MEMLINES(m_pair1)
			FOR ax_x2 = 1 TO ax_max2
			  myvar = UPPER(ALLTRIM(MLINE(m_pair1,ax_x2)))
		    axline = MLINE(AX_MYHIS,ax_x)
  			axline = UPPER(ALLTRIM(axline))
			  axline = LEFT(axline,AT("=",axline)-1)
	 	  IF UPPER(ALLTRIM(myvar)) == UPPER(ALLTRIM(axline))
				 	  axline = MLINE(AX_MYHIS,ax_x)
		    	   myvalue = SUBSTR(axline,AT("=",axline)+1)
			 		  myvar2 = UPPER(ALLTRIM(MLINE(m_pair2,ax_x2)))
		 			  MYVALUEH = MYVALUE
		 					  m_mask = STRTRAN(m_mask,myvar2,myvalue)
							   *-------------------------------------------* needed for error checkig
							   * replace test variables with corrosponding values
							   FOR tv_x = 1 TO tv_lines
								    IF UPPER(LEFT(tv_error(tv_x),11)) == "<RPWI:TEST>"
							 		   tv_error(tv_x) = STRTRAN(tv_error(tv_x),myvar2,myvalue)
							 	   ENDIF
							   NEXT
  		  ENDIF
  		NEXT
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
MYV_STEPS = 0
MYMEMO = M_MASK
MYLAST = MEMLINES(MYMEMO)
FOR X = 1 TO MYLAST
	MYVAR = ALLTRIM(MLINE(MYMEMO,X))
	DO WHILE ASC(LEFT(MYVAR,1)) = 9
	MYVAR = SUBSTR(MYVAR,2)
	ENDDO
	IF UPPER(LEFT(MYVAR,14)) == "<RPWI:NEWSTEP>"
 		MYV_STEPS  = MYV_STEPS  + 1
  ENDIF
NEXT
DIMENSION MYV_STEPUSE[MYV_STEPS]
FOR X = 1 TO MYV_STEPS
MYV_STEPUSE[MYV_STEPS] = .F.
NEXT
*-------- <RPWI:TEST>
MYTTYPE = 0 && NEGATIVE TEST TYPE
ADDRES = .T.
MYTVALUE = "0" && MYTESTVALUE
mycont = .t.
DO WHILE mycont = .t.
mycont = .f.
MYMEMO = M_MASK
MYRES = ""
MYINFRES = ""
MYLAST = MEMLINES(MYMEMO)
FOR X = 1 TO MYLAST
	MYVAR = ALLTRIM(MLINE(MYMEMO,X))
	DO WHILE ASC(LEFT(MYVAR,1)) = 9
	MYVAR = SUBSTR(MYVAR,2)
	ENDDO
	IF UPPER(LEFT(MYVAR,15)) == "<RPWI:POSITIVE>"
	MYTTYPE = 1
					IF .NOT. EMPTY(MYVAR)
							MYRES = MYRES + MYVAR + CHR(13) + CHR(10)
					ENDIF
	LOOP
  ENDIF
	IF UPPER(LEFT(MYVAR,15)) == "<RPWI:NEGATIVE>"
	MYTTYPE = 0
					IF .NOT. EMPTY(MYVAR)
							MYRES = MYRES + MYVAR + CHR(13) + CHR(10)
					ENDIF
	LOOP
  ENDIF
	IF UPPER(LEFT(MYVAR,12)) == "<RPWI:VALUE>"
	MYTVALUE = ALLTRIM(SUBSTR(MYVAR,13))
					IF .NOT. EMPTY(MYVAR)
							MYRES = MYRES + MYVAR + CHR(13) + CHR(10)
					ENDIF
	LOOP
  ENDIF
	IF UPPER(LEFT(MYVAR,11)) == "<RPWI:TEST>"
   mycount = 1
 	MYVAR2 = SUBSTR(MYVAR,12)
		IF AT(MYTVALUE,MYVAR2) >= 1
		 IF MYTTYPE = 0
		 ADDRES = .F.
		 ELSE
		 ADDRES = .T.
		 ENDIF
		ELSE
		 IF MYTTYPE = 0
		 ADDRES = .T.
		 ELSE
		 ADDRES = .F.
		 ENDIF
		ENDIF
		MYSTART = X+1
		FOR T = MYSTART TO MYLAST
			MYVAR3 = ALLTRIM(MLINE(MYMEMO,T))
			DO WHILE ASC(LEFT(MYVAR3,1)) = 9
			MYVAR3 = SUBSTR(MYVAR3,2)
			ENDDO
			IF UPPER(LEFT(MYVAR3,11)) == "<RPWI:TEST>"
				mycont = .t.
  			mycount = mycount + 1
			ENDIF
  		IF UPPER(LEFT(MYVAR3,14)) == "<RPWI:ENDTEST>" 
	 		if mycount = 1
				IF ADDRES = .T.
					FOR Y = X+1 TO T-1
						MYVAR4 = ALLTRIM(MLINE(MYMEMO,Y))
						DO WHILE ASC(LEFT(MYVAR4,1)) = 9
							MYVAR4 = SUBSTR(MYVAR4,2)
						ENDDO
						MYRES = MYRES + MYVAR4 + CHR(13) + CHR(10)
					NEXT
			ELSE
			* EACH STEP - ONE UNIQUE ID
				FOR Y = X+1 TO T-1
						MYVAR4 = ALLTRIM(MLINE(MYMEMO,Y))
						DO WHILE ASC(LEFT(MYVAR4,1)) = 9
							MYVAR4 = SUBSTR(MYVAR4,2)
						ENDDO
						IF UPPER(LEFT(MYVAR,14)) == "<RPWI:NEWSTEP>"
 						mystepcounter = mystepcounter + 1
 					 ENDIF
 				NEXT
					
			  ENDIF
	  		X = T
	 		 EXIT 
			 ELSE
				 IF .NOT. MYCOUNT = 1
					 mycount = mycount - 1
				 ENDIF
			 endif
		  ENDIF
		NEXT
	ELSE
					IF .NOT. EMPTY(MYVAR)
							MYRES = MYRES + MYVAR + CHR(13) + CHR(10)
					ENDIF
	ENDIF
NEXT
m_mask = myres
ENDDO
MYMEMO = M_MASK
MYRES = ""
MYLAST = MEMLINES(MYMEMO)
FOR X = 1 TO MYLAST
	MYVAR = ALLTRIM(MLINE(MYMEMO,X))
	DO WHILE ASC(LEFT(MYVAR,1)) = 9
	MYVAR = SUBSTR(MYVAR,2)
	ENDDO
	IF UPPER(LEFT(MYVAR,15)) == "<RPWI:POSITIVE>"
	MYTTYPE = 1
	LOOP
  ENDIF
	IF UPPER(LEFT(MYVAR,15)) == "<RPWI:NEGATIVE>"
	MYTTYPE = 0
	LOOP
  ENDIF
	IF UPPER(LEFT(MYVAR,12)) == "<RPWI:VALUE>"
	MYTVALUE = ALLTRIM(SUBSTR(MYVAR,13))
	LOOP
  ENDIF
	IF .NOT. EMPTY(MYVAR)
			MYRES = MYRES + MYVAR + CHR(13) + CHR(10)
	ENDIF
NEXT
*-------------------------------------------* needed for error checkig
* replace  the variables (not after test)
  
ax_max = MEMLINES(ax_myhis)
FOR ax_x = 13 TO ax_max
  		ax_max2 = MEMLINES(m_pair1)
			FOR ax_x2 = 1 TO ax_max2
			  myvar = UPPER(ALLTRIM(MLINE(m_pair1,ax_x2)))
			  axline = MLINE(AX_MYHIS,ax_x)
 			 axline = UPPER(ALLTRIM(axline))
			  axline = LEFT(axline,AT("=",axline)-1)
 	 	  IF UPPER(ALLTRIM(myvar)) == UPPER(ALLTRIM(axline))
				 	  axline = MLINE(AX_MYHIS,ax_x)
		    	   myvalue = SUBSTR(axline,AT("=",axline)+1)
			 		  myvar2 = UPPER(ALLTRIM(MLINE(m_pair2,ax_x2)))
		 			  MYVALUEH = MYVALUE
		 		    MYVALUET = MYVALUE
					   myres = STRTRAN(myres,myvar2,myvalue)
					   pstepcode = STRTRAN(pstepcode,myvar2,myvalue)
 		  ENDIF
  		NEXT
NEXT
  
 
 


PSTEPCODE = PSTEPCODE + MYRES
PINF = PINF + MYINFRES
m_mask = old_mask
********************************************
*----------------------------------* RPWI STATEMENTS FOR GOAL DESIGNER
DIMENSION STEPSARR(1)
STEPSARRSIZE = 0
LASTSCODE = mygstree.SelectedItem.Key && LAST STEP CODE
DIMENSION MYMARK[30]
FOR M = 1 TO 30
MYMARK(M) = LASTSCODE
NEXT
MYMEMO = PSTEPCODE
MYMEMO2 = ""
MYLAST = MEMLINES(MYMEMO)
MYFT = .T.
FOR X = 1 TO MYLAST
	MYVAR = ALLTRIM(MLINE(MYMEMO,X))
	RPWICMD = .F.
	IF UPPER(LEFT(MYVAR,11)) == "<RPWI:NOTE>"
   	RPWICMD = .T.
	   MYVAR = ""
	ENDIF
	IF UPPER(LEFT(MYVAR,17)) == "<RPWI:IGNORELAST>"
      LV_DELSEMI = .T. 
      LV_SEMICHAR = ALLTRIM(SUBSTR(MYVAR,18))
    	RPWICMD = .T.
	   MYVAR = ""
	ENDIF
  IF UPPER(LEFT(MYVAR,18)) == "<RPWI:IGNORELEVEL>"
      LV_SEMILEVEL = VAL(ALLTRIM(SUBSTR(MYVAR,19)))
    	RPWICMD = .T.
 	   MYVAR = ""
	ENDIF
	IF UPPER(LEFT(MYVAR,3)) == "<*>"
   	RPWICMD = .T.
	   MYVAR = ""
	ENDIF
  
  IF UPPER(LEFT(MYVAR,18)) == "<RPWI:INFORMATION>"
  	RPWICMD = .T.
		MYIVALUE = ALLTRIM(SUBSTR(MYVAR,19))
		MYINFRES = MYINFRES + MYIVALUE + CHR(13) + CHR(10)
	  MYVAR = ""
  ENDIF
  
  IF UPPER(LEFT(MYVAR,13)) == "<RPWI:NEWVAR>"
  	RPWICMD = .T.
		MYIVALUE = ALLTRIM(SUBSTR(MYVAR,14))
	  RPWI_VARS_COUNT = RPWI_VARS_COUNT + 1
	  DIMENSION RPWI_VARS(RPWI_VARS_COUNT,2)
	  RPWI_VARS(RPWI_VARS_COUNT,1) = MYIVALUE
	  RPWI_VARS(RPWI_VARS_COUNT,2) = MYIVALUE
	  RPWI_ACTIVE_VAR = RPWI_VARS_COUNT
	  MYVAR = ""
  ENDIF

  IF UPPER(LEFT(MYVAR,18)) == "<RPWI:SETVARVALUE>"
  	RPWICMD = .T.
		MYIVALUE = ALLTRIM(SUBSTR(MYVAR,19))
		IF .NOT. RPWI_ACTIVE_VAR = 1
		  RPWI_VARS(RPWI_ACTIVE_VAR,2) = MYIVALUE
	  ENDIF
	  MYVAR = ""
  ENDIF
  
   IF UPPER(LEFT(MYVAR,16)) == "<RPWI:SELECTVAR>"
  	RPWICMD = .T.
		MYIVALUE = ALLTRIM(SUBSTR(MYVAR,17))
		RPWI_ACTIVE_VAR = 1
		IF .NOT. RPWI_VARS_COUNT = 1
  	  FOR TV_X = 2 TO RPWI_VARS_COUNT
			  IF UPPER(ALLTRIM(RPWI_VARS(TV_X,1))) == UPPER(ALLTRIM(MYIVALUE))
		 	 	RPWI_ACTIVE_VAR = TV_X
			  	EXIT
		    ENDIF
		  NEXT
	  ENDIF
	  MYVAR = ""
  ENDIF
  
  IF UPPER(LEFT(MYVAR,28)) == "<RPWI:REPLACEVARSWITHVALUES>"
  	RPWICMD = .T.
		IF .NOT. RPWI_VARS_COUNT = 1
			FOR TV_X = 2 TO RPWI_VARS_COUNT
				MYIVALUE = "<" + ALLTRIM(UPPER(RPWI_VARS(TV_X,1))) + ">"
  			mymemo = STRTRAN(MYMEMO,MYIVALUE,RPWI_VARS(TV_X,2))
			NEXT
    ENDIF
	  MYVAR = ""
  ENDIF

	IF UPPER(LEFT(MYVAR,14)) == "<RPWI:PUTMARK>"
   	RPWICMD = .T.
		 MYVALUE = VAL(ALLTRIM(SUBSTR(MYVAR,15)))
 		IF MYVALUE <= 30 .and. myvalue > 1
     MYMARK(MYVALUE) = LASTSCODE
     MYVAR = ""
     ENDIF
	ENDIF

		********************* Select step by name - this amazing command enable us to create related components (Very useful for C#PWCT)
		IF UPPER(LEFT(MYVAR,23)) == "<RPWI:SELECTSTEPBYNAME>"
  		RPWICMD = .T.
		MYVALUE = ALLTRIM(SUBSTR(MYVAR,24))
		
			* save the current step code
 			SELECT T38
		REPLACE STEPCODE WITH STEPCODE + MYMEMO2
		mygframe.page4.edit1.Value = PSTEPCODE
     replace stepinf WITH STEPINF +  MYINFRES 
   MYINFRES = ""
   	MYMEMO2 = ""
		* goto the step that is determined by the Name
			SELECT T38
			LOCATE FOR UPPER(ALLTRIM(stepid)) = UPPER(ALLTRIM(LV_LEVEL2CODE)) .and. ;
			UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
			LV_stepinterid = stepinterid
			LOCATE FOR UPPER(ALLTRIM(stepinterid)) = UPPER(ALLTRIM(LV_STEPINTERID)) .and. ;
			UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. ;
			upper(alltrim(STEPNAME)) = UPPER(ALLTRIM(MYVALUE))
			if found()
		   		mygstree.Nodes.item(UPPER(ALLTRIM(stepID))).Selected = .T.
		   		mygstree.Nodes.item(UPPER(ALLTRIM(stepID))).Expanded = .F.
				MYVAR = ""
			endif
	ENDIF
	**********************


	IF UPPER(LEFT(MYVAR,14)) == "<RPWI:SETMARK>"
  	RPWICMD = .T.
		MYVALUE = VAL(ALLTRIM(SUBSTR(MYVAR,15)))
		IF MYVALUE <= 30 .and. myvalue >= 1
		 * save the current step code
   		SELECT T38
  			REPLACE STEPCODE WITH STEPCODE + MYMEMO2
   			mygframe.page4.edit1.Value = PSTEPCODE
	    replace stepinf WITH STEPINF +  MYINFRES 
      MYINFRES = ""
      MYMEMO2 = ""
     * goto the step that is determined by the mark 
   	mygstree.Nodes.item(MYMARK(MYVALUE)).Selected = .T.
  mygstree.Nodes.item(MYMARK(MYVALUE)).expanded = .f.
     MYVAR = ""
     * goto the record where step is found
     SELECT t38
     LOCATE FOR UPPER(ALLTRIM(stepid)) = UPPER(ALLTRIM(mygstree.selectedItem.key)) .and. ;
     UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
    ENDIF
	ENDIF
	IF UPPER(LEFT(MYVAR,14)) == "<RPWI:NEWSTEP>"
  	mystepcounter = mystepcounter + 1
  	MYV_STEPUSE[MYSTEPCOUNTER] = .T.
 	 RPWICMD = .T.
  	MYVALUE = ALLTRIM(SUBSTR(MYVAR,15))
		SELECT T38
		REPLACE STEPCODE WITH STEPCODE + MYMEMO2
		mygframe.page4.edit1.Value = PSTEPCODE
    replace stepinf WITH STEPINF +  MYINFRES 
    MYINFRES = ""
  	MYMEMO2 = ""
  	o = mygstree
		IF !ISNULL(o.SelectedItem) THEN
		mytxt = MYVALUE
		IF .not. EMPTY(mytxt)
		 	 pkey = o.SelectedItem.Key
		 	IF myogroup.Value = 1 && add 
			  mykey = mygdform.NewKey()
		  	o.Nodes.Add(ALLTRIM(pkey), 4, ALLTRIM(mykey), mytxt,0)
  			o.Nodes.item(ALLTRIM(mykey)).Selected = .T.
  			o.Nodes.item(ALLTRIM(mykey)).expanded = .f.
  			LASTSCODE = ALLTRIM(MYKEY)
  	  	o.Nodes.item(ALLTRIM(pkey)).Selected = .T.
  	  		o.Nodes.item(ALLTRIM(pkey)).expanded = .f.
				SELECT t38
				APPEND BLANK
	      IF LV_SEMILEVEL = 1
	      STEPSARRSIZE = STEPSARRSIZE + 1
				DIMENSION STEPSARR(STEPSARRSIZE)
        STEPSARR(STEPSARRSIZE) = RECNO()
        ENDIF
				replace goalid WITH t33->goalhandle
				replace parentid WITH ALLTRIM(pkey)
				replace stepid WITH ALLTRIM(mykey)
				replace stepname WITH ALLTRIM(mytxt)
				replace stepinterid WITH t46->f_iid
				replace stepinternum WITH mystepcounter
				
				
				 	 * Set Step Colors
					  cSelectedItem = mygdform.container1.oletree.selectedItem.Key
					  mygdform.container1.oletree.Nodes.Item(ALLTRIM(mykey)).Selected = .T.
					  obj_StepsColors.SetStepColor(mygdform)
					  mygdform.container1.oletree.Nodes.Item(ALLTRIM(cSelectedItem)).Selected = .T.
						****************************************************
				
				 
				
				ELSE && modify
				SELECT t38
				v_myend = RECCOUNT()
				v_found = .f.
				IF v_myend > 0
				FOR v_x = v_myend TO 1 STEP -1
					GOTO v_x
					IF stepinternum = mystepcounter .and. ;
					  ALLTRIM(stepinterid) == ALLTRIM(v_nowiid)  .and. ;
						UPPER(ALLTRIM(parentid)) == UPPER(ALLTRIM(pkey))
			      IF LV_SEMILEVEL = 1
 		       STEPSARRSIZE = STEPSARRSIZE + 1
			    	DIMENSION STEPSARR(STEPSARRSIZE)
            STEPSARR(STEPSARRSIZE) = RECNO()
            ENDIF
 		   	  LASTSCODE = ALLTRIM(stepid)
	    	  	replace stepcode WITH ""
		  	  	replace stepinf WITH ""
  					replace stepname WITH ALLTRIM(mytxt)
  					myoldkey = mygstree.SelectedItem.key
  					
  					TRY && AVOID ERROR WHEN CANN'T SELECT A REMOVED STEP (STEP REMOVED BY COLORS SYSTEM (READ MODE) )
    				mygstree.nodes.Item(alltRIM(stepid)).selected = .t.
    				mygstree.nodes.Item(alltRIM(stepid)).expanded = .f.
  		  		mygstree.SelectedItem.text = ALLTRIM(mytxt)
  		  		CATCH
  		  		ENDTRY
  		  		
	 	 			mygstree.nodes.Item(alltRIM(myoldkey)).selected = .t.
	 	 			mygstree.nodes.Item(alltRIM(myoldkey)).expanded = .f.
  					v_found = .t.
 		 			exit
					ENDIF
				NEXT
				ENDIF
					IF v_found = .f. && add operation
					  mykey = mygdform.NewKey()
				  	o.Nodes.Add(ALLTRIM(pkey), 4, ALLTRIM(mykey), mytxt,0)
		  			o.Nodes.item(ALLTRIM(mykey)).Selected = .T.
		  			o.Nodes.item(ALLTRIM(mykey)).expanded = .f.
		  			LASTSCODE = ALLTRIM(MYKEY)
		  	  	o.Nodes.item(ALLTRIM(pkey)).Selected = .T.
		  	  	o.Nodes.item(ALLTRIM(pkey)).expanded = .f.
						SELECT t38
						APPEND BLANK
  		      IF LV_SEMILEVEL = 1
 		       STEPSARRSIZE = STEPSARRSIZE + 1
			    	DIMENSION STEPSARR(STEPSARRSIZE)
            STEPSARR(STEPSARRSIZE) = RECNO()
            ENDIF
						replace goalid WITH t33->goalhandle
						replace parentid WITH ALLTRIM(pkey)
						replace stepid WITH ALLTRIM(mykey)
						replace stepname WITH mytxt
						replace stepinterid WITH t46->f_iid
						replace stepinternum WITH mystepcounter
						
						 * Set Step Colors
					  cSelectedItem = mygdform.container1.oletree.selectedItem.Key
					  mygdform.container1.oletree.Nodes.Item(ALLTRIM(mykey)).Selected = .T.
					  obj_StepsColors.SetStepColor(mygdform)
					  mygdform.container1.oletree.Nodes.Item(ALLTRIM(cSelectedItem)).Selected = .T.
						****************************************************
						
					ENDIF
				ENDIF
  	ENDIF
		ENDIF
	ENDIF
	 IF  RPWICMD = .F.
	 	IF .not. EMPTY(ALLTRIM(myvar)) 
   		MYMEMO2 = MYMEMO2 + MYVAR + CHR(13) + CHR(10)
   	ENDIF
 	ENDIF
NEXT
SELECT T38
PSTEPCODE = MYMEMO2
IF myogroup.Value = 1 .AND. MYFT = .T.
mygframe.page4.edit1.Value = STEPCODE +  PSTEPCODE
ELSE
mygframe.page4.edit1.Value =  PSTEPCODE
ENDIF
REPLACE STEPCODE WITH mygframe.page4.edit1.Value
	IF myogroup.Value = 1 
	    replace stepinf WITH STEPINF +  MYINFRES 
   	ELSE
   	   	 replace stepinf WITH MYINFRES 
   	ENDIF
mygframe.page3.edit1.Value = STEPINF
********************************************
IF lv_delsemi = .t.
SELECT t38
myrec = RECNO()
IF LV_SEMILEVEL = 2 && PARENT
SCAN FOR UPPER(ALLTRIM(PARENTID)) == UPPER(ALLTRIM(LV_LEVEL2CODE))
 		       STEPSARRSIZE = STEPSARRSIZE + 1
			    	DIMENSION STEPSARR(STEPSARRSIZE)
            STEPSARR(STEPSARRSIZE) = RECNO()
ENDSCAN
GOTO bottom
ENDIF
IF LV_SEMILEVEL = 3 && PARENT OF PARENT
ENDIF
lv_done = .f.
IF STEPSARRSIZE > 0
	FOR T = STEPSARRSIZE TO 1 STEP -1
      SELECT t38
			GOTO STEPSARR(T)
			lv_stepcode = t38->stepcode
			lv_max = MEMLINES(lv_stepcode)
	  	lv_myres = ""
	  	FOR t2 = lv_max TO 1 STEP -1
    	lv_line = ALLTRIM(MLINE(lv_stepcode,t2))
		  	IF RIGHT(lv_line,LEN(LV_SEMICHAR)) = LV_SEMICHAR .and. lv_done = .f.
      		  	lv_done = .t.
		  		  	lv_line	= LEFT(lv_line,LEN(lv_line)-1)
	  		ENDIF
      lv_myres = lv_line + CHR(13) + CHR(10) + lv_myres
	  	NEXT
	  	replace t38->stepcode WITH lv_myres
	  	IF lv_done = .t.
		  	EXIT
	  	endif
	NEXT
ENDIF
SELECT t38
GOTO myrec 
mygframe.page4.edit1.Value = STEPCODE
ENDIF
********************************************
pstepcode = ""
*********************** Delete steps not used 
SELECT t38
myrec = RECNO()
FOR X = 1 TO MYV_STEPS
IF MYV_STEPUSE[X] = .F.
		LOCATE FOR stepinterid = t46->f_iid .and. stepinternum = x
		IF FOUND()
			mygstree.NODES.REMOVE(UPPER(ALLTRIM(STEPID)))
			DELETE
		ENDIF
ENDIF
NEXT
GOTO top
MYLAST = RECCOUNT()
FOR x = 1 TO MYLAST
GOTO x
MYID = UPPER(ALLTRIM(parentid))
	IF .not. UPPER(ALLTRIM(MYID)) == "SP_"
		LOCATE FOR UPPER(ALLTRIM(STEPID)) == MYID .AND. .NOT. DELETED()
		IF .NOT. FOUND()
				GOTO X
				DELETE
		ENDIF
	ENDIF
NEXT
PACK
GOTO myrec 
**** [End of updating ]   ********************************************************
SELECT T46
LOCATE FOR UPPER(ALLTRIM(F_IID)) == UPPER(ALLTRIM(P_IID))
IF lRefreshSteps = .f. && history when refreshing steps is not changed , what changed is the components code mask
REPLACE F_MYHIS WITH AX_MYHIS
ENDIF

SELECT t38
IF .not. UPPER(ALLTRIM(t46->f_stepid)) == "SP_"
LOCATE FOR UPPER(STEPID) == UPPER(ALLTRIM(t46->f_stepid))
IF lRefreshSteps = .f. && history when refreshing steps is not changed , what changed is the components code mask
	REPLACE STEPHIS WITH AX_MYHIS
endif
ENDIF

ENDIF
