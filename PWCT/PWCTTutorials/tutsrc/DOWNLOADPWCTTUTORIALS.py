import urllib
import time
import os
WebLink = "http://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.8%20%28Smart%29/Tutorials/"
LinkEnd = "/download"
mymax = 218
cFileName = "Index.txt"
mycheck = os.path.isfile("../tutorials/"+cFileName)
if mycheck == 0 :
	vOutput = urllib.urlretrieve(WebLink+cFileName+LinkEnd,"../tutorials/"+cFileName)
cont = 1
lastx = -1
while cont == 1 :
	cont = 0
	for x in range ( mymax ):
		cFileName = str(x+1)+".pdf"
		mycheck = os.path.isfile("../tutorials/"+cFileName)
		if mycheck == 0 :
			try:
				vOutput = urllib.urlretrieve(WebLink+cFileName+LinkEnd,"../tutorials/"+cFileName)
				mycheck2 = os.path.isfile("../tutorials/"+cFileName)
				if mycheck2 == 1 :
					print "[" + str(x+1) + "] File : " +cFileName
					if lastx + 1 < x :
						cont = 1
					lastx = x
			except BaseException:
				mycheck3 = os.path.isfile("../tutorials/"+cFileName)
				if mycheck3 == 1 :
					temp = os.remove("../tutorials/"+cFileName)
print "Operation done..."


