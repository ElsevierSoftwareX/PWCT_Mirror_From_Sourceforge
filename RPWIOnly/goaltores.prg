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
            mytree(ALEN(mytree,1),1) = PARENTID
            mytree(ALEN(mytree,1),2) = STEPID
            mytree(ALEN(mytree,1),3) = RECNO()
        ENDSCAN
        GOTO bottom
  	    IF .NOT. ALEN(MYTREE,1) = 0
   		   SS_ARRTREE()
     		 MYEND = ALEN(MYTREE,1)
	      	FOR X2 = 1 TO MYEND
	  		    if .not. MYTREE(X2,3) == 0
    	            goto mytree(x2,3)
    	            SELECT t38pic
									APPEND BLANK 
									replace goalid WITH ALLTRIM(t38->goalid)
									REPLACE stepid WITH ALLTRIM(t38->STEPID)
									REPLACE STEPNAME WITH T38->STEPNAME
									REPLACE PARENTID WITH ALLTRIM(T38->PARENTID)
									REPLACE STEPDIS WITH T38->STEPDIS
									REPLACE STEPDATA WITH T38->STEPDATA
									REPLACE STEPCODE WITH T38->STEPCODE
									REPLACE STEPANA WITH T38->STEPANA
									REPLACE STEPINF WITH T38->STEPINF
									REPLACE STEPINFO WITH T38->STEPINFO
									REPLACE STEPHIS WITH T38->STEPHIS
									REPLACE STEPINTERID WITH T38->STEPINTERID
									REPLACE STEPINTERNUM WITH T38->STEPINTERNUM
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
  								replace goalid WITH ALLTRIM(t38pic->goalid)
									REPLACE stepid WITH ALLTRIM(t38pic->STEPID)
									REPLACE STEPNAME WITH t38pic->STEPNAME
									REPLACE PARENTID WITH ALLTRIM(t38pic->PARENTID)
									REPLACE STEPDIS WITH t38pic->STEPDIS
									REPLACE STEPDATA WITH t38pic->STEPDATA
									REPLACE STEPCODE WITH t38pic->STEPCODE
									REPLACE STEPANA WITH t38pic->STEPANA
									REPLACE STEPINF WITH t38pic->STEPINF
									REPLACE STEPINFO WITH t38pic->STEPINFO
									REPLACE STEPHIS WITH t38pic->STEPHIS
									REPLACE STEPINTERID WITH t38pic->STEPINTERID
									REPLACE STEPINTERNUM WITH t38pic->STEPINTERNUM
	    SELECT t38pic
    ENDSCAN
    GOTO bottom
RETURN

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
            mytree(ALEN(mytree,1),1) = PARENTID
            mytree(ALEN(mytree,1),2) = CHILDID
            mytree(ALEN(mytree,1),3) = RECNO()
        ENDSCAN
        GOTO bottom
  	    IF .NOT. ALEN(MYTREE,1) = 0
   		   SS_ARRTREE()
     		 MYEND = ALEN(MYTREE,1)
	      	FOR X2 = 1 TO MYEND
	  		    if .not. MYTREE(X2,3) == 0
    	            goto mytree(x2,3)
    	            SELECT t34pic
									APPEND BLANK 
									REPLACE CHILDid WITH ALLTRIM(t34->CHILDID)
									REPLACE DOMAINNAME WITH T34->DOMAINNAME
									REPLACE PARENTID WITH ALLTRIM(T34->PARENTID)
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
  					  			REPLACE CHILDid WITH ALLTRIM(t34pic->CHILDID)
									REPLACE DOMAINNAME WITH t34pic->DOMAINNAME
									REPLACE PARENTID WITH ALLTRIM(t34pic->PARENTID)
						
	    SELECT t34pic
    ENDSCAN
    GOTO bottom
RETURN


FUNCTION findgoals(p1)
LOCAL MYRET,MYALIAS,MYREC
MYALIAS = ALIAS()
MYREC = RECNO()
MYRET = ""
SELECT t33
SCAN
  IF UPPER(ALLTRIM(goaltype)) = "OVERRIDE"
	myP1 = "Code Unit : Circuits\" + ALLTRIM(CIRCUITNAME)+;
	"\"+ALLTRIM(BRANCHNAME)+"\"+ALLTRIM(RESISTANCENAME)
	IF UPPER(ALLTRIM(P1)) == UPPER(ALLTRIM(MYP1))

	errmap2(err2_t,1) = "Circuits\" + ALLTRIM(CIRCUITNAME)+;
	"\"+ALLTRIM(BRANCHNAME)+"\"+ALLTRIM(RESISTANCENAME)
  errmap2(err2_t,2) = ALLTRIM(goalname)
  err2_t = err2_t + 1
  DIMENSION errmap2(err2_t,2)

  myfh1 = ""
	MYRET = MYCODEEX("Circuits\" + ALLTRIM(CIRCUITNAME)+"\"+ALLTRIM(BRANCHNAME)+"\"+ALLTRIM(RESISTANCENAME))
	 MYRET = MYFH1 + MYRET  + CHR(13) + CHR(10)
	ENDIF
ENDIF
ENDSCAN
GOTO bottom
TRY
SELECT (MYALIAS)
GOTO MYREC
CATCH
ENDTRY
RETURN MYRET

function mycodeex(MYPARA1) && MYPARA1 = CIRCUIT ADDRESS
PRIVATE MYTREE
SELECT t33
myfh = ""
   SELECT t38
   SET FILTER TO ALLTRIM(GOALID) == ALLTRIM(T33->GOALHANDLE)
   GOTO TOP
      DIMENSION mytree(1,3)
      mytree(1,1) = "SP_"
      mytree(1,2) = "SP_"
      mytree(1,3) = 0
      IF .NOT. RECCOUNT() = 0
        SCAN
      	    DIMENSION mytree(ALEN(mytree,1)+1,3)
            mytree(ALEN(mytree,1),1) = PARENTID
            mytree(ALEN(mytree,1),2) = STEPID
            mytree(ALEN(mytree,1),3) = RECNO()
        ENDSCAN
        GOTO bottom
  	    IF .NOT. ALEN(MYTREE,1) = 0
   		   SS_ARRTREE()
     		 MYEND = ALEN(MYTREE,1)
     		 mydebug = .t.
	      	FOR X2 = 1 TO MYEND
	  		    if .not. MYTREE(X2,3) == 0
    	            goto mytree(x2,3)
      	          if stepdis = .f.
       	            	errmap3(err3_t,1) = MYPARA1
											 errmap3(err3_t,2) = STRTRAN(ALLTRIM(stepname),'"',"'")
							  			 errmap3(err3_t,3) = 0
											 errmap3(err3_t,4) = 0
								    IF .not. EMPTY(ALLTRIM(stepcode))
								       IF EMPTY(MYFH)
									   errmap3(err3_t,3) = MEMLINES(MYFH) + 1
								       ELSE
								       errmap3(err3_t,3) = MEMLINES(MYFH)
								       ENDIF
						 			  myfh= myfH + ALLTRIM(stepcode) 
						 	  		 errmap3(err3_t,4) =  errmap3(err3_t,3) + MEMLINES(ALLTRIM(STEPCODE)) - 2
								  		 
							      ENDIF
       	            err3_t = err3_t + 1
										 DIMENSION errmap3(err3_t,4)
       	      endif
			      endif
   	 	  NEXT
	      ENDIF
      ENDIF
   SET FILTER TO 
   GOTO TOP
RETURN MYFH

function mygoalscode()
PRIVATE MYTREE
myfh = ""
SELECT t33
IF .not. RECCOUNT() = 0
SCAN
   SELECT t38
   SET FILTER TO ALLTRIM(GOALID) == ALLTRIM(T33->GOALHANDLE)
   GOTO TOP
      DIMENSION mytree(1,3)
      mytree(1,1) = "SP_"
      mytree(1,2) = "SP_"
      mytree(1,3) = 0
      IF .NOT. RECCOUNT() = 0
        SCAN
      	  DIMENSION mytree(ALEN(mytree,1)+1,3)
            mytree(ALEN(mytree,1),1) = PARENTID
            mytree(ALEN(mytree,1),2) = STEPID
            mytree(ALEN(mytree,1),3) = RECNO()
        ENDSCAN
        GOTO bottom
  	    IF .NOT. ALEN(MYTREE,1) = 0
   		   SS_ARRTREE()
     		 MYEND = ALEN(MYTREE,1)
     		 mydebug = .t.
	      	FOR X2 = 1 TO MYEND
	  		    if .not. MYTREE(X2,3) == 0
    	            goto mytree(x2,3)
      	          if stepdis = .f.
       	               IF .not. EMPTY(ALLTRIM(stepcode))
							  myfh= myfH + ALLTRIM(stepcode) 
					      ENDIF
	      	      endif
			      endif
   	 	  NEXT
	      ENDIF
      ENDIF
   SET FILTER TO 
   GOTO TOP
SELECT t33
ENDSCAN
ENDIF
myfh2 = ""
MYTABS = 0
 V_MYMAX = MEMLINES(myfh)
 		FOR  v_ln = 1 TO V_MYMAX 
        		V_DATA = MLINE(myfh,v_ln)
			IF UPPER(ALLTRIM(V_DATA)) == "<RPWI:TABPUSH>"
				MYTABS = MYTABS+1
			ELSE
				IF UPPER(ALLTRIM(V_DATA)) == "<RPWI:TABPOP>"
					MYTABS = MAX(MYTABS-1,0)
				ELSE
		  		      myfh2 =  myfh2 + replicate(chr(9),mytabs)+ V_DATA + chr(13) + chr(10)
				endif
			ENDIF
		NEXT

RETURN MYFH2


*------------------------*
* Arrange Tree           *
*------------------------*
function SS_arrtree()
local x,t
                                && MYTREE[N][1] = PARENT ID
                                && MYTREE[N][2] = ITEM   ID
                                && MYTREE[N][3] = VALUE
* mydarr is my arranged tree
DIMENSION MYDARR(1,3)
* get first element , the root
MYDARR(1,1) = MYTREE(1,1)
MYDARR(1,2) = MYTREE(1,2)
MYDARR(1,3) = MYTREE(1,3)
X = 1                                               
DO WHILE .t.
			DIMENSION MYDARR2(1,3)
      * ADD ELEMENTS FROM TOP ELEMENT TO CURRENT ELEMENT
      FOR T = 1 TO X
           DIMENSION MYDARR2(T,3) 
           MYDARR2(T,1) = MYDARR(T,1)
           MYDARR2(T,2) = MYDARR(T,2)
           MYDARR2(T,3) = MYDARR(T,3)
      NEXT                           
                                      
      MYID = upper(alltrim(MYDARR(X,2)))
      * ADD SUCCESSOR
      FOR T = 2 TO ALEN(MYTREE,1)
                  IF upper(alltrim(MYTREE(T,1))) == MYID
                        DIMENSION MYDARR2(ALEN(MYDARR2,1)+1,3) 
                        MYDARR2(ALEN(MYDARR2,1),1) = MYTREE(T,1)
                        MYDARR2(ALEN(MYDARR2,1),2) = MYTREE(T,2)
                        MYDARR2(ALEN(MYDARR2,1),3) = MYTREE(T,3)
                  ENDIF
      NEXT
           
      * ADD ELEMENTS THAT UNDER THE CURRENT ELEMENT
      FOR T = X+1 TO ALEN(MYDARR,1)
           DIMENSION MYDARR2(ALEN(MYDARR2,1)+1,3) 
           MYDARR2(ALEN(MYDARR2,1),1) = MYDARR(T,1)
           MYDARR2(ALEN(MYDARR2,1),2) = MYDARR(T,2)
           MYDARR2(ALEN(MYDARR2,1),3) = MYDARR(T,3)
      NEXT

      DIMENSION MYDARR(ALEN(MYDARR2,1),3)
      FOR T = 1 TO ALEN(MYDARR2,1)
      MYDARR(T,1) = MYDARR2(T,1)
      MYDARR(T,2) = MYDARR2(T,2)
      MYDARR(T,3) = MYDARR2(T,3)
      NEXT
      
     
X = X + 1
if X > ALEN(MYDARR,1)
        exit
endif
ENDDO
DIMENSION MYTREE(ALEN(MYDARR,1),3)
MYEND = ALEN(MYDARR,1)
FOR X = 1 TO MYEND
MYTREE(X,1) = MYDARR(X,1)
MYTREE(X,2) = MYDARR(X,2)
MYTREE(X,3) = MYDARR(X,3)
NEXT
return 
   
