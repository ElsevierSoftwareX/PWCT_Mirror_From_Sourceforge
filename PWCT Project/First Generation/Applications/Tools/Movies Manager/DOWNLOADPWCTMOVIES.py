import urllib
import time
import os
WebLink = "http://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.9%20%28Art%29/Movies/"
LinkEnd = "/download"
Movies = []

Movies.append("PWCTMovie_DownloadPWCTSamplesAndTutorials.zip")
Movies.append("PWCTMovie_CreateYourFirstGUIApplication.zip")
Movies.append("PWCTMovie_AddControlsToYourApplicationWindow.zip")
Movies.append("PWCTMovie_CenterTheApplicationWindow.zip ")
Movies.append("PWCTMovie_RunTheProgramsInThePast.zip")
Movies.append("PWCTMovie_MoveStepsUpOrDown.zip")
Movies.append("PWCTMovie_EditTheStepName.zip")
Movies.append("PWCTMovie_CommentOrEnableAStep.zip")
Movies.append("PWCTMovie_SearchAndReplaceInTheStepsTree.zip")
Movies.append("PWCTMovie_SetTheFontNameAndSizeOfTheStepsTree.zip")
Movies.append("PWCTMovie_ReadAndWriteTheStepCode.zip")


mymax = len(Movies)
cont = 1
lastx = -1
while cont == 1 :
	cont = 0
	for x in range ( mymax ):
		mycheck = os.path.isfile(Movies[x])
		if mycheck == 0 :
			try:
				vOutput = urllib.urlretrieve(WebLink+Movies[x]+LinkEnd,Movies[x])
				mycheck2 = os.path.isfile(Movies[x])
				if mycheck2 == 1 :
					print "[" + str(x+1) + "] File : " + Movies[x]
					if lastx + 1 < x :
						cont = 1
					lastx = x
			except BaseException:
				mycheck3 = os.path.isfile( Movies[x])
				if mycheck3 == 1 :
					temp = os.remove( Movies[x])
print "Operation done..."
