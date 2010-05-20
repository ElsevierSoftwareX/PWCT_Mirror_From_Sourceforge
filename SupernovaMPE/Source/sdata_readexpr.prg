#include "nova.ch"

Proc RT_ReadExpr( P1,P2 )
Local x,mymax,myret,expstack,expchar,exptoken,expmode,expstackend,v1,v2,mymax2,x2
mymax  = LEN(RT_ExprParse)
IF mymax > 0
   FOR x = 1 TO mymax STEP 1
      IF alltrim(RT_ExprParse[x][1]) == alltrim(p1)
         IF P2 = "LeftSide"
            RT_LS_DATA := {}
            mymax2  = LEN(RT_ExprParse[x][2])
            IF mymax2 > 0
               FOR x2 = 1 TO mymax2 STEP 1
                  v1 := "" + RT_ExprParse[X][2][x2][1]
                  v2 := "" + RT_ExprParse[X][2][x2][2]
                  AADD( RT_LS_DATA , {v1,v2})
               Next
            ENDIF
         ENDIF
         IF P2 = "RightSide"
            RT_RS_DATA := {}
            mymax2  = LEN(RT_ExprParse[x][2])
            IF mymax2 > 0
               FOR x2 = 1 TO mymax2 STEP 1
                  v1 := "" + RT_ExprParse[X][2][x2][1]
                  v2 := "" + RT_ExprParse[X][2][x2][2]
                  AADD( RT_RS_DATA , {v1,v2})
               Next
            ENDIF
         ENDIF
         Return 0
      ENDIF
   Next
ENDIF
mymax  = LEN(p1)
myret := "NULL"
expchar := ""
expstack := "S"
exptoken := ""
expmode := "normal"
expstackend := "S"
IF P2 = "LeftSide"
   RT_LS_DATA := {}
ENDIF
IF P2 = "RightSide"
   RT_RS_DATA := {}
