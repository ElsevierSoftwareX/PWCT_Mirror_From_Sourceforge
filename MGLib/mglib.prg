*-------------------------------------------------*
* Programming Without Coding Technology (PWCT)
* URL : http://doublesvsoop.sourceforge.net
* Author : Mahmoud Fayed (msfclipper@yahoo.com)
* MGLib (Mahmoud Graphics Library) , Dec. 2008
* Simple Interface to some of Allegro power
* Allegro is a game programming library
*-------------------------------------------------*
 
FUNCTION MGL_COLORRGB(P1)
LOCAL X
X = MGL_COLORRGB2(P1[1],P1[2],P1[3])
RETURN X

FUNCTION MGL_WAITKEY()
	LOCAL I
	i = 0
	do while i = 0
 	       i = mgl_inkey()
	enddo
RETURN I

FUNCTION MGL_GETMOUSEL()
	IF MGL_GETML() = 1
		RETURN .T.
	ENDIF
RETURN .F.

FUNCTION MGL_GETMOUSER()
	IF MGL_GETMR() = 1
		RETURN .T.
	ENDIF
RETURN .F.

FUNCTION MGL_SHIFTS(P1)
	IF MGL_CHECKSHIFTS(P1) = 1
		RETURN .T.
	ENDIF
RETURN .F.

FUNCTION MGL_GETCKEY(P1)
LOCAL MYRET

mymap = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q',;
         'R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7',;
	 '8','9',"0_PAD","1_PAD","2_PAD","3_PAD","4_PAD","5_PAD","6_PAD",;
  	 "7_PAD","8_PAD","9_PAD","F1","F2","F3","F4","F5","F6","F7","F8",;
 	 "F9","F10","F11","F12","ESC","TILDE","MINUS","EQUALS","BACKSPACE",;
	 "TAB","OPENBRACE","CLOSEBRACE","ENTER","COLON","QUOTE","BACKSLASH",;
	 "BACKSLASH2","COMMA","STOP","SLASH","SPACE","INSERT","DEL","HOME",;
	 "END","PGUP","PGDN","LEFT","RIGHT","UP","DOWN","SLASH_PAD","ASTERISK",;
	 "MINUS_PAD","PLUS_PAD","DEL_PAD","ENTER_PAD","PRTSCR","PAUSE","ABNT_C1",;
         "YEN","KANA","CONVERT","NOCONVERT","AT","CIRCUMFLEX","COLON2","KANJI",;
	 "MODIFIERS","LSHIFT","RSHIFT","LCONTROL","RCONTROL","ALT","ALTGR",;
	 "LWIN","RWIN","MENU","SCRLOCK","NUMLOCK","CAPSLOCK","MAX"}
IF P1 = 0
	MYRET = ''
ELSE
	MYRET = MYMAP[P1]
ENDIF

RETURN MYRET

#PRAGMA BEGINDUMP

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"

#include <errno.h>
#include <limits.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <time.h>

#include "allegro.h"

#include "allegttf\allegttf.h"

#include "allegttf\freetype/ttapi.c"
#include "allegttf\freetype/ttcache.c"
#include "allegttf\freetype/ttcalc.c"
#include "allegttf\freetype/ttcmap.c"
#include "allegttf\freetype/ttfile.c"
#include "allegttf\freetype/ttgload.c"
#include "allegttf\freetype/ttinterp.c"
#include "allegttf\freetype/ttload.c"
#include "allegttf\freetype/ttmemory.c"
#include "allegttf\freetype/ttmutex.c"
#include "allegttf\freetype/ttobjs.c"
#include "allegttf\freetype/ttraster.c"
#include "allegttf\freetype/ttextend.c"

