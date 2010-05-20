Proc LoadStar( p1 )
	Local codestar,mymax,myline,x,lopcode,lopdata,mylast,lopdstack,mytag
	codestr = MEMOREAD ( p1 )
	codestr := charxor(codestr,"Super123456789Nova")
	mymax = MLCOUNT( codestr , 254 )
	myline = MEMOLINE( codestr , 254 , 1 )
	myline = ignorechr13(alltrim(myline))
	lopdstack := ""
	lopcode := 0
	IF ALLTRIM(MYLINE) == "Supernova Programming Language Object File"
		myexecutable := {}
		mylast := 0
		FOR x = 2 TO mymax STEP 1
      			myline = MEMOLINE( codestr , 254 , x )
			myline = ignorechr13(alltrim(myline))
			if .not. val(Left(myline,3)) = 0 
				lopcode = Left(myline,3)
				lopdata = SUBSTR(myline,4,len(myline)-3)
				lopcode = VAL ( lopcode )
      			else
				if lopcode = 7	 
					lopdata = myline
				else
					lopdata = ""
				endif
			endif
      			IF lopcode = 1
			         AADD( myexecutable , {0,{},"","","",""})
			         mylast := mylast + 1
			ENDIF
			IF lopcode = 2
				myexecutable[mylast][1] := val(lopdata)
			ENDIF
			IF lopcode = 3
				myexecutable[mylast][3] := alltrim(lopdata)
			ENDIF
			IF lopcode = 4
				myexecutable[mylast][4] := val(lopdata)
			ENDIF
			IF lopcode = 5
				myexecutable[mylast][5] := alltrim(lopdata)
			ENDIF
			IF lopcode = 6
				myexecutable[mylast][6] := val(lopdata)
			ENDIF
			IF lopcode = 7
				lopdata = RTRIM ( lopdata )
				Mytag = Right(lopdata,2)
				IF mytag = "\n"
					lopdata = Left(lopdata,len(lopdata)-2)
					lopdata := lopdstack + lopdata
					AADD( myexecutable[mylast][2] , "" + lopdata)
					lopdstack := ""
				ELSE
					if right(lopdata,2) = "\n" .or. right(lopdata,2) = "\E"
						lopdata = Left(lopdata,len(lopdata)-2)
					endif
					lopdstack := lopdstack + lopdata + CHR(13) + CHR(10)
			         ENDIF
			ENDIF
   		Next
	ENDIF
Return Nil

proc ignorechr13(p1)
	local x
	if asc(substr(p1,len(p1),1)) = 13
		p1 = substr(p1,1,len(p1)-1)
	endif
return p1
