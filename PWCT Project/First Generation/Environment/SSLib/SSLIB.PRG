
*-------------------------------------------------------------------------*
*
*  http://www.sourceforge.net/projects/doublesvsoop
*
*  DoubleS Project (DoubleS Paradigm,DoubleS Framework & DoubleS Library)
*
*  Copyright(C) 2006-2010, Mahmoud Fayed (msfclipper@yahoo.com)
*
*----------------------------------------*
* DoubleS Library Code                   *
*----------------------------------------*
* Store server information into arrays
* Used beside preprocessor statements
*-------------------------------------------------------------------------*
#INCLUDE "Include\SSXHB.CH"

set procedure to VSL4.PRG

FUNCTION SS_ON()
PUBLIC SS_VISIBLE
SS_VISIBLE = .F.
PUBLIC SS_SERVERS      && APPLICATION SERVERS
SS_SERVERS = {}
PUBLIC SS_AS           && ACTIVE SERVER
SS_AS = 0
PUBLIC SS_FLAG,SS_FLAG2,SS_FLAG3
SS_FLAG  = 0           && 1 - DATA UNIT , 2 - VESSEL , 3- REACTION      (FOR ATOMS)
SS_FLAG2 = 0           && 1 - DATA UNIT , 2 - REACTION                  (FOR VESSELS)
SS_FLAG3 = 0           && 1 - DATA UNIT , 2 - CODE UNIT 3- VETO UNIT
PUBLIC SS_RESISTANCES
SS_RESISTANCES = {}    && {SERVER ID , FUNCTION NAME , RESISTANCE ADDRESS}
PUBLIC SS_ATOMS
SS_ATOMS = {}          && {SERVER ID , ATOM ID , ATOM NAME }
PUBLIC SS_SHELLS
SS_SHELLS = {}         && {SERVER ID , ATOM ID , SHELL ID , SHELL NAME }
PUBLIC SS_SUBSHELLS
SS_SUBSHELLS = {}      && {SERVER ID , ATOM ID , SHELL ID , SUBSHELL ID , SUBSHELL NAME }
PUBLIC SS_VARS
SS_VARS = {}           && {SERVER ID , ATOM ID , SHELL ID , SUBSHELL ID , ELECTRON ID , ELECTRON TYPE , ELECTRON NAME , VALUE}
PUBLIC SS_VESSELS
SS_VESSELS = {}        && {SERVER ID , VESSEL ID , VESSEL NAME }
PUBLIC SS_VSATOMS      && VESSELS ATOMS
SS_VSATOMS = {}        && {SERVER ID , VESSEL ID , ATOMNAME }
PUBLIC SS_REACTIONS
SS_REACTIONS = {}      && {SERVER ID , REACTION ID , REACTION NAME }
PUBLIC SS_RITEMS       && REACTION ITEMS
SS_RITEMS = {}         && {SERVER ID , REACTION ID , ITEM TYPE , ITEM NAME }
                       && ITEM TYPE : 1(VESSEL) 2(ATOM) 3(SHELL) 4(SUBSHELL)
