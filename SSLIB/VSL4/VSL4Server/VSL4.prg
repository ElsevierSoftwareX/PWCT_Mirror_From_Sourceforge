*-------------------------------------------------------------------------*
*
*  http://www.sourceforge.net/projects/doublesvsoop
*
*  DoubleS Project (DoubleS Paradigm,DoubleS Framework & DoubleS Library)
*
*  Copyright(C) 2011, Mahmoud Fayed (msfclipper@hotmail.com)
*
*  VETO SYSTEM LEVEL 4 (VSL4)
*-------------------------------------------------------------------------*


* List of functions 
*  1 - SS_VSL4STARTUP()			&& CALLED AT THE START OF USING VSL4
*  2 - SS_VSL4CONNECT(myaddress,myport) && Connect to a server using Address & port
*  3 - SS_VSL4SENDDATA(mydata)		&& Send data using the active connection
*  4 - SS_VSL4ClientCLOSE()		&& Close Active Connection - Client
*  5 - SS_VSL4ENGINE()			&& Accept Connections (Server), Get Data (Client/Server) & Get Veto (Client/Server)
*  6 - SS_VSL4DataCome(mydata)		&& Called when data come 
*  7 - SS_VSL4VetoCome(myveto)		&& Called when veto come
*  8 - SS_VSL4BIND(myport)		&& Bind a port
*  9 - SS_VSL4ACCEPT()			&& Accept connection ( Internal function called from SS_VSL4ENGINE() )
* 10 - SS_VSL4VSL4_multisendON()	&& set multisend on
* 11 - SS_VSL4VSL4_multisendOFF()	&& set multisend off
* 12 - SS_VSL4VSL4_feedbackON()		&& set feedback on
* 13 - SS_VSL4VSL4_feedbackOFF()	&& set feedback off
* 14 - SS_VSL4SENDVETO(myveto)		&& send veto using the active connection

* using at Server side
* 	1 - SS_VSL4STARTUP()
*	2 - SS_VSL4BIND(myport)
*	3 - SS_VSL4ENGINE()

* Using at Client side
*	1 - SS_VSL4STARTUP()
*	2 - SS_VSL4CONNECT(myaddress,myport)
*	3 - SS_VSL4SENDDATA(mydata)
*	4 - SS_VSL4SENDVETO(myveto)
*	5 - SS_VSL4ClientCLOSE()

function SS_VSL4STARTUP()

	                     
	public VSL4_osocket        	&& Socket object (Client Side)               
	public VSL4_osocketclient	&& Socket object (Server Side)                 
	public VSL4_mysocket		&& Bind Object                       
	
	public VSL4_sconsarr            && Server Connections Array          
	public VSL4_cconsarr		&& Client Connections Array
	public VSL4_islisten		&& 0 = Client Side 
					&& 1 = Server Side - Bind 		
					&& 2 = Server Side - Accepted Connection                       
	public VSL4_waitconnection      && True : Bind  - False : Accepted Connection           
	public VSL4_multisend           && when send = send to all clients (not applied now , value = .f.)          
	public VSL4_feedback  		&& send what you recive (now applied now, value = .f.)

	VSL4_sconsarr = {}		
	VSL4_cconsarr = {}		
	VSL4_islisten = 0		
	VSL4_waitconnection = .f.
	VSL4_multisend = .f. 		
	VSL4_feedback = .f.   		

	HB_INETInit()

	VSL4_osocketclient = ""

	SET COLOR TO W/B
	CLEAR
	? "Welcome To"
	? "TCP/IP Server "

RETURN

FUNCTION SS_VSL4CONNECT(myaddress,myport)

	VSL4_osocket = HB_INETConnect( myaddress,VAL(myport) )
	HB_INETTIMEOUT( VSL4_osocket, 100 )

	? " Connect "
	? " Address : " 	+ myaddress
	? " Port         : " 	+ myport

	aadd(VSL4_cconsarr,VSL4_osocket)	&& Add socket object to client connections array

RETURN