ENDIF
FOR x = 1 TO mymax STEP 1
   expchar = SUBSTR(p1,x,1)
   IF expmode = "normal"
      expchar = ALLTRIM ( expchar )
      expchar = LOWER ( expchar )
      IF ExpChar = "(" .or. ExpChar = "|"
         expmode := "ListenToValue"
         exptoken := ""
         expstack := expstack + expchar
         expstackend := expchar
         Loop
      ENDIF
      IF ExpChar = "+" .or. ExpChar = "-" .or. ExpChar = "*" .or. ExpChar = "x" .or. ExpChar = "X" .or. ExpChar = "/" .or. ExpChar = "%"
         exptoken := ""
         expstack := expstack + expchar
         expstackend := Expchar
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_MathOperator,ExpChar})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_MathOperator,ExpChar})
         ENDIF
         Loop
      ENDIF
      IF ExpChar = "["
         expmode := "ListenToVariable"
         exptoken := ""
         expstack := expstack + "["
         expstackend := "["
         Loop
      ENDIF
      exptoken := exptoken + expchar
	exptoken = SNLang_ArabicExpToken(exptoken)
      IF lower(alltrim(ExpToken)) = "and" .or. lower(alltrim(ExpToken)) = "or"  .or. lower(alltrim(ExpToken)) = "not"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      Tempvar := lower(alltrim(ExpToken))
      IF tempvar = "isequal" .or. tempvar = "==" .or. tempvar = "!="
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = ">" .or. tempvar = "<"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_LogicalOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "=" .and. ( expstackend = "<" .or. expstackend = ">" )
         expstack := expstack + exptoken
         expstackend := expstackend + lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            ADEL( RT_LS_DATA , LEN(RT_LS_DATA))
            ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
            AADD( RT_LS_DATA , {SN_LogicalOperator,Expstackend})
         ENDIF
         IF P2 = "RightSide"
            ADEL( RT_RS_DATA , LEN(RT_RS_DATA))
            ASIZE( RT_RS_DATA , LEN( RT_RS_DATA ) - 1 )
            AADD( RT_RS_DATA , {SN_LogicalOperator,ExpStackEnd})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "len" .or. tempvar = "upper" .or. tempvar = "lower" .or. tempvar = "replicate"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "left" .or. tempvar = "right" .or. tempvar = "inside"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "alltrim" .or. tempvar = "rtrim" .or. tempvar = "ltrim"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "substr" .or. tempvar = "at" .or. tempvar = "transform"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_StringOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "thedate" .or. tempvar = "thetime" .or. tempvar = "theseconds" .or. tempvar = "theday" .or. tempvar = "themonth"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_DateOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_DateOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = "dofunction" .or. tempvar = "getvariable"
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_MacroOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_MacroOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
      IF tempvar = SN_Slash
         expstack := expstack + exptoken
         expstackend := lower(alltrim(Exptoken))
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_MergeOperator,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_MergeOperator,ExpToken})
         ENDIF
         exptoken := ""
         Loop
      ENDIF
   ENDIF
   IF expmode = "ListenToVariable"
      IF ExpChar = "]"
         IF expstackend = "["
            expstack := expstack + "]"
            expstackend := "S"
            IF P2 = "LeftSide"
               AADD( RT_LS_DATA , {SN_Variable,alltrim(lower(ExpToken))})
            ENDIF
            IF P2 = "RightSide"
               AADD( RT_RS_DATA , {SN_Variable,alltrim(lower(ExpToken))})
            ENDIF
            ExpToken := ""
            expmode := "normal"
            Loop
         ENDIF
      ENDIF
      exptoken := exptoken + expchar
      Loop
   ENDIF
   IF expmode = "ListenToValue"
      IF ( expstackend = "(" .and. expchar = ")" ) .or. (ExpStackEnd = "|" .and. ExpChar = "|" )
         expstack := expstack + ")"
         expstackend := "S"
         IF P2 = "LeftSide"
            AADD( RT_LS_DATA , {SN_Value,ExpToken})
         ENDIF
         IF P2 = "RightSide"
            AADD( RT_RS_DATA , {SN_Value,ExpToken})
         ENDIF
         ExpToken := ""
         expmode := "normal"
         Loop
      ENDIF
      exptoken := exptoken + expchar
      Loop
   ENDIF
Next
IF expmode = "ListenToVariable"
   DO RTE_AddError WITH 7
   AADD( RTE_Message , " Expression : " + p1)
   DO RTE_Check
ENDIF
IF expmode = "ListenToValue"
   DO RTE_AddError WITH 8
   AADD( RTE_Message , " Expression : " + p1)
   DO RTE_Check
ENDIF
IF .not. empty(alltrim(exptoken))
   DO RTE_AddError WITH 9
   AADD( RTE_Message , " Expression : " + p1)
   AADD( RTE_Message , " What is ? : " + exptoken)
   DO RTE_Check
ENDIF
AADD( RT_ExprParse , {p1,{}})
mymax  = LEN(RT_ExprParse)
IF P2 = "LeftSide"
   mymax2  = LEN(RT_LS_DATA)
   IF mymax2 > 0
      FOR x = 1 TO Mymax2 STEP 1
         v1 := "" + RT_LS_DATA[X][1]
         v2 := "" + RT_LS_DATA[X][2]
         AADD( RT_ExprParse[mymax][2] , {v1,v2})
      Next
   ENDIF
ENDIF
IF P2 = "RightSide"
   mymax2  = LEN(RT_RS_DATA)
   IF mymax2 > 0
      FOR x = 1 TO Mymax2 STEP 1
         v1 := "" + RT_RS_DATA[X][1]
         v2 := "" + RT_RS_DATA[X][2]
         AADD( RT_ExprParse[mymax][2] , {v1,v2})
      Next
   ENDIF
ENDIF
Return Nil


