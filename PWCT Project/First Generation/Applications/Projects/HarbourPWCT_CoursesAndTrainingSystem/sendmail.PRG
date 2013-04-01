Proc sendmailtoclient( pcSMTP,pnPort,pcUserID,pcPassword,pcFrom,pcTo,pcSubject,pcMsgBody,pcAttach,lshowmsg)

   local nPriority,lHTML,Silent,cUser,i,aattachment,ccc,cbcc,llogin,lloginMD5,oSocket

   if pcount() < 10
	lshowmsg = .t.
   endif

   nPriority = 1
   lHTML = .T.
   Silent = .f.

   

   aattachment = {}
   if file ( pcAttach ) 
   aadd(aattachment,pcAttach)
   endif
   ccc = ""
   cbcc = ""
   lLogin = .t.
   lLoginMD5 = .f.
   PROGRAM = "«—”«· »—Ìœ «·ﬂ —Ê‰Ï"

   //cLogFile = "error.log"

   oSocket := TSMTP():New()

   IF oSocket:Connect( pcSMTP, pnPort )

      i := At("<", pcFrom)
      IF i > 0
         cUser := Chr(34) + Alltrim(Left(pcFrom, i-1)) + Chr(34)
         pcFrom := Substr(pcFrom, i+1, Len(pcFrom)-i-1)
      ENDIF

      i := At("<", pcTo)
      IF i > 0
         pcTo := Substr(pcTo, i+1, Len(pcTo)-i-1)
      ENDIF

      i := At("<", cCC)
      IF i > 0
         cCC := Substr(cCC, i+1, Len(cCC)-i-1)
      ENDIF
      i := At("<", cBCC)
      IF i > 0
         cBCC := Substr(cBCC, i+1, Len(cBCC)-i-1)
      ENDIF

      oSocket:ClearData()
      oSocket:SetPriority( nPriority )

      oSocket:SetFrom( cUser, "<"+ pcFrom +">")

      oSocket:AddTo( cUser, "<"+ pcTo +">" )

      IF ! Empty( cCC )
         oSocket:AddCc( cUser,"<"+ cCC +">")
      ENDIF
      IF ! Empty( cBCC )
         oSocket:AddBcc( cUser, "<"+ cBCC +">" )
      ENDIF

      oSocket:SetSubject( pcSubject )

      IF Len( aAttachment ) > 0
         aeval( aAttachment, { |x| oSocket:AddAttach(x) } )
      ENDIF

      oSocket:SetData( pcMsgBody, lHTML )

      IF lLogin
         IF lLoginMD5
            IF ! oSocket:LoginMD5( pcUserID, pcPassword )
               If Silent
                 // LogFile( cLogFile, {oSocket:GetLastError()+" While trying to login got an error messages from server"} )
               Else
                  MsgStop( oSocket:GetLastError(), " ÕœÀ Œÿ« ⁄‰œ „Õ«Ê·… «·« ’«· »«·Œ«œ„" )
               EndIf
               oSocket:Close()
               RETURN
            ENDIF
         ELSEIF ! oSocket:Login( pcUserID, pcPassword )
            If Silent
             //  LogFile( cLogFile, {oSocket:GetLastError()+" While trying to login got an error messages from server"} )
            Else
               MsgStop( oSocket:GetLastError(), "ÕœÀ Œÿ« ⁄‰œ „Õ«Ê·… «·« ’«· »«·Œ«œ„" )
            EndIf
            oSocket:Close()
            RETURN
         ENDIF
      ENDIF

      IF ! oSocket:Send(.T.)
         If Silent
           // LogFile( cLogFile, {oSocket:GetLastError()+" While trying to send data got an error messages from server"} )
         Else
            MsgStop( oSocket:GetLastError(), "ÕœÀ Œÿ« ⁄‰œ „Õ«Ê·… «—”«·… «·»Ì«‰« " )
         EndIf
         oSocket:Close()
         RETURN
      ENDIF

      oSocket:Close()

      If Silent
        //LogFile( cLogFile, {"Mail sent to " + pcTo + " successfully"} )
      Else
		if lshowmsg = .t.
       		  MsgInfo( " „ «—”«· «·—”«·… »‰Ã«Õ «·Ï " + pcTo , PROGRAM )
		endif
      EndIf

   ELSE

      If Silent
       //  LogFile( cLogFile, {"·«Ì„ﬂ‰ «·« ’«· »«·Œ«œ„: " + pcSMTP} )
      Else
         MsgStop( "·«Ì„ﬂ‰ «·« ’«· »«·Œ«œ„: " + pcSMTP, "Œÿ« «À‰«¡ „Õ«Ê·… «·« ’«· »«·Œ«œ„" )
      EndIf

   ENDIF
Return Nil
