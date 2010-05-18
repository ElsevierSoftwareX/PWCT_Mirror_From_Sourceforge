------------------------------------------------------------
Programming Without Coding Technology (PWCT)
http://doublesvsoop.sourceforge.net
2006-2009, Mahmoud Fayed (msfclipper@yahoo.com)
------------------------------------------------------------

[Code Extractor Application]

Command : <RPWI:TABPUSH>
Use this command in the generated step code to add a new tab 

Command : <RPWI:TABPOP>
Use this command in the generated step code to remove a new tab 

Example :

------------------------------------------------------------
[Step Code] as input to the Code Extractor Application
------------------------------------------------------------

if x == 1
<RPWI:TABPUSH>
? "Hi"
? "How are you ?"
for x = 1 to 10
<RPWI:TABPUSH>
? x
<RPWI:TABPOP>
next
<RPWI:TABPOP>
Endif 
? "Nice to meet you"

------------------------------------------------------------
[Step Code] as output from the Code Extractor Application
------------------------------------------------------------

if x == 1
	? "Hi"
	? "How are you ?"
	for x = 1 to 10
		? x
	next
Endif 
? "Nice to meet you"

------------------------------------------------------------