PUBLIC SS_CIRCUITS
SS_CIRCUITS = {}       && {SERVER ID , CIRCUIT ID , CIRCUIT NAME , MAIN RESISTANCE , MAIN SWITCH}
PUBLIC SS_BRANCHES
SS_BRANCHES = {}       && {SERVER ID , CIRCUIT ID , BRANCHID , BRANCH NAME , PARALLEL TO , BRANCH SWITCH}
PUBLIC SS_RES
SS_RES = {}            && {SERVER ID , CIRCUIT ID , BRANCHID , RESISTANCE ID , RESISTANCE NAME }
PUBLIC SS_VETOS
SS_VETOS = {}          && {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
PUBLIC SS_CHANNELS
SS_CHANNELS = {}       && {SERVER ID , CHANNEL ID , CHANNELNAME , CHANNELTYPE , ATOM , SHELL , SUBSHELL }
PUBLIC SS_CONNECTIONS
SS_CONNECTIONS = {}    && {SERVER ID , CONNECTION ID , CONNECTIONNAME , CONNECTIONTYPE , INPUTCHANNEL , OUTPUTCHANNEL , SENDINGVETO , RECEIVINGVETO , ATOM , SHELL , SUBSHELL , ELECTRON ,SERVERS}
PUBLIC SS_SYSMEM       && SYSTEM MEMORY
SS_SYSMEM = {0,0,0,0,0,0,"",1,0,0,0,0,0,0,0,;
             0,0,0,0,0,0,0,0,{},"","","",1,"",.F.,0,"",.T.,"",;
             "","","","",0,.F.,"",.F.,.f.,.f.,{},0,;
             {},{},{},{},0,0,0,0}    && 54 ELEMENT
PUBLIC SS_SSSYS
SS_SSSYS = {}
FOR X = 1 TO 23
   AAdd(SS_SSSYS,{})  && each event can be handled with more than one function
                             && 1 - Resistance Address (STRING)
                             && 2 - Server type     (NUMBER)
                             &&       1  = Data Server
                             &&       2  = Code Server
                             &&       3  = Veto Server
                             &&       4  = Super Data Server
                             &&       5  = Super Code Server
                             &&       6  = Super Veto Server
                             &&       7  = Super Server(DoubleS) Server
                             && 3 - Network Name that the server is inside it (Network Server Name)
NEXT
          && SS_SSSYS[1]  ATOM OPEN EVENT
          && SS_SSSYS[2]  ATOM CLOSE EVENT
          && SS_SSSYS[3]  SHELL OPEN EVENT
          && SS_SSSYS[4]  SHELL CLOSE EVENT
          && SS_SSSYS[5]  SUBSHELL OPEN EVENT
          && SS_SSSYS[6]  SUBSHELL CLOSE EVENT
          && SS_SSSYS[7]  Electron ADD EVENT
          && SS_SSSYS[8]  Electron DELETE EVENT
          && SS_SSSYS[9]  Electron READ EVENT
          && SS_SSSYS[10] Electron CHANGE EVENT
          && SS_SSSYS[11] VESSEL OPEN EVENT
          && SS_SSSYS[12] VESSEL CLOSE EVENT
          && SS_SSSYS[13] REACTION OPEN EVENT
          && SS_SSSYS[14] REACTION CLOSE EVENT
          && SS_SSSYS[15] CIRCUIT START EVENT
          && SS_SSSYS[16] CIRCUIT END EVENT
          && SS_SSSYS[17] BRANCH START EVENT
          && SS_SSSYS[18] BRANCH END EVENT
          && SS_SSSYS[19] RESITANCE START EVENT
          && SS_SSSYS[20] RESISTANCE END EVENT
          && SS_SSSYS[21] VETO REQUEST EVENT
          && SS_SSSYS[22] VETO ACCEPTED EVENT
          && SS_SSSYS[23] VETO REFUSED EVENT
PUBLIC SS_NETS       && NETWORKS ARRAY
SS_NETS = {}         && FOR EACH NETWORK
                     && 1 - NETWORK SERVER NAME = NETWORK NAME , FILLED BY NETWORK SERVER
                     && 2 - NETWORK TYPE (1 = MOTHER, 2 = SUB) , DETERMINED BY CONNECTION SERVER
                     && 3 - NETWORK SERVERS ARRAY , FILLED BY NETWORK SERVER & MASTER SERVER
                     &&     FOR EACH ONE
                     &&     1 - SERVER NAME
                     &&     2 - SERVER TYPE
                     &&     3 - SERVER EIGEN VALUE
SS_SYSMEM[4] = {}    && SS_SYSMEM[1] ACTIVE ATOM NAME
                     && SS_SYSMEM[2] ACTIVE SHELL NAME
                     && SS_SYSMEM[3] ACTIVE SUB SHELL NAME
                     && SS_SYSMEM[4] ARRAY OF ACTIVE ELECTRONS ID
                     && SS_SYSMEM[5] ACTIVE ELECTRON NUMBER FROM SS_SYSMEM[4]
                     && SS_SYSMEM[6] OPENED ELECTRON LIST NAME
                     && SS_SYSMEM[7] ACTIVE VIRTUAL DATA FILE NAME
                     && SS_SYSMEM[8] ACTIVE AREA FOR VIRTUAL DATA FILE
SS_SYSMEM[9] = {}    && SS_SYSMEM[9] VDF DETAILS ARRAY
                     && {VARNAME,VARTYPE,VARSIZE}
                     && SS_SYSMEM[10] ACTIVE VDF DETAILS ATOM ID
                     && SS_SYSMEM[11] ACTIVE VDF DETAILS SHELL ID
                     && SS_SYSMEM[12] ACTIVE VDF DETAILS SUBSHELL ID
                     && SS_SYSMEM[13] ACTIVE RECORD NUMBER IN OPENEED VDF
                     && SS_SYSMEM[14] RECORDS COUNT IN OPENEED VDF
                     && SS_SYSMEM[15] ACTIVE VDF DATA ATOM ID
                     && SS_SYSMEM[16] ACTIVE VDF DATA SHELL ID
                     && SS_SYSMEM[17] ACTIVE VDF DATA SUBSHELL ID
                     && SS_SYSMEM[18] LAST SEARCH RESULT (.T. OR .F.)
                     && SS_SYSMEM[19] LAST SEARCH CONDITION
                     && SS_SYSMEM[20] ACTIVE CIRCUIT NAME
                     && SS_SYSMEM[21] ACTIVE BRANCH NAME
                     && SS_SYSMEM[22] ACTIVE RESISTANCE NAME
                     && SS_SYSMEM[23] SELECTED CONNECTION ID
                     && SS_SYSMEM[24] SERVERS IN CONNECTION
                     && SS_SYSMEM[25] SENDER SERVER NAME
                     && SS_SYSMEM[26] SENDER SERVER TYPE
                     && SS_SYSMEM[27] SENDER SERVER EIGEN VALUE
                     && SS_SYSMEM[28] VETO SYSTEM LEVEL
                     && SS_SYSMEM[29] VETO SYSTEM PATH
                     && SS_SYSMEM[30] ON/OFF SS SYSTEM (LOGICAL)
                     && SS_SYSMEM[31] ACTIVE NETWORK TYPE (0 = SUB , 1 = MOTHER)
                     && SS_SYSMEM[32] ACTIVE NETWORK NAME
                     && SS_SYSMEM[33] CONTROL FLAG USED FROM SYSTEM SERVERS RESISTANCES
                     && SS_SYSMEM[34] the name of Data/Super Data Server
                     && SS_SYSMEM[35] the name of Code/Super Code Server
                     && SS_SYSMEM[36] the name of Veto/Super Veto Server
                     && SS_SYSMEM[37] the name of DoubleS Server
                     && SS_SYSMEM[38] REPLY  , ALIAS
                     && SS_SYSMEM[39] REPLY  , RECNO()
                     && SS_SYSMEM[40] ARE VETO FILES OPENDED ?
                     && SS_SYSMEM[41] OPENED VETO FILE ALIAS
                     && SS_SYSMEM[42] ARE VETO SERVICES IN EXECUTION ?
                     && SS_SYSMEM[43] VETO SYSTEM LEVEL 3 ENABLED
                     && SS_SYSMEM[44] VETO SYSTEM LEVEL 3 ACTIVE
                     && SS_SYSMEM[45] ACTIVE ATOMS ARRAY
                     && SS_SYSMEM[46] ACTIVE ATOM INDEX IN ACTIVE ATOMS ARRAY
                     && SS_SYSMEM[47] REACTION - VESSELS
                     && SS_SYSMEM[48] REACTION - ATOMS
                     && SS_SYSMEM[49] REACTION - SHELLS
                     && SS_SYSMEM[50] REACTION - SUBSHELLS
                     && SS_SYSMEM[51] REACTION - VESSELS - ACTIVE INDEX
                     && SS_SYSMEM[52] REACTION - ATOMS - ACTIVE INDEX
                     && SS_SYSMEM[53] REACTION - SHELLS - ACTIVE INDEX
                     && SS_SYSMEM[54] REACTION - SUBSHELLS - ACTIVE INDEX


PUBLIC SS_VDFSA
SS_VDFSA = {}        && VIRTUAL DATA FILES ARRAY
                     && {FILE NAME , DETAILS ADDRESS , DATA ADDRESS}
                     && ADDRESS = ATOM:SHELL:SUBSHELL  = 3 ELEMENTS
PUBLIC SS_AREAS      && DATA FILES AREAS
SS_AREAS = {}        && {AREA NUMBER , FILE NAME}
PUBLIC SS_IDLE
SS_IDLE = {}         && {SERVER ID,RESISTANCE}
* OOP SIMULATION DATA STRUCTURE
PUBLIC SS_CLASSES
SS_CLASSES = {}
                     && SERVER ID
                     && CLASS ID
                     && CLASS NAME
                     && PARENT CLASSES ARRAY
                     && DATA ADDRESS
                     && METHOD ADDRESS
PUBLIC SS_OBJECTS
SS_OBJECTS = {}
                     && SERVER ID
                     && OBJECT ID
                     && OBJECT NAME
                     && CLASS NAME
                     && CLASS ID
                     && OBJECT DATA ARRAY
* VETO SYSTEL LEVEL 3
PUBLIC SS_SAP && SERVER - ADDRESS - PORT
SS_SAP = {}
* Error Tracking
PUBLIC SS_ESRES,SS_ESGOAL,SS_ESSTEP
SS_ESRES = {} && RESISTANCES TRACKING( RESISTANCE, START LINE OF RESISTANCE,FILE)
SS_ESGOAL = {} && GOALS TRACKING ( RESISTANCE , GOAL)
SS_ESSTEP = {} && STEPS TRACKING (STEP, START LINE OF STEP, GOAL ,FILE)

public VSL4_PRINTMSGS
VSL4_PRINTMSGS = .f.

public VSL4_SActiveCliConID	&& Server Side - Active Client Connection ID
VSL4_SActiveCliConID = 0

RETURN  NIL

FUNCTION SS_NEWSERVER(P1,P2,P3)
* P1 : SERVER NAME
* P2 : SERVER TYPE
* P3 : SERVER EIGEN VALUE
LOCAL X,MYPATH
AADD(SS_SERVERS,{P1,P2,P3,0,0,0,0,0,0,0,0,0,0,0,0,;
                 .F.,.F.,1,0,0,"",.F.,"","",0,"",;
                 0,0,{},0,.T.,"",0,0,"",0,.F.,""})
X     = LEN(SS_SERVERS)
SS_AS = X
IF SS_GVSL() = 2 && GET VETO SYSTEM LEVEL
   SS_OVFILE("SS1.DBF")
   IF FLock()
   APPEN BLANK
   REPLACE SS_f1 WITH P1
   REPLACE SS_f2 WITH P2
   REPLACE SS_f3 WITH P3
   COMMIT
   UNLOCK
   else
   ? "Lock Process Failed"
   ENDIF
   SS_CVFILE()
ENDIF
IF SS_VISIBLE = .T.
set color to BG+/RB
clear
? " Creating New Server..."
? ""
? ""
? " SERVER NAME                : " + SS_SERVERS[X][1]
? " SERVER TYPE                : " + SS_SERVERS[X][2]
? " SERVER EIGENVALUE          : " + SS_SERVERS[X][3]
? " ATOMS NUMBER               : " + STR(SS_SERVERS[X][4])
? " SHELLS NUMBER              : " + STR(SS_SERVERS[X][5])
? " SUBSHELLS NUMBER           : " + STR(SS_SERVERS[X][6])
? " ELECTRONS NUMBER           : " + STR(SS_SERVERS[X][7])
? " VESSELS NUMBER             : " + STR(SS_SERVERS[X][8])
? " REACTIONS NUMBER           : " + STR(SS_SERVERS[X][9])
? " CIRCUITS NUMBER            : " + STR(SS_SERVERS[X][10])
? " BRANCHES NUMBER            : " + STR(SS_SERVERS[X][11])
? " RESISTANCES NUMBER         : " + STR(SS_SERVERS[X][12])
? " VETOS NUMBER               : " + STR(SS_SERVERS[X][13])
? " CHANNELS NUMBER            : " + STR(SS_SERVERS[X][14])
? " CONNECTIONS NUMBER         : " + STR(SS_SERVERS[X][15])
* SS_SERVERS[X][16]    SERVER SHUT DOWN VARIABLE
* SS_SERVERS[X][17]    SERVER RESTART VARIABLE
* SS_SERVERS[X][18]    SERVER CIRCUIT DIRECTION
* SS_SERVERS[X][19]    SERVER WITH CIRCUIT ID
* SS_SERVERS[X][20]    SERVER WITH BRANCH ID
* SS_SERVERS[X][21]    INPUT CHANNEL NAME
* SS_SERVERS[X][22]    ACCEPTED CONNECTION VARIABLE
* SS_SERVERS[X][23]    RECEVING VETO
* SS_SERVERS[X][24]    SENDING VETO
* SS_SERVERS[X][25]    REQUEST TYPE (AT SERVER)
* SS_SERVERS[X][26]    REQUEST VETO NAME (AT SERVER)
* SS_SERVERS[X][27]    LAST RECORD NUMBER READED  IN SS2.DBF (VETO SYSTEM LEVEL 2)
* SS_SERVERS[X][28]    RECORD NUMBER OF LAST CONNECTION IN SS2.DBF (VETO SYSTEM LEVEL 2)
* SS_SERVERS[X][29]    VSL(2) - (CONNECTION RECORD NUMBER) array (at server)
* SS_SERVERS[X][30]    VSL(2) - (CONNECTION RECORD NUMBER) (at client)
* SS_SERVERS[X][31]    VSL(2) - first time service called (at server)
* SS_SERVERS[X][32]    SERVER MAIN RESISTANCE
* SS_SERVERS[X][33]    LAST CLASS ID
* SS_SERVERS[X][34]    LAST OBJECT ID
* SS_SERVERS[X][35]    WITH OBJECT NAME
* SS_SERVERS[X][36]    WITH OBJECT ID
* SS_SERVERS[X][37]    CALLED_AS_METHOD (TRUE OR FALSE)
* SS_SERVERS[X][38]    CALLED_AS_METHOD OBJECT NAME


inkey(0)
ENDIF
RETURN  NIL

FUNCTION SS_NEWR(P1,P2)
LOCAL X
* P1 : FUNCTION NAME
* P2 : RESISTANCE ADDRESS
AADD(SS_RESISTANCES,{SS_AS,P1,P2})
X = LEN(SS_RESISTANCES)
IF SS_VISIBLE = .T.
set color to BG+/RB
clear
? " Creating New RESISTANCE..."
? ""
? ""
? " FUNCTION NAME                : " + SS_RESISTANCES[X][2]
? " RESISTANCE ADDRESS           : " + SS_RESISTANCES[X][3]
inkey(0)
ENDIF
RETURN NIL

FUNCTION SS_GRFUNC(P1)
   LOCAL X,R,p2
   IF SS_SYSMEM[42] = .T.
      IF .NOT. Empty(SS_SYSMEM[38])
         Select(SS_SYSMEM[38])
         goto SS_SYSMEM[39]
      ENDIF
   ENDIF

   X = LEN(SS_RESISTANCES)
   IF .NOT. X = 0
        FOR X = 1 TO LEN(SS_RESISTANCES)
                IF SS_RESISTANCES[X][1] = SS_AS .AND. ;
                   Upper(SS_RESISTANCES[X][3]) == Upper(P1)
                   R = SS_RESISTANCES[X][2]
                   RETURN R
                ENDIF
        NEXT
   ENDIF
   RETURN

FUNCTION SS_CALLR(P1)
   LOCAL X,R,p2
   IF SS_SYSMEM[42] = .T.
      IF .NOT. Empty(SS_SYSMEM[38])
         Select(SS_SYSMEM[38])
         goto SS_SYSMEM[39]
      ENDIF
   ENDIF

   P2 = ""
   FOR x = 1 TO Len(p1)
      IF SubStr(p1,x,1) = "("
         p2 = SubStr(p1,x,Len(p1)-x+1)
         p1 = Left(p1,x-1)
      ENDIF
   NEXT
X = LEN(SS_RESISTANCES)
IF .NOT. X = 0
        FOR X = 1 TO LEN(SS_RESISTANCES)
                IF SS_RESISTANCES[X][1] = SS_AS .AND. ;
                   Upper(ALLTRIM(SS_RESISTANCES[X][3])) == Upper(ALLTRIM(P1))
                   R = SS_RESISTANCES[X][2]
                   IF .NOT. Empty(P2) && THERE ARE PARAMETERS SENDED TO RESISTANCE
                      R = LEFT(R,Len(R)-2) + AllTrim(P2)
                   ENDIF
                        R = &R
                        RETURN R
                ENDIF
        NEXT
ENDIF
RETURN NIL

FUNCTION SS_NEWATOM(P1)
LOCAL X
IF SS_FLAG < 4                                    && DATA UNIT
IF SS_FLAG2 = 1
IF SS_FLAG = 1                                    && DECLARING NEW ATOM
* ADDING ATOM TO SERVER
        SS_SERVERS[SS_AS][4] = SS_SERVERS[SS_AS][4] + 1
        AADD(SS_ATOMS,{SS_AS,SS_SERVERS[SS_AS][4],P1})
        X = LEN(SS_ATOMS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New ATOM..."
                ? ""
                ? ""
                ? " ATOM NAME                : " + SS_ATOMS[X][3]
                ? " ATOM ID                  : " + STR(SS_ATOMS[X][2])
                INKEY(0)
        ENDIF
ELSEIF SS_FLAG = 2
* ADDING ATOM TO VESSEL
        AADD(SS_VSATOMS,{SS_AS,SS_SERVERS[SS_AS][8],P1})
        X = LEN(SS_VSATOMS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Adding New ATOM TO VESSEL..."
                ? ""
                ? ""
                ? " ATOM NAME                  : " + SS_VSATOMS[X][3]
                ? " VESSEL ID                  : " + STR(SS_VSATOMS[X][2])
                INKEY(0)
        ENDIF
ENDIF
ELSEIF SS_FLAG2 = 2
SS_NEWRITEM(P1,2)
ENDIF
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][14]
SS_CHANNELS[X][5] = P1
ENDIF
IF SS_FLAG3 = 4
SS_CONSET(P1,5)
ENDIF
RETURN  NIL

FUNCTION SS_NEWSHELL(P1)
LOCAL X
IF SS_FLAG < 4                                    && DATA UNIT
IF SS_FLAG = 1                                    && DECLARING NEW ATOM
        SS_SERVERS[SS_AS][5] = SS_SERVERS[SS_AS][5] + 1
        AADD(SS_SHELLS,{SS_AS,SS_SERVERS[SS_AS][4],SS_SERVERS[SS_AS][5],P1})
        X = LEN(SS_SHELLS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New SHELL..."
                ? ""
                ? ""
                ? " ATOM ID                : " + STR(SS_SHELLS[X][2])
                ? " SHELL ID               : " + STR(SS_SHELLS[X][3])
                ? " SHELL NAME             : " + SS_SHELLS[X][4]
                INKEY(0)
        ENDIF
ENDIF
IF SS_FLAG2 = 2
SS_NEWRITEM(P1,3)
ENDIF
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][14]
SS_CHANNELS[X][6] = P1
ENDIF
IF SS_FLAG3 = 4
SS_CONSET(P1,6)
ENDIF
RETURN  NIL

FUNCTION SS_NEWSUBSHELL(P1)
LOCAL X
IF SS_FLAG < 4                                    && DATA UNIT
IF SS_FLAG = 1                                    && DECLARING NEW ATOM
        SS_SERVERS[SS_AS][6] = SS_SERVERS[SS_AS][6] + 1
        AADD(SS_SUBSHELLS,{SS_AS,SS_SERVERS[SS_AS][4],SS_SERVERS[SS_AS][5],SS_SERVERS[SS_AS][6],P1})
        X = LEN(SS_SUBSHELLS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New SUBSHELL..."
                ? ""
                ? ""
                ? " ATOM ID                : " + STR(SS_SUBSHELLS[X][2])
                ? " SHELL ID               : " + STR(SS_SUBSHELLS[X][3])
                ? " SUBSHELL ID            : " + STR(SS_SUBSHELLS[X][4])
                ? " SUBSHELL NAME          : " + SS_SUBSHELLS[X][5]
                INKEY(0)
        ENDIF
ENDIF
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][14]
SS_CHANNELS[X][7] = P1
ENDIF
IF SS_FLAG3 = 4
SS_CONSET(P1,7)
ENDIF
RETURN  NIL

FUNCTION SS_NEWVAR(P1,P2,P3)
LOCAL X
IF PCOUNT() = 2 
P3 = "NULL"
ENDIF
IF SS_FLAG = 1                                    && DECLARING NEW ATOM
        SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
        AADD(SS_VARS,{SS_AS,SS_SERVERS[SS_AS][4],SS_SERVERS[SS_AS][5],SS_SERVERS[SS_AS][6],SS_SERVERS[SS_AS][7],P2,P1,P3,VSL4_SActiveCliConID})
        X = LEN(SS_VARS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                IF P2 = 1
                ? " Creating New ELECTRON(VARIABLE)..."
                ELSEIF P2 = 2
                ? " Creating New ELECTRON(DATABLOCK)..."
                ELSEIF P2 = 3
                ? " Creating New ELECTRON(REFRENCE)..."
                ENDIF
                ? ""
                ? ""
                ? " ATOM ID                : " + STR(SS_VARS[X][2])
                ? " SHELL ID               : " + STR(SS_VARS[X][3])
                ? " SUBSHELL ID            : " + STR(SS_VARS[X][4])
                ? " ELECTRON ID            : " + STR(SS_VARS[X][5])
                ? " ELECTRON TYPE          : " + STR(SS_VARS[X][6])
                ? " ELECTRON NAME          : " + SS_VARS[X][7]
                INKEY(0)
        ENDIF
ENDIF
RETURN  NIL

FUNCTION SS_NEWVESSEL(P1)
LOCAL X
IF SS_FLAG < 4                                    && DATA UNIT
IF SS_FLAG2 = 1
        SS_SERVERS[SS_AS][8] = SS_SERVERS[SS_AS][8] + 1
        AADD(SS_VESSELS,{SS_AS,SS_SERVERS[SS_AS][8],P1})
        X = LEN(SS_VESSELS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New VESSEL..."
                ? ""
                ? ""
                ? " VESSEL NAME                : " + SS_VESSELS[X][3]
                ? " VESSEL ID                  : " + STR(SS_VESSELS[X][2])
                INKEY(0)
        ENDIF
ELSEIF SS_FLAG2 = 2
SS_NEWRITEM(P1,1)
ENDIF
ENDIF
RETURN  NIL

*------------*
* vessels
*------------*
* statements
* #command OPEN VESSEL <X1> =>  SS_OVESSEL( <(X1)> )
* #command CLOSE VESSEL =>  SS_CVESSEL()
* #command GOTO FIRST ATOM => SS_GTFAA()
* #command GOTO LAST ATOM => SS_GTLAA()
* #command GOTO NEXT ATOM => SS_GTNAA()
* #command GOTO PREV ATOM => SS_GTPAA()
* #define  GET_ACTIVE_ATOM_NAME   SS_ANAME()
* #define  GET_ACTIVE_ATOMS_COUNT   SS_AACOUNT()
* #command SELECT ACTIVE ATOM => SS_SAA()
* data
* SS_VESSELS = {}  && {SERVER ID , VESSEL ID , VESSEL NAME }
* SS_VSATOMS = {}  && {SERVER ID , VESSEL ID , ATOMNAME }
* SS_SYSMEM[45] ACTIVE ATOMS ARRAY
* SS_SYSMEM[46] ACTIVE ATOM INDEX IN ACTIVE ATOMS ARRAY

FUNCTION SS_OVESSEL(P1) && OPEN VESSEL
LOCAL X,MYVID
IF .NOT. LEN(SS_VESSELS) = 0
        SS_SYSMEM[45] = {} && CLEAR ACTIVE ATOMS ARRAY
        * GET VESSEL ID
        MYVID = 0 
        FOR X = 1 TO LEN(SS_VESSELS)
                IF UPPER(ALLTRIM(SS_VESSELS[X][3])) = UPPER(ALLTRIM(P1)) .and. ;
                   SS_VESSELS[X][1] = SS_AS
                        MYVID = SS_VESSELS[X][2]
                ENDIF
        NEXT
        * ADD VESSEL ATOMS TO ACTIVE ATOMS ARRAY
        IF .NOT. MYVID = 0 .AND. .NOT. LEN(SS_VSATOMS) = 0
                FOR X = 1 TO LEN(SS_VSATOMS) 
                        IF SS_VSATOMS[X][2] = MYVID .and. ;
                           SS_VSATOMS[X][1] = SS_AS
                                AADD(SS_SYSMEM[45],SS_VSATOMS[X][3])
                        ENDIF
                NEXT
        ENDIF
        * SET ATOM INDEX AT FIRST ATOM
        IF .NOT. LEN(SS_SYSMEM[45]) = 0
        SS_SYSMEM[46] = 1
        ENDIF
ENDIF
RETURN

FUNCTION SS_CVESSEL() && CLOSE VESSEL
SS_SYSMEM[45] = {}  && CLEAR ACTIVE ATOMS ARRAY
SS_SYSMEM[46] = 0   && CLEAR ACTIVE ATOM INDEX
RETURN

FUNCTION SS_GTFAA() && GOTO FIRST ACTIVE ATOM
IF .NOT. LEN(SS_SYSMEM[45]) = 0
SS_SYSMEM[46] = 1
ELSE
SS_SYSMEM[46] = 0
ENDIF
RETURN

FUNCTION SS_GTLAA() && GOTO LAST ACTIVE ATOM
IF .NOT. LEN(SS_SYSMEM[45]) = 0
SS_SYSMEM[46] = LEN(SS_SYSMEM[45])
ELSE
SS_SYSMEM[46] = 0
ENDIF
RETURN

FUNCTION SS_GTNAA() && GOTO NEXT ATOM
IF .NOT. SS_SYSMEM[46] = LEN(SS_SYSMEM[45])
SS_SYSMEM[46] = SS_SYSMEM[46] + 1
ENDIF
RETURN

FUNCTION SS_GTPAA() && GOTO PREVIOUS ATOM
IF .NOT. SS_SYSMEM[46] = 1 .AND. .NOT. SS_SYSMEM[46] = 0
SS_SYSMEM[46] = SS_SYSMEM[46] - 1
ENDIF
RETURN

FUNCTION SS_ANAME() && GET ACTIVE ATOM NAME
LOCAL X,Y,MYRET
X = SS_SYSMEM[45]
Y = SS_SYSMEM[46]
MYRET = X[Y]
RETURN MYRET

FUNCTION SS_AACOUNT() && GET ACTIVE ATOMS COUNT
RETURN LEN(SS_SYSMEM[45])

FUNCTION SS_SAA() && SELECT ACTIVE ATOM
SELECT ATOM (ALLTRIM(GET_ACTIVE_ATOM_NAME))
RETURN


FUNCTION SS_NEWREACTION(P1)
LOCAL X
        SS_SERVERS[SS_AS][9] = SS_SERVERS[SS_AS][9] + 1
        AADD(SS_REACTIONS,{SS_AS,SS_SERVERS[SS_AS][9],P1})
        X = LEN(SS_REACTIONS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New REACTION..."
                ? ""
                ? ""
                ? " REACTION NAME             : " + SS_REACTIONS[X][3]
                ? " REACTION ID               : " + STR(SS_REACTIONS[X][2])
                INKEY(0)
        ENDIF
RETURN  NIL

FUNCTION SS_NEWRITEM(P1,P2)
LOCAL X
        AADD(SS_RITEMS,{SS_AS,SS_SERVERS[SS_AS][9],P2,P1})
        X = LEN(SS_RITEMS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Adding Item to REACTION..."
                ? ""
                ? ""
                ? " ITEM TYPE           : " + STR(SS_RITEMS[X][3])
                ? " ITEM NAME           : " + SS_RITEMS[X][4]
                ? " REACTION ID         : " + STR(SS_RITEMS[X][2])
                INKEY(0)
        ENDIF
RETURN  NIL

* REACTIONS
* STATEMENTS
#command ACTIVE REACTION <X1> => SS_AR(<(X1)>)
#command UNACTIVE REACTION  => SS_UNAR()
* #define  GET_REACTION_VESSELS_COUNT   SS_GRVC()
* #define  GET_REACTION_ATOMS_COUNT   SS_GRAC()
* #define  GET_REACTION_SHELLS_COUNT   SS_GRSC()
* #define  GET_REACTION_SUBSHELLS_COUNT   SS_GRSSC()
* #define  GET_REACTION_VESSEL_NAME   SS_GRVN()
* #define  GET_REACTION_ATOM_NAME   SS_GRAN()
* #define  GET_REACTION_SHELL_NAME   SS_GRSN()
* #define  GET_REACTION_SUBSHELL_NAME   SS_GRSSN()
* #command REACTION GOTO FIRST VESSEL => SS_RGTFV()
* #command REACTION GOTO LAST VESSEL => SS_RGTLV()
* #command REACTION GOTO NEXT VESSEL => SS_RGTNV()
* #command REACTION GOTO PREV VESSEL => SS_RGTPV()
* #command REACTION GOTO FIRST ATOM => SS_RGTFA()
* #command REACTION GOTO LAST ATOM => SS_RGTLA()
* #command REACTION GOTO NEXT ATOM => SS_RGTNA()
* #command REACTION GOTO PREV ATOM => SS_RGTPA()
* #command REACTION GOTO FIRST SHELL => SS_RGTFS()
* #command REACTION GOTO LAST SHELL => SS_RGTLS()
* #command REACTION GOTO NEXT SHELL => SS_RGTNS()
* #command REACTION GOTO PREV SHELL => SS_RGTPS()
* #command REACTION GOTO FIRST SUBSHELL => SS_RGTFSS()
* #command REACTION GOTO LAST SUBSHELL => SS_RGTLSS()
* #command REACTION GOTO NEXT SUBSHELL => SS_RGTNSS()
* #command REACTION GOTO PREV SUBSHELL => SS_RGTPSS()
* DATA
* SS_REACTIONS = {}   {SERVER ID , REACTION ID , REACTION NAME }
* SS_RITEMS = {}      {SERVER ID , REACTION ID , ITEM TYPE , ITEM NAME }
*                     ITEM TYPE : 1(VESSEL) 2(ATOM) 3(SHELL) 4(SUBSHELL)
* SS_SYSMEM[47] REACTION - VESSELS
* SS_SYSMEM[48] REACTION - ATOMS
* SS_SYSMEM[49] REACTION - SHELLS
* SS_SYSMEM[50] REACTION - SUBSHELLS
* SS_SYSMEM[51] REACTION - VESSELS - ACTIVE INDEX
* SS_SYSMEM[52] REACTION - ATOMS - ACTIVE INDEX
* SS_SYSMEM[53] REACTION - SHELLS - ACTIVE INDEX
* SS_SYSMEM[54] REACTION - SUBSHELLS - ACTIVE INDEX

FUNCTION SS_AR(P1)  && ACTIVE REACTION
LOCAL X,MYRID
IF .NOT. LEN(SS_REACTIONS) = 0
        SS_SYSMEM[47] = {} && CLEAR ACTIVE REACTION ARRAYS
        SS_SYSMEM[48] = {}
        SS_SYSMEM[49] = {}
        SS_SYSMEM[50] = {}
        * GET REACTION ID
        MYRID = 0 
        FOR X = 1 TO LEN(SS_REACTIONS)
                IF UPPER(ALLTRIM(SS_REACTIONS[X][3])) = UPPER(ALLTRIM(P1)) .and. ;
                   SS_REACTIONS[X][1] = SS_AS
                        MYRID = SS_REACTIONS[X][2]
                ENDIF
        NEXT
        * FILL ARRAYS WITH ACTIVE REACTION DATA
        IF .NOT. MYRID = 0 .AND. .NOT. LEN(SS_RITEMS) = 0
                FOR X = 1 TO LEN(SS_RITEMS) 
                        IF SS_RITEMS[X][2] = MYRID .and. ;
                           SS_RITEMS[X][1] = SS_AS
                                IF SS_RITEMS[X][3] = 1
                                        AADD(SS_SYSMEM[47],SS_RITEMS[X][4])
                                ENDIF
                                IF SS_RITEMS[X][3] = 2
                                        AADD(SS_SYSMEM[48],SS_RITEMS[X][4])
                                ENDIF
                                IF SS_RITEMS[X][3] = 3
                                        AADD(SS_SYSMEM[49],SS_RITEMS[X][4])
                                ENDIF
                                IF SS_RITEMS[X][3] = 4
                                        AADD(SS_SYSMEM[50],SS_RITEMS[X][4])
                                ENDIF
                        ENDIF
                NEXT
        ENDIF
        * SET INDEX AT FIRST ELEMENT
        IF .NOT. LEN(SS_SYSMEM[47]) = 0
                SS_SYSMEM[51] = 1
        ENDIF
        IF .NOT. LEN(SS_SYSMEM[48]) = 0
                SS_SYSMEM[52] = 1
        ENDIF
        IF .NOT. LEN(SS_SYSMEM[49]) = 0
                SS_SYSMEM[53] = 1
        ENDIF
        IF .NOT. LEN(SS_SYSMEM[50]) = 0
                SS_SYSMEM[54] = 1
        ENDIF
ENDIF
RETURN

FUNCTION SS_UNAR() && UNACTIVE REACTION
        SS_SYSMEM[47] = {}
        SS_SYSMEM[48] = {}
        SS_SYSMEM[49] = {}
        SS_SYSMEM[50] = {}
        SS_SYSMEM[51] = 0
        SS_SYSMEM[52] = 0
        SS_SYSMEM[53] = 0
        SS_SYSMEM[54] = 0
RETURN

FUNCTION SS_GRVC() && GET_REACTION_VESSELS_COUNT
RETURN LEN(SS_SYSMEM[47])

FUNCTION  SS_GRAC() && GET_REACTION_ATOMS_COUNT
RETURN LEN(SS_SYSMEM[48])

FUNCTION  SS_GRSC() && GET_REACTION_SHELLS_COUNT
RETURN LEN(SS_SYSMEM[49])

FUNCTION SS_GRSSC() && GET_REACTION_SUBSHELLS_COUNT
RETURN LEN(SS_SYSMEM[50])

FUNCTION SS_GRVN()  && GET_REACTION_VESSEL_NAME
LOCAL X,Y,MYRET
X = SS_SYSMEM[47]
Y = SS_SYSMEM[51]
MYRET = X[Y]
RETURN MYRET

FUNCTION SS_GRAN()  && GET_REACTION_ATOM_NAME
LOCAL X,Y,MYRET
X = SS_SYSMEM[48]
Y = SS_SYSMEM[52]
MYRET = X[Y]
RETURN MYRET

FUNCTION SS_GRSN()  && GET_REACTION_SHELL_NAME
LOCAL X,Y,MYRET
X = SS_SYSMEM[49]
Y = SS_SYSMEM[53]
MYRET = X[Y]
RETURN MYRET

FUNCTION SS_GRSSN() && GET_REACTION_SUBSHELL_NAME
LOCAL X,Y,MYRET
X = SS_SYSMEM[50]
Y = SS_SYSMEM[54]
MYRET = X[Y]
RETURN MYRET

FUNCTION SS_RGTFV() && REACTION GOTO FIRST VESSEL
IF .NOT. LEN(SS_SYSMEM[47]) = 0
        SS_SYSMEM[51] = 1
ELSE
        SS_SYSMEM[51] = 0
ENDIF
RETURN

FUNCTION SS_RGTLV() && REACTION GOTO LAST VESSEL
IF .NOT. LEN(SS_SYSMEM[47]) = 0
        SS_SYSMEM[51] = LEN(SS_SYSMEM[47])
ELSE
        SS_SYSMEM[51] = 0
ENDIF
RETURN

FUNCTION SS_RGTNV() && REACTION GOTO NEXT VESSEL
IF .NOT. SS_SYSMEM[51] = LEN(SS_SYSMEM[47])
        SS_SYSMEM[51] = SS_SYSMEM[51] + 1
ENDIF
RETURN

FUNCTION SS_RGTPV() && REACTION GOTO PREV VESSEL
IF .NOT. SS_SYSMEM[51] = 1 .AND. .NOT. SS_SYSMEM[47] = 0
        SS_SYSMEM[51] = SS_SYSMEM[51] - 1
ENDIF
RETURN

FUNCTION SS_RGTFA() && REACTION GOTO FIRST ATOM
IF .NOT. LEN(SS_SYSMEM[48]) = 0
        SS_SYSMEM[52] = 1
ELSE
        SS_SYSMEM[52] = 0
ENDIF
RETURN

FUNCTION SS_RGTLA() && REACTION GOTO LAST ATOM
IF .NOT. LEN(SS_SYSMEM[48]) = 0
        SS_SYSMEM[52] = LEN(SS_SYSMEM[48])
ELSE
        SS_SYSMEM[52] = 0
ENDIF
RETURN

FUNCTION SS_RGTNA() && REACTION GOTO NEXT ATOM
IF .NOT. SS_SYSMEM[52] = LEN(SS_SYSMEM[48])
        SS_SYSMEM[52] = SS_SYSMEM[52] + 1
ENDIF

RETURN

FUNCTION SS_RGTPA() && REACTION GOTO PREV ATOM
IF .NOT. SS_SYSMEM[52] = 1 .AND. .NOT. SS_SYSMEM[48] = 0
        SS_SYSMEM[52] = SS_SYSMEM[52] - 1
ENDIF
RETURN

FUNCTION SS_RGTFS() && REACTION GOTO FIRST SHELL
IF .NOT. LEN(SS_SYSMEM[49]) = 0
        SS_SYSMEM[53] = 1
ELSE
        SS_SYSMEM[53] = 0
ENDIF
RETURN

FUNCTION SS_RGTLS() && REACTION GOTO LAST SHELL
IF .NOT. LEN(SS_SYSMEM[49]) = 0
        SS_SYSMEM[53] = LEN(SS_SYSMEM[49])
ELSE
        SS_SYSMEM[53] = 0
ENDIF
RETURN

FUNCTION SS_RGTNS() && REACTION GOTO NEXT SHELL
IF .NOT. SS_SYSMEM[53] = LEN(SS_SYSMEM[49])
        SS_SYSMEM[53] = SS_SYSMEM[53] + 1
ENDIF
RETURN

FUNCTION SS_RGTPS() && REACTION GOTO PREV SHELL 
IF .NOT. SS_SYSMEM[53] = 1 .AND. .NOT. SS_SYSMEM[49] = 0
        SS_SYSMEM[53] = SS_SYSMEM[53] - 1
ENDIF
RETURN

FUNCTION SS_RGTFSS() && REACTION GOTO FIRST SUBSHELL
IF .NOT. LEN(SS_SYSMEM[50]) = 0
        SS_SYSMEM[54] = 1
ELSE
        SS_SYSMEM[54] = 0
ENDIF

RETURN

FUNCTION SS_RGTLSS() && REACTION GOTO LAST SUBSHELL
IF .NOT. LEN(SS_SYSMEM[50]) = 0
        SS_SYSMEM[54] = LEN(SS_SYSMEM[50])
ELSE
        SS_SYSMEM[54] = 0
ENDIF
RETURN

FUNCTION SS_RGTNSS() && REACTION GOTO NEXT SUBSHELL
IF .NOT. SS_SYSMEM[54] = LEN(SS_SYSMEM[50])
        SS_SYSMEM[54] = SS_SYSMEM[54] + 1
ENDIF
RETURN

FUNCTION SS_RGTPSS() && REACTION GOTO PREV SUBSHELL
IF .NOT. SS_SYSMEM[54] = 1 .AND. .NOT. SS_SYSMEM[50] = 0
        SS_SYSMEM[54] = SS_SYSMEM[54] - 1
ENDIF
RETURN

FUNCTION SS_NEWCIRCUIT(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
        SS_SERVERS[SS_AS][10] = SS_SERVERS[SS_AS][10] + 1
        AADD(SS_CIRCUITS,{SS_AS,SS_SERVERS[SS_AS][10],P1,"","OFF"})
        X = LEN(SS_CIRCUITS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New CIRCUIT..."
                ? ""
                ? ""
                ? " CIRCUIT NAME       : " + SS_CIRCUITS[X][3]
                ? " CIRCUIT ID         : " + STR(SS_CIRCUITS[X][2])
                INKEY(0)
        ENDIF
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][13]
SS_VETOS[X][5] = P1
ENDIF
RETURN  NIL

FUNCTION SS_MRESIS(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
X = SS_SERVERS[SS_AS][10]
SS_CIRCUITS[X][4] = P1
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][13]
SS_VETOS[X][7] = P1
ENDIF
RETURN  NIL

FUNCTION SS_MSWITCH(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
X = SS_SERVERS[SS_AS][10]
SS_CIRCUITS[X][5] = P1
ENDIF
RETURN  NIL

FUNCTION SS_NEWBRANCH(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
        SS_SERVERS[SS_AS][11] = SS_SERVERS[SS_AS][11] + 1
        AADD(SS_BRANCHES,{SS_AS,SS_SERVERS[SS_AS][10],SS_SERVERS[SS_AS][11],P1,0,"OFF"})
        X = LEN(SS_BRANCHES)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New BRANCH..."
                ? ""
                ? ""
                ? " BRANCH NAME       : " + SS_BRANCHES[X][4]
                ? " BRANCH ID         : " + STR(SS_BRANCHES[X][3])
                INKEY(0)
        ENDIF
ENDIF
IF SS_FLAG3 = 3
X = SS_SERVERS[SS_AS][13]
SS_VETOS[X][6] = P1
ENDIF
RETURN  NIL

FUNCTION SS_BPATO(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
X = SS_SERVERS[SS_AS][11]
SS_BRANCHES[X][5] = P1
ENDIF
RETURN  NIL

FUNCTION SS_BSWITCH(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
X = SS_SERVERS[SS_AS][11]
SS_BRANCHES[X][6] = P1
ENDIF
RETURN  NIL

FUNCTION SS_NRESIS(P1)
LOCAL X
IF SS_FLAG3 = 2                                    && CODE UNIT
        SS_SERVERS[SS_AS][12] = SS_SERVERS[SS_AS][12] + 1
        AADD(SS_RES,{SS_AS,SS_SERVERS[SS_AS][10],SS_SERVERS[SS_AS][11],SS_SERVERS[SS_AS][12],P1})
        X = LEN(SS_RES)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New RESISTANCE..."
                ? ""
                ? ""
                ? " RESISTANCE NAME       : " + SS_RES[X][5]
                ? " RESISTANCE ID         : " + STR(SS_RES[X][4])
                INKEY(0)
        ENDIF
ENDIF
IF SS_FLAG3 = 3                                    && VETO UNIT
   X = LEN(SS_VETOS)
   SS_VETOS[X][7] = P1
ENDIF
RETURN  NIL

FUNCTION SS_NEWVETO(P1)
LOCAL X
IF SS_FLAG3 = 3                                    && VETO UNIT
        SS_SERVERS[SS_AS][13] = SS_SERVERS[SS_AS][13] + 1
        AADD(SS_VETOS,{SS_AS,SS_SERVERS[SS_AS][13],P1,,,,})
        X = LEN(SS_VETOS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New VETO..."
                ? ""
                ? ""
                ? " VETO NAME       : " + SS_VETOS[X][3]
                ? " VETO ID         : " + STR(SS_VETOS[X][2])
                INKEY(0)
        ENDIF
ENDIF
RETURN  NIL

FUNCTION SS_VTYPE(P1)
LOCAL X
IF SS_FLAG3 = 3                                    && VETO UNIT
X = SS_SERVERS[SS_AS][13]
SS_VETOS[X][4] = P1
ENDIF
RETURN  NIL

FUNCTION SS_NEWCHANNEL(P1)
LOCAL X
IF SS_FLAG3 = 3                                    && VETO UNIT
        SS_SERVERS[SS_AS][14] = SS_SERVERS[SS_AS][14] + 1
        AADD(SS_CHANNELS,{SS_AS,SS_SERVERS[SS_AS][14],P1,,,,})
        X = LEN(SS_CHANNELS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New CHANNEL..."
                ? ""
                ? ""
                ? " CHANNEL NAME       : " + SS_CHANNELS[X][3]
                ? " CHANNEL ID         : " + STR(SS_CHANNELS[X][2])
                INKEY(0)
        ENDIF
ENDIF
RETURN  NIL

FUNCTION SS_CHTYPE(P1)
LOCAL X
IF SS_FLAG3 = 3                                    && VETO UNIT
X = SS_SERVERS[SS_AS][14]
SS_CHANNELS[X][4] = P1
ENDIF
RETURN  NIL

FUNCTION SS_NEWCONNECTION(P1)
LOCAL X
IF SS_FLAG3 = 4                                    && VETO UNIT
        SS_SERVERS[SS_AS][15] = SS_SERVERS[SS_AS][15] + 1
        AADD(SS_CONNECTIONS,{SS_AS,SS_SERVERS[SS_AS][15],P1,0,0,0,0,0,0,0,0,0,{} })
        X = LEN(SS_CONNECTIONS)
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New CONNECTION..."
                ? ""
                ? ""
                ? " CONNECTION NAME       : " + SS_CONNECTIONS[X][3]
                ? " CONNECTION ID         : " + STR(SS_CONNECTIONS[X][2])
                INKEY(0)
        ENDIF
ENDIF
RETURN  NIL

FUNCTION SS_CONTYPE(P1)
LOCAL X
IF SS_FLAG3 = 4                                    && VETO UNIT
X = SS_SERVERS[SS_AS][15]
SS_CONNECTIONS[X][4] = P1
ENDIF
RETURN  NIL

FUNCTION SS_CONSET(P1,P2)
LOCAL X
IF SS_FLAG3 = 4                                    && VETO UNIT
X = SS_SERVERS[SS_AS][15]
SS_CONNECTIONS[X][4+P2] = P1
ENDIF
RETURN  NIL

FUNCTION SS_CONSERVER(P1)
LOCAL X
IF SS_FLAG3 = 4                                    && VETO UNIT
X = SS_SERVERS[SS_AS][15]
AADD(SS_CONNECTIONS[X][13],P1)
ENDIF
RETURN  NIL

// resistance statements
// data unit statements

FUNCTION SS_SELECT(P1,P2)
*-------------------*--------------------*
* p1 = 1  Atom      ³   p2 AtomName      ³
* p1 = 2  Shell     ³   p2 ShellName     ³
* p1 = 3  SubShell  ³   p2 SubShellName  ³
*-------------------*--------------------*
IF p1 = 1
SS_SYSMEM[1] = P2   && SAVE ATOM NAME IN SYSTEM MEMORY ARRAY
ELSEIF P1 = 2
SS_SYSMEM[2] = P2   && SAVE SHELL NAME IN SYSTEM MEMORY ARRAY
ELSEIF P1 = 3
SS_SYSMEM[3] = P2   && SAVE SUBSHELL NAME IN SYSTEM MEMORY ARRAY
ENDIF
RETURN  NIL

FUNCTION SS_LOADSUBSHELL(p_VSL4_SActiveCliConID)   && LOAD ACTIVE SUB SHELL VARIABLES
LOCAL X,V_ATOMID,V_SHELLID,V_SUBSHELLID,V_ELENAME,V_VALUE
* 1 - GET ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF SS_ATOMS[X][1] = SS_AS .AND. ALLTRIM(UPPER(SS_ATOMS[X][3])) == ALLTRIM(UPPER(SS_SYSMEM[1]))
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][1] = SS_AS .AND.  SS_SHELLS[X][2] = V_ATOMID .AND. ALLTRIM(UPPER(SS_SHELLS[X][4])) == ALLTRIM(UPPER(SS_SYSMEM[2]))
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. SS_SUBSHELLS[X][1] = SS_AS .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. ALLTRIM(UPPER(SS_SUBSHELLS[X][5])) == ALLTRIM(UPPER(SS_SYSMEM[3]))
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT DEFINE THE SUBSHELL VARIABLES
*     AND SET IT'S VALUES
SS_SYSMEM[4] = {} && ELECTRONS ARRAY (IN ACTIVE SUB SHELL)
FOR X = 1 TO LEN(SS_VARS)
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][1] = SS_AS
           
	   
		
		IF SS_VARS[X][6] = 1
           		V_ELENAME = SS_VARS[X][7]
           		V_VALUE   = SS_VARS[X][8]
           		PUBLIC &V_ELENAME
           		&V_ELENAME = V_VALUE
			AADD(SS_SYSMEM[4],X) && ADD ELECTRON ID TO ACTIVE ELECTRONS ARRAY
           	
		ELSE
			IF PCOUNT() > 0
				SS_TEMP_ARRAY = SS_VARS[X]
				IF LEN(SS_TEMP_ARRAY) >= 9
					IF SS_VARS[X][9] = p_VSL4_SActiveCliConID
						AADD(SS_SYSMEM[4],X) && ADD ELECTRON ID TO ACTIVE ELECTRONS ARRAY
					ENDIF
				ELSE
					// AADD(SS_SYSMEM[4],X) && ADD ELECTRON ID TO ACTIVE ELECTRONS ARRAY
				ENDIF
			ELSE
	           		AADD(SS_SYSMEM[4],X) && ADD ELECTRON ID TO ACTIVE ELECTRONS ARRAY
			ENDIF
		ENDIF

        ENDIF
NEXT
IF .NOT. LEN(SS_SYSMEM[4]) = 0
SS_SYSMEM[5] = 1
else
SS_SYSMEM[5] = 0
ENDIF
RETURN  NIL

FUNCTION SS_UPLOADSUBSHELL() && UPLOAD ACTIVE SUB SHELL VARIABLES
LOCAL X,V_ATOMID,V_SHELLID,V_SUBSHELLID,V_ELENAME,V_VALUE
* 1 - GET ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
   IF UPPER(SS_ATOMS[X][3]) = UPPER(SS_SYSMEM[1]) .AND. ;
      SS_ATOMS[X][1] = SS_AS
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
   IF SS_SHELLS[X][1] = SS_AS .AND. ;
      SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(SS_SYSMEM[2])
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
   IF SS_SUBSHELLS[X][1] = SS_AS .AND. ;
      SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(SS_SYSMEM[3])
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT GET THE SUBSHELL VARIABLES
*     AND SAVE IT'S VALUES
SS_SYSMEM[4] = {} && ELECTRONS ARRAY (IN ACTIVE SUB SHELL)
FOR X = 1 TO LEN(SS_VARS)
   IF SS_VARS[X][1] = SS_AS .AND. ;
      SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           V_ELENAME = SS_VARS[X][7]
           SS_VARS[X][8] = &V_ELENAME
        ENDIF
NEXT
RETURN  NIL

FUNCTION SS_CNELE(P1,P2)   && CREATE NEW ELECTRON IN ACTIVE SUBSHELL
* P1 : ELECTRON NAME
* P2 : ELECTRON TYPE
LOCAL X,V_ATOMID,V_SHELLID,V_SUBSHELLID,V_ELENAME,V_VALUE
* 1 - GET ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF SS_ATOMS[X][1] = SS_AS .AND. UPPER(SS_ATOMS[X][3]) = UPPER(SS_SYSMEM[1])
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][1] = SS_AS .AND.  SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(SS_SYSMEM[2])
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. SS_SUBSHELLS[X][1] = SS_AS .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(SS_SYSMEM[3])
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1 && GET NEW ELECTRON ID
AADD(SS_VARS,{SS_AS,V_ATOMID,V_SHELLID,V_SUBSHELLID,SS_SERVERS[SS_AS][7],P2,P1,"NULL",VSL4_SActiveCliConID})
AADD(SS_SYSMEM[4],len(SS_VARS)) && ADD ELECTRON TO ACTIVE ELECTRONS LIST
SS_SYSMEM[5] = len(SS_SYSMEM[4])
RETURN  NIL

FUNCTION SS_GAAN()     && GET ACTIVE ATOM NAME
RETURN SS_SYSMEM[1]

FUNCTION SS_GASN()     && GET ACTIVE SHELL NAME
RETURN SS_SYSMEM[2]

FUNCTION SS_GASSN()    && GET ACTIVE SUB SHELL NAME
RETURN SS_SYSMEM[3]

FUNCTION SS_AC()       && GET ATOMS COUNT
RETURN SS_SERVERS[SS_AS][4]

FUNCTION SS_SC()       && GET SHELLS COUNT
RETURN SS_SERVERS[SS_AS][5]

FUNCTION SS_SSC()      && GET SUB SHELLS COUNT
RETURN SS_SERVERS[SS_AS][6]

FUNCTION SS_EC()       && GET ELECTRONS COUNT
RETURN SS_SERVERS[SS_AS][7]

FUNCTION SS_VC()       && GET VESSELS COUNT
RETURN SS_SERVERS[SS_AS][8]

FUNCTION SS_RC()       && GET REACTIONS COUNT
RETURN SS_SERVERS[SS_AS][9]

FUNCTION SS_CC()       && GET CIRCUITS COUNT
RETURN SS_SERVERS[SS_AS][10]

FUNCTION SS_BC()       && GET BRANCHES COUNT
RETURN SS_SERVERS[SS_AS][11]

FUNCTION SS_RESC()     && GET RESISTANCES COUNT
RETURN SS_SERVERS[SS_AS][12]

FUNCTION SS_VETOSC()   && GET VETOS COUNT
RETURN SS_SERVERS[SS_AS][13]

FUNCTION SS_CHC()      && GET CHANNELS COUNT
RETURN SS_SERVERS[SS_AS][14]

FUNCTION SS_CONC()     && GET CONNECTIONS COUNT
RETURN SS_SERVERS[SS_AS][15]

FUNCTION SS_EID()      && GET ACTIVE ELECTRON ID
LOCAL X
X = 0
IF .NOT. SS_SYSMEM[5] = 0
X = SS_SYSMEM[5]
X = SS_SYSMEM[4][X]
ENDIF
RETURN X

FUNCTION SS_ENUM()     && GET ACTIVE ELECTRON NUMBER
RETURN SS_SYSMEM[5]

FUNCTION SS_ENAME()    && GET ACTIVE ELECTRON NAME
LOCAL X,N
X = 0
N = ""
IF .NOT. SS_SYSMEM[5] = 0
X = SS_SYSMEM[5]
X = SS_SYSMEM[4][X]
IF .NOT. X = 0
N = SS_VARS[X][7]
ENDIF
ENDIF
RETURN N

FUNCTION SS_EVALUE()   && GET ACTIVE ELECTRON VALUE
LOCAL X,V
X = 0
V = ""
IF .NOT. SS_SYSMEM[5] = 0
X = SS_SYSMEM[5]
X = SS_SYSMEM[4][X]
IF .NOT. X = 0 .AND. .NOT. X > LEN(SS_VARS)
V = SS_VARS[X][8]
ENDIF
ENDIF
RETURN V

FUNCTION SS_SEVALUE(P1)   && SET ACTIVE ELECTRON VALUE
* P1 : NEW VALUE ASSIGNED TO ELECTRON
LOCAL X
X = 0
IF .NOT. SS_SYSMEM[5] = 0
X = SS_SYSMEM[5]
X = SS_SYSMEM[4][X]
IF .NOT. X = 0
SS_VARS[X][8] = P1
ENDIF
ENDIF
RETURN


FUNCTION SS_AEC()      && GET ACTIVE ELECTRONS COUNT
RETURN LEN(SS_SYSMEM[4])

FUNCTION SS_GTFE()     && GOTO FIRST ELECTRON
IF .NOT. LEN(SS_SYSMEM[4]) = 0
SS_SYSMEM[5] = 1
ELSE
SS_SYSMEM[5] = 0
ENDIF
RETURN  NIL

FUNCTION SS_GTLE()     && GOTO LAST ELECTRON
IF .NOT. LEN(SS_SYSMEM[4]) = 0
SS_SYSMEM[5] = LEN(SS_SYSMEM[4])
ELSE
SS_SYSMEM[5] = 0
ENDIF
RETURN  NIL

FUNCTION SS_GTNE()     && GOTO NEXT ELECTRON
IF .NOT. SS_SYSMEM[5] = LEN(SS_SYSMEM[4])
SS_SYSMEM[5] = SS_SYSMEM[5] + 1
ENDIF


RETURN  NIL

FUNCTION SS_GTPE()     && GOTO PREV ELECTRON
IF SS_SYSMEM[5] > 1
SS_SYSMEM[5] = SS_SYSMEM[5] - 1
ENDIF
RETURN  NIL

FUNCTION SS_DAE()      && DELETE ACTIVE ELECTRON
LOCAL X,X2
IF .NOT. SS_SYSMEM[5] = 0       && IF THERE ARE ACTIVE ELECTRON
X  = SS_SYSMEM[5]                && ELECTRON ID IN ACTIVE ELECTRONS ARRAY
X2 = SS_SYSMEM[4][X]            && ELECTRON ID IN ELECTRONS ARRAY
ADEL(SS_SYSMEM[4],X)            && DELETE ELECTRON FROM ACTIVE ELECTRONS ARRAY
ASIZE(SS_SYSMEM[4],LEN(SS_SYSMEM[4])-1)
ADEL(SS_VARS,X2)                && DELETE ELECTRON FROM ELECTRONS ARRAY
ASIZE(SS_VARS,LEN(SS_VARS)-1)
SS_SYSMEM[5] = SS_SYSMEM[5] - 1 && RESET ACTIVE ELECTRON ID

* Update IDs in active electrons array 
	MYMAX = LEN(SS_SYSMEM[4])
	IF MYMAX > 0	
		FOR T = 1 TO MYMAX
			IF SS_SYSMEM[4][T] > X
				SS_SYSMEM[4][T] = SS_SYSMEM[4][T] - 1
			ENDIF
		NEXT
	ENDIF
* End of Update

ENDIF
RETURN  NIL

FUNCTION SS_DAAE()
LOCAL X,X2
IF .NOT. LEN(SS_SYSMEM[4]) = 0
        FOR X = 1 TO LEN(SS_SYSMEM[4])
                X2 = SS_SYSMEM[4][X]
                ADEL(SS_VARS,X2)
                ASIZE(SS_VARS,LEN(SS_VARS)-1)
        NEXT
        SS_SYSMEM[4] = {}
	SS_SYSMEM[5] = 0
ENDIF
RETURN  NIL

FUNCTION SS_OEL(P1) && OPEN ELECTRONS LIST
SS_SYSMEM[6] = P1
RETURN  NIL

FUNCTION SS_CEL(P1) && CLOSE ELECTRONS LIST
SS_SYSMEM[6] = 0
RETURN  NIL

FUNCTION SS_AETL() && ADD ELECTRON TO LIST
LOCAL X,X2
X = SS_EID()      && GET ACTIVE ELECTRON ID
X2 = SS_SYSMEM[6]
AADD(&X2,X)
RETURN  NIL

FUNCTION SS_DEFL() && DELETE ELECTRON FROM LIST
LOCAL X,X2,X3
X  = SS_EID()      && GET ACTIVE ELECTRON ID
X2 = SS_SYSMEM[6]
FOR X3 = 1 TO LEN(&X2)
        IF &X2[X3] = X
                ADEL(&X2,X3)
                ASIZE(&X2,LEN(&X2)-1)
        ENDIF
NEXT
RETURN  NIL

FUNCTION SS_SETDOMAIN(P1)
SS_SYSMEM[4] = P1
SS_SYSMEM[5] = 0
RETURN  NIL

FUNCTION SS_CLOSEDOMAIN(P1)
SS_SYSMEM[4] = {}
SS_SYSMEM[5] = 0
RETURN  NIL

FUNCTION SS_ADDMARK(P1,P2,P3,P4)
LOCAL X,V_ATOMID,V_SHELLID,V_SUBSHELLID
* 1 - GET ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(ALLTRIM(SS_ATOMS[X][3])) == UPPER(ALLTRIM(P2))
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(ALLTRIM(SS_SHELLS[X][4])) = UPPER(ALLTRIM(P3))
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT

* 3 - GET SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(ALLTRIM(SS_SUBSHELLS[X][5])) == UPPER(ALLTRIM(P4))
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT GET THE SUBSHELL VARIABLES
FOR X = 1 TO LEN(SS_VARS)
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           * ADDING MARK TO ELECTRON NAME
           SS_VARS[X][7] = ALLTRIM(P1) + ALLTRIM(SS_VARS[X][7])
        ENDIF
NEXT
RETURN

FUNCTION SS_COPYTA(P1,P2,P3)
LOCAL X,K,V_ATOMID,V_SHELLID,V_SUBSHELLID,V2_ATOMID,V2_SHELLID,V2_SUBSHELLID
* GET GIVEN ADDRESS INFORMATION
* 1 - GET ATOM ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P1)
                V2_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V2_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P2)
                V2_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V2_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V2_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P3)
                V2_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* GET ACTIVE SUBSHELL ELECTRONS
* 1 - GET ACTIVE ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(SS_SYSMEM[1])
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET ACTIVE SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(SS_SYSMEM[2])
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET ACTIVE SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(SS_SYSMEM[3])
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT COPY THE SUBSHELL VARIABLES


K = LEN(SS_VARS)
FOR X = 1 TO K
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           * ADDING NEW ELECTRON BUT IN THE GIVEN SUBSHELL
           SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
           AADD(SS_VARS,{SS_VARS[X][1],V2_ATOMID,V2_SHELLID,;
                         V2_SUBSHELLID,SS_SERVERS[SS_AS][7],SS_VARS[X][6],;
                         SS_VARS[X][7],SS_VARS[X][8]})
        ENDIF
NEXT
RETURN  NIL

FUNCTION SS_ACOPYTA(P1,P2,P3,P4,P5,P6)
LOCAL X,K,V_ATOMID,V_SHELLID,V_SUBSHELLID,V2_ATOMID,V2_SHELLID,V2_SUBSHELLID
* GET GIVEN ADDRESS INFORMATION
* 1 - GET ATOM ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P4)
                V2_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V2_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P5)
                V2_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V2_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V2_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P6)
                V2_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* GET ACTIVE SUBSHELL ELECTRONS
* 1 - GET ACTIVE ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P1)
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET ACTIVE SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P2)
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET ACTIVE SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P3)
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT

* 4 - LOOP THAT COPY THE SUBSHELL VARIABLES
K = LEN(SS_VARS)
FOR X = 1 TO K
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           * ADDING NEW ELECTRON BUT IN THE GIVEN SUBSHELL
           SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
           AADD(SS_VARS,{SS_VARS[X][1],V2_ATOMID,V2_SHELLID,;
                         V2_SUBSHELLID,SS_SERVERS[SS_AS][7],SS_VARS[X][6],;
                         SS_VARS[X][7],SS_VARS[X][8]})
        ENDIF
NEXT
RETURN  NIL

FUNCTION SS_MOVETA(P1,P2,P3)
LOCAL X,K,V_ATOMID,V_SHELLID,V_SUBSHELLID,V2_ATOMID,V2_SHELLID,V2_SUBSHELLID
* GET GIVEN ADDRESS INFORMATION
* 1 - GET ATOM ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P1)
                V2_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V2_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P2)
                V2_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V2_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V2_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P3)
                V2_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* GET ACTIVE SUBSHELL ELECTRONS