FUNCTION SS_VSL4SENDDATA(mydata)

	MYDATA = MYDATA + CHR(13) + CHR(10)

	// Server Side
	if VSL4_islisten = 2
		if VSL4_multisend = .t.
			if .not. len(VSL4_sconsarr) = 0
				for x = 1 to len(VSL4_sconsarr)
					VSL4_osocketclient = VSL4_sconsarr[x]
					HB_INETSend( VSL4_osocketclient, mydata  )
					? " Send Data :" + mydata
					? " Error Code : "
					?? HB_INETERRORCODE(VSL4_osocketCLIENT)
				next
			endif
		else
			HB_INETSend( VSL4_osocketclient, mydata  )
			? " Send Data :" + mydata
			? " Error Code : "
			?? HB_INETERRORCODE(VSL4_osocketCLIENT)
		endif
	Endif

	// Client Side
	if VSL4_islisten = 0
		HB_INETSend( VSL4_osocket, mydata )
		? " Send Data :" + mydata
		? " Error Code : "
		?? HB_INETERRORCODE(VSL4_osocket)
	endif
RETURN

FUNCTION SS_VSL4ClientCLOSE()
	HB_INETClose( VSL4_osocket )
RETURN

FUNCTION SS_VSL4ENGINE()

	local mystr,mystr2,x,y
	hb_gcall()
	if VSL4_waitconnection = .t.
		hb_threadstart("SS_VSL4ACCEPT",@VSL4_mysocket,@VSL4_osocketclient,@VSL4_islisten,@VSL4_sconsarr,@VSL4_waitconnection)
		VSL4_waitconnection = .f.
	endif

	* server side
	if VSL4_islisten = 2
		if .not. len(VSL4_sconsarr) = 0
			for x = 1 to len(VSL4_sconsarr)

				VSL4_osocketclient = VSL4_sconsarr[x]
			        MYSTR := space(50)
			        MYSTR = HB_INETRecvLine( VSL4_osocketclient)
	
			        if .not. empty(alltrim(mystr)) 
				        if .NOT. upper(left(mystr,13)) == "[(*VETOSYS*)]"
					         SS_VSL4DataCome(mystr)
				        ELSE
					         mystr2 = substr(mystr,14,len(mystr)-13)
          					 SS_VSL4VetoCome(mystr2)
				        ENDIF
         				? " Data Arrival :" + mystr
				        ? " Error Code : "
				        ?? HB_INETERRORCODE(VSL4_osocketCLIENT)
        				if VSL4_feedback = .t.
				            OLDSOCKET = VSL4_osocketCLIENT
				            if .not. len(VSL4_sconsarr) = 0
					              for y = 1 to len(VSL4_sconsarr)
						                 VSL4_osocketclient = VSL4_sconsarr[y]
						                 HB_INETSend( VSL4_osocketclient, mystr + CHR(13) + CHR(10) )
						                 ? " Send Data :" + mystr
						                 ? " Error Code : "
						                 ?? HB_INETERRORCODE(VSL4_osocketCLIENT)
					              next
				            endif
					    VSL4_osocketCLIENT = OLDSOCKET
        				endif
       				 endif
			next
		endif
	endif

*client side
	if VSL4_islisten = 0
		if .not. len(VSL4_cconsarr) = 0
			for x = 1 to len(VSL4_cconsarr)
				VSL4_osocket = VSL4_cconsarr[x]
			        MYSTR := space(128)
		                MYSTR := HB_INETRecvLine( VSL4_osocket  )
				
				if .not. empty(alltrim(mystr)) 
					if .NOT. upper(left(mystr,13)) == "[(*VETOSYS*)]"
					          SS_VSL4DataCome(mystr)
				        ELSE
					          mystr2 = substr(mystr,14,len(mystr)-13)
          					  SS_VSL4VetoCome(mySTR2)
					ENDIF
					? " Data Arrival :" + mystr
					? " Error Code : "
					?? HB_INETERRORCODE(VSL4_osocket)
 				endif
			next
		endif	
	endif
