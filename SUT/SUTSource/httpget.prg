
#include "minigui.ch"
#include "fileio.ch"


*北北北北北北北北北北北北北北北北北北北北北北北北北北
FUNCTION GetFileFromInet( cServer, cFile, cOutName )
*北北北北北北北北北北北北北北北北北北北北北北北北北北
local oSock, nHandle,cPic
local nPort    := 80  

// make new socket   
oSock := THttp():New()
mymsg := "Connect to " +cServer +":" +alltrim(str( nPort ))

// connect to server
if oSock:Connect( cServer, nPort )
   mymsg  := "Connected"
   mymsg  := "Retriving data ... wait pls .."

   // retrive data from server
   cPic := oSock:Get( cFile ) 

   // extract header data
   cPic:=SUBSTR(cPic,AT(CRLF+CRLF,cPic)+4)

   // save extracted data do local file
   IF FILE(cOutName)
      FERASE(cOutName)
   endif

   nHandle := FCREATE(cOutName, FC_NORMAL)
   IF nHandle  < 0
      MsgStop("Local file cannot be created:"+ Str(FERROR()))
      RETURN ""
   ELSE
      FWRITE(nHandle, cPic)
      FCLOSE(nHandle)
   ENDIF 

   mymsg  := "Close connection"
   if oSock:Close()
	mymsg  := "Close successful"
   else
	mymsg  := "Error on close connection"
   endif
else
   mymsg  := "Connection Refused"
endif


RETURN NIL