#include "allegttf\aaload1.c"
#include "allegttf\aaload2.c"
#include "allegttf\aaload3.c"
#include "allegttf\aaload4.c"
#include "allegttf\aamap.c"
#include "allegttf\aasetup.c"
#include "allegttf\aaclip.c"
#include "allegttf\aatext.c"
#include "allegttf\aatext8.c"
#include "allegttf\aatext1x.c"
#include "allegttf\aatext15.c"
#include "allegttf\aatext16.c"
#include "allegttf\aatext24.c"
#include "allegttf\aatext32.c"
         
int mgl_bank;
BITMAP *the_bank;

int mgl_trans;

typedef struct SYSMOUSE
{
  int mousex;
  int mousey;
  int leftbtn;
  int rightbtn;
} SYSMOUSE;

SYSMOUSE the_mouse;

FONT *the_font;

HB_FUNC( MGL_POLLMOUSE )
{ 
     int pos;
     the_mouse.leftbtn  = 0 ;
     the_mouse.rightbtn = 0 ;
     the_mouse.mousex   = 0 ;
     the_mouse.mousey   = 0 ;
     poll_mouse();
     if (mouse_b & 1)
     {
         the_mouse.leftbtn = 1 ;
     }
     if (!(mouse_b & 2))
     {
         the_mouse.rightbtn = 1;
     }
     pos = mouse_pos;
     the_mouse.mousex = pos >> 16;
     the_mouse.mousey = pos & 0x0000ffff;
}

HB_FUNC( MGL_TRANSON )
{ 
     mgl_trans = 1;
     hb_retni(1);
}

HB_FUNC( MGL_TRANSOFF )
{ 
     mgl_trans = 0;
     hb_retni(1);
}

HB_FUNC( MGL_GETMOUSEX )
{ 
     hb_retni(the_mouse.mousex);
}

HB_FUNC( MGL_GETMOUSEY )
{ 
     hb_retni(the_mouse.mousey);
}

HB_FUNC( MGL_GETML )
{ 
     hb_retni(the_mouse.leftbtn);
}

HB_FUNC( MGL_GETMR )
{ 
     hb_retni(the_mouse.rightbtn);
}

HB_FUNC( MGL_SHOWMOUSE )
{
      mgl_showmouse();
}

HB_FUNC( MGL_HIDEMOUSE )
{
      mgl_hidemouse();
}

HB_FUNC( MGL_RESTOREMOUSE )
{
      mgl_restoremouse();
}


HB_FUNC( MGL_CHECKSHIFTS )
{
   int x,myret ;
   PHB_ITEM p1    = hb_param( 1, HB_IT_NUMERIC ); 
   x = hb_itemGetNI(p1) ;
   myret = 0;
   switch(x)
   {
		case 1:
		 if (key_shifts & KB_SHIFT_FLAG) 
			myret = 1;
		break;
		case 2:
		 if (key_shifts & KB_CTRL_FLAG) 
			myret = 1;
		break;
		case 3:
		 if (key_shifts & KB_ALT_FLAG) 
			myret = 1;
		break;
		case 4:
		 if (key_shifts & KB_LWIN_FLAG) 
			myret = 1;
		break;
		case 5:
		 if (key_shifts & KB_RWIN_FLAG) 
			myret = 1;
		break;
		case 6:
		 if (key_shifts & KB_MENU_FLAG) 
			myret = 1;
		break;
   }
   hb_retni( myret );
}


HB_FUNC( MGL_INKEY )
{
   int x ;
   x = mgl_inkey();
   x = x >> 8 ;
   hb_retni( x );
}