RETURN

Function SS_VSL4DataCome(mydata)

        ? "Data : " + mydata
	
	* Call Receiver Veto - REQUEST TYPE = SENDDATA
 	FOR X2 = 1 TO Len(SS_VETOS)
                  P1 = SS_SERVERS[SS_AS][23]
                  IF SS_VETOS[X2][1] = SS_AS .AND. ;
                     AllTrim(Upper(SS_VETOS[X2][3])) == AllTrim(Upper(P1))
                     C_NAME = SS_VETOS[X2][5]
                     B_NAME = SS_VETOS[X2][6]
                     R_NAME = SS_VETOS[X2][7]
                     * INVOKE THE RESISTANCE
                     R_ADDRESS = "Circuits\" + ;
                                 C_NAME+"\"+B_NAME+"\"+R_NAME
                     SS_SERVERS[SS_AS][25] = 2 && REQUEST TYPE = SENDDATA
                     SS_CALLR(R_ADDRESS)
                  ENDIF
        NEXT

	* GET DATA - Add data to Server-Input Channel
               P1 = mydata && DATA
               ICH_NAME = SS_SERVERS[SS_AS][21]
               * {SERVER ID , CHANNEL ID , CHANNELNAME , CHANNELTYPE , ATOM , SHELL , SUBSHELL }
               IF .NOT. Empty(SS_CHANNELS)
                  FOR X3 = 1 TO Len(SS_CHANNELS)
                     IF SS_CHANNELS[X3][1] = SS_AS .AND. ;
                        alltrim(Upper(SS_CHANNELS[X3][3])) == alltrim(Upper(ICH_NAME))
                        A_NAME = SS_CHANNELS[X3][5]
                        SH_NAME = SS_CHANNELS[X3][6]
                        SUB_NAME = SS_CHANNELS[X3][7]
                        * 1 - GET ATOM ID
                        FOR X4 = 1 TO LEN(SS_ATOMS)
                             IF alltrim(UPPER(SS_ATOMS[X4][3])) = alltrim(UPPER(A_NAME))
                                  V_ATOMID = SS_ATOMS[X4][2]
                               EXIT
                          ENDIF
                        NEXT
                        * 2 - GET SHELL ID
                        FOR X4 = 1 TO LEN(SS_SHELLS)
                          IF SS_SHELLS[X4][2] = V_ATOMID .AND. alltrim(UPPER(SS_SHELLS[X4][4])) == alltrim(UPPER(SH_NAME))
                               V_SHELLID = SS_SHELLS[X4][3]
                               EXIT
                          ENDIF
                        NEXT
                        * 3 - GET SUBSHELL ID
                        FOR X4 = 1 TO LEN(SS_SUBSHELLS)
                             IF SS_SUBSHELLS[X4][2] = V_ATOMID  .AND. ;
                                SS_SUBSHELLS[X4][3] = V_SHELLID .AND. UPPER(alltrim(SS_SUBSHELLS[X4][5])) == UPPER(alltrim(SUB_NAME))
                                V_SUBSHELLID = SS_SUBSHELLS[X4][4]
                                EXIT
                             ENDIF
                        NEXT
                        * ADD DATABLOCK ELECTRON TO SUBSHELL
                        * {SERVER ID , ATOM ID , SHELL ID , SUBSHELL ID , ELECTRON ID , ELECTRON TYPE , ELECTRON NAME , VALUE}
                        SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
                        AAdd(SS_VARS,{SS_AS,V_ATOMID,V_SHELLID,V_SUBSHELLID,SS_SERVERS[SS_AS][7],2,"DATA_BLOCK",P1})
                        EXIT
                     ENDIF
                  NEXT
               ENDIF



Return