* 1 - GET ACTIVE ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(SS_SYSMEM[1])
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET ACTIVE SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(SS_SYSMEM[2])
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET ACTIVE SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(SS_SYSMEM[3])
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT MOVE THE SUBSHELL VARIABLES
K = LEN(SS_VARS)
FOR X = 1 TO K
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           SS_VARS[X][2] = V2_ATOMID
           SS_VARS[X][3] = V2_SHELLID
           SS_VARS[X][4] = V2_SUBSHELLID
        ENDIF
NEXT
RETURN

FUNCTION SS_AMOVETA(P1,P2,P3,P4,P5,P6)
LOCAL X,K,V_ATOMID,V_SHELLID,V_SUBSHELLID,V2_ATOMID,V2_SHELLID,V2_SUBSHELLID




* GET GIVEN ADDRESS INFORMATION
* 1 - GET ATOM ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P4)
                V2_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET SHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V2_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P5)
                V2_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET SUBSHELL ID OF GIVEN ADDRESS
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V2_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V2_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P6)
                V2_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* GET ACTIVE SUBSHELL ELECTRONS
* 1 - GET ACTIVE ATOM ID
FOR X = 1 TO LEN(SS_ATOMS)
        IF UPPER(SS_ATOMS[X][3]) = UPPER(P1)
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
NEXT
* 2 - GET ACTIVE SHELL ID
FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(P2)
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
NEXT
* 3 - GET ACTIVE SUBSHELL ID
FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(P3)
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
NEXT
* 4 - LOOP THAT MOVE THE SUBSHELL VARIABLES
K = LEN(SS_VARS)
FOR X = 1 TO K
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
           SS_VARS[X][2] = V2_ATOMID
           SS_VARS[X][3] = V2_SHELLID
           SS_VARS[X][4] = V2_SUBSHELLID
        ENDIF
NEXT
RETURN  NIL

*---------------------------*
* DATA UNIT : VIRTUAL DBMS  *
*---------------------------*
* #command NEW VIRTUAL DATA FILE <X1> DETAILS <X2>:<X3>:<X4> DATA <X5>:<X6>:<X7> => SS_NVDF( <(X1)> , <(X2)> , <(X3)> , <(X4)> , <(X5)> , <(X6)> , <(X7)> )
* #command OPEN VIRTUAL DATA FILE <X1> => SS_OVDF( <(X1)> )
* #command CLOSE VIRTUAL DATA FILE =>  SS_CVDF()
* #command SELECT AREA <X1> =>  SS_SAREA( <(X1)> )
* #command LOAD RECORD IN <X1>:<X2>:<X3> =>
* #command UPLOAD RECORD FROM <X1>:<X2>:<X3> =>
* #command PUT FIELD <X1> DATA IN <X2> =>
* #command REPLACE FIELD <X1> WITH <X2> =>
* #command ADD NEW RECORD => SS_ADDNR()
* #command DELETE THIS RECORD => SS_DELTR()
* #command GOTO FIRST RECORD => SS_GOTOFR()
* #command GOTO LAST RECORD => SS_GOTOLR()
* #command GOTO NEXT RECORD => SS_GOTONR()
* #command GOTO PREV RECORD => SS_GOTOPR()
* #define  GET_ACTIVE_AREA_NUM                   SS_GAANUM()
* #define  GET_ACTIVE_VIRTUAL_DATA_FILE_NAME     SS_GAVDFNAME()

FUNCTION SS_NVDF(P1,P2,P3,P4,P5,P6,P7) && NEW VIRTUAL DATA FILE
AADD(SS_VDFSA,{P1,P2,P3,P4,P5,P6,P7})
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Creating New Virtual Data File..."
                ? ""
                ? ""
                ? "     File Name :"
                ?? p1
                ? "     Details in :"
                ?? p2
                ?? " "
                ?? p3
                ?? " "
                ?? p4
                ? "     Data in :"
                ?? p5
                ?? " "
                ?? p6
                ?? " "
                ?? p7
                INKEY(0)
        ENDIF
RETURN  NIL

FUNCTION SS_OVDF(P1)
LOCAL MYNUM,X,Y,T,V1,V2,V3,V_ATOMID,V_SHELLID,V_SUBSHELLID,V_ELENAME,V_VALUE
LOCAL V_MYNAME,V_MYTYPE,V_MYSIZE
LOCAL V_US && UNDER SCORE
IF .NOT. SS_SYSMEM[7] = P1 && IF .NOT. FILE OPENED IN THIS AREA BEFORE
        MYNUM = SS_SYSMEM[8] && GET ACTIVE AREA NUMBER
        AADD(SS_AREAS,{MYNUM,P1})
        SS_SYSMEM[7] = P1  && SET ACTIVE VIRTUAL DATA FILE NAME
        * GET DATA ADDRESS
        FOR X = 1 TO LEN(SS_VDFSA)
                IF SS_VDFSA[X][1] = P1
                V1 = SS_VDFSA[X][5]             && V1 = ATOM NAME
                V2 = SS_VDFSA[X][6]             && V2 = SHELL NAME
                V3 = SS_VDFSA[X][7]             && V3 = SUBSHELL NAME
                ENDIF
        NEXT
        * 1 - GET ATOM ID
        FOR X = 1 TO LEN(SS_ATOMS)
                IF UPPER(SS_ATOMS[X][3]) = UPPER(V1)
                        V_ATOMID = SS_ATOMS[X][2]
                        SS_SYSMEM[15] = V_ATOMID
                        EXIT
                ENDIF
        NEXT
        * 2 - GET SHELL ID
        FOR X = 1 TO LEN(SS_SHELLS)
                IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(V2)
                        V_SHELLID = SS_SHELLS[X][3]
                        SS_SYSMEM[16] = V_SHELLID
                        EXIT
                ENDIF
        NEXT
        * 3 - GET SUBSHELL ID
        FOR X = 1 TO LEN(SS_SUBSHELLS)
                IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
                   SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(V3)
                        V_SUBSHELLID = SS_SUBSHELLS[X][4]
                        SS_SYSMEM[17] = V_SUBSHELLID
                        EXIT
                ENDIF
        NEXT
        * GET DETAILS ADDRESS
        FOR X = 1 TO LEN(SS_VDFSA)
                IF SS_VDFSA[X][1] = P1
                V1 = SS_VDFSA[X][2]             && V1 = ATOM NAME
                V2 = SS_VDFSA[X][3]             && V2 = SHELL NAME
                V3 = SS_VDFSA[X][4]             && V3 = SUBSHELL NAME
                ENDIF
        NEXT
        * ADD ADDRESS ELECTRONS (VDF DETAILS)
        * 1 - GET ATOM ID
        FOR X = 1 TO LEN(SS_ATOMS)
                IF UPPER(SS_ATOMS[X][3]) = UPPER(V1)
                        V_ATOMID = SS_ATOMS[X][2]
                        SS_SYSMEM[10] = V_ATOMID
                        EXIT
                ENDIF
        NEXT
        * 2 - GET SHELL ID
        FOR X = 1 TO LEN(SS_SHELLS)
                IF SS_SHELLS[X][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X][4]) = UPPER(V2)
                        V_SHELLID = SS_SHELLS[X][3]
                        SS_SYSMEM[11] = V_SHELLID
                        EXIT
                ENDIF
        NEXT
        * 3 - GET SUBSHELL ID
        FOR X = 1 TO LEN(SS_SUBSHELLS)
                IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. ;
                   SS_SUBSHELLS[X][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X][5]) = UPPER(V3)
                        V_SUBSHELLID = SS_SUBSHELLS[X][4]
                        SS_SYSMEM[12] = V_SUBSHELLID
                        EXIT
                ENDIF
        NEXT
        *
        FOR X = 1 TO LEN(SS_VARS)
                IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
                   SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][6] = 1
                   V_ELENAME = SS_VARS[X][7]
                   V_VALUE   = SS_VARS[X][8]
                   * ADD VARIABLE TO DETAILS ARRAY
                   V_US = 1
                   FOR Y = 1 TO LEN(V_ELENAME)
                           IF SUBSTR(V_ELENAME,Y,1) = "_"
                                   IF V_US = 1
                                   V_MYNAME = SUBSTR(V_ELENAME,1,Y-1)
                                   T = Y
                                   V_US = 2
                                   ELSEIF V_US = 2
                                   V_MYTYPE = SUBSTR(V_ELENAME,T+1,Y-1-T)
                                   V_MYSIZE = SUBSTR(V_ELENAME,Y+1,LEN(V_ELENAME)-Y)
                                   EXIT
                                   ENDIF
                           ENDIF
                   NEXT
                   AADD(SS_SYSMEM[9],{V_MYNAME,V_MYTYPE,V_MYSIZE})
                ENDIF
        NEXT
        * SETTING ACTIVE RECORD NUMBER , RECORDS COUNT
        SS_SYSMEM[13] = 0       && ACTIVE RECORD NUMBER
        SS_SYSMEM[14] = 0       && RECORDS COUNT
        FOR X = 1 TO LEN(SS_VARS)
                IF SS_VARS[X][2] = SS_SYSMEM[15] .AND. ;
                   SS_VARS[X][3] = SS_SYSMEM[16] .AND. ;
                   SS_VARS[X][4] = SS_SYSMEM[17]
                   SS_SYSMEM[14] = SS_SYSMEM[14] + 1
                ENDIF
        NEXT
        IF SS_VISIBLE = .T.
                set color to BG+/RB
                clear
                ? " Open Virtual Data File..."
                ? "  "
                ?? p1
                Y = SS_SYSMEM[9]
                ? "     Details :"
                FOR X = 1 TO LEN(Y)
                        ? Y[X][1]
                        ?? " "
                        ? Y[X][2]
                        ?? " "
                        ? Y[X][3]
                        ?? " "
                NEXT
                INKEY(0)
        ENDIF
ENDIF
RETURN  NIL

FUNCTION  SS_GAANUM() && GET ACTIVE AREA NUMBER
RETURN SS_SYSMEM[8]

FUNCTION  SS_GAVDFNAME() && GET ACTIVE VIRTUAL DATA FILE NAME
RETURN SS_SYSMEM[7]

FUNCTION SS_SAREA(P1) && SELECT AREA
SS_SYSMEM[8] = P1
RETURN  NIL

FUNCTION SS_CVDF()  && CLOSE VIRTUAL DATA FILE
SS_SYSMEM[7] = ""
SS_SYSMEM[8] = 0
SS_SYSMEM[9] = {}
RETURN  NIL

FUNCTION SS_ADDNR() && ADD NEW RECORD
LOCAL MYDATA,X,Y
SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
SS_SYSMEM[14] = SS_SYSMEM[14] + 1 && INCREASE RECORDS COUNT BY 1
SS_SYSMEM[13] = SS_SYSMEM[14]     && ACTIVE RECORD NUMBER = RECORDS COUNT
MYDATA = {}
X = SS_SYSMEM[9]
FOR Y = 1 TO LEN(X)
        IF UPPER(X[Y][2]) = "C"
                AADD(MYDATA,REPLICATE("",VAL(X[Y][3])))
        ELSEIF UPPER(X[Y][2]) = "N"
                AADD(MYDATA,VAL(REPLICATE("0",VAL(X[Y][3]))))
        ENDIF
NEXT
AADD(SS_VARS,{SS_AS,SS_SYSMEM[15],SS_SYSMEM[16],SS_SYSMEM[17],;
              SS_SERVERS[SS_AS][7],2,"DATA_BLOCK",MYDATA})
RETURN

FUNCTION SS_DELTR() && DELETE THIS RECORD
IF .NOT. SS_SYSMEM[13] = 0
        Y = 0
        FOR X = 1 TO LEN(SS_VARS)
                IF SS_VARS[X][2] = SS_SYSMEM[15] .AND. ;
                   SS_VARS[X][3] = SS_SYSMEM[16] .AND. ;
                   SS_VARS[X][4] = SS_SYSMEM[17]
                   Y = Y + 1
                   IF Y = SS_SYSMEM[13]
                           ADEL(SS_VARS,X)
                           ASIZE(SS_VARS,LEN(SS_VARS)-1)
                           SS_SYSMEM[13] = SS_SYSMEM[13] - 1
                           SS_SYSMEM[14] = SS_SYSMEM[14] - 1
                           RETURN
                   ENDIF
                ENDIF
        NEXT
ENDIF
RETURN  NIL

FUNCTION SS_GOTOFR() && GOTO FIRST RECORD
IF .NOT. SS_SYSMEM[14] = 0
SS_SYSMEM[13] = 1
ENDIF
RETURN  NIL

FUNCTION SS_GOTOLR() && GOTO LAST RECORD
SS_SYSMEM[13] = SS_SYSMEM[14]
RETURN  NIL

FUNCTION SS_GOTONR() && GOTO NEXT RECORD
IF .NOT. SS_SYSMEM[13] = SS_SYSMEM[14]
SS_SYSMEM[13] = SS_SYSMEM[13] + 1
ENDIF
RETURN  NIL

FUNCTION SS_GOTOPR() && GOTO PREV RECORD
IF .NOT. SS_SYSMEM[13] <= 1
SS_SYSMEM[13] = SS_SYSMEM[13] - 1
ENDIF
RETURN  NIL

FUNCTION SS_GRN()
RETURN SS_SYSMEM[13]

FUNCTION SS_GRC()
RETURN SS_SYSMEM[14]

FUNCTION SS_LR()  && LOAD RECORD
LOCAL X,Y,Z,T,MYDATA,MYDETAILS
        Y = 0
        FOR X = 1 TO LEN(SS_VARS)
                IF SS_VARS[X][2] = SS_SYSMEM[15] .AND. ;
                   SS_VARS[X][3] = SS_SYSMEM[16] .AND. ;
                   SS_VARS[X][4] = SS_SYSMEM[17]
                   Y = Y + 1    && record number in VDF
                   IF Y = SS_SYSMEM[13]
                           MYDATA = SS_VARS[X][8]
                           MYDETAILS = SS_SYSMEM[9]
                           FOR T = 1 TO LEN(MYDETAILS)
                                Y = MYDETAILS[T][1]
                                Z = MYDATA[T]
                                PUBLIC &Y
                                &Y = Z
                           NEXT
                           RETURN
                   ENDIF
                ENDIF
        NEXT
RETURN  NIL

FUNCTION SS_UR()  && UPLOAD RECORD
LOCAL X,Y,Z,T,MYDATA,MYDETAILS
        Y = 0
        FOR X = 1 TO LEN(SS_VARS)
                IF SS_VARS[X][2] = SS_SYSMEM[15] .AND. ;
                   SS_VARS[X][3] = SS_SYSMEM[16] .AND. ;
                   SS_VARS[X][4] = SS_SYSMEM[17]
                   Y = Y + 1
                   IF Y = SS_SYSMEM[13]
                           MYDATA = SS_VARS[X][8]
                           MYDETAILS = SS_SYSMEM[9]
                           FOR T = 1 TO LEN(MYDETAILS)
                                Y = MYDETAILS[T][1]
                                Z = MYDATA[T]
                                Z = &Y
                                MYDATA[T] = Z
                           NEXT
                           RETURN
                   ENDIF
                ENDIF
        NEXT
RETURN  NIL

FUNCTION SS_SEARABOUT(P1)
   LOCAL X
   SS_SYSMEM[19] = P1
   SS_GOTOFR() && GOTO FIRST RECORD
   IF .NOT. SS_GRC() < 1
      FOR X = 1 TO SS_GRC()
         SS_LR()     && LOAD RECORD
         IF &P1 = .T.
            SS_SYSMEM[18] = .T.
            RETURN
         ENDIF
         SS_GOTONR() && GOTO NEXT RECORD
      NEXT
   ENDIF
   SS_SYSMEM[18] = .F.
RETURN  NIL

FUNCTION SS_SEAROTHER()
   P1 = SS_SYSMEM[19]
   SS_GOTONR()
   FOR X = SS_GRN() TO SS_GRC()
         SS_LR()     && LOAD RECORD
         IF &P1 = .T.
            SS_SYSMEM[18] = .T.
            RETURN
         ENDIF
         SS_GOTONR() && GOTO NEXT RECORD
   NEXT
   SS_SYSMEM[18] = .F.
RETURN

FUNCTION SS_TAR() && THERE ARE RESULT
RETURN SS_SYSMEM[18]

FUNCTION SS_PUSH(P1)
* P1 : VALUE
ADD NEW ELECTRON ANY_NAME type 2
SET ACTIVE ELECTRON VALUE TO (P1)
RETURN

FUNCTION SS_POP()
LOCAL MYRET
MYRET = NIL
GOTO LAST ELECTRON
MYRET = GET_ACTIVE_ELECTRON_VALUE
DELETE ACTIVE ELECTRON
RETURN MYRET

FUNCTION SS_FRONT()
LOCAL MYRET
MYRET = NIL
GOTO FIRST ELECTRON
MYRET = GET_ACTIVE_ELECTRON_VALUE
DELETE ACTIVE ELECTRON
RETURN MYRET

*----------------------------------*
* CODE UNIT : EVENT DRIVEN SYSTEM  *
*----------------------------------*
*#command SERVER FIREON => SS_FIREON()
*#command SERVER SHUTDOWN => SS_SHUTDOWN()
*#command WITH CIRCUIT <X1>  => SS_WCIRCUIT( <(X1)> )
*#command SET MAIN RESISTANCE = <X1> => SS_SMRES(<(X1)>)
*#command SET MAIN SWITCH ON => SS_SMSON()
*#command SET MAIN SWITCH OFF => SS_SMSOFF()
*#command RESTART => SS_RESTART()
*#command SET DIRECTION DOWN =>  SS_SDDOWN()
*#command SET DIRECTION UP =>  SS_SDUP()
*#command SET DIRECTION DOWN UP  => SS_SDDU()
*#command SET DIRECTION UP DOWN  => SS_SDUD()
*#command END WITH CIRCUIT => SS_EWCIRCUIT()
*#command WITH BRANCH <X1> => SS_WBRANCH(<(X1)>)
*#command SET SWITCH ON => SS_SSON()
*#command SET SWITCH OFF => SS_SSOFF()
*#command SET PARALLEL = <X1> => SS_SPARALLEL(<(X1)>)
*#command FIREON ME=> SS_MEFIREON()
*#define  GET_BRANCH_SWITCH_STATUS  SS_GBSS()
*#define  GET_PARALLEL              SS_GPARALLEL()
*#command END WITH BRANCH =>        SS_EWBRANCH()
*#define  GET_ACTIVE_CIRCUIT        SS_GACIRCUIT()
*#define  GET_ACTIVE_BRANCH         SS_GABRANCH()
*#define  GET_ACTIVE_RESISTANCE     SS_GARES()
*#command ADD RESISTANCE <X1>   => SS_ADDRES(<(X1)>)
*#command DO SYSTEM EVENTS      => SS_DOEVENTS()
*#command SLEEPTIME <X1>        => SS_SLEEPT(<(X1)>)

FUNCTION SS_FIREON()
   LOCAL X,C_ID,C_NAME,C_MS,C_MRES,C_MSRES
   LOCAL X2,B_ID,B_NAME,B_PARALLEL,B_SWITCH
   LOCAL X3,R_ID,R_NAME
   LOCAL R_ADDRESS
   LOCAL MYDIR
   LOCAL OLDALIAS,OLDMARK
   MYDIR = SS_SERVERS[SS_AS][18]
   C_MSRES = SS_SERVERS[SS_AS][32]
   IF .NOT. Empty(ALLTRIM(C_MSRES))
      SS_CALLR(C_MSRES)
   ENDIF
   IF SS_SYSWORK() = .F.
      RETURN
   ENDIF
   IF .NOT. Empty(SS_CIRCUITS)
   DO WHILE .T.
      SS_DOEVENTS()
      OLDALIAS = Alias()
      OLDMARK = RecNo()
      SS_SYSMEM[42] = .T.
      SS_SYSMEM[38] = Alias()
      SS_SYSMEM[39] = RecNo()
      SS_CVSER() && check veto service
      SS_SYSMEM[42] = .F.
      SS_SYSMEM[38] = ""
      SS_SYSMEM[39] = 0
      IF .NOT. Empty(OLDALIAS)
         Select (OLDALIAS)
         goto OLDMARK
      ENDIF
        FOR X = 1 TO Len(SS_CIRCUITS)
         IF SS_CIRCUITS[X][1] = SS_AS
            C_ID   = SS_CIRCUITS[X][2]
            C_NAME = SS_CIRCUITS[X][3]
            C_MRES = SS_CIRCUITS[X][4]
            C_MS   = SS_CIRCUITS[X][5]
            SS_SYSMEM[20] = C_NAME
            SS_SYSMEM[21] = "No branch"
            SS_SYSMEM[22] = "No resistance"
            IF .NOT. Empty(ALLTRIM(C_MRES))
                     SS_CALLR(C_MRES)
            ENDIF
            IF SS_SERVERS[SS_AS][16] = .T.
               RETURN
            ENDIF
            IF .NOT. Empty(SS_BRANCHES) .AND. Upper(ALLTRIM(C_MS)) = "ON"
               FOR X2 = 1 TO Len(SS_BRANCHES)
                  MYDIR = SS_SERVERS[SS_AS][18]
                  IF SS_BRANCHES[X2][1] = SS_AS .AND. ;
                     SS_BRANCHES[X2][2] = C_ID
                     B_ID       = SS_BRANCHES[X2][3]
                     B_NAME     = SS_BRANCHES[X2][4]
                     B_PARALLEL = SS_BRANCHES[X2][5]
                     B_SWITCH   = SS_BRANCHES[X2][6]
                     SS_SYSMEM[21] = B_NAME
                     IF .NOT. Empty(SS_RES) .AND. Upper(ALLTRIM(B_SWITCH)) = "ON"
                        IF MYDIR = 1 .OR. MYDIR = 3
                        FOR X3 = 1 TO Len(SS_RES)
                           IF SS_RES[X3][1] = SS_AS .AND. ;
                              SS_RES[X3][2] = C_ID .AND. ;
                              SS_RES[X3][3] = B_ID
                              R_ID   = SS_RES[X3][4]
                              R_NAME = SS_RES[X3][5]
                              SS_SYSMEM[22] = R_NAME
                              R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                              IF .NOT. Empty(ALLTRIM(C_MRES))
                                   SS_CALLR(C_MRES)
                              ENDIF
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                              SS_CALLR(R_ADDRESS)
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                              IF .NOT. Empty(ALLTRIM(C_MRES))
                                   SS_CALLR(C_MRES)
                              ENDIF
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                              SS_DOEVENTS()
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                           ENDIF
                           IF SS_SERVERS[SS_AS][17] = .T.
                               EXIT
                           ENDIF
                        NEXT
                        ENDIF
                        IF MYDIR = 2 .OR. MYDIR = 3 .OR. MYDIR = 4
                           IF MYDIR = 4
                              MYDIR = 3
                           ENDIF
                        FOR X3 = Len(SS_RES) TO 1 STEP -1
                           IF SS_RES[X3][1] = SS_AS .AND. ;
                              SS_RES[X3][2] = C_ID .AND. ;
                              SS_RES[X3][3] = B_ID
                              R_ID   = SS_RES[X3][4]
                              R_NAME = SS_RES[X3][5]
                              SS_SYSMEM[22] = R_NAME
                              R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
                              IF .NOT. Empty(ALLTRIM(C_MSRES))
                                   SS_CALLR(C_MSRES)
                              ENDIF
                              SS_CALLR(R_ADDRESS)
                              IF .NOT. Empty(ALLTRIM(C_MRES))
                                   SS_CALLR(C_MRES)
                              ENDIF
                              SS_DOEVENTS()
                              IF SS_SERVERS[SS_AS][16] = .T.
                                 RETURN
                              ENDIF
                           ENDIF
                           IF SS_SERVERS[SS_AS][17] = .T.
                               EXIT
                           ENDIF
                        NEXT
                        ENDIF
                     ENDIF
                  ENDIF
                  IF SS_SERVERS[SS_AS][17] = .T.
                     EXIT
                  ENDIF
               NEXT
            ENDIF
         ENDIF
         IF SS_SERVERS[SS_AS][17] = .T.
            SS_SERVERS[SS_AS][17] = .F.
            X = 1
            LOOP
         ENDIF
      NEXT
   ENDDO
   ENDIF
   RETURN  NIL

FUNCTION SS_SHUTDOWN()
   SS_SERVERS[SS_AS][16] = .T.
   RETURN  NIL