HB_FUNC( MGL_START )
{
   int myret ;
   PHB_ITEM p1    = hb_param( 1, HB_IT_NUMERIC ); 
   PHB_ITEM p2    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM p3   = hb_param( 3, HB_IT_NUMERIC ); 

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( p1 == NULL
        || ( usParam > 1 && p2 == NULL )
        || ( usParam > 2 && p3 == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_START", 5,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }

   myret = mgl_startalleg(hb_itemGetNI(p1),hb_itemGetNI(p2),hb_itemGetNI(p3));

   hb_retni( myret );

}

HB_FUNC( MGL_RECT )
{
   BITMAP *local_bank;
  /* get parameters */
   PHB_ITEM pRow    = hb_param( 1, HB_IT_NUMERIC ); 
   PHB_ITEM pCol    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pRow2   = hb_param( 3, HB_IT_NUMERIC ); 
   PHB_ITEM pCol2   = hb_param( 4, HB_IT_NUMERIC ); 
   PHB_ITEM pColor  = hb_param( 5, HB_IT_NUMERIC ); 

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pRow == NULL
        || ( usParam > 1 && pCol == NULL )
        || ( usParam > 2 && pRow2 == NULL )
        || ( usParam > 3 && pCol2 == NULL )
        || ( usParam > 4 && pColor == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_RECT", 5,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }

  if (mgl_bank == 0)
  {
          rect(screen,hb_itemGetNI(pCol),hb_itemGetNI(pRow),
          hb_itemGetNI(pCol2),hb_itemGetNI(pRow2),hb_itemGetNI(pColor));
  }
  else
  {
        local_bank = the_bank;
          rect(local_bank,hb_itemGetNI(pCol),hb_itemGetNI(pRow),
          hb_itemGetNI(pCol2),hb_itemGetNI(pRow2),hb_itemGetNI(pColor));
         
  }

  /* Feedback logic */
   hb_retni( 1 );
}

HB_FUNC( MGL_RECTFILL )
{
   BITMAP *local_bank;
  /* get parameters */
   PHB_ITEM pRow    = hb_param( 1, HB_IT_NUMERIC ); 
   PHB_ITEM pCol    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pRow2   = hb_param( 3, HB_IT_NUMERIC ); 
   PHB_ITEM pCol2   = hb_param( 4, HB_IT_NUMERIC ); 
   PHB_ITEM pColor  = hb_param( 5, HB_IT_NUMERIC ); 

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pRow == NULL
        || ( usParam > 1 && pCol == NULL )
        || ( usParam > 2 && pRow2 == NULL )
        || ( usParam > 3 && pCol2 == NULL )
        || ( usParam > 4 && pColor == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_RECTFILL", 5,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }

  if (mgl_bank == 0)
  {
          rectfill(screen,hb_itemGetNI(pCol),hb_itemGetNI(pRow),
          hb_itemGetNI(pCol2),hb_itemGetNI(pRow2),hb_itemGetNI(pColor));
  }
  else
  {
        local_bank = the_bank;
          rectfill(local_bank,hb_itemGetNI(pCol),hb_itemGetNI(pRow),
          hb_itemGetNI(pCol2),hb_itemGetNI(pRow2),hb_itemGetNI(pColor));
         
  }

  /* Feedback logic */
   hb_retni( 1 );
}


HB_FUNC( MGL_DRAWBMP )
{
  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_STRING );
   PHB_ITEM pRow    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pCol    = hb_param( 3, HB_IT_NUMERIC ); 
  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL || ( usParam > 1 && pRow == NULL ) || ( usParam > 2 && pCol == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_DRAWBMP", 3,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   mgl_drawbmp(hb_itemGetC(pName),hb_itemGetNI(pCol),hb_itemGetNI(pRow));
  /* Feedback logic */
   hb_retni( 1 );
}

HB_FUNC( MGL_LOADBMP )
{
   BITMAP *the_image ;
   PALETTE the_palette;

  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_STRING );
  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL )
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_LOADBMP", 1,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }

   /* read in the bitmap file */
   the_image = load_bitmap(hb_itemGetC(pName), the_palette);

   if (!the_image) {
      set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
      allegro_message("Error reading bitmap file '%s'\n", hb_itemGetC(pName) );
      return 1;
   }

  /* Feedback logic */
   hb_retptr(the_image);
}

HB_FUNC( MGL_LOADFONT )
{

  FONT *thefont;
  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_STRING );
   PHB_ITEM pSize   = hb_param( 2, HB_IT_NUMERIC );
   PHB_ITEM pLang   = hb_param( 3, HB_IT_NUMERIC );
  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL || ( usParam > 1 && pSize == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_LOADFONT", 1,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }

      //  thefont = load_ttf_font_ex2(hb_itemGetC(pName), hb_itemGetNI(pSize),
      //  hb_itemGetNI(pSize),0x00,0x2000, ALLEGTTF_NOSMOOTH);
    if ( hb_itemGetNI(pLang) == 1 )
    {
        thefont = load_ttf_font_ex2(hb_itemGetC(pName), hb_itemGetNI(pSize),
        hb_itemGetNI(pSize),0x00,0x700, ALLEGTTF_NOSMOOTH);
    }
    else
    {
        thefont = load_ttf_font_ex2(hb_itemGetC(pName), hb_itemGetNI(pSize),
        hb_itemGetNI(pSize),0xFE00,0xFFFF, ALLEGTTF_NOSMOOTH);
    }

	if (thefont == NULL) {
		return 1;
	}

  /* Feedback logic */
   hb_retptr(thefont);
}

HB_FUNC( MGL_SETFONT )
{
   FONT *local_font;
  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_POINTER );

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL )
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_SETFONT", 1,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   /* read in the bitmap file */
   local_font = hb_itemGetPtr(pName) ;
   the_font = local_font;
  /* Feedback logic */
   hb_retni( 1 );
}