Function SS_VSL4VetoCome(myveto)
 	
	? "Veto : " + myveto

 	* Call Receiver Veto
	* GET RESISTANCE ADDRESS OF VETO
        * {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
        FOR X2 = 1 TO Len(SS_VETOS)
                  P1 = SS_SERVERS[SS_AS][23] && RECEIVING VETO
                  IF SS_VETOS[X2][1] = SS_AS .AND. ;
                  	AllTrim(Upper(SS_VETOS[X2][3])) == AllTrim(Upper(P1))
                     	C_NAME = SS_VETOS[X2][5]
                     	B_NAME = SS_VETOS[X2][6]
                     	R_NAME = SS_VETOS[X2][7]
                     	* INVOKE THE RESISTANCE
                     	R_ADDRESS = "Circuits\" + ;
                                 C_NAME+"\"+B_NAME+"\"+R_NAME
                     	SS_SERVERS[SS_AS][25] = 3 && REQUEST TYPE = SENDVETO
                     	SS_CALLR(R_ADDRESS)
                  ENDIF
        NEXT

	* Call Veto
        FOR X2 = 1 TO Len(SS_VETOS)
                  P1 = AllTrim(myveto) && required VETO
                  IF SS_VETOS[X2][1] = SS_AS .AND. ;
                     	Upper(SS_VETOS[X2][3]) = Upper(P1)
                     	C_NAME = SS_VETOS[X2][5]
                     	B_NAME = SS_VETOS[X2][6]
                     	R_NAME = SS_VETOS[X2][7]
			* INVOKE THE RESISTANCE
               		R_ADDRESS = "Circuits\" + ;
                                 C_NAME+"\"+B_NAME+"\"+R_NAME
                     SS_CALLR(R_ADDRESS)
                  ENDIF
        NEXT
               

Return

FUNCTION SS_VSL4BIND(myport)
	VSL4_mysocket = HB_INETServer(VAL(myport))
	? " BIND "
	? " Port         : " + myport
	VSL4_waitconnection = .t.
	VSL4_islisten = 1
RETURN

FUNCTION SS_VSL4ACCEPT()
	parameters p_VSL4_mysocket,p_VSL4_osocketclient,p_VSL4_islisten,p_VSL4_sconsarr,p_VSL4_waitconnection
	? "before accept"
	p_VSL4_osocketclient := HB_INETAccept( p_VSL4_mysocket )
	? "after accept"
	HB_INETTIMEOUT( p_VSL4_osocketCLIENT, 100 )
	? "Send welcome"
	p_VSL4_islisten = 2
	aadd(p_VSL4_sconsarr,p_VSL4_osocketclient)
	p_VSL4_waitconnection = .t.
RETURN

FUNCTION SS_VSL4VSL4_multisendON()
 	VSL4_multisend = .t.
RETURN

FUNCTION SS_VSL4VSL4_multisendOFF()
 	VSL4_multisend = .f.
RETURN

FUNCTION SS_VSL4VSL4_feedbackON()
 	VSL4_feedback = .t.
RETURN

FUNCTION SS_VSL4VSL4_feedbackOFF()
 	VSL4_feedback = .f.
RETURN

FUNCTION SS_VSL4SENDVETO(myveto)

	MYDATA =  "[(*VETOSYS*)]" + myveto + CHR(13) + CHR(10)

	if VSL4_islisten = 2
		if VSL4_multisend = .t.
			if .not. len(VSL4_sconsarr) = 0
				for x = 1 to len(VSL4_sconsarr)
					VSL4_osocketclient = VSL4_sconsarr[x]
					HB_INETSend( VSL4_osocketclient, mydata )
					? " Send Data :" + mydata
					? " Error Code : "
					?? HB_INETERRORCODE(VSL4_osocketCLIENT)
				next
			endif
		else
			HB_INETSend( VSL4_osocketclient, mydata )
			? " Send Data :" + mydata
			? " Error Code : "
			?? HB_INETERRORCODE(VSL4_osocketCLIENT)
		endif
	Endif
	if VSL4_islisten = 0
		HB_INETSend( VSL4_osocket, mydata )
		? " Send Data :" + mydata
		? " Error Code : "
		?? HB_INETERRORCODE(VSL4_osocket)
	endif
RETURN

*-------------------------------------------------------------------*