FUNCTION SS_WCIRCUIT(P1)
   LOCAL X
   IF .NOT. Empty(SS_CIRCUITS)
      FOR X = 1 TO Len(SS_CIRCUITS)
         IF SS_CIRCUITS[X][1] = SS_AS .AND. ;
            Upper(AllTrim(SS_CIRCUITS[X][3])) == Upper(AllTrim(P1))
            SS_SERVERS[SS_AS][19] = X
            RETURN
         ENDIF
      NEXT
   ENDIF
   RETURN  NIL

FUNCTION SS_SMRES(P1)
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][19] = 0
      X = SS_SERVERS[SS_AS][19]
      SS_CIRCUITS[X][4] = P1
   ENDIF
   RETURN  NIL

FUNCTION SS_SMSON()
   IF .NOT.  SS_SERVERS[SS_AS][19] = 0
      X = SS_SERVERS[SS_AS][19]
      SS_CIRCUITS[X][5] = "ON"
   ENDIF
   RETURN  NIL

FUNCTION SS_SMSOFF()
   IF .NOT.  SS_SERVERS[SS_AS][19] = 0
      X = SS_SERVERS[SS_AS][19]
      SS_CIRCUITS[X][5] = "OFF"
   ENDIF
   RETURN  NIL

FUNCTION SS_RESTART()
   SS_SERVERS[SS_AS][17] = .T.
   RETURN  NIL

FUNCTION SS_SDDOWN()
    SS_SERVERS[SS_AS][18] = 1
   RETURN  NIL

FUNCTION SS_SDUP()
    SS_SERVERS[SS_AS][18] = 2
   RETURN  NIL

FUNCTION SS_SDDU()
   SS_SERVERS[SS_AS][18] = 3
   RETURN  NIL

FUNCTION SS_SDUD()
   SS_SERVERS[SS_AS][18] = 4
   RETURN  NIL

FUNCTION SS_EWCIRCUIT()
   SS_SERVERS[SS_AS][19] = 0
   RETURN  NIL

FUNCTION SS_WBRANCH(P1)
   LOCAL X
   * GET CIRCUIT ID AND PUT IT IN Y
   X = SS_SERVERS[SS_AS][19]
   Y = SS_CIRCUITS[X][2]
   IF .NOT. Empty(SS_BRANCHES)
      FOR X = 1 TO Len(SS_BRANCHES)
         IF SS_BRANCHES[X][1] = SS_AS .AND. ;
            SS_BRANCHES[X][2] = Y .AND. ;
            Upper(AllTrim(SS_BRANCHES[X][4])) == Upper(AllTrim(P1))
            SS_SERVERS[SS_AS][20] = X
            RETURN
         ENDIF
      NEXT
   ENDIF
   RETURN  NIL

FUNCTION SS_SSON()
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][20] = 0
      X = SS_SERVERS[SS_AS][20]
      SS_BRANCHES[X][6] = "ON"
   ENDIF
   RETURN  NIL

FUNCTION SS_SSOFF()
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][20] = 0
      X = SS_SERVERS[SS_AS][20]
      SS_BRANCHES[X][6] = "OFF"
   ENDIF
   RETURN  NIL

FUNCTION SS_SPARALLEL(P1)
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][20] = 0
      X = SS_SERVERS[SS_AS][20]
      SS_BRANCHES[X][5] = P1
   ENDIF
   RETURN  NIL

FUNCTION SS_MEFIREON()
   RETURN  NIL

FUNCTION SS_GBSS()
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][20] = 0
      X = SS_SERVERS[SS_AS][20]
      X = SS_BRANCHES[X][6]
      RETURN X
   ENDIF

   RETURN  NIL

FUNCTION SS_GPARALLEL()
   LOCAL X
   IF .NOT.  SS_SERVERS[SS_AS][20] = 0
      X = SS_SERVERS[SS_AS][20]
      X = SS_BRANCHES[X][5]
      RETURN X
   ENDIF
   RETURN  NIL

FUNCTION SS_EWBRANCH()
    SS_SERVERS[SS_AS][20] = 0
   RETURN  NIL

FUNCTION SS_GACIRCUIT()
   RETURN SS_SYSMEM[20]

FUNCTION SS_GABRANCH()
   RETURN SS_SYSMEM[21]

FUNCTION SS_GARES()
   RETURN SS_SYSMEM[22]

FUNCTION SS_ADDRES(P1)
   AAdd(SS_IDLE,{SS_AS,P1})
   RETURN  NIL

FUNCTION SS_DOEVENTS()
   LOCAL X,R
   IF .NOT. Empty(SS_IDLE)
   * SAVE ACTIVE SERVER ID
   R = SS_AS
   FOR X = 1 TO Len(SS_IDLE)
        IF SS_SERVERS[SS_AS][16] = .F.
         SS_AS = SS_IDLE[X][1]
         SS_CALLR(SS_IDLE[X][2])
        ENDIF
      NEXT
   * RESTORE ACTIVE SERVER ID
   SS_AS = R
   ENDIF
   RETURN  NIL

FUNCTION SS_SLEEPT(P1)
   LOCAL N
   P1 = Val(P1)
   N = SECONDS()
   DO WHILE SECONDS() - N < P1
       SS_DOEVENTS()
   ENDDO
   RETURN  NIL

* VETO UNIT : Client - Server (Human Interaction)
* #command SELECT INTERACTION CONNECTION <X1> => SS_SIC(<(X1)>)
* #command SELECT CLIENT CONNECTION <X1>:<X2>:<X3>:<X4> => SS_SCC(<(X1)>,<(X2)>,<(X3)>,<(X4)>)
* #command CON_CONNECT    => SS_CCONNECT()
* #command CON_BEGIN_TRANSACTION => SS_CBT()
* #command CON_SENDVETO <X1> => SS_CSV(<(X1)>)
* #command CON_SENDDATA <X1> => SS_CSD(<(X1)>)
* #command CON_END_TRANSACTION => SS_CET()
* #command CON_SELECT_INPUT_CHANNEL =>  SS_CSIC()
* #command CON_SELECT_OUTPUT_CHANNEL => SS_CSOC()
* #command CON_CHANNEL_PUTDATA FORM <X1>:<X2>:<X3> => SS_CCPF(<(X1)>,<(X2)>,<(X3)>)
* #command CON_CHANNEL_GETDATA FOR  <X1>:<X2>:<X3> =>  SS_CCGF(<(X1)>,<(X2)>,<(X3)>)
* #command CON_DISCONNECT           =>   SS_CDISCONNECT()
* #command SELECT INPUT CHANNEL <X1> => SS_SICH(<(X1)>)
* #command OPEN CHANNEL <X1>         => SS_OPCH(<(X1)>)
* #command CLOSE CHANNEL         => SS_CLOSECH()
* #command CLEAR CHANNEL        => SS_CLEARCH()
* #define  GET_SENDER_SERVER_NAME    SS_GSSNAME()
* #define  GET_SENDER_SERVER_TYPE    SS_GSSTYPE()
* #define  GET_SENDER_SERVEr_EIGENVALUE SS_GSSEV()
* #define  GET_VETO_DECISION    SS_GVDEC()
* #command ACCEPT CONNECTION   => SS_ACCCON()
* #command REFUSE CONNECTION   => SS_REFCON()
* #define  CONNECTION_ACCEPTED  SS_CONACC()
* #define  REQUEST_TYPE_CONNECTION  SS_RTCON()
* #define  REQUEST_TYPE_SENDDATA    SS_RTSD()
* #define  REQUEST_TYPE_SENDVETO    SS_RTSV()
* #define  REQUEST_VETO_NAME    SS_RVNAME()
* #command SET VETO SYSTEM PATH <X1> => SS_SVSP(<(X1)>)
* #command SET VETO SYSTEM LEVEL <X1> => SS_SVSL(<(X1)>)
* #command CHECK_VETO_SERVICES => SS_CVSER()

FUNCTION SS_REPSTART() && REPLY START
   *IF SS_GVSL() = 2
   * SS_SYSMEM[38] = ALIAS()
   * SS_SYSMEM[39] = RECNO()
  *ENDIF
  RETURN

FUNCTION SS_REPEND() && REPLY END
  * IF SS_GVSL() = 2 .AND. .NOT. Empty(AllTrim(SS_SYSMEM[38]))
  * Select (SS_SYSMEM[38])
  * GOTO SS_SYSMEM[39]
  * SS_SYSMEM[38] = ""
  * SS_SYSMEM[39] = 0
  * ENDIF
   RETURN

FUNCTION SS_SIC(P1)             && select interaction connection
   RETURN

* {SERVER ID , CONNECTION ID , CONNECTIONNAME , CONNECTIONTYPE , INPUTCHANNEL , OUTPUTCHANNEL , SENDINGVETO , RECEIVINGVETO , ATOM , SHELL , SUBSHELL , ELECTRON ,SERVERS}
FUNCTION SS_SCC(P1,P2,P3,P4)    && select client connection
   LOCAL X
   IF .NOT. Empty(SS_CONNECTIONS)
      FOR X = 1 TO Len(SS_CONNECTIONS)
         IF Upper(SS_CONNECTIONS[X][9])  = Upper(P1) .AND. ;
            Upper(SS_CONNECTIONS[X][10]) = Upper(P2) .AND. ;
            Upper(SS_CONNECTIONS[X][11]) = Upper(P3) .AND. ;
            Upper(SS_CONNECTIONS[X][12]) = Upper(P4)
            SS_SYSMEM[23] = X
            RETURN .T.
         ENDIF
      NEXT
   ENDIF
   RETURN .F.

FUNCTION SS_CCONNECT()      && CONNECTION_CONNECT
   LOCAL X,MYSERVERS,S_ID,X2,S_NAME,MYAS,R_ADDRESS,MYARR,T_ADDRESS,T_PORT
   LOCAL C_NAME,B_NAME,R_NAME
   C_NAME = ""
   B_NAME = ""
   R_NAME = ""
   X = SS_SYSMEM[23]
   SS_SYSMEM[24] = SS_CONNECTIONS[X][13] && SERVERS RELEATED TO CONNECTION
   SS_SYSMEM[25] = SS_SERVERS[SS_AS][1] && SERVER NAME
   SS_SYSMEM[26] = SS_SERVERS[SS_AS][2] && SERVER TYPE
   SS_SYSMEM[27] = SS_SERVERS[SS_AS][3] && SERVER EIGEN VALUE
   MYSERVERS = SS_SYSMEM[24]

	* select input channel based on connection input channel
	SS_SERVERS[SS_AS][21] = SS_CONNECTIONS[X][5]
	

   IF SS_GVSL() = 4
	IF .NOT. Empty(MYSERVERS)
		FOR X = 1 TO Len(MYSERVERS)
 			
			S_NAME = MYSERVERS[X]

			IF .NOT. Len(SS_SAP) = 0
      				FOR X2 = 1 TO Len(SS_SAP)
         				IF Upper(AllTrim(SS_SAP[X2][1])) == Upper(AllTrim(S_NAME))
                  				T_ADDRESS = SS_SAP[X2][2]
                  				T_PORT = SS_SAP[X2][3]
                				SS_VSL4CONNECT(T_ADDRESS,T_PORT)
         				ENDIF
      				NEXT
			ENDIF	
		NEXT
	ENDIF
	RETURN
   ENDIF

   IF SS_GVSL() = 2
      IF .NOT. Empty(MYSERVERS)
        IF SS_SYSMEM[44] = .F.
         IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
            FOR X = 1 TO Len(MYSERVERS)
               S_NAME = MYSERVERS[X]
               IF SS_SSAP(S_NAME)
                  SS_L3CON()
                  SS_SYSMEM[44] = .T. && VSL3 ACTIVE
                  RETURN
               ENDIF
            NEXT
         ENDIF
      ELSE
                  SS_L3CON()
                  RETURN
      ENDIF
          SS_OVFILE("SS2.DBF")
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         IF FLock()
            APPEND BLANK
            REPLACE OP_CODE WITH "1"
            REPLACE SS_R1   WITH SS_SYSMEM[25]
            REPLACE SS_R2   WITH SS_SYSMEM[26]
            REPLACE SS_R3   WITH SS_SYSMEM[27]
            REPLACE SS_R4   WITH S_NAME
            REPLACE SS_R5   WITH "FALSE"
            COMMIT
            UNLOCK
            SS_SERVERS[SS_AS][30] = RecNo()  && store active connection
            * store connection as accepted connection (so client can work as server)
            myarr = SS_SERVERS[SS_AS][29]
            AAdd(myarr,RecNo())
            SS_SERVERS[SS_AS][29] = myarr
         else
         ? "Lock Process Failed"
         ENDIF
      NEXT
   ENDIF
        SS_CVFILE()
        RETURN
   ENDIF
   * call receiving veto (at server)
   IF .NOT. Empty(MYSERVERS)
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         * GET SERVER ID
         S_ID = 0
         FOR X2 = 1 TO Len(SS_SERVERS)
            IF Upper(ALLTRIM(SS_SERVERS[X2][1])) == Upper(ALLTRIM(S_NAME))
               S_ID = X2
               EXIT
            ENDIF
         NEXT
         * GET RESISTANCE ADDRESS OF VETO
         * {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
         IF .NOT. S_ID = 0
            FOR X2 = 1 TO Len(SS_VETOS)
               P1 = SS_SERVERS[S_ID][23] && RECEIVING VETO
               IF SS_VETOS[X2][1] = S_ID .AND. ;
                  Upper(SS_VETOS[X2][3]) = Upper(P1)
                  C_NAME = SS_VETOS[X2][5]
                  B_NAME = SS_VETOS[X2][6]
                  R_NAME = SS_VETOS[X2][7]
               ENDIF
            NEXT
         ENDIF
         * INVOKE THE RESISTANCE
         MYAS = SS_AS
         SS_AS = S_ID
         R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
         SS_SERVERS[SS_AS][25] = 1 && REQUEST TYPE = CONNECTION
         SS_CALLR(R_ADDRESS)
         SS_AS = MYAS
      NEXT
   ENDIF
   RETURN

FUNCTION SS_CBT()           && CONNECTION_BEGIN_TRANSACTION
   RETURN

FUNCTION  SS_CSV(PARA1)
   LOCAL X,MYSERVERS,S_NAME,X2,S_ID,C_NAME,B_NAME,R_NAME,MYAS,R_ADDRESS

	IF SS_GVSL() = 4
		* NEED COMPLETION TO SUPPORT SENDING DATA TO MORE THAN ONE SERVER IN THE SAME TIME
		MYSERVERS = SS_SYSMEM[24]
		IF .NOT. Empty(MYSERVERS)
 			FOR X = 1 TO Len(MYSERVERS)
                 		S_NAME = MYSERVERS[X]
				SS_VSL4SENDVETO(PARA1)
			NEXT
		ELSE
			SS_VSL4SENDVETO(PARA1)
		ENDIF
		RETURN
	ENDIF


   IF .NOT.  SS_CONACC()
      RETURN .F.
   ENDIF
   * call receiving veto (at server)
   MYSERVERS = SS_SYSMEM[24]
   IF SS_GVSL() = 2
      IF .NOT. Empty(MYSERVERS)
         IF SS_SYSMEM[44] = .F. && VSL3 ACTIVE
           IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
              FOR X = 1 TO Len(MYSERVERS)
                 S_NAME = MYSERVERS[X]
                 IF SS_SSAP(S_NAME)
                    SS_L3SV(PARA1)
                    RETURN
                 ENDIF
              NEXT
           ENDIF
        ELSE
           IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
           SS_L3SV(PARA1)
           RETURN
           ENDIF
        ENDIF
          SS_OVFILE("SS2.DBF")
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         IF FLock()
            APPEND BLANK
            REPLACE OP_CODE WITH "2"
            REPLACE SS_R1   WITH SS_SERVERS[SS_AS][1]
            REPLACE SS_R2   WITH S_NAME
            REPLACE SS_R3   WITH PARA1
            REPLACE SS_R4   WITH Str(SS_SERVERS[SS_AS][30])
            REPLACE SS_R5   WITH "FALSE"
            COMMIT
            UNLOCK
         else
         ? "Lock Process Failed"
         ENDIF
      NEXT
   ENDIF
        SS_CVFILE()
        RETURN
   ENDIF
   IF .NOT. Empty(MYSERVERS)
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         * GET SERVER ID
         S_ID = 0
         FOR X2 = 1 TO Len(SS_SERVERS)
            IF Upper(SS_SERVERS[X2][1]) = Upper(S_NAME)
               S_ID = X2
               EXIT
            ENDIF
         NEXT
         * GET RESISTANCE ADDRESS OF VETO
         * {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
         IF .NOT. S_ID = 0
            FOR X2 = 1 TO Len(SS_VETOS)
               P1 = SS_SERVERS[S_ID][23] && RECEIVING VETO
               IF SS_VETOS[X2][1] = S_ID .AND. ;
                  Upper(SS_VETOS[X2][3]) = Upper(P1)
                  C_NAME = SS_VETOS[X2][5]
                  B_NAME = SS_VETOS[X2][6]
                  R_NAME = SS_VETOS[X2][7]
               ENDIF
            NEXT
         ENDIF
         * INVOKE THE RESISTANCE
         MYAS = SS_AS
         SS_AS = S_ID
         R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
         SS_SERVERS[SS_AS][25] = 3 && REQUEST TYPE = SENDVETO
         SS_SERVERS[SS_AS][26] = PARA1 && REQUEST VETO NAME
         SS_CALLR(R_ADDRESS)
         SS_AS = MYAS
      NEXT
   ENDIF
   * SENDING VETO
   MYSERVERS = SS_SYSMEM[24]
   IF .NOT. Empty(MYSERVERS)
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         * GET SERVER ID
         S_ID = 0
         FOR X2 = 1 TO Len(SS_SERVERS)
            IF Upper(SS_SERVERS[X2][1]) = Upper(S_NAME)
               S_ID = X2

               EXIT
            ENDIF
         NEXT
         * GET RESISTANCE ADDRESS OF VETO
         * {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
         IF .NOT. S_ID = 0
            FOR X2 = 1 TO Len(SS_VETOS)
               IF SS_VETOS[X2][1] = S_ID .AND. ;
                  Upper(SS_VETOS[X2][3]) = Upper(PARA1)
                  C_NAME = SS_VETOS[X2][5]
                  B_NAME = SS_VETOS[X2][6]
                  R_NAME = SS_VETOS[X2][7]
               ENDIF
            NEXT
         ENDIF
         * INVOKE THE RESISTANCE
         MYAS = SS_AS
         SS_AS = S_ID
         R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
         SS_CALLR(R_ADDRESS)
         SS_AS = MYAS
      NEXT
   ENDIF
   RETURN

FUNCTION SS_CSD(PARA1)   && CON_SENDDATA
   LOCAL myservers,x,s_name,s_id,x2,X3,X4,myas,ICH_NAME,A_NAME,SH_NAME,SUB_NAME
   LOCAL V_ATOMID,V_SHELLID,V_SUBSHELLID


	IF SS_GVSL() = 4
		* NEED COMPLETION TO SUPPORT SENDING DATA TO MORE THAN ONE SERVER IN THE SAME TIME
		MYSERVERS = SS_SYSMEM[24]
		IF .NOT. Empty(MYSERVERS)
 			FOR X = 1 TO Len(MYSERVERS)
                 		S_NAME = MYSERVERS[X]
				SS_VSL4SENDDATA(PARA1)
			NEXT
		ELSE
			SS_VSL4SENDDATA(PARA1)
		ENDIF
		RETURN
	ENDIF

   IF .NOT.  SS_CONACC()
      RETURN .F.
   ENDIF
   * call receiving veto (at server)
   MYSERVERS = SS_SYSMEM[24]
   IF SS_GVSL() = 2
      IF .NOT. Empty(MYSERVERS)
         IF SS_SYSMEM[44] = .F. && VSL3 ACTIVE
           IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
              FOR X = 1 TO Len(MYSERVERS)
                 S_NAME = MYSERVERS[X]
                 IF SS_SSAP(S_NAME)
                    SS_L3SD(PARA1)
                    RETURN
                 ENDIF
              NEXT
           ENDIF
         ELSE
           IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
             SS_L3SD(PARA1)
            RETURN
            ENDIF
         ENDIF
          SS_OVFILE("SS2.DBF")
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         IF FLock()
            APPEND BLANK
            REPLACE OP_CODE WITH "3"
            REPLACE SS_R1   WITH SS_SERVERS[SS_AS][1]
            REPLACE SS_R2   WITH S_NAME
            REPLACE SS_R3   WITH PARA1
            REPLACE SS_R4   WITH Str(SS_SERVERS[SS_AS][30])
            REPLACE SS_R5   WITH "FALSE"
            COMMIT
            UNLOCK
         else
         ? "Lock Process Failed"
         ENDIF
      NEXT
    ENDIF
    SS_CVFILE()
    RETURN
   ENDIF
   IF .NOT. Empty(MYSERVERS)
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         * GET SERVER ID
         S_ID = 0
         FOR X2 = 1 TO Len(SS_SERVERS)
            IF Upper(SS_SERVERS[X2][1]) = Upper(S_NAME)
               S_ID = X2
               EXIT
            ENDIF
         NEXT
         * GET RESISTANCE ADDRESS OF VETO
         * {SERVER ID , VETO ID , VETONAME , VETOTYPE , CIRCUIT , BRANCH , RESISTANCE }
         IF .NOT. S_ID = 0
            FOR X2 = 1 TO Len(SS_VETOS)
               P1 = SS_SERVERS[S_ID][23] && RECEIVING VETO
               IF SS_VETOS[X2][1] = S_ID .AND. ;
                  Upper(SS_VETOS[X2][3]) = Upper(P1)
                  C_NAME = SS_VETOS[X2][5]
                  B_NAME = SS_VETOS[X2][6]
                  R_NAME = SS_VETOS[X2][7]
               ENDIF
            NEXT
         ENDIF
         * INVOKE THE RESISTANCE
         MYAS = SS_AS
         SS_AS = S_ID
         R_ADDRESS = "Circuits\" + ;
                              C_NAME+"\"+B_NAME+"\"+R_NAME
         SS_SERVERS[SS_AS][25] = 2 && REQUEST TYPE = SENDDATA
         SS_CALLR(R_ADDRESS)
         SS_AS = MYAS
      NEXT
   ENDIF
   * SENDING DATA
   MYSERVERS = SS_SYSMEM[24]
   IF .NOT. Empty(MYSERVERS)
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         * GET SERVER ID
         S_ID = 0
         FOR X2 = 1 TO Len(SS_SERVERS)
            IF Upper(SS_SERVERS[X2][1]) = Upper(S_NAME)
               S_ID = X2
               EXIT
            ENDIF
         NEXT
         * GET INPUT CHANNEL DATA
         MYAS = SS_AS
         SS_AS = S_ID
         ICH_NAME = SS_SERVERS[SS_AS][21]
         * {SERVER ID , CHANNEL ID , CHANNELNAME , CHANNELTYPE , ATOM , SHELL , SUBSHELL }
         IF .NOT. Empty(SS_CHANNELS)
            FOR X3 = 1 TO Len(SS_CHANNELS)
               IF SS_CHANNELS[X3][1] = SS_AS .AND. ;
                  Upper(SS_CHANNELS[X3][3]) = Upper(ICH_NAME)
                  A_NAME = SS_CHANNELS[X3][5]
                  SH_NAME = SS_CHANNELS[X3][6]
                  SUB_NAME = SS_CHANNELS[X3][7]
                  * 1 - GET ATOM ID
                  FOR X4 = 1 TO LEN(SS_ATOMS)
                       IF UPPER(SS_ATOMS[X4][3]) = UPPER(A_NAME)
                            V_ATOMID = SS_ATOMS[X4][2]
                            EXIT
                       ENDIF
                  NEXT
                  * 2 - GET SHELL ID
                  FOR X4 = 1 TO LEN(SS_SHELLS)
                       IF SS_SHELLS[X4][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X4][4]) = UPPER(SH_NAME)
                            V_SHELLID = SS_SHELLS[X4][3]
                            EXIT
                       ENDIF
                  NEXT
                  * 3 - GET SUBSHELL ID
                  FOR X4 = 1 TO LEN(SS_SUBSHELLS)
                       IF SS_SUBSHELLS[X4][2] = V_ATOMID  .AND. ;
                          SS_SUBSHELLS[X4][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X4][5]) = UPPER(SUB_NAME)
                          V_SUBSHELLID = SS_SUBSHELLS[X4][4]
                          EXIT
                       ENDIF
                  NEXT
                  * ADD DATABLOCK ELECTRON TO SUBSHELL
                  * {SERVER ID , ATOM ID , SHELL ID , SUBSHELL ID , ELECTRON ID , ELECTRON TYPE , ELECTRON NAME , VALUE}
                  SS_SERVERS[SS_AS][7] = SS_SERVERS[SS_AS][7] + 1
                  AAdd(SS_VARS,{SS_AS,V_ATOMID,V_SHELLID,V_SUBSHELLID,SS_SERVERS[SS_AS][7],2,"DATA_BLOCK",PARA1})
                  EXIT
               ENDIF
            NEXT
         ENDIF
         SS_AS = MYAS
      NEXT
   ENDIF
   RETURN

FUNCTION SS_CET()
   RETURN

FUNCTION SS_CSIC()
   RETURN

FUNCTION SS_CSOC()
   RETURN

FUNCTION SS_CCPF(P1,P2,P3)
   RETURN

FUNCTION SS_CCGF(P1,P2,P3)
   RETURN

FUNCTION SS_CDISCONNECT()
   IF SS_GVSL() = 2
      MYSERVERS = SS_SYSMEM[24]
      IF .NOT. Empty(MYSERVERS)
         IF SS_SYSMEM[44] = .F.
         IF SS_SYSMEM[43] = .T. && VSL3 ENABLED
              FOR X = 1 TO Len(MYSERVERS)
                 S_NAME = MYSERVERS[X]
                 IF SS_SSAP(S_NAME)
                    SS_L3DIS()
                    RETURN
                 ENDIF
              NEXT
           ENDIF
        ELSE
           SS_SYSMEM[44] = .F.
           SS_L3DIS()
           RETURN
        ENDIF
          SS_OVFILE("SS2.DBF")
      FOR X = 1 TO Len(MYSERVERS)
         S_NAME = MYSERVERS[X]
         IF FLock()
            APPEND BLANK
            REPLACE OP_CODE WITH "4"
            REPLACE SS_R1   WITH SS_SERVERS[SS_AS][1]
            REPLACE SS_R2   WITH S_NAME
            REPLACE SS_R4   WITH Str(SS_SERVERS[SS_AS][30])
            COMMIT
            UNLOCK
         else
         ? "Lock Process Failed"
         ENDIF
      NEXT
      ENDIF
        SS_CVFILE()
        RETURN
     ENDIF
   SS_SYSMEM[23] = 0
   SS_SYSMEM[24] = 0
   RETURN

FUNCTION SS_SICH(P1) && SELECT INPUT CHANNEL
   SS_SERVERS[SS_AS][21] = P1
   RETURN

FUNCTION SS_OPCH(P1) && OPEN CHANNEL
   LOCAL X
   IF .NOT. Empty(SS_CHANNELS)
      FOR X = 1 TO Len(SS_CHANNELS)
         IF SS_CHANNELS[X][1] = SS_AS .AND. ;
            Upper(SS_CHANNELS[X][3]) = Upper(P1)
            * SELECT ADDRESS
            SS_SELECT(1, SS_CHANNELS[X][5])
            SS_SELECT(2, SS_CHANNELS[X][6])
            SS_SELECT(3, SS_CHANNELS[X][7])
            SS_LOADSUBSHELL(VSL4_SActiveCliConID)
            RETURN .T.
         ENDIF
      NEXT
   ENDIF
   RETURN .F.

FUNCTION SS_CLOSECH()
   SS_UPLOADSUBSHELL()
   RETURN

FUNCTION SS_CLEARCH()
   SS_DAAE()
   RETURN

FUNCTION SS_GSSNAME()     && GET SENDER SERVER NAME
   RETURN SS_SYSMEM[25]

FUNCTION SS_GSSTYPE()     && GET SENDER SERVER TYPE
   RETURN SS_SYSMEM[26]

FUNCTION SS_GSSEV()       && GET SENDER SERVER EIGEN VALUE
   RETURN SS_SYSMEM[27]

FUNCTION  SS_GVDEC()      && GET VETO DECISION
   RETURN

FUNCTION SS_ACCCON()      && ACCEPT CONNECTION
   LOCAL X,myarr

	IF SS_GVSL() = 4
		SS_VSL4ACCEPTCONNECTION()
		RETURN
	ENDIF

   IF SS_GVSL() = 2
       SS_OVFILE("SS2.DBF")
      goto SS_SERVERS[SS_AS][28]
      IF RLock()
         REPLACE SS_R5 WITH "TRUE"
      else
      ? "Lock Process Failed"
      ENDIF
         myarr = SS_SERVERS[SS_AS][29]
         AAdd(myarr,RecNo())
         SS_SERVERS[SS_AS][29] = myarr
         SS_SERVERS[SS_AS][30] = RecNo() && STORE AS ACTIVE CONNECTION SO SERVER CAN WORK AS CLIENT
         SS_SYSMEM[24] = {SS_R1}
      SS_CVFILE()
      RETURN
   ENDIF
   IF .NOT. Empty(SS_SERVERS)
      FOR X = 1 TO Len(SS_SERVERS)
         IF Upper(SS_SERVERS[X][1]) = Upper(SS_GSSNAME())
            SS_SERVERS[X][22] = .T.
            EXIT
         ENDIF
      NEXT
   ENDIF
   RETURN

FUNCTION SS_REFCON()      && REFUSE CONNECTION
   LOCAL X

	IF SS_GVSL() = 4
		SS_VSL4REFUSECONNECTION()
		RETURN
	ENDIF

   IF SS_GVSL() = 2
       SS_OVFILE("SS2.DBF")
      goto SS_SERVERS[SS_AS][28]
      IF RLock()
         REPLACE SS_R5 WITH "FALSE"
      else
      ? "Lock Process Failed"
      ENDIF
      SS_CVFILE()
      RETURN
   ENDIF
   IF .NOT. Empty(SS_SERVERS)
      FOR X = 1 TO Len(SS_SERVERS)
         IF Upper(SS_SERVERS[X][1]) = Upper(SS_GSSNAME())
            SS_SERVERS[X][22] = .F.
            EXIT
         ENDIF
      NEXT
   ENDIF

   RETURN

FUNCTION SS_CONACC()      && CONNECTION ACCEPTED ?
   IF SS_GVSL() = 2
      RETURN .T.
   ENDIF
   RETURN SS_SERVERS[SS_AS][22]

FUNCTION SS_RECVETO(P1)
   SS_SERVERS[SS_AS][23] = P1
   RETURN

FUNCTION SS_SENVETO(P1)
   SS_SERVERS[SS_AS][24] = P1
   RETURN

FUNCTION SS_RTCON() &&  REQUEST_TYPE_CONNECTION
   IF SS_SERVERS[SS_AS][25] = 1
      RETURN .T.
   ENDIF
   RETURN .F.

FUNCTION SS_RTSD()  &&  REQUEST_TYPE_SENDDATA
   IF SS_SERVERS[SS_AS][25] = 2
      RETURN .T.
   ENDIF
   RETURN .F.

FUNCTION SS_RTSV()  &&  REQUEST_TYPE_SENDVETO
   IF SS_SERVERS[SS_AS][25] = 3
      RETURN .T.
   ENDIF
   RETURN .F.

FUNCTION SS_RVNAME() && REQUEST_VETO_NAME
   RETURN SS_SERVERS[SS_AS][26]

FUNCTION SS_SVSP(P1) && SET VETO SYSTEM PATH
   SS_SYSMEM[29] = P1
   RETURN

FUNCTION SS_GVSP(P1) && GET VETO SYSTEM PATH
   RETURN SS_SYSMEM[29]

FUNCTION SS_SVSL(P1) && SET VETO SYSTEM LEVEL
   SS_SYSMEM[28] = Val(P1)
   IF Val(P1) = 3
      SS_SYSMEM[28] = 2
      SS_SYSMEM[43] = .T. && VETO SYSTEM LEVEL 3 IS ENABLED
      SS_L3STARTUP() && VETO SYSTEM LEVEL 3 STARTUP
   ENDIF
   IF VAL(P1) = 4
	SS_VSL4STARTUP()
   ENDIF
   RETURN

FUNCTION SS_GVSL() && GET VETO SYSTEM LEVEL
   RETURN SS_SYSMEM[28]

FUNCTION SS_CVSER()  && CHECK VETO SERVICES
   LOCAL MYPATH,S_NAME,S_ID
   LOCAL X2,P1,C_NAME,B_NAME,R_NAME,R_ADDRESS
 	
	IF SS_GVSL() = 4
		SS_VSL4ENGINE()
		RETURN
	ENDIF

   IF SS_GVSL() = 2
     * SS_SERVERS[X][27]    LAST RECORD NUMBER READED  IN SS2.DBF (VETO SYSTEM LEVEL 2)
     * SS_SERVERS[X][28]    RECORD NUMBER OF LAST CONNECTION IN SS2.DBF (VETO SYSTEM LEVEL 2)
       SS_OVFILE("SS2.DBF")
         IF SS_SERVERS[SS_AS][31] = .T. && first time this function called
            SS_SERVERS[SS_AS][27] = RecCount()
            SS_SERVERS[SS_AS][31] = .F.
         ENDIF
         IF .NOT. RecCount() = SS_SERVERS[SS_AS][27]
            SS_SERVERS[SS_AS][27] = SS_SERVERS[SS_AS][27] + 1
            goto SS_SERVERS[SS_AS][27]
            *? " OP_CODE: "
            *?? ALLTRIM(OP_CODE)
            *?? " SS_R1: "
            *?? ALLTRIM(SS_R1)
            *?? " SS_R2: "
            *?? ALLTRIM(SS_R2)
            *?? " SS_R3: "
            *?? ALLTRIM(SS_R3)
            *?? " SS_R4: "
            *?? ALLTRIM(SS_R4)
            *?? " SS_R5: "
            *?? ALLTRIM(SS_R5)
           * CONNECTION OPERATION
            IF OP_CODE = "1"  .AND. AllTrim(Upper(SS_R4)) = AllTrim(Upper(SS_SERVERS[SS_AS][1]))
               SS_SYSMEM[25] = SS_R1
               SS_SYSMEM[26] = SS_R2
               SS_SYSMEM[27] = SS_R3
               S_NAME = SS_R4
               SS_SERVERS[SS_AS][28] = RecNo()
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
                     SS_SERVERS[SS_AS][25] = 1 && REQUEST TYPE = CONNECTION
                     SS_CVFILE() && SHOULD BE HERE
                     SS_CALLR(R_ADDRESS)
                  ENDIF
               NEXT
               RETURN
            ENDIF
            * SEND VETO OPERATION
            IF OP_CODE = "2"  .AND. AllTrim(Upper(SS_R2)) = AllTrim(Upper(SS_SERVERS[SS_AS][1])) .AND. ;
               SS_VSL2ICA(Val(SS_R4))
               SS_SERVERS[SS_AS][30] = Val(SS_R4) && SET ACTIVE CONNECTION
               SS_SYSMEM[24] = {SS_R1}
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
                     VETOMARK = RecNo()
                     SS_CVFILE()
                     SS_CALLR(R_ADDRESS)
                     SS_OVFILE("SS2.DBF")
                     goto VETOMARK
                  ENDIF
               NEXT
               FOR X2 = 1 TO Len(SS_VETOS)
                  P1 = AllTrim(SS_R3) && required VETO
                  IF SS_VETOS[X2][1] = SS_AS .AND. ;
                     Upper(SS_VETOS[X2][3]) = Upper(P1)
                     C_NAME = SS_VETOS[X2][5]
                     B_NAME = SS_VETOS[X2][6]
                     R_NAME = SS_VETOS[X2][7]
                  ENDIF
               NEXT
               * INVOKE THE RESISTANCE
               R_ADDRESS = "Circuits\" + ;
                                 C_NAME+"\"+B_NAME+"\"+R_NAME
                     VETOMARK = RecNo()
                     SS_CVFILE()
                     SS_CALLR(R_ADDRESS)
                     SS_OVFILE("SS2.DBF")
                     goto VETOMARK
               IF RLock()
                  DELETE
                  UNLOCK
               else
               ? "Lock Process Failed"
               ENDIF
               SS_CVFILE()
               RETURN
            ENDIF
            * SEND DATA OPERATION
            IF OP_CODE = "3"  .AND. AllTrim(Upper(SS_R2)) = AllTrim(Upper(SS_SERVERS[SS_AS][1])) .AND. ;
               SS_VSL2ICA(Val(SS_R4))
               SS_SERVERS[SS_AS][30] = Val(SS_R4) && SET ACTIVE CONNECTION
               SS_SYSMEM[24] = {SS_R1}
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
                     VETOMARK = RecNo()
                     SS_CVFILE()
                     SS_CALLR(R_ADDRESS)
                     SS_OVFILE("SS2.DBF")
                     goto VETOMARK
                  ENDIF
               NEXT
               * GET DATA
               P1 = AllTrim(SS_R3) && DATA
                ICH_NAME = SS_SERVERS[SS_AS][21]
                * {SERVER ID , CHANNEL ID , CHANNELNAME , CHANNELTYPE , ATOM , SHELL , SUBSHELL }
               IF .NOT. Empty(SS_CHANNELS)
                  FOR X3 = 1 TO Len(SS_CHANNELS)
                     IF SS_CHANNELS[X3][1] = SS_AS .AND. ;
                        Upper(SS_CHANNELS[X3][3]) = Upper(ICH_NAME)
                        A_NAME = SS_CHANNELS[X3][5]
                        SH_NAME = SS_CHANNELS[X3][6]
                        SUB_NAME = SS_CHANNELS[X3][7]
                        * 1 - GET ATOM ID
                        FOR X4 = 1 TO LEN(SS_ATOMS)
                             IF UPPER(SS_ATOMS[X4][3]) = UPPER(A_NAME)
                                  V_ATOMID = SS_ATOMS[X4][2]
                               EXIT
                          ENDIF
                        NEXT
                        * 2 - GET SHELL ID
                        FOR X4 = 1 TO LEN(SS_SHELLS)
                          IF SS_SHELLS[X4][2] = V_ATOMID .AND. UPPER(SS_SHELLS[X4][4]) = UPPER(SH_NAME)
                               V_SHELLID = SS_SHELLS[X4][3]
                               EXIT
                          ENDIF
                        NEXT
                        * 3 - GET SUBSHELL ID
                        FOR X4 = 1 TO LEN(SS_SUBSHELLS)
                             IF SS_SUBSHELLS[X4][2] = V_ATOMID  .AND. ;
                                SS_SUBSHELLS[X4][3] = V_SHELLID .AND. UPPER(SS_SUBSHELLS[X4][5]) = UPPER(SUB_NAME)
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
               IF RLock()
                  DELETE
                  UNLOCK
               else
               ? "Lock Process Failed"
               ENDIF
               SS_CVFILE()
               RETURN
            ENDIF
            * DISCONNECT OPEARTION
            IF OP_CODE = "4"  .AND. AllTrim(Upper(SS_R2)) = AllTrim(Upper(SS_SERVERS[SS_AS][1])) .AND. ;
               SS_VSL2ICA(Val(SS_R4))
               SS_VSL2DFCA(Val(SS_R4))
               IF RLock()
                  DELETE
                  UNLOCK
               else
               ? "Lock Process Failed"
               ENDIF
            ENDIF
            SS_CVFILE()
            RETURN
         ENDIF
         SS_CVFILE()
         RETURN
     ENDIF
   RETURN

FUNCTION SS_VSL2ICA(P1) && VETO SYSTEM LEVEL2 IN CONNECTIONS ARRAY
   LOCAL X,MYARR
   MYARR = SS_SERVERS[SS_AS][29]
   IF .NOT. Empty(MYARR)
      FOR X = 1 TO Len(MYARR)
         IF MYARR[X] = P1
            RETURN .T.
         ENDIF
      NEXT
   ENDIF
   RETURN .F.

FUNCTION SS_VSL2DFCA(P1) && VETO SYSTEM LEVEL2 DELETE FROM CONNECTIONS ARRAY
   LOCAL X,MYARR,MYREC
   MYREC = RecNo()
   MYARR = SS_SERVERS[SS_AS][29]
   IF .NOT. Empty(MYARR)
      FOR X = 1 TO Len(MYARR)
         IF MYARR[X] = P1
            ADel(MYARR,X)
            ASize(MYARR,Len(MYARR)-1)
         ENDIF
      NEXT
   ENDIF
   SS_SERVERS[SS_AS][29] = MYARR
   goto (P1)
   IF RLock()
                  DELETE
                  UNLOCK
   else
   ? "Lock Process Failed"
   ENDIF
   goto (MYREC)
   RETURN

FUNCTION SS_OVFILE(P1) && OPEN VETO FILE
   IF SS_SYSMEM[40] = .F.
      SS_SYSMEM[40] = .T.
      MYPATH = SS_GVSP() + "\" + P1
      Select 0
      USE (MYPATH) SHARED
      SS_SYSMEM[41] = Alias()
   ELSE
      Select (SS_SYSMEM[41])
   ENDIF
   RETURN

FUNCTION SS_CVFILE() && CLOSE VETO FILE
   IF SS_SYSMEM[40] = .T.
      Select (SS_SYSMEM[41])
      SS_SYSMEM[40] = .F.
      SS_SYSMEM[41] = ""
      CLOSE
   ENDIF
   RETURN


FUNCTION SS_SMSR(P1) && SET MAIN SERVER RESISTANCE
   SS_SERVERS[SS_AS][32] = P1
   RETURN

*-------------------------*
* OOP SIMULATION          *
*-------------------------*
FUNCTION SS_NCLASS(P1,P2,P3,P4)        && CREATE NEW CLASS
   * P1 : CLASS NAME
   * P2 : MOTHER CLASS NAME
   * P3 : DATA ADDRESS (ATOM:SHELL:SUBSHELL)
   * P4 : METHODS ADDRESS (CIRCUIT:BRANCH)
   IF p2 = NIL
      p2 = ""
   ENDIF
   SS_SERVERS[SS_AS][33] = SS_SERVERS[SS_AS][33] + 1 && LAST CLASS ID
   AAdd(SS_CLASSES,{SS_AS,SS_SERVERS[SS_AS][33],;
               P1,P2,P3,P4})
                     && 1 SERVER ID
                     && 2 CLASS ID
                     && 3 CLASS NAME
                     && 4 PARENT CLASS
                     && 5 DATA ADDRESS
                     && 6 METHOD ADDRESS
   SS_NOBJECT(P1,P1) && CREATE OBJECT WITH THE SAME NAME AS CLASS
   RETURN

FUNCTION SS_NOBJECT(P1,P2)       && CREATE NEW OBJECT
   * P1 : OBJECT NAME
   * P2 : CLASS NAME
   LOCAL X,CLASSID
   SS_SERVERS[SS_AS][34] = SS_SERVERS[SS_AS][34] + 1
   CLASSID = 0
   FOR X = 1 TO Len(SS_CLASSES)
      IF SS_CLASSES[X][1] = SS_AS .AND. ;
         AllTrim(SS_CLASSES[X][3]) = AllTrim(P2)
         CLASSID = SS_CLASSES[X][2]
         EXIT
      ENDIF
   NEXT
   IF .NOT. classid = 0
      IF P1 = NIL
         P1 = "OBJ_" + AllTrim(Str(SS_SERVERS[SS_AS][34]))
      ENDIF
   AAdd(SS_OBJECTS,{SS_AS,SS_SERVERS[SS_AS][34],P1,P2,CLASSID,{}})
                     && 1 SERVER ID
                     && 2 OBJECT ID
                     && 3 OBJECT NAME
                     && 4 CLASS NAME
                     && 5 CLASS ID
                     && 6 OBJECT DATA ARRAY (NAME,TYPE,DOMAIN,VALUE)
   IF .NOT. AllTrim(Upper(p1)) == AllTrim(Upper(p2))
      SS_OOP2(P1+".INIT()") && CALL INIT METHOD
   ELSE
      SS_OOP2(P1+".CLASSINIT()") && CALL INIT METHOD OF CLASS
   ENDIF
   RETURN {"OBJECT",SS_SERVERS[SS_AS][34]}
   ELSE
      ? "Error : class not found"
      quit
   ENDIF

   RETURN

FUNCTION SS_WITHOBJ(P1)       && WITH OBJECT
   * P1 : OBJECT NAME
   LOCAL OBJID,X
   OBJID = 0
   SS_SERVERS[SS_AS][35] = P1  && STORE WITH OBJECT NAME
   FOR X = 1 TO Len(SS_OBJECTS)
      IF SS_OBJECTS[X][1] = SS_AS .AND. ;
         AllTrim(SS_OBJECTS[X][3]) = AllTrim(P1)
         OBJID = SS_OBJECTS[X][2]
         EXIT
      ENDIF
    NEXT
   SS_SERVERS[SS_AS][36] = OBJID     && WITH OBJECT ID
   RETURN

FUNCTION SS_EWITHOBJECT()   && END WITH OBJECT
   SS_SERVERS[SS_AS][35] = ""
   SS_SERVERS[SS_AS][36] = 0
   RETURN

FUNCTION SS_DELCLASS(P1)      &&  DELETE CLASS
   * P1 : CLASS NAME
   LOCAL X
   FOR X = 1 TO Len(SS_CLASSES)
      IF SS_CLASSES[X][1] = SS_AS .AND. ;
         AllTrim(SS_CLASSES[X][3]) = AllTrim(P1)
         ADEL(SS_CLASSES,X)
         ASIZE(SS_CLASSES,LEN(SS_CLASSES)-1)
         EXIT
      ENDIF
    NEXT
   RETURN

FUNCTION SS_DELOBJECT(P1)     &&  DELETE OBJECT
   * P1 : OBJECT NAME
   LOCAL X
   FOR X = 1 TO Len(SS_OBJECTS)
      IF SS_OBJECTS[X][1] = SS_AS .AND. ;
         AllTrim(SS_OBJECTS[X][3]) = AllTrim(P1)
         ADEL(SS_OBJECTS,X)
         ASIZE(SS_OBJECTS,LEN(SS_OBJECTS)-1)
         EXIT
      ENDIF
    NEXT
   RETURN

FUNCTION SS_OOP2(P1)
   * P1 METHOD TO INVOKE or ATTRIBUTE TO GET IT'S VALUE
   LOCAL MYARR,X,MYOBJ,MYMETHOD,MYCID,MYDA,MYMA
   LOCAL MYDARR,MYMARR,TRUEMETHOD,MYRET
   LOCAL TRUEATT,MYATT,MYOPOS,MYAPOS
   LOCAL LOOPVAR
   *********************************
   LOCAL motherarr,mymother,T,MYDA2,MYMA2,MFOUND
   LOCAL MYRDARR,MYRMARR,TT
   LOCAL MYMHIS,MYMCODE
   *********************************
   LOCAL MYSUPER,ITISME
   MYSUPER = .F.
   ITISME = .T.
   *********************************
   * FOR WITH OBJECT SUPPORT
   IF .NOT. Empty(SS_SERVERS[SS_AS][35]) .AND. Left(P1,1) = "."
      P1 = AllTrim(SS_SERVERS[SS_AS][35]) + P1
   ENDIF
   *********************************
   MYARR = SS_HOOP1(P1)
   FOR loopvar = 2 TO LEN(MYARR)
   * GET THE OBJECT
   IF LOOPVAR = 2
   MYOBJ = MYARR[1]
   ENDIF
   MYMETHOD = MYARR[loopvar]
   MYATT = MYARR[loopvar]
    *
   if loopvar = 2
   IF Upper(AllTrim(MYOBJ)) == "THISOBJ" .OR. Upper(AllTrim(MYOBJ)) == "THIS"
      MYOBJ = SS_SERVERS[SS_AS][38]
   ENDIF
   IF Upper(AllTrim(MYOBJ)) == "MYSUPER"
      MYOBJ = SS_SERVERS[SS_AS][38]
      MYSUPER = .T.
   ENDIF
   endif
   * GET THE OBJECT CLASS INFORMATION
   MYCID = -1
   FOR x = 1 TO Len(SS_OBJECTS)
        IF SS_OBJECTS[X][1] = SS_AS .AND. ;
         Upper(AllTrim(SS_OBJECTS[X][3])) == Upper(AllTrim(MYOBJ))
         MYCID = SS_OBJECTS[X][5]
         MYOPOS = X
         EXIT
        ENDIF
   NEXT

   MYDA = ""
   MYMA = ""
      IF .NOT. MYCID = -1
         FOR X = 1 TO Len(SS_CLASSES)
            IF SS_CLASSES[X][1] = SS_AS .AND. ;
               SS_CLASSES[X][2] = MYCID
               MYDA = SS_CLASSES[X][5]
               MYMA = SS_CLASSES[X][6]
               ********************************* GET PARENT HISTORY
               motherarr = {}
               AAdd(MOTHERARR,{MYDA,MYMA})
               mymother = SS_CLASSES[X][4]
               DO WHILE .NOT. Empty(mymother)
                  MFOUND = .F.
                  FOR T = 1 TO Len(SS_CLASSES)
                     IF SS_CLASSES[T][1] = SS_AS .AND. ;
                        Upper(AllTrim(SS_CLASSES[T][3])) == Upper(AllTrim(MYMOTHER))
                        MYDA2 = SS_CLASSES[T][5]
                        MYMA2 = SS_CLASSES[T][6]
                        AAdd(MOTHERARR,{MYDA2,MYMA2})
                        MYMOTHER = SS_CLASSES[T][4]
                        MFOUND = .T.
                     ENDIF
                  NEXT
                  IF MFOUND = .F.
                     ? " Error Mother Class not found ! "
                     ? " Mother Class Name :- "
                     ?? mymother
                     MYMOTHER = ""
                     Quit
                  ENDIF
               ENDDO
               *********************************
               EXIT
            ENDIF
         NEXT
      ELSE
         ? " ERROR : OBJECT NOT FOUND "
         QUIT
      ENDIF
  * GET CURRENT OBJECT PROPERTIES
   **************************************
   MYRDARR = {}
   MYRMARR = {}
   MYMHIS  = {}  && HISTORY FOR SEPARATION BETWEEN CIRCUITS/BRANCHES
   FOR T = 1 TO Len(MOTHERARR)
      MYDA = MOTHERARR[T][1]
      MYMA = MOTHERARR[T][2]
      * GET ELECTRONS  = ATTRIBUTES
      IF .NOT. Empty(MYDA)
         MYDARR  = SS_HOOP2(MYDA)
         FOR TT = 1 TO Len(MYDARR)
            AAdd(MYRDARR,MYDARR[TT])
         NEXT
      ENDIF
      * GET RESISTANCES = METHODS
      IF .NOT. Empty(MYMA)
         MYMARR  = SS_HOOP3(MYMA)
         FOR TT = 1 TO Len(MYMARR)
            AAdd(MYRMARR,MYMARR[TT])
         NEXT
         AAdd(MYMHIS,Len(MYRMARR))
      ENDIF
   NEXT
   IF MYSUPER = .F.
      MYDA = MOTHERARR[1][1]
      MYMA = MOTHERARR[1][2]
   ELSE
      MYDA = MOTHERARR[2][1]
      MYMA = MOTHERARR[2][2]
   ENDIF

   MYDARR = MYRDARR
   MYMARR = MYRMARR
   **************************************

      * Get Attribute Value
      TRUEATT = .F.
      MYAPOS = 0
      FOR X = 1 TO Len(MYDARR)
         IF Upper(AllTrim(MYATT)) == Upper(AllTrim(MYDARR[X]))
            TRUEATT = .T.
            MYAPOS = X
         ENDIF
      NEXT
      IF TRUEATT = .T.
         IF loopvar = LEN(MYARR)
            FOR X = 1 TO Len(SS_OBJECTS[MYOPOS][6])
               IF AllTrim(Upper(SS_OBJECTS[MYOPOS][6][X][1])) == AllTrim(Upper(MYDARR[MYAPOS]))
                  MYRET = SS_OBJECTS[MYOPOS][6][X][4]
                  RETURN MYRET

               ENDIF
            NEXT
         ELSE
            FOR X = 1 TO Len(SS_OBJECTS[MYOPOS][6])
               IF AllTrim(Upper(SS_OBJECTS[MYOPOS][6][X][1])) == AllTrim(Upper(MYDARR[MYAPOS]))
               MYOBJ = SS_OBJECTS[MYOPOS][6][X][4]
               MYOBJ = "OBJ_" + AllTrim(Str(MYOBJ[2]))
               ENDIF
            NEXT
         ENDIF
      ENDIF

next

*******************************************8

      * INVOKE METHOD
      TRUEMETHOD = .F.
      MYMETHOD2 = MYMETHOD
      FOR X = 1 TO Len(MYMETHOD)
         IF SubStr(MYMETHOD,X,1) = "("
            MYMETHOD2 = Left(MYMETHOD,X-1)
         ENDIF
      NEXT
      FOR X = 1 TO Len(MYMARR)
         IF Upper(AllTrim(MYMETHOD2)) == Upper(AllTrim(MYMARR[X]))
            IF MYSUPER = .T. .AND. ITISME = .T.
               ITISME = .F.
            ELSE
               TRUEMETHOD = .T.
               MYMCODE = X
               EXIT && THIS LINE IS VERY IMPORTANT, I DISCOVERD THAT AFTER 2
                    && HOURS OF HARD WORK TO SOLVE PROBLEM
            ENDIF
         ENDIF
      NEXT
      IF TRUEMETHOD = .F.
         IF .NOT. Upper(MYMETHOD2) = "INIT" .AND. .NOT. Upper(MYMETHOD2) = "CLASSINIT"
         ? "Error : Method " + mymethod + " Not Found"
         quit
         ENDIF
      ENDIF
      IF TRUEMETHOD = .T.
         FOR T = 1 TO Len(MYMHIS)
            IF MYMHIS[T] >= MYMCODE
               MYMA = MOTHERARR[T][2]
               EXIT
            ENDIF
         NEXT
         SS_SERVERS[SS_AS][37] = .T. && CALLED_AS_METHOD = TRUE
         SS_SERVERS[SS_AS][38] = MYOBJ
         RESADDRESS = "CIRCUITS\" + MYMA + "\"+MYMETHOD
         MYRET = SS_CALLR(RESADDRESS)
         SS_SERVERS[SS_AS][38] = MYOBJ
         SS_SERVERS[SS_AS][37] = .F. && CALLED_AS_METHOD = FALSE
         RETURN MYRET
      ENDIF
      RETURN

FUNCTION SS_OOP1(P1,P2)
   * P1 : LEFT SIDE OF ASSIGNEMENT
   * P2 : RIGHT SIDE OF ASSIGNMENT
   LOCAL MYARR,X,MYOBJ,MYATT,MYCID,MYOPOS,MYDA,MYMA
   LOCAL MYDARR,MYMARR,TRUEATT
   LOCAL LOOPVAR
   *********************************
   LOCAL motherarr,mymother,T,MYDA2
   LOCAL MYRDARR,TT
   *********************************
   * FOR WITH OBJECT SUPPORT
   IF .NOT. Empty(SS_SERVERS[SS_AS][35]) .AND. Left(P1,1) = "."
      P1 = AllTrim(SS_SERVERS[SS_AS][35]) + P1
   ENDIF
   *********************************
   MYARR = SS_HOOP1(P1)
   FOR loopvar = 2 TO LEN(MYARR)
   * GET THE OBJECT
   IF LOOPVAR = 2
   MYOBJ = MYARR[1]
   ENDIF
   MYATT = MYARR[loopvar]
    *
   if loopvar = 2
   IF Upper(AllTrim(MYOBJ)) = "THISOBJ" .OR. Upper(AllTrim(MYOBJ)) = "THIS"
      MYOBJ = SS_SERVERS[SS_AS][38]
   ENDIF

   endif
   * GET THE OBJECT CLASS INFORMATION
   MYCID = -1

   FOR x = 1 TO Len(SS_OBJECTS)
        IF SS_OBJECTS[X][1] = SS_AS .AND. ;
         Upper(AllTrim(SS_OBJECTS[X][3])) == Upper(AllTrim(MYOBJ))
         MYCID = SS_OBJECTS[X][5]
         MYOPOS = X
         EXIT
      ENDIF
   NEXT

   MYDA = ""
   MYMA = ""
      IF .NOT. MYCID = -1
         FOR X = 1 TO Len(SS_CLASSES)
            IF SS_CLASSES[X][1] = SS_AS .AND. ;
               SS_CLASSES[X][2] = MYCID
               MYDA = SS_CLASSES[X][5]
               MYMA = SS_CLASSES[X][6]
               ********************************* GET PARENT HISTORY
               motherarr = {}
               AAdd(MOTHERARR,{MYDA,MYMA})
               mymother = SS_CLASSES[X][4]
               DO WHILE .NOT. Empty(mymother)
                  MFOUND = .F.
                  FOR T = 1 TO Len(SS_CLASSES)
                     IF SS_CLASSES[T][1] = SS_AS .AND. ;
                        Upper(AllTrim(SS_CLASSES[T][3])) == Upper(AllTrim(MYMOTHER))
                        MYDA2 = SS_CLASSES[T][5]
                        MYMA2 = SS_CLASSES[T][6]
                        AAdd(MOTHERARR,{MYDA2,MYMA2})
                        MYMOTHER = SS_CLASSES[T][4]
                        MFOUND = .T.
                     ENDIF
                  NEXT
                  IF MFOUND = .F.
                     ? " Error Mother Class not found ! "
                     ? " Mother Class Name :- "
                     ?? mymother
                     MYMOTHER = ""
                     Quit
                  ENDIF
               ENDDO
               *********************************

               EXIT
            ENDIF
         NEXT
      ELSE
         ? " ERROR : OBJECT NOT FOUND "
         QUIT
      ENDIF
  * GET CURRENT OBJECT PROPERTIES
   * GET CURRENT OBJECT PROPERTIES
   **************************************
   MYRDARR = {}
   FOR T = 1 TO Len(MOTHERARR)
      MYDA = MOTHERARR[T][1]
      * GET ELECTRONS  = ATTRIBUTES
      IF .NOT. Empty(MYDA)
         MYDARR  = SS_HOOP2(MYDA)
         FOR TT = 1 TO Len(MYDARR)
            AAdd(MYRDARR,MYDARR[TT])
         NEXT
      ENDIF
   NEXT
      MYDA = MOTHERARR[1][1]
   MYDARR = MYRDARR
   **************************************
      * Get Attribute Value
      TRUEATT = .F.
      MYAPOS = 0
      FOR X = 1 TO Len(MYDARR)
         IF Upper(AllTrim(MYATT)) == Upper(AllTrim(MYDARR[X]))
            TRUEATT = .T.
            MYAPOS = X
         ENDIF
      NEXT
      IF TRUEATT = .T.
         IF .NOT. loopvar = LEN(MYARR)
            FOR X = 1 TO Len(SS_OBJECTS[MYOPOS][6])
               IF AllTrim(Upper(SS_OBJECTS[MYOPOS][6][X][1])) == AllTrim(Upper(MYDARR[MYAPOS]))
               MYOBJ = SS_OBJECTS[MYOPOS][6][X][4]
               MYOBJ = "OBJ_" + AllTrim(Str(MYOBJ[2]))
               ENDIF
            NEXT
         ENDIF
      ENDIF

next

    * ADD ATTRIBUTE WITH VALUE TO OBJECT DATA ARRAY
      TRUEATT = .F.
      FOR X = 1 TO Len(MYDARR)
         IF Upper(AllTrim(MYATT)) = Upper(AllTrim(MYDARR[X]))
            TRUEATT = .T.
         ENDIF
      NEXT
      IF TRUEATT = .F.
         ? "Error : Attribute " + myATT + " Not Found"
         quit
      ENDIF
      IF TRUEATT = .T.
         FOR x = 1 TO Len(SS_OBJECTS[MYOPOS][6])
            IF AllTrim(Upper(SS_OBJECTS[MYOPOS][6][x][1])) = AllTrim(Upper(MYATT))
                  SS_OBJECTS[MYOPOS][6][x][2] = ValType(P2)
                  IF ValType(P2) = 'A' .AND. Len(P2) = 2
                     IF P2[1] = "OBJECT"
                     SS_OBJECTS[MYOPOS][6][x][2] = "OBJECT"
                     ENDIF
                  ENDIF
               SS_OBJECTS[MYOPOS][6][x][3] = 50
               SS_OBJECTS[MYOPOS][6][x][4] = P2
               RETURN
            ENDIF
         NEXT
             IF ValType(P2) = 'A' .AND. Len(P2) = 2
                IF P2[1] = "OBJECT"
                   AAdd(SS_OBJECTS[MYOPOS][6],{MYATT,"OBJECT",50,P2})
                ELSE
                   AAdd(SS_OBJECTS[MYOPOS][6],{MYATT,ValType(P2),50,P2})
                ENDIF
             ELSE
                   AAdd(SS_OBJECTS[MYOPOS][6],{MYATT,ValType(P2),50,P2})
             ENDIF

      ENDIF

   RETURN

FUNCTION SS_HOOP1(P1,P2)
   * P1 : STRING WHICH CONTAINS ONE OR MORE OF DOT (.) OPERATOR
   * P2 : MARK , DEFAULT = DOT (.)
   LOCAL X,MYARR,LASTSTART
   IF P2 = NIL
      P2 = "."
   ENDIF
   LASTSTART = 0
   MYARR = {}
   FOR X = 1 TO Len(P1)
      IF SubStr(P1,X,1) = P2
         AAdd(MYARR,SubStr(P1,LASTSTART+1,X-LASTSTART-1))
         LASTSTART = X
      ENDIF
   NEXT
   AAdd(MYARR,SubStr(P1,LASTSTART+1,X-LASTSTART-1))
   RETURN MYARR  && ARRAY OF ELEMENTS DIVIDED BY DOT (.) OPERATORS

FUNCTION SS_HOOP2(P1) && RETURN ARRAY OF SUBSHELL VARIABLES
   * P1 : ADDRESS ATOM:SHELL:SUBSHELL
   * 1 - GET ATOM ID
   LOCAL MYARR,MYRESULT,V_ATOMID,V_SHELLID,V_SUBSHELLID
   MYARR = SS_HOOP1(P1,":")
   FOR X = 1 TO LEN(SS_ATOMS)
        IF SS_ATOMS[X][1] = SS_AS .AND. UPPER(ALLTRIM(SS_ATOMS[X][3])) = UPPER(ALLTRIM(MYARR[1]))
                V_ATOMID = SS_ATOMS[X][2]
                EXIT
        ENDIF
   NEXT
   * 2 - GET SHELL ID
   FOR X = 1 TO LEN(SS_SHELLS)
        IF SS_SHELLS[X][1] = SS_AS .AND.  SS_SHELLS[X][2] = V_ATOMID .AND. ;
        UPPER(ALLTRIM(SS_SHELLS[X][4])) = UPPER(ALLTRIM(MYARR[2]))
                V_SHELLID = SS_SHELLS[X][3]
                EXIT
        ENDIF
   NEXT
   * 3 - GET SUBSHELL ID
   FOR X = 1 TO LEN(SS_SUBSHELLS)
        IF SS_SUBSHELLS[X][2] = V_ATOMID  .AND. SS_SUBSHELLS[X][1] = SS_AS .AND. ;
           SS_SUBSHELLS[X][3] = V_SHELLID .AND.;
            UPPER(ALLTRIM(SS_SUBSHELLS[X][5])) = UPPER(ALLTRIM(MYARR[3]))
                V_SUBSHELLID = SS_SUBSHELLS[X][4]
                EXIT
        ENDIF
   NEXT
   * 4 - LOOP THAT GET THE SUBSHELL VARIABLES
   MYRESULT = {} && ELECTRONS ARRAY (IN ACTIVE SUB SHELL)
   FOR X = 1 TO LEN(SS_VARS)
        IF SS_VARS[X][2] = V_ATOMID .AND. SS_VARS[X][3] = V_SHELLID .AND. ;
           SS_VARS[X][4] = V_SUBSHELLID .AND. SS_VARS[X][1] = SS_AS
           IF SS_VARS[X][6] = 1
           V_ELENAME = SS_VARS[X][7]
           AADD(MYRESULT,V_ELENAME)
           ENDIF
        ENDIF
   NEXT
RETURN MYRESULT


FUNCTION SS_HOOP3(P1) && RETURN ARRAY OF BRANCH RESISTANCES
   * P1 : ADDRESS CIRCUIT:BRANCH
   * 1 - GET ATOM ID

    && {SERVER ID , CIRCUIT ID , CIRCUIT NAME , MAIN RESISTANCE , MAIN SWITCH}
    && {SERVER ID , CIRCUIT ID , BRANCHID , BRANCH NAME , PARALLEL TO , BRANCH SWITCH}
    && {SERVER ID , CIRCUIT ID , BRANCHID , RESISTANCE ID , RESISTANCE NAME }

   LOCAL MYARR,MYRESULT,V_CIRCUITID,V_BRANCHID
   MYARR = SS_HOOP1(P1,"\")
   FOR X = 1 TO LEN(SS_CIRCUITS)
        IF SS_CIRCUITS[X][1] = SS_AS .AND. UPPER(SS_CIRCUITS[X][3]) = UPPER(MYARR[1])
                V_CIRCUITID = SS_CIRCUITS[X][2]
                EXIT
        ENDIF
   NEXT
   * 2 - GET BRANCH
   FOR X = 1 TO LEN(SS_BRANCHES)
        IF SS_BRANCHES[X][1] = SS_AS .AND.  SS_BRANCHES[X][2] = V_CIRCUITID .AND. UPPER(SS_BRANCHES[X][4]) = UPPER(MYARR[2])
                V_BRANCHID = SS_BRANCHES[X][3]
                EXIT
        ENDIF
   NEXT
   * 3 - GET RESISTANCES
   MYRESULT = {} && RESISTANCES ARRAY (IN ACTIVE SUB SHELL)
   FOR X = 1 TO LEN(SS_RES)
        IF SS_RES[X][2] = V_CIRCUITID  .AND. SS_RES[X][1] = SS_AS .AND. ;
           SS_RES[X][3] = V_BRANCHID
           V_RESNAME = SS_RES[X][5]
           AADD(MYRESULT,V_RESNAME)
        ENDIF
   NEXT
RETURN MYRESULT

FUNCTION SS_CASMETHOD() && CALLED_AS_METHOD
   RETURN SS_SERVERS[SS_AS][37]

*----------------------------------*
* DoubleS System                   *
*----------------------------------*
* goal : control data,code & veto inside the program
* control mean :
*         1 - know the operation before it done
*         2 - get indication after the process done
*         3 - the ability to cancel the opeartion
*         4 - the ability to change how the operation are performed
* there are two types of servers
* 1 - application servers (Network,Master,Slave & Connection)
*     these servers determine what is the process
* 2 - system servers (Data,Code,Veto,Super Data,Super Code,Super Veto,Super Server(DoubleS))
*     these servers control the process.
*-----------------------------------------------------------------------*
FUNCTION SS_SYSON() && TURN ON DOUBLES SYSTEM
   SS_SYSMEM[30] = .T.
   RETURN

FUNCTION SS_SYSOFF() && TURN OFF DOUBLES SYSTEM
   SS_SYSMEM[30] = .F.
   RETURN

FUNCTION SS_SYSSTATUS() && RETURN DOUBLES SYSTEM STATUS ON OR OFF ?
   RETURN SS_SYSMEM[30]

FUNCTION SS_SYSADD(P1,P2,P3,P4)
   * P1 :  EVENT NUMBER
   * P2 :  Resistance Address (String)
   * P3 :  Server Type (Number)
   * P4 :  Network Name (String)
   AAdd(SS_SSSYS[P1],{P2,P3,P4,SS_AS})
   RETURN

FUNCTION SS_SYSDEL(P1,P2,P3,P4)
   * P1 :  EVENT NUMBER
   * P2 :  Resistance Address (String)
   * P3 :  Server Type (Number)
   * P4 :  Network Name (String)
   LOCAL X
   FOR X = 1 TO Len(SS_SSSYS[P1])
      IF SS_SSSYS[P1][X][1] = P2 .AND. SS_SSSYS[P1][X][2] = P3 .AND. ;
         SS_SSSYS[P1][X][3] = P4
         ADel(SS_SSSYS[P1],X)
         ASize(SS_SSSYS[P1],Len(SS_SSSYS[P1])-1)
      ENDIF
   NEXT
   RETURN

FUNCTION SS_SYSRUN(P1)
   * P1 :  EVENT NUMBER
   LOCAL MYNETNAME
   LOCAL MYNETTYPE
   LOCAL X,OLD_AS
   LOCAL MYRET
   MYRET = .T.
   IF SS_SYSMEM[30] = .T. && IF DOUBLES SYSTEM ON
      MYNETNAME = SS_GETNETNAME()
      MYNETTYPE = SS_GETNETTYPE()
      FOR X = 1 TO Len(SS_SSSYS[P1])
         IF Upper(AllTrim(SS_SSSYS[P1][X][3])) == Upper(AllTrim(MYNETNAME))
            OLD_AS = SS_AS
            SS_AS = SS_SSSYS[P1][X][4]
            SS_CALLR(SS_SSSYS[P1][X][1])
            SS_AS = OLD_AS
            MYRET = SS_SYSMEM[33] && GET CONTROL FLAG STATUS
            SS_SYSMEM[33] = .T. && SET CONTROL FLAG ON (ORIGINAL STATUS)
         ENDIF
      NEXT
   ENDIF
   RETURN MYRET && RETURN CONTROL FLAG

FUNCTION SS_GETNETNAME() && RETURN NETWORK NAME
                         && OR RETURN MOTHER NETWORK NAME IF
                         && THE SERVER IS CONNECTION SERVER
   * array SS_NETS = {}         && FOR EACH NETWORK
                     && 1 - NETWORK SERVER NAME = NETWORK NAME , FILLED BY NETWORK SERVER
                     && 2 - NETWORK TYPE (1 = MOTHER, 2 = SUB) , DETERMINED BY CONNECTION SERVER
                     && 3 - NETWORK SERVERS ARRAY , FILLED BY NETWORK SERVER & MASTER SERVER
                     &&     FOR EACH ONE
                     &&     1 - SERVER NAME
                     &&     2 - SERVER TYPE
                     &&     3 - SERVER EIGEN VALUE
   LOCAL x,X2
   FOR x = 1 TO Len(SS_NETS)
      FOR X2 = 1 TO Len(SS_NETS[X][3])
         IF AllTrim(Upper(SS_NETS[X][3][X2][1])) == AllTrim(Upper(SS_SERNAME()))
            RETURN SS_NETS[X][1]
         ENDIF
      NEXT
   NEXT
   RETURN ""

FUNCTION SS_GETNETTYPE() && RETURN NETWORK TYPE
   LOCAL x,X2
   FOR x = 1 TO Len(SS_NETS)
      FOR X2 = 1 TO Len(SS_NETS[X][3])
         IF AllTrim(Upper(SS_NETS[X][3][X2][1])) == AllTrim(Upper(SS_SERNAME()))
            RETURN SS_NETS[X][2]
         ENDIF
      NEXT
   NEXT

   RETURN

FUNCTION SS_SERTYPE() && RETURN SERVER TYPE (NUMERIC VALUE)
   LOCAL MYARR[13],MYVALUE,MYRET,X
   MYRET = 0
   MYARR[1]  = "PROCEDURE"
   MYARR[2]  = "CLASS"
   MYARR[3]  = "SLAVE"
   MYARR[4]  = "MASTER"
   MYARR[5]  = "NETWORK"
   MYARR[6]  = "CONNECTION"
   MYARR[7]  = "DATA"
   MYARR[8]  = "CODE"
   MYARR[9]  = "VETO"
   MYARR[10] = "SUPER DATA"
   MYARR[11] = "SUPER CODE"
   MYARR[12] = "SUPER VETO"
   MYARR[13] = "DOUBLES"
   MYVALUE = SS_SERVERS[SS_AS][2]
   FOR X = 1 TO 13
      IF MYARR[X] == Upper(AllTrim(MYVALUE))
         MYRET = X
         EXIT
      ENDIF
   NEXT
   RETURN MYRET

FUNCTION SS_SERNAME() && RETURN SERVER NAME
   RETURN Upper(AllTrim(SS_SERVERS[SS_AS][1]))

FUNCTION SS_SEREIGEN() && RETURN SERVER EIGEN VALUE
   RETURN SS_SERVERS[SS_AS][3]


****************************************************************
*  AADD(SS_NETS,{"FIRSTNET",0,{{"Sales_DataBase",3,1500}}})
*  SS_SYSADD(1,"CIRCUITS\C1\B1\R1",3,"FIRSTNET")
*  SS_SYSRUN(1)
****************************************************************
* Proceure server : 1
* Class    server : 2
* Slave    server : 3
* master   server : 4
* network  server : 5
* connection server : 6
* data     server : 7
* code     server : 8
* veto     server : 9
* super data     server : 10
* super code     server : 11
* super veto     server : 12
* super server (DoubleS) Server : 13
****************************************************************

FUNCTION SS_SNEWNET()  && CREATE NEW NETWORK FROM NETWORK SERVER
   P1 = SS_SERNAME()   && GET SERVER NAME, I.E. NETWORK SERVER NAME
   P3 = SS_SEREIGEN()  && GET SERVER EIGEN VALUE , I.E. NETWORK SERVER EIGEN VALUE
   AADD(SS_NETS,{P1,SS_SYSMEM[31],{{P1,5,P3}}}) && 5 = NETWORK SERVER , SS_SYSMEM[31] = NETWORK TYPE
   SS_SYSMEM[32] = P1  && SETTING ACTIVE NETWORK NAME
   RETURN

FUNCTION SS_SASER(P1,P2,P3)  && ADD SERVER TO ACTIVE NETWORK
   * P1 : SERVER NAME
   * P2 : SERVER TYPE
   * P3 : SERVER EIGEN VALUE
   LOCAL NetName,X
   NetName = SS_SYSMEM[32]
   IF .NOT. Empty(NetName)
      FOR X = 1 TO Len(SS_NETS)
         IF Upper(AllTrim(SS_NETS[X][1])) == Upper(AllTrim(NetName))
            AAdd(SS_NETS[X][3],{P1,P2,P3})
         ENDIF
      NEXT
   ENDIF
   RETURN

FUNCTION SS_SRDATA() && RECORD DATA SERVER RESISTANCES
    * [1]  ATOM OPEN EVENT
    * [2]  ATOM CLOSE EVENT
    * [3]  SHELL OPEN EVENT
    * [4]  SHELL CLOSE EVENT
    * [5]  SUBSHELL OPEN EVENT
    * [6]  SUBSHELL CLOSE EVENT
    * [7]  Electron ADD EVENT
    * [8]  Electron DELETE EVENT
    * [9]  Electron READ EVENT
    * [10] Electron CHANGE EVENT
    * [11] VESSEL OPEN EVENT
    * [12] VESSEL CLOSE EVENT
    * [13] REACTION OPEN EVENT
    * [14] REACTION CLOSE EVENT
   SS_SYSADD(1,"Circuits\networks_data_events\Atoms_Events\atom_open",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(2,"Circuits\networks_data_events\Atoms_Events\atom_close",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(3,"Circuits\networks_data_events\Shells_Events\shell_open",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(4,"Circuits\networks_data_events\Shells_Events\shell_close",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(5,"Circuits\networks_data_events\SubShells_Events\subshell_open",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(6,"Circuits\networks_data_events\SubShells_Events\subshell_close",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(7,"Circuits\networks_data_events\SubShells_Events\electron_add",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(8,"Circuits\networks_data_events\SubShells_Events\electron_delete",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(9,"Circuits\networks_data_events\SubShells_Events\electron_read",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(10,"Circuits\networks_data_events\SubShells_Events\electron_change",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(11,"Circuits\networks_data_events\Vessels_Events\vessel_open",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(12,"Circuits\networks_data_events\Vessels_Events\vessel_close",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(13,"Circuits\networks_data_events\Reactions_Events\Reaction_open",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(14,"Circuits\networks_data_events\Reactions_Events\Reaction_close",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   RETURN

FUNCTION SS_SRCODE() && RECORD CODE SERVER RESISTANCES
   * [15] CIRCUIT START EVENT
   * [16] CIRCUIT END EVENT
   * [17] BRANCH START EVENT
   * [18] BRANCH END EVENT
   * [19] RESITANCE START EVENT
   * [20] RESISTANCE END EVENT
   SS_SYSADD(15,"Circuits\networks_Code_events\Circuit_Events\Circuit_Start",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(16,"Circuits\networks_Code_events\Circuit_Events\Circuit_end",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(17,"Circuits\networks_Code_events\Branch_Events\Branch_Start",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(18,"Circuits\networks_Code_events\Branch_Events\Branch_end",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(19,"Circuits\networks_Code_events\Resistances_Events\Resistance_Start",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(20,"Circuits\networks_Code_events\Resistances_Events\Resistance_end",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   RETURN

FUNCTION SS_SRVETO()  && RECORD VETO SERVER RESISTANCES
   * [21] VETO REQUEST EVENT
   * [22] VETO ACCEPTED EVENT
   * [23] VETO REFUSED EVENT
   SS_SYSADD(21,"Circuits\networks_veto_events\Veto_Events\Veto_request",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(22,"Circuits\networks_veto_events\Veto_Events\Veto_accepted",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   SS_SYSADD(23,"Circuits\networks_veto_events\Veto_Events\Veto_refused",SS_SERTYPE(),SS_SYSMEM[32]) &&  SS_SYSMEM[32] : ACTIVE NETWORK NAME
   RETURN

FUNCTION SS_SFON()  && SET FLAG ON
   * CONTROL RESISTANCE IN SYSTEM SERVER, CONTROL WITHOUT STOPPING ORIGINAL EVENT
   SS_SYSMEM[33] = .T.
   RETURN

FUNCTION SS_SFOFF()  && SET FLAG OFF
   * CONTROL RESISTANCE IN SYSTEM SERVER, CONTROL AND STOP ORIGINAL EVENT
   SS_SYSMEM[33] = .F.
   RETURN

FUNCTION SS_SYSWORK()
   DO CASE
      CASE SS_SERTYPE()= 1  && PROCEDURE SERVER
           SS_SASER(SS_SERNAME(),1,SS_SEREIGEN())  && ADD SERVER TO ACTIVE NETWORK
      CASE SS_SERTYPE()= 2  && CLASS SERVER
           SS_SASER(SS_SERNAME(),2,SS_SEREIGEN())  && ADD SERVER TO ACTIVE NETWORK
      CASE SS_SERTYPE()= 3  && MASTER SERVER
           SS_SASER(SS_SERNAME(),3,SS_SEREIGEN())  && ADD SERVER TO ACTIVE NETWORK
      CASE SS_SERTYPE()= 4  && SLAVE SERVER
           SS_SASER(SS_SERNAME(),4,SS_SEREIGEN())  && ADD SERVER TO ACTIVE NETWORK
        CASE SS_SERTYPE()= 5  && NETWORK SERVER
           SS_SNEWNET()
           IF .NOT. Empty(SS_SYSMEM[34])   && Data/Super Data Server
               myas = SS_AS
               R = SS_SYSMEM[34]
               DO &R             && call data server
               SS_AS = myas
               SS_SYSMEM[34] = ""
           ENDIF
           IF .NOT. Empty(SS_SYSMEM[35])   && Code/Super Code Server
               myas = SS_AS
               R = SS_SYSMEM[35]
               DO &R             && call data server
               SS_AS = myas
               SS_SYSMEM[35] = ""
           ENDIF
           IF .NOT. Empty(SS_SYSMEM[36])   && Veto/Super Veto Server
               myas = SS_AS
               R = SS_SYSMEM[36]
               DO &R             && call data server
               SS_AS = myas
               SS_SYSMEM[36] = ""
           ENDIF
           IF .NOT. Empty(SS_SYSMEM[37])   && DoubleS Server
               myas = SS_AS
               R = SS_SYSMEM[37]
               DO &R             && call data server
               SS_AS = myas
               SS_SYSMEM[37] = ""
           ENDIF
      CASE SS_SERTYPE()= 6  && CONNECTION SERVER
      CASE SS_SERTYPE()= 7  && DATA SERVER
         SS_SRDATA() && RECORD DATA SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 8  && CODE SERVER
         SS_SRCODE() && RECORD CODE SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 9  && VETO SERVER
         SS_SRVETO() && RECORD DATA SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 10 && SUPER DATA SERVER
         SS_SRDATA() && RECORD SUPER DATA SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 11 && SUPER CODE SERVER
         SS_SRCODE() && RECORD SUPER CODE SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 12 && SUPRR VETO SERVER
         SS_SRVETO() && RECORD SUPER VETO SERVER RESISTANCES
         RETURN .F.
      CASE SS_SERTYPE()= 13 && DOUBLES (SUPER SERVER) SERVER
         SS_SRDATA()
         SS_SRCODE()
         SS_SRVETO()
         RETURN .F.
   ENDCASE
   RETURN .T.

FUNCTION SS_SETDS(P1) && SET DATA SERVER
   SS_SYSMEM[34] = P1
   RETURN

FUNCTION SS_SETCS(P1) && SET CODE SERVER
   SS_SYSMEM[35] = P1
   RETURN

FUNCTION SS_SETVS(P1) && SET VETO SERVER
   SS_SYSMEM[36] = P1
   RETURN

FUNCTION SS_SETSS(P1) && SET DoubleS SERVER
   SS_SYSMEM[37] = P1
   RETURN
*--------------------------------------------------------------*
* veto system level 3
* #command declare server <x1> address <x2> port <x3> => ss_dsap(<(X1)>,<(X2)>,<(X3)>)
* #command start bind => SS_STARTBIND()
* #command end bind => SS_ENDBIND()
*--------------------------------------------------------------*

FUNCTION SS_L3STARTUP() && INIT OF VETO SYSTEM LEVEL 3
SS_IPCLI()
   RETURN

FUNCTION SS_DSAP(P1,P2,P3)  && DECLARE SERVER ADDRESS PORT
   AAdd(SS_SAP,{P1,P2,P3})
   RETURN

FUNCTION SS_SSAP(P1) && SELECT SERVER - ADDRESS - PORT
   LOCAL X
   IF .NOT. Len(SS_SAP) = 0
      FOR X = 1 TO Len(SS_SAP)
         IF Upper(AllTrim(SS_SAP[X][1])) == Upper(AllTrim(P1))
                  OOP VSL3.SOCKET_ADDRESS = SS_SAP[X][2]
                  OOP VSL3.SOCKET_PORT = SS_SAP[X][3]
                  RETURN .T. && USE VETO SYSTEM LEVEL 3
         ENDIF
      NEXT
   ENDIF
   RETURN .F. && USE VETO SYSTEM LEVEL 2

FUNCTION SS_STARTBIND()
   	LOCAL X,X2,T_ADDRESS,T_PORT,S_NAME
	IF SS_GVSL() = 4
			S_NAME = SS_SERVERS[SS_AS][1]
			IF .NOT. Len(SS_SAP) = 0
      				FOR X2 = 1 TO Len(SS_SAP)
         				IF Upper(AllTrim(SS_SAP[X2][1])) == Upper(AllTrim(S_NAME))
                  				T_ADDRESS = SS_SAP[X2][2]
                  				T_PORT = SS_SAP[X2][3]
                				SS_VSL4BIND(T_PORT)
						EXIT
         				ENDIF
      				NEXT
			ENDIF	

		RETURN
	ENDIF

   IF SS_SSAP(SS_SERVERS[SS_AS][1])
      OOP VSL3.LISTEN()
      SS_SYSMEM[44] = .T. && VSL3 ACTIVE
   ENDIF
   RETURN

FUNCTION SS_ENDBIND()
   RETURN

FUNCTION SS_L3CON() && VETO SYSTEM LEVEL 3 CONNECT
   OOP VSL3.CONNECT()
   RETURN

FUNCTION SS_L3DIS() && VETO SYSTEM LEVEL 3 DISCONNECT
   OOP VSL3.CLOSE()
   RETURN

FUNCTION SS_L3SD(P1) && VETO SYSTEM LEVEL 3 SEND DATA
   SS_SYSMEM[43] = .F. && VSL3 ENABLED
   OOP VSL3.DATASTR = P1
   OOP VSL3.SENDDATA()
   SS_SYSMEM[43] = .T. && VSL3 ENABLED
  RETURN

FUNCTION SS_L3SV(P1) && VETO SYSTEM LEVEL 3 SEND VETO
   SS_SYSMEM[43] = .F. && VSL3 ENABLED
   OOP VSL3.DATASTR = P1
   OOP VSL3.SENDVETO()
   SS_SYSMEM[43] = .T. && VSL3 ENABLED
   RETURN

*----------------------------------------*
* IPCLI/IPSER
*----------------------------------------*
FUNCTION SS_IPCLI()
*-------------------------------------------------------------------------------------*
* This file generated by DoubleS Framework 1.0
* True DoubleS Compiler -> Standard DoubleS Syntax & Statements
* Date : 05/21/07
* Time : 00:50:52
*-------------------------------------------------------------------------------------*
   DataUnit:
         Atom DATA
            Shell K
               SubShell S
               SubShell P
                  Var MYCON
               SubShell D
               SubShell F
            Shell L
               SubShell S
                  Var Socket_Address
                  Var Socket_Port
                  Var DATASTR
                  Var Feedback
                  Var MultiSend
   CodeUnit:
      Main resistance CIRCUITS\SYS_C1\B1\STARTUP
         Circuit        SYS_C1
            Branch     B1
            ParallelTo 0
               Resistance CONNECT
               Resistance SENDDATA
               Resistance DATAARRIVAL
               Resistance CLOSE
               Resistance STARTUP
               Resistance SENDVETO
               Resistance NEW_CONNECTION
               Resistance LISTEN
            Branch     B2
            ParallelTo 0
               Resistance MAIN
   VetoUnit:
      Veto DATA_ARRIVAL
            Type General
            Circuit    SYS_C1
            Branch     B1
            Resistance DATAARRIVAL
      Channel MY_INPUT_CHANNEL
            Type     Input Channel
            Atom     DATA
            Shell    K
            SubShell S
      Channel MY_OUTPUT_CHANNEL
            Type     Output Channel
            Atom     DATA
            Shell    K
            SubShell D
      Connection MYCON
            Type          New Client (New Object )
            InputChannel  MY_INPUT_CHANNEL
            OutputChannel MY_OUTPUT_CHANNEL
            Atom          DATA
            Shell         K
            SubShell      P
            Electron      MYCON
            Server        TCPIP


Resistance muzSLC1() address Code Unit : Circuits\SYS_C1\B1\CONNECT

Resistance muzSLC2() address Code Unit : Circuits\SYS_C1\B1\SENDDATA

Resistance muzSLC3() address Code Unit : Circuits\SYS_C1\B1\DATAARRIVAL

Resistance muzSLC4() address Code Unit : Circuits\SYS_C1\B1\CLOSE

Resistance muzSLC5() address Code Unit : Circuits\SYS_C1\B1\STARTUP

Resistance muzSLC7() address Code Unit : Circuits\SYS_C1\B1\SENDVETO

Resistance muzSLC8() address Code Unit : Circuits\SYS_C1\B1\NEW_CONNECTION

Resistance muzSLC9() address Code Unit : Circuits\SYS_C1\B2\MAIN

Resistance muzSLC10() address Code Unit : Circuits\SYS_C1\B1\LISTEN


CALL RESISTANCE Circuits\SYS_C1\B2\MAIN

RETURN

* Resistance Code Unit : Circuits\SYS_C1\B1\CONNECT
Resistance muzSLC1() code
IF CALLED_AS_METHOD
SELECT CLIENT CONNECTION DATA:K:P:MYCON
CON_CONNECT
CON_SENDDATA ((OOP VSL3.SOCKET_ADDRESS))
CON_SENDDATA ((OOP VSL3.SOCKET_PORT))
CON_SENDVETO CONNECT
ENDIF

End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\SENDDATA
Resistance muzSLC2() code
IF CALLED_AS_METHOD
CON_SENDDATA ((OOP VSL3.DATASTR))
CON_SENDVETO SENDDATA
ENDIF


End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\DATAARRIVAL
Resistance muzSLC3() code

End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\CLOSE
Resistance muzSLC4() code
CON_SENDVETO CLOSE
CON_DISCONNECT
End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\STARTUP
Resistance muzSLC5() code
LOCAL MYPATH
MYPATH = MEMOREAD("VETOPATH.TXT")
MYPATH = ALLTRIM(MYPATH)
Set veto system level 2
Set veto system path (MYPATH)

End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\SENDVETO
Resistance muzSLC7() code
IF CALLED_AS_METHOD
CON_SENDDATA ((OOP VSL3.DATASTR))
CON_SENDVETO SENDVETO
ENDIF
End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\NEW_CONNECTION
Resistance muzSLC8() code
if REQUEST_TYPE_CONNECTION = .T.
?  "THERE ARE CONNECTION"
 accept connection
endif
End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B2\MAIN
Resistance muzSLC9() code
CREATE CLASS VSL3 DATA "DATA:L:S" METHODS "SYS_C1\B1"
OOP VSL3.STARTUP()
OOP VSL3.FEEDBACK = .F.
OOP VSL3.MULTISEND = .F.
End Of Resistance

* Resistance Code Unit : Circuits\SYS_C1\B1\LISTEN
Resistance MUZSLC10() code
SELECT CLIENT CONNECTION DATA:K:P:MYCON
CON_CONNECT
CON_SENDDATA ((OOP VSL3.SOCKET_ADDRESS))
CON_SENDDATA ((OOP VSL3.SOCKET_PORT))
CON_SENDVETO BIND
IF (OOP VSL3.MULTISEND) = .T.
   CON_SENDVETO MULTISENDON
ELSE
   CON_SENDVETO MULTISENDOFF
ENDIF
IF (OOP VSL3.FEEDBACK) = .T.
   CON_SENDVETO FEEDBACKON
ELSE
   CON_SENDVETO FEEDBACKOFF
ENDIF

End Of Resistance
*-------------------------------------------------------------------*

*--------------------------*
* Runtime Error Tracking
*--------------------------*
* SS_ESRES   = {} && RESISTANCES TRACKING 
* SS_ESGOAL = {} && GOALS TRACKING
* SS_ESSTEP = {} && STEPS TRACKING
* SS_ESFILE = {} && FILE TRACKING 

FUNCTION SS_ESARES(P1,P2) && ADD RESISTANCE
AADD(SS_ESRES,{P1,P2}) && RESISTANCE, START LINE OF RESISTANCE
RETURN LEN(SS_ESRES)

FUNCTION SS_ESAGOAL(P1,P2) && ADD GOAL
AADD(SS_ESGOAL,{P1,P2}) && RESISTANCE IT'S OVERRIDE, GOAL
RETURN LEN(SS_ESGOAL)

FUNCTION SS_ESASTEP(P1,P2,P3,P4) && ADD STEP
AADD(SS_ESSTEP,{P1,P2,P3,P4}) && RESISTANCE, STEP , START LINE , END LINE
RETURN LEN(SS_ESSTEP)