HB_FUNC( MGL_SHOWBMP )
{
   BITMAP *the_image ;
   PALETTE the_palette;
   BITMAP *local_bank;
   int myx,myy ;
  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_POINTER );
   PHB_ITEM pY    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pX    = hb_param( 3, HB_IT_NUMERIC ); 

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL )
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_SHOWBMP", 1,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   myx = hb_itemGetNI(pX) ;
   myy = hb_itemGetNI(pY)       ;
   /* read in the bitmap file */
   the_image = hb_itemGetPtr(pName) ;

   if (!the_image) {
      set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
      allegro_message("Error reading bitmap file '%s'\n", hb_itemGetC(pName) );
      return 1;
   }

   /* select the bitmap palette */
   set_palette(the_palette); 

   /* blit the image onto the screen */
   /*  blit(the_image, screen, myx, myy, (SCREEN_W-the_image->w)/2, (SCREEN_H-the_image->h)/2, the_image->w, the_image->h); */
  if (mgl_trans == 0)
  {
          if (mgl_bank == 0)
          {
          blit(the_image, screen, 0, 0, myx, myy, the_image->w, the_image->h);
          }
          else
          {
        local_bank = the_bank;
         blit(the_image, local_bank, 0, 0, myx, myy, the_image->w, the_image->h);
          }
  }
  else
  {
          if (mgl_bank == 0)
          {
       		   masked_blit(the_image, screen, 0, 0, myx, myy, the_image->w, the_image->h);
          }
          else
          {
                local_bank = the_bank;
       		masked_blit(the_image, local_bank, 0, 0, myx, myy, the_image->w, the_image->h);
          }
  }

  /* Feedback logic */
   hb_retni( 1 );
}


HB_FUNC( MGL_COLORRGB2 )
{
  int x;
  /* get parameters */
   PHB_ITEM pR   = hb_param( 1, HB_IT_NUMERIC );
   PHB_ITEM pG    = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pB    = hb_param( 3, HB_IT_NUMERIC ); 
  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pR == NULL || ( usParam > 1 && pB == NULL ) || ( usParam > 2 && pG == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_DRAWBMP", 3,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   x = makecol(hb_itemGetNI(pR),hb_itemGetNI(pG),hb_itemGetNI(pB));
  /* Feedback logic */
   hb_retni( x );
}


HB_FUNC( MGL_PLAYWAV )
{
  /* get parameters */
   PHB_ITEM pName   = hb_param( 1, HB_IT_STRING );
  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pName == NULL )
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_PLAYWAV", 1,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   mgl_playsound(hb_itemGetC(pName));
  /* Feedback logic */
   hb_retni( 1 );

}

