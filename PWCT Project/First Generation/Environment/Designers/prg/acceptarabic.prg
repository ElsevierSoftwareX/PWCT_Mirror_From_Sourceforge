* need to support ( ) , [ ] @ & * + - / % 

CLEAR

nStart = SECONDS()

cStr = "„Õ„Êœ:”„Ì—:›«Ìœ"

cStr2 = ""

FOR x = 1 TO LEN(cStr)

	cBaseChar = SUBSTR(cStr,x,1)
	cChar = ALLTRIM(STR(ASC(SUBSTR(cStr,x,1))))

	IF .not. cBaseChar = ":"
		cStr2 = cStr2 + "_" + cChar
	ELSE
		cStr2 = cStr2 + "_" + cBaseChar
	ENDIF
	
NEXT

? cStr2

DIMENSION myConv(11)

myconv(1) = "a"
myconv(2) = "b"
myconv(3) = "c"
myconv(4) = "d"
myconv(5) = "e"
myconv(6) = "f"
myconv(7) = "g"
myconv(8) = "h"
myconv(9) = "i"
myconv(10) = "j"
myconv(11) = "k"

cStr3 = ""

FOR t = 1 TO LEN(cstr2)

		cChar = SUBSTR(cStr2,t,1)

		IF cChar = "_"
				cChar = "10"
		ENDIF

		nChar = VAL(cChar)
		nChar = nChar + 1
		
		IF .not. cChar = ":"
		cStr3 = cSTR3 + MYCONV( nChar )
 	 ELSE
 	 cStr3 = cSTR3 + ":"
 	 ENDIF
 	 
 
NEXT

? cStr3

cStr4 = ""

FOR x = 1 TO LEN(cStr3)

		cChar = SUBSTR(cStr3,x,1)
		
		DO CASE
		
		CASE cChar = myconv(1)
				cStr4 = cStr4 + "0"
		CASE cChar = myconv(2)
				cStr4 = cStr4 + "1"
		CASE cChar = myconv(3)
				cStr4 = cStr4 + "2"
		CASE cChar = myconv(4)
				cStr4 = cStr4 + "3"
		CASE cChar = myconv(5)
				cStr4 = cStr4 + "4"
		CASE cChar = myconv(6)
				cStr4 = cStr4 + "5"
		CASE cChar = myconv(7)
				cStr4 = cStr4 + "6"
		CASE cChar = myconv(8)
				cStr4 = cStr4 + "7"
		CASE cChar = myconv(9)
				cStr4 = cStr4 + "8"
		CASE cChar = myconv(10)
				cStr4 = cStr4 + "9"
		CASE cChar = myconv(11)
				cStr4 = cStr4 + "_"
		OTHERWISE 
	 		 cStr4 = cStr4 + cChar			
		ENDCASE 
		
NEXT

? cStr4

cStr5 = ""
cMem = ""

FOR x = 1 TO LEN(cStr4)

cChar = SUBSTR(cStr4,x,1)

IF cChar = "_"
	
	IF .not. EMPTY(cMem)
			cStr5 = cStr5 + CHR(VAL(cMem))
			cMem = ""
	ENDIF
	

ELSE

	IF .not. cChar = ":"
	cMem = cMem + cChar
	ELSE
	cStr5 = cStr5 + ":"
	
	ENDIF
	
ENDIF

NEXT

	IF .not. EMPTY(cMem)
			cStr5 = cStr5 + CHR(VAL(cMem))
			cMem = ""
	ENDIF

? cStr5

? SECONDS() - nStart