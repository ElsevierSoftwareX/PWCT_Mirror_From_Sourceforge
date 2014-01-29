CLEAR

PUBLIC mytree

DIMENSION mytree(4,3)
mytree(1,1) = "SP_"
mytree(1,2) = "SP_"
mytree(1,3) = "root"

mytree(2,1) = "SP_"
mytree(2,2) = "1_"
mytree(2,3) = "first"

mytree(3,1) = "SP_"
mytree(3,2) = "2_"
mytree(3,3) = "second"

mytree(4,1) = "1_"
mytree(4,2) = "3_"
mytree(4,3) = "third"

showtree()
myorder()
? "after order"
? " "

showtree()

? "using depth"
? " "
depthfirst(1)



FUNCTION DepthFirst(x)

LOCAL t,nMax

nMax = ALEN(mytree,1)

showitem(x)

FOR t = x+1 TO ALEN(mytree,1)

	IF mytree(t,1) = mytree(x,2)
		DepthFirst(t)
	ENDIF

next

RETURN

FUNCTION showitem(x)
LOCAL x

? mytree(x,1) 
?? "  -   "
?? mytree(x,2)
?? "  -   "
?? mytree(x,3)

RETURN



 
FUNCTION myorder()

	LOCAL x,T,nItem,nMax
	
		&& MYTREE[N][1] = PARENT ID
		&& MYTREE[N][2] = ITEM ID
		&& MYTREE[N][3] = VALUE
		* mydarr is my arranged tree
		
		DIMENSION mydarr(1,3)
		* get first element , the root
		mydarr(1,1) = mytree(1,1)
		mydarr(1,2) = mytree(1,2)
		mydarr(1,3) = mytree(1,3)
		
		nMax = ALEN(mytree,1)
		FOR x = 1 TO nMax
		
		
				DIMENSION mydarr2(1,3)
				* ADD ELEMENTS FROM TOP ELEMENT TO CURRENT ELEMENT
				FOR T = 1 TO x
				
						DIMENSION mydarr2(T,3)
						mydarr2(T,1) = mydarr(T,1)
						mydarr2(T,2) = mydarr(T,2)
						mydarr2(T,3) = mydarr(T,3)
						
				NEXT
				
				myid = ALLTRIM(mydarr(x,2))
				* ADD SUCCESSOR
				FOR T = 2 TO ALEN(mytree,1)
				
						IF mytree(T,1) == myid
						
							DIMENSION mydarr2(ALEN(mydarr2,1)+1,3)
							nItem = ALEN(mydarr2,1)
							mydarr2(nItem,1) = mytree(T,1)
							mydarr2(nItem,2) = mytree(T,2)
							mydarr2(nItem,3) = mytree(T,3)
							
						ENDIF
						
				NEXT
				
				* ADD ELEMENTS THAT UNDER THE CURRENT ELEMENT
				FOR T = x+1 TO ALEN(mydarr,1)
			
					DIMENSION mydarr2(ALEN(mydarr2,1)+1,3)
					nItem = ALEN(mydarr2,1)
					mydarr2(nItem,1) = mydarr(T,1)
					mydarr2(nItem,2) = mydarr(T,2)
					mydarr2(nItem,3) = mydarr(T,3)
					
				NEXT
				
				DIMENSION mydarr(ALEN(mydarr2,1),3)
			  ACOPY(mydarr2,mydarr)
				
		
		NEXT 

		ACOPY(mydarr,mytree)
	

RETURN

FUNCTION showtree()
FOR x = 1 TO ALEN(mytree,1)
? mytree(x,1) 
?? "  -   "
?? mytree(x,2)
?? "  -   "
?? mytree(x,3)
NEXT
RETURN
