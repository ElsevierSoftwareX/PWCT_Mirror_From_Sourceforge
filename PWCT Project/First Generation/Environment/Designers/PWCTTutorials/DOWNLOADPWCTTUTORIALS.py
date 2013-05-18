import urllib
import time
import os
WebLink = "http://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.9%20%28Art%29/Tutorials/"
LinkEnd = "/download"
mymax = 220
cFileName = "Index.txt"
mycheck = os.path.isfile(cFileName)
if mycheck == 0 :
	vOutput = urllib.urlretrieve(WebLink+cFileName+LinkEnd,cFileName)
cont = 1
lastx = -1
while cont == 1 :
	cont = 0
	for x in range ( mymax ):
		cFileName = str(x+1)+".pdf"
		mycheck = os.path.isfile(cFileName)
		if mycheck == 0 :
			try:
				vOutput = urllib.urlretrieve(WebLink+cFileName+LinkEnd,cFileName)
				mycheck2 = os.path.isfile( cFileName)
				if mycheck2 == 1 :
					print "[" + str(x+1) + "] File : " +cFileName
					if lastx + 1 < x :
						cont = 1
					lastx = x
			except BaseException:
				mycheck3 = os.path.isfile( cFileName)
				if mycheck3 == 1 :
					temp = os.remove( cFileName)
print "Operation done..."


