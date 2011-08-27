DEFINE CLASS TR_TEXTBOX AS TextBox
lAutoName = .f.
tAutoName = ""
PROCEDURE LOSTFOCUS
APPLICATION.ActiveForm.REFRESH
RETURN
PROCEDURE rightclick
DEFINE POPUP mencontex SHORTCUT RELATIVE FROM MROW(),MCOL()
DEFINE BAR 1 OF mencontex PROMPT  sysmsg(1508)
DEFINE BAR 2 OF mencontex PROMPT  sysmsg(1509)
DEFINE BAR 3 OF mencontex PROMPT  sysmsg(1576)
DEFINE BAR 4 OF mencontex PROMPT  "Select Object"
ON SELECTION BAR 1 OF mencontex _selec=1
ON SELECTION BAR 2 OF mencontex _selec=2
ON SELECTION BAR 3 OF mencontex _selec=3
ON SELECTION BAR 4 OF mencontex _selec=4
_selec=0
ACTIVATE POPUP mencontex
DO case
   CASE _selec = 1 
   mycolor = GETCOLOR()
   myg = INT(BITand(mycolor,RGB(0,255,0))/256) 
   myr = INT(BITand(mycolor,RGB(255,0,0))) 
   myb = INT(BITand(mycolor,RGB(0,0,255))/(256*256)) 
   this.value = "{"+ALLTRIM(STR(myr)) + ;
   "," + ALLTRIM(STR(myg)) + "," + ALLTRIM(STR(myb)) + "}"
   CASE _selec = 2
   myfont = GETFONT()
   IF .not. EMPTY(myfont)
      x = AT(",",myfont)
      this.value = '"' + SUBSTR(myfont,1,x-1) + '"'
   ENDIF
   CASE _selec = 3
   myfile = GETFILE()
      IF .not. EMPTY(myfile)
         this.value = '"' + myfile + '"'
  	 ENDIF
    CASE _selec = 4
    	DO FORM selobj.scx
ENDCASE
RETURN
ENDDEFINE