HB_FUNC( MGL_DRAWTEXT )
{
  /* get parameters */
   PHB_ITEM pString    = hb_param( 1, HB_IT_STRING );
   PHB_ITEM pRow       = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pCol       = hb_param( 3, HB_IT_NUMERIC );
   PHB_ITEM pColor     = hb_param( 4, HB_IT_NUMERIC );
   PHB_ITEM pBackColor = hb_param( 5, HB_IT_NUMERIC );

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pString == NULL
        || ( usParam > 1 && pRow == NULL )
        || ( usParam > 2 && pCol == NULL )
        || ( usParam > 3 && pColor == NULL )
        || ( usParam > 4 && pBackColor == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_DRAWBMP", 5,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
  mgl_drawtext(hb_itemGetC(pString),hb_itemGetNI(pRow),hb_itemGetNI(pCol)
               ,hb_itemGetNI(pColor),hb_itemGetNI(pBackColor));
  /* Feedback logic */
   hb_retni( 1 );
}

HB_FUNC( MGL_DRAWTEXT2 )
{
  /* get parameters */
   PHB_ITEM pString    = hb_param( 1, HB_IT_STRING );
   PHB_ITEM pRow       = hb_param( 2, HB_IT_NUMERIC ); 
   PHB_ITEM pCol       = hb_param( 3, HB_IT_NUMERIC );
   PHB_ITEM pColor     = hb_param( 4, HB_IT_NUMERIC );
   PHB_ITEM pBackColor = hb_param( 5, HB_IT_NUMERIC );

  /* check parameters */
   USHORT usParam = hb_pcount();
   if ( pString == NULL
        || ( usParam > 1 && pRow == NULL )
        || ( usParam > 2 && pCol == NULL )
        || ( usParam > 3 && pColor == NULL )
        || ( usParam > 4 && pBackColor == NULL ))
   {
      hb_errRT_BASE_SubstR( EG_ARG, 0, NULL,
         "MGL_DRAWTEXT2", 5,
         hb_paramError( 1 ), hb_paramError( 2 ) );
      return;
   }
   
  mgl_drawtext2(hb_itemGetC(pString),hb_itemGetNI(pRow),hb_itemGetNI(pCol)
               ,hb_itemGetNI(pColor),hb_itemGetNI(pBackColor));
  /* Feedback logic */
   hb_retni( 1 );
}

int mgl_drawtext(char *pstring,int prow,int pcol,int pcolor,int pbcolor)
{
   if (mgl_trans == 0)
   {
	   textout_ex(screen,font,pstring,prow,pcol,pcolor,pbcolor);
   }
   else 
   {
	   textout_ex(screen,font,pstring,prow,pcol,pcolor,-1);
   }
   return 0 ; 
}

int mgl_drawtext2(char *pstring,int prow,int pcol,int pcolor,int pbcolor)
{
        FONT *localfont;
        localfont = the_font ;
        text_mode(-1);
	antialias_init(NULL);
	if (mgl_trans == 0)
	{

        textout_ex(screen, localfont, pstring, pcol, prow, pcolor,pbcolor);

	}
	else
	{

        textout_ex(screen, localfont, pstring, pcol, prow, pcolor,-1);

	}
        antialias_exit();
        return 0 ; 
}

HB_FUNC( MGL_STOP )
{
      set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
}

HB_FUNC( MGL_STARTBANKING )
{
   mgl_startbanking();
}

HB_FUNC( MGL_ENDBANKING )
{
   mgl_endbanking();
}

int mgl_startbanking()
{
  if (mgl_bank == 0 )
  {
     blit(screen,the_bank,0,0,0,0,SCREEN_W,SCREEN_H);
  }
  mgl_bank++ ;
}

int mgl_endbanking()
{
  if (mgl_bank != 0)
  {
          mgl_bank-- ;
  }
  if (mgl_bank == 0)
  {
     blit(the_bank,screen,0,0,0,0,SCREEN_W,SCREEN_H);
  }
}


int mgl_startalleg(int myp1, int myp2, int myp3)
{
   BITMAP *local_bank;
   mgl_bank = 0 ; /* no banking */

   mgl_trans = 0 ; /* no transparency in bitmaps */

 //  set_uformat( U_UTF8 );
   allegro_init();

   install_keyboard();
   install_mouse();

   poll_mouse();

   set_color_depth(myp1);

   if (set_gfx_mode(GFX_AUTODETECT_FULLSCREEN, myp2, myp3, 0, 0) != 0) {
     // set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
     // allegro_message("Unable to set any graphic mode\n%s\n", allegro_error);
      return 1;
   }

   set_color_conversion(COLORCONV_TOTAL);

   /* install a digital sound driver */
   if (install_sound(DIGI_AUTODETECT, MIDI_NONE, 0) != 0) {
      //allegro_message("Error initialising sound system\n%s\n", allegro_error);
      return 2;
   }
   local_bank = create_bitmap(SCREEN_W,SCREEN_H);
   clear_bitmap(local_bank);
   the_bank = local_bank;
   return 0;
}

int mgl_playsound(char *filename)
{
   SAMPLE *the_sample;
   int pan = 128;
   int pitch = 1000;

   /* read in the WAV file */
   the_sample = load_sample(filename);
   if (!the_sample) {
      allegro_message("Error reading WAV file '%s'\n", "");
      return 1;
   }

   play_sample(the_sample, 255, pan, pitch, TRUE);

}

int mgl_drawbmp(char *argv[],int myx,int myy)
{
   BITMAP *the_image;
   BITMAP *local_bank;

   PALETTE the_palette;

   /* read in the bitmap file */
   the_image = load_bitmap(argv, the_palette);

   if (!the_image) {
      set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
      allegro_message("Error reading bitmap file '%s'\n", argv);
      return 1;
   }

   /* select the bitmap palette */
   set_palette(the_palette); 

   /* blit the image onto the screen */
   /*  blit(the_image, screen, myx, myy, (SCREEN_W-the_image->w)/2, (SCREEN_H-the_image->h)/2, the_image->w, the_image->h); */
  if (mgl_trans == 0)
  {
          if (mgl_bank == 0)
          {
          blit(the_image, screen, 0, 0, myx, myy, the_image->w, the_image->h);
          }
          else
          {
        local_bank = the_bank;
         blit(the_image, local_bank, 0, 0, myx, myy, the_image->w, the_image->h);
          }
  }
  else
  {
          if (mgl_bank == 0)
          {
          masked_blit(the_image, screen, 0, 0, myx, myy, the_image->w, the_image->h);
          }
          else
          {
        local_bank = the_bank;
         masked_blit(the_image, local_bank, 0, 0, myx, myy, the_image->w, the_image->h);
          }

  }
   /* destroy the bitmap */
   destroy_bitmap(the_image);
   return 0;
}




int mgl_showmouse()
{
   PALETTE the_palette;
   //BITMAP *the_mouse;
   //the_mouse = load_bitmap("mahmouse.bmp", the_palette);
   /*set_mouse_sprite(the_mouse);*/
   show_mouse(screen);
}

int mgl_hidemouse()
{
   scare_mouse();
}

int mgl_restoremouse()
{
   unscare_mouse();
}

int mgl_wait()
{
   while ( !keypressed() )
   {
   }
}

int mgl_inkey()
{
  int x;
  x = 0 ;
  if ( keypressed() )
  {
     x = readkey();
  }
  return x;
}

#PRAGMA ENDDUMP