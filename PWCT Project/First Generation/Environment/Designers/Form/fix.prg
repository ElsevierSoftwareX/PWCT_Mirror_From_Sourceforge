CLEAR ALL 

CLEAR

 

FixDir(CURDIR()) && Call recursive program with current directory

 

*Recursive program to fix all forms found in cPath and subdirectories

* Fix Vista Aero Border painting by changinge DoCreate and BorderStyle order

PROCEDURE FixDir(cPath)    && Fix all forms in directory cPath and subdirectories

          LOCAL n,aFiles[1],cPath,i,j,cTemp,nBorderStyle,nDoCreate,aProps[1],nLines,nIndex

          n=ADIR(aFiles,cPath+"*.scx")        && look in current dir for all form files (.SCX)

          FOR i = 1 TO n

                   ?cPath+aFiles[i,1]

                   USE (cPath+aFiles[i,1]) ALIAS SCX  && open the form as a table

                   SCAN FOR !EMPTY(Properties) AND ATC("DoCreate",Properties)>0       && locate the Properties

                             ?Properties

                             nLines = ALINES(aProps,Properties)          && Create an array of all the lines in the Properties

                             nDoCreate=0

                             nBorderStyle=0

                             FOR j = 1 TO nLines  && Loop through and record the array indices of DoCreate and BorderStyle

                                      ?j,aProps[j]

                                      DO CASE 

                                      CASE ATC("DoCreate",aProps[j])>0

                                                nDoCreate=j

                                      CASE ATC("BorderStyle",aProps[j])>0

                                                nBorderStyle=j

                                      ENDCASE 

                             ENDFOR 

                             IF nDoCreate > 0 AND nDoCreate  < nBorderStyle         && If DoCreate precedes BorderStyle, insert BorderStyle before

                                      cTemp=""

                                      FOR nIndex = 1 TO nLines   && now emit the properties in the desired order

                                                DO CASE 

                                                CASE nIndex = nDoCreate

                                                          cTemp=cTemp+aProps[nBorderStyle]+CHR(13)+CHR(10)

                                                          cTemp=cTemp+aProps[nDoCreate]+CHR(13)+CHR(10)

                                                CASE nIndex = nBorderStyle

                                                          * do nothing: already added

                                                OTHERWISE 

                                                          cTemp=cTemp+aProps[nIndex]+CHR(13)+CHR(10)

                                                ENDCASE

                                      ENDFOR

                                      

                                      REPLACE Properties WITH cTemp    && and update

                                      ?properties

                             ENDIF 

                   ENDSCAN

                   USE IN SCX    && close the file

          ENDFOR

          n=ADIR(aFiles,cPath+"*.*","D")     && Get any subdirs

          FOR i = 1 TO n

                   IF ATC("D",aFiles[i,5])>0 AND aFiles[i,1] != "."

                             FixDir(cPath+aFiles[i,1]+"\")          && recur

                   ENDIF 

          ENDFOR

          

RETURN

