Proc sendmailtoclient( cSMTP,nPort,cUserID,cPassword,cFrom,CTo,cSubject,cMsgBody)

   nPriority = 1
   lHTML = .T.
   Silent = .f.
   aattachment = {}
   ccc = ""
   cbcc = ""
   lLogin = .t.
   lLoginMD5 = .f.
   PROGRAM = "«—”«· »—Ìœ «·ﬂ —Ê‰Ï"

   //cLogFile = "error.log"

   oSocket := TSMTP():New()

   IF oSocket:Connect( cSMTP, nPort )

      i := At("<", cFrom)
      IF i > 0
         cUser := Chr(34) + Alltrim(Left(cFrom, i-1)) + Chr(34)
         cFrom := Substr(cFrom, i+1, Len(cFrom)-i-1)
      ENDIF

      i := At("<", cTo)
      IF i > 0
         cTo := Substr(cTo, i+1, Len(cTo)-i-1)
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

      oSocket:SetFrom( cUser, "<"+ cFrom +">")

      oSocket:AddTo( cUser, "<"+ cTo +">" )

      IF ! Empty( cCC )
         oSocket:AddCc( cUser,"<"+ cCC +">")
      ENDIF
      IF ! Empty( cBCC )
         oSocket:AddBcc( cUser, "<"+ cBCC +">" )
      ENDIF

      oSocket:SetSubject( cSubject )

      IF Len( aAttachment ) > 0
         aeval( aAttachment, { |x| oSocket:AddAttach(x) } )
      ENDIF

      oSocket:SetData( cMsgBody, lHTML )

      IF lLogin
         IF lLoginMD5
            IF ! oSocket:LoginMD5( cUserID, cPassWord )
               If Silent
                 // LogFile( cLogFile, {oSocket:GetLastError()+" While trying to login got an error messages from server"} )
               Else
                  MsgStop( oSocket:GetLastError(), " ÕœÀ Œÿ« ⁄‰œ „Õ«Ê·… «·« ’«· »«·Œ«œ„" )
               EndIf
               oSocket:Close()
               RETURN
            ENDIF
         ELSEIF ! oSocket:Login( cUserID, cPassWord )
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
        //LogFile( cLogFile, {"Mail sent to " + cTo + " successfully"} )
      Else
         MsgInfo( " „ «—”«· «·—”«·… «·Ï " + cTo + " »‰Ã«Õ!", PROGRAM )
      EndIf

   ELSE

      If Silent
       //  LogFile( cLogFile, {"·«Ì„ﬂ‰ «·« ’«· »«·Œ«œ„: " + cSMTP} )
      Else
         MsgStop( "·«Ì„ﬂ‰ «·« ’«· »«·Œ«œ„: " + cSMTP, "Œÿ« «À‰«¡ „Õ«Ê·… «·« ’«· »«·Œ«œ„" )
      EndIf

   ENDIF
Return Nil
