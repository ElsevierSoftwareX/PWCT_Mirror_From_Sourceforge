FUNCTION startmap()
PUBLIC mymap
DIMENSION mymap(1,2)
mymap(1,1) = ""
mymap(1,2) = ""
RETURN

FUNCTION endmap()
RELEASE mymap
RETURN

function domap(p1)
mymax = ALEN(mymap,1)
FOR x = 1 TO mymax
IF upper(ALLTRIM(mymap(x,1))) == upper(ALLTRIM(p1))
RETURN ALLTRIM(mymap(x,2))
ENDIF
NEXT
DIMENSION mymap(ALEN(mymap,1)+1,2)
mymap(ALEN(mymap,1),1) = ALLTRIM(p1)
STEPSNUM = STEPSNUM + 1
cKey = STR(STEPSNUM) + "_"
mymap(ALEN(mymap,1),2) = ALLTRIM(cKey)
RETURN ALLTRIM(ckey)



