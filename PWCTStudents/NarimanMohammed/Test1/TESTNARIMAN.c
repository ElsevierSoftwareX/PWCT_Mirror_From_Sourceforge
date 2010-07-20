/*
 * xHarbour build 1.2.1 Intl. (SimpLex) (Rev. 6633)
 * Generated C source code from <TESTNARIMAN.prg>
 * Command: TESTNARIMAN.prg -n -ic:\ssbuild\xharbour\include;c:\SSBUILD\sslib\include;c:\ssbuild\minigui\include; 
 * Created: 2010.07.19 07:22:37 (Borland C++ 5.5.1 (32 bit))
 */

#include "hbvmpub.h"
#include "hbpcode.h"
#include "hbinit.h"

#define __PRG_SOURCE__ "TESTNARIMAN.prg"

HB_FUNC( MAIN );
HB_FUNC( STARTSERVER );
HB_FUNC( WIN32EVENTS );
HB_FUNC( R_TESTNARIMAN_15SPEED1 );
HB_FUNC( B1 );
HB_FUNC( BB2 );
HB_FUNC( BB3 );
HB_FUNC_INIT( INIT_TESTNARIMAN );

/* Skipped DEFERRED call to: 'DIVERTCONSTRUCTORCALL' */
HB_FUNC_EXTERN( __MVPUBLIC );
HB_FUNC_EXTERN( SS_NEWSERVER );
HB_FUNC_EXTERN( SS_NEWCIRCUIT );
HB_FUNC_EXTERN( SS_NEWBRANCH );
HB_FUNC_EXTERN( SS_NRESIS );
HB_FUNC_EXTERN( SS_NEWR );
HB_FUNC_EXTERN( SS_ADDRES );
HB_FUNC_EXTERN( SS_CALLR );
HB_FUNC_EXTERN( SS_FIREON );
HB_FUNC_EXTERN( PROCESSMESSAGES );
HB_FUNC_EXTERN( _ISWINDOWDEFINED );
HB_FUNC_EXTERN( _DEFINEWINDOW );
HB_FUNC_EXTERN( _DEFINEOWNERBUTTON );
HB_FUNC_EXTERN( BBB3 );
HB_FUNC_EXTERN( _ENDWINDOW );
HB_FUNC_EXTERN( _ACTIVATEWINDOW );
HB_FUNC_EXTERN( MSGBOX );
HB_FUNC_EXTERN( SS_ON );

#undef HB_PRG_PCODE_VER
#define HB_PRG_PCODE_VER 10

#include "hbapi.h"

HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_TESTNARIMAN )
{ "DIVERTCONSTRUCTORCALL", {HB_FS_PUBLIC | HB_FS_DEFERRED}, {NULL}, NULL },
{ "MAIN", {HB_FS_PUBLIC | HB_FS_LOCAL | HB_FS_FIRST}, {HB_FUNCNAME( MAIN )}, &ModuleFakeDyn },
{ "TRUE", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "FALSE", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "__MVPUBLIC", {HB_FS_PUBLIC}, {HB_FUNCNAME( __MVPUBLIC )}, NULL },
{ "SS_NEWSERVER", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_NEWSERVER )}, NULL },
{ "SP1", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP2", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP3", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP4", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP5", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP6", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP7", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SP8", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SS_FLAG3", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SS_FLAG", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SS_FLAG2", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "SS_NEWCIRCUIT", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_NEWCIRCUIT )}, NULL },
{ "SS_NEWBRANCH", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_NEWBRANCH )}, NULL },
{ "SS_NRESIS", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_NRESIS )}, NULL },
{ "SS_NEWR", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_NEWR )}, NULL },
{ "SS_ADDRES", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_ADDRES )}, NULL },
{ "SS_CALLR", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_CALLR )}, NULL },
{ "STARTSERVER", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( STARTSERVER )}, &ModuleFakeDyn },
{ "SS_FIREON", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_FIREON )}, NULL },
{ "WIN32EVENTS", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( WIN32EVENTS )}, &ModuleFakeDyn },
{ "PROCESSMESSAGES", {HB_FS_PUBLIC}, {HB_FUNCNAME( PROCESSMESSAGES )}, NULL },
{ "R_TESTNARIMAN_15SPEED1", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( R_TESTNARIMAN_15SPEED1 )}, &ModuleFakeDyn },
{ "_ISWINDOWDEFINED", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ISWINDOWDEFINED )}, NULL },
{ "_DEFINEWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEWINDOW )}, NULL },
{ "_DEFINEOWNERBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEOWNERBUTTON )}, NULL },
{ "B1", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( B1 )}, &ModuleFakeDyn },
{ "BB2", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( BB2 )}, &ModuleFakeDyn },
{ "BBB3", {HB_FS_PUBLIC}, {HB_FUNCNAME( BBB3 )}, NULL },
{ "_ENDWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ENDWINDOW )}, NULL },
{ "_ACTIVATEWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ACTIVATEWINDOW )}, NULL },
{ "MSGBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( MSGBOX )}, NULL },
{ "MYOUT", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "BB3", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( BB3 )}, &ModuleFakeDyn },
{ "INIT_TESTNARIMAN$", {HB_FS_INIT | HB_FS_LOCAL}, {HB_INIT_FUNCNAME( INIT_TESTNARIMAN )}, &ModuleFakeDyn },
{ "SS_ON", {HB_FS_PUBLIC}, {HB_FUNCNAME( SS_ON )}, NULL }
HB_INIT_SYMBOLS_END( hb_vm_SymbolInit_TESTNARIMAN )

#if defined(__ICL)
   #pragma warning(disable:177)
#endif

#if defined( HB_PRAGMA_STARTUP )
   #pragma startup hb_vm_SymbolInit_TESTNARIMAN
#elif defined( HB_DATASEG_STARTUP )
   #define HB_DATASEG_BODY    HB_DATASEG_FUNC( hb_vm_SymbolInit_TESTNARIMAN )
   #include "hbiniseg.h"
#endif

HB_FUNC( MAIN )
{
   static const BYTE pcode[] =
   {
	HB_P_FRAME, 0, 8,	/* locals, params */
/* 00003 */ HB_P_BASELINE, 18, 0,	/* 18 */
	HB_P_PUSHSYMNEAR, 4,	/* __MVPUBLIC */
	HB_P_PUSHNIL,
	HB_P_PUSHSYMNEAR, 2,	/* TRUE */
	HB_P_PUSHSYMNEAR, 3,	/* FALSE */
	HB_P_DOSHORT, 2,
/* 00015 */ HB_P_LINEOFFSET, 1,	/* 19 */
	HB_P_TRUE,
	HB_P_POPVARIABLE, 2, 0,	/* TRUE */
/* 00021 */ HB_P_LINEOFFSET, 2,	/* 20 */
	HB_P_FALSE,
	HB_P_POPVARIABLE, 3, 0,	/* FALSE */
/* 00027 */ HB_P_LINEOFFSET, 3,	/* 21 */
	HB_P_PUSHSYMNEAR, 5,	/* SS_NEWSERVER */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 8,	/* 8 */
	'S', 'e', 'r', 'v', 'e', 'r', '1', 0, 
	HB_P_PUSHSTRSHORT, 6,	/* 6 */
	'S', 'l', 'a', 'v', 'e', 0, 
	HB_P_PUSHSTRSHORT, 4,	/* 4 */
	'0', '0', '0', 0, 
	HB_P_DOSHORT, 3,
	HB_P_PARAMETER, 6, 0, 1,	/* SP1 */
	HB_P_PARAMETER, 7, 0, 2,	/* SP2 */
	HB_P_PARAMETER, 8, 0, 3,	/* SP3 */
	HB_P_PARAMETER, 9, 0, 4,	/* SP4 */
	HB_P_PARAMETER, 10, 0, 5,	/* SP5 */
	HB_P_PARAMETER, 11, 0, 6,	/* SP6 */
	HB_P_PARAMETER, 12, 0, 7,	/* SP7 */
	HB_P_PARAMETER, 13, 0, 8,	/* SP8 */
/* 00090 */ HB_P_LINEOFFSET, 7,	/* 25 */
	HB_P_ONE,
	HB_P_POPVARIABLE, 14, 0,	/* SS_FLAG3 */
	HB_P_ONE,
	HB_P_POPVARIABLE, 15, 0,	/* SS_FLAG */
	HB_P_ONE,
	HB_P_POPVARIABLE, 16, 0,	/* SS_FLAG2 */
/* 00104 */ HB_P_LINEOFFSET, 8,	/* 26 */
	HB_P_PUSHBYTE, 4,	/* 4 */
	HB_P_POPVARIABLE, 15, 0,	/* SS_FLAG */
	HB_P_PUSHBYTE, 3,	/* 3 */
	HB_P_POPVARIABLE, 16, 0,	/* SS_FLAG2 */
	HB_P_PUSHBYTE, 2,	/* 2 */
	HB_P_POPVARIABLE, 14, 0,	/* SS_FLAG3 */
/* 00121 */ HB_P_LINEOFFSET, 9,	/* 27 */
	HB_P_PUSHSYMNEAR, 17,	/* SS_NEWCIRCUIT */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'M', 'a', 'i', 'n', 0, 
	HB_P_DOSHORT, 1,
/* 00135 */ HB_P_LINEOFFSET, 10,	/* 28 */
	HB_P_PUSHSYMNEAR, 18,	/* SS_NEWBRANCH */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'M', 'a', 'i', 'n', 0, 
	HB_P_DOSHORT, 1,
/* 00149 */ HB_P_LINEOFFSET, 11,	/* 29 */
	HB_P_PUSHSYMNEAR, 19,	/* SS_NRESIS */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'M', 'a', 'i', 'n', 0, 
	HB_P_DOSHORT, 1,
/* 00163 */ HB_P_LINEOFFSET, 12,	/* 30 */
	HB_P_PUSHBYTE, 3,	/* 3 */
	HB_P_POPVARIABLE, 14, 0,	/* SS_FLAG3 */
/* 00170 */ HB_P_LINEOFFSET, 15,	/* 33 */
	HB_P_PUSHSYMNEAR, 20,	/* SS_NEWR */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 14,	/* 14 */
	'W', 'I', 'N', '3', '2', 'E', 'V', 'E', 'N', 'T', 'S', '(', ')', 0, 
	HB_P_PUSHSTRSHORT, 12,	/* 12 */
	'W', 'I', 'N', '3', '2', 'E', 'V', 'E', 'N', 'T', 'S', 0, 
	HB_P_DOSHORT, 2,
/* 00207 */ HB_P_LINEOFFSET, 17,	/* 35 */
	HB_P_PUSHSYMNEAR, 21,	/* SS_ADDRES */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 12,	/* 12 */
	'W', 'I', 'N', '3', '2', 'E', 'V', 'E', 'N', 'T', 'S', 0, 
	HB_P_DOSHORT, 1,
/* 00228 */ HB_P_LINEOFFSET, 20,	/* 38 */
	HB_P_PUSHSYMNEAR, 20,	/* SS_NEWR */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 25,	/* 25 */
	'R', '_', 'T', 'E', 'S', 'T', 'N', 'A', 'R', 'I', 'M', 'A', 'N', '_', '1', '5', 's', 'p', 'e', 'e', 'd', '1', '(', ')', 0, 
	HB_P_PUSHSTRSHORT, 24,	/* 24 */
	'C', 'i', 'r', 'c', 'u', 'i', 't', 's', 92, 'M', 'a', 'i', 'n', 92, 'M', 'a', 'i', 'n', 92, 'M', 'a', 'i', 'n', 0, 
	HB_P_DOSHORT, 2,
/* 00288 */ HB_P_LINEOFFSET, 23,	/* 41 */
	HB_P_PUSHSYMNEAR, 22,	/* SS_CALLR */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 24,	/* 24 */
	'C', 'i', 'r', 'c', 'u', 'i', 't', 's', 92, 'M', 'a', 'i', 'n', 92, 'M', 'a', 'i', 'n', 92, 'M', 'a', 'i', 'n', 0, 
	HB_P_DOSHORT, 1,
/* 00321 */ HB_P_LINEOFFSET, 24,	/* 42 */
	HB_P_ENDPROC
/* 00324 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( STARTSERVER )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 45, 0,	/* 45 */
	HB_P_PUSHSYMNEAR, 24,	/* SS_FIREON */
	HB_P_PUSHNIL,
	HB_P_DOSHORT, 0,
/* 00008 */ HB_P_LINEOFFSET, 1,	/* 46 */
	HB_P_ENDPROC
/* 00011 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( WIN32EVENTS )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 49, 0,	/* 49 */
	HB_P_PUSHSYMNEAR, 26,	/* PROCESSMESSAGES */
	HB_P_PUSHNIL,
	HB_P_DOSHORT, 0,
/* 00008 */ HB_P_LINEOFFSET, 1,	/* 50 */
	HB_P_ENDPROC
/* 00011 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( R_TESTNARIMAN_15SPEED1 )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 54, 0,	/* 54 */
	HB_P_PUSHSYMNEAR, 28,	/* _ISWINDOWDEFINED */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'w', 'i', 'n', '1', 0, 
	HB_P_FUNCTIONSHORT, 1,
	HB_P_JUMPTRUE, 136, 1,	/* 392 (abs: 00407) */
/* 00018 */ HB_P_LINEOFFSET, 8,	/* 62 */
	HB_P_PUSHSYMNEAR, 29,	/* _DEFINEWINDOW */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'w', 'i', 'n', '1', 0, 
	HB_P_PUSHSTRSHORT, 13,	/* 13 */
	'W', 'i', 'n', 'd', 'o', 'w', ' ', 'T', 'i', 't', 'l', 'e', 0, 
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHINT, 244, 1,	/* 500 */
	HB_P_PUSHINT, 144, 1,	/* 400 */
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_ARRAYGEN, 2, 0,	/* 2 */
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_ARRAYGEN, 2, 0,	/* 2 */
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHINT, 236, 0,	/* 236 */
	HB_P_PUSHINT, 233, 0,	/* 233 */
	HB_P_PUSHINT, 216, 0,	/* 216 */
	HB_P_ARRAYGEN, 3, 0,	/* 3 */
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_TRUE,
	HB_P_PUSHSTRSHORT, 9,	/* 9 */
	'P', 'W', 'C', 'T', 'I', 'C', 'O', 'N', 0, 
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_DOSHORT, 53,
/* 00133 */ HB_P_LINEOFFSET, 15,	/* 69 */
	HB_P_PUSHSYMNEAR, 30,	/* _DEFINEOWNERBUTTON */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'b', 't', 'n', '1', 0, 
	HB_P_PUSHNIL,
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHBLOCK, 13, 0,	/* 13 */
	1, 0,	/* number of local parameters (1) */
	0, 0,	/* number of local variables (0) */
	HB_P_PUSHSYMNEAR, 31,	/* B1 */
	HB_P_PUSHNIL,
	HB_P_FUNCTIONSHORT, 0,
	HB_P_ENDBLOCK,
	HB_P_PUSHBYTE, 100,	/* 100 */
	HB_P_PUSHBYTE, 30,	/* 30 */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 1,	/* 1 */
	0, 
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 6,	/* 6 */
	'a', 'r', 'i', 'a', 'l', 0, 
	HB_P_PUSHBYTE, 9,	/* 9 */
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_DOSHORT, 33,
/* 00216 */ HB_P_LINEOFFSET, 21,	/* 75 */
	HB_P_PUSHSYMNEAR, 30,	/* _DEFINEOWNERBUTTON */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'b', 't', 'n', '2', 0, 
	HB_P_PUSHNIL,
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHBLOCK, 13, 0,	/* 13 */
	1, 0,	/* number of local parameters (1) */
	0, 0,	/* number of local variables (0) */
	HB_P_PUSHSYMNEAR, 32,	/* BB2 */
	HB_P_PUSHNIL,
	HB_P_FUNCTIONSHORT, 0,
	HB_P_ENDBLOCK,
	HB_P_PUSHBYTE, 100,	/* 100 */
	HB_P_PUSHBYTE, 30,	/* 30 */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 1,	/* 1 */
	0, 
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 6,	/* 6 */
	'a', 'r', 'i', 'a', 'l', 0, 
	HB_P_PUSHBYTE, 9,	/* 9 */
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_DOSHORT, 33,
/* 00299 */ HB_P_LINEOFFSET, 27,	/* 81 */
	HB_P_PUSHSYMNEAR, 30,	/* _DEFINEOWNERBUTTON */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'b', 't', 'n', '3', 0, 
	HB_P_PUSHNIL,
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHBYTE, 10,	/* 10 */
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHBLOCK, 13, 0,	/* 13 */
	1, 0,	/* number of local parameters (1) */
	0, 0,	/* number of local variables (0) */
	HB_P_PUSHSYMNEAR, 33,	/* BBB3 */
	HB_P_PUSHNIL,
	HB_P_FUNCTIONSHORT, 0,
	HB_P_ENDBLOCK,
	HB_P_PUSHBYTE, 100,	/* 100 */
	HB_P_PUSHBYTE, 30,	/* 30 */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 1,	/* 1 */
	0, 
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 6,	/* 6 */
	'a', 'r', 'i', 'a', 'l', 0, 
	HB_P_PUSHBYTE, 9,	/* 9 */
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_PUSHNIL,
	HB_P_PUSHNIL,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_FALSE,
	HB_P_DOSHORT, 33,
/* 00382 */ HB_P_LINEOFFSET, 28,	/* 82 */
	HB_P_PUSHSYMNEAR, 34,	/* _ENDWINDOW */
	HB_P_PUSHNIL,
	HB_P_DOSHORT, 0,
/* 00389 */ HB_P_LINEOFFSET, 30,	/* 84 */
	HB_P_PUSHSYMNEAR, 35,	/* _ACTIVATEWINDOW */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 5,	/* 5 */
	'w', 'i', 'n', '1', 0, 
	HB_P_ARRAYGEN, 1, 0,	/* 1 */
	HB_P_FALSE,
	HB_P_DOSHORT, 2,
	HB_P_ENDPROC
/* 00408 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( B1 )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 88, 0,	/* 88 */
	HB_P_PUSHSYMNEAR, 36,	/* MSGBOX */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_FUNCTIONSHORT, 2,
	HB_P_POPVARIABLE, 37, 0,	/* MYOUT */
/* 00035 */ HB_P_LINEOFFSET, 1,	/* 89 */
	HB_P_PUSHNIL,
	HB_P_RETVALUE,
	HB_P_ENDPROC
/* 00040 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( BB2 )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 91, 0,	/* 91 */
	HB_P_PUSHSYMNEAR, 36,	/* MSGBOX */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_FUNCTIONSHORT, 2,
	HB_P_POPVARIABLE, 37, 0,	/* MYOUT */
/* 00035 */ HB_P_LINEOFFSET, 1,	/* 92 */
	HB_P_PUSHNIL,
	HB_P_RETVALUE,
	HB_P_ENDPROC
/* 00040 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC( BB3 )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 94, 0,	/* 94 */
	HB_P_PUSHSYMNEAR, 36,	/* MSGBOX */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_PUSHSTRSHORT, 10,	/* 10 */
	'T', 'e', 'x', 't', ' ', 'H', 'e', 'r', 'e', 0, 
	HB_P_FUNCTIONSHORT, 2,
	HB_P_POPVARIABLE, 37, 0,	/* MYOUT */
/* 00035 */ HB_P_LINEOFFSET, 1,	/* 95 */
	HB_P_PUSHNIL,
	HB_P_RETVALUE,
	HB_P_ENDPROC
/* 00040 */
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC_INIT( INIT_TESTNARIMAN )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_BASELINE, 101, 0,	/* 101 */
	HB_P_PUSHSYMNEAR, 40,	/* SS_ON */
	HB_P_PUSHNIL,
	HB_P_DOSHORT, 0,
/* 00008 */ HB_P_LINEOFFSET, 1,	/* 102 */
	HB_P_ENDPROC
/* 00011 */
   };

   hb_vmExecute( pcode, symbols );
}

