Proc MYDETAILS

	local x

	* mytokens
	* [1] class P V C I A
	* [2] TEXT
	* [3] TRANSFORMATION   0 no transform   1 english   2 arabic
	* [4] TEXT LENGTH 

	wordclass = 0

	AADD( myTokens , {"P","i",1})
	AADD( myTokens , {"P","you",1})
	AADD( myTokens , {"P","please",1})
	AADD( myTokens , {"P","contains",1})
	AADD( myTokens , {"P","create",1})

	SNLang_ArabicTokensP()


	wordclass = 0
	
	AADD( myTokens , {"V","want",wordclass})
	AADD( myTokens , {"V","see",1})
	AADD( myTokens , {"V","is",wordclass})
	AADD( myTokens , {"V","maximize",wordclass})
	AADD( myTokens , {"V","minimize",wordclass})
	AADD( myTokens , {"V","centre",wordclass})
	AADD( myTokens , {"V","show",wordclass})
	AADD( myTokens , {"V","hide",wordclass})
	AADD( myTokens , {"V","close",wordclass})
	AADD( myTokens , {"V","additem",wordclass})
	AADD( myTokens , {"V",":",wordclass})
	AADD( myTokens , {"V","equal",1})
	AADD( myTokens , {"V","=",1})
	AADD( myTokens , {"V","to",wordclass})
	AADD( myTokens , {"V","from",wordclass})
	AADD( myTokens , {"V","use",wordclass})
	AADD( myTokens , {"V","addfrom",wordclass})
	AADD( myTokens , {"V",":=",wordclass})
	AADD( myTokens , {"V","memorytofile",wordclass})
	AADD( myTokens , {"V","filetomemory",wordclass})
	AADD( myTokens , {"V","dllfunctiontocallwithparameters",wordclass})
	AADD( myTokens , {"V","comobjecttocreateoftype",wordclass})
	AADD( myTokens , {"V","compropertytoset",wordclass})
	AADD( myTokens , {"V","compropertytoget",wordclass})
	AADD( myTokens , {"V","commethodtocallwithparameters",wordclass})
	
	SNLang_ArabicTokensV()
	
	wordclass = 0
	
	AADD( myTokens , {"C","window",wordclass})
	AADD( myTokens , {"C","button",wordclass})
	AADD( myTokens , {"C","label",wordclass})
	AADD( myTokens , {"C","picture",wordclass})
	AADD( myTokens , {"C","textbox",wordclass})
	AADD( myTokens , {"C","editbox",wordclass})
	AADD( myTokens , {"C","listbox",wordclass})
	AADD( myTokens , {"C","combobox",wordclass})
	AADD( myTokens , {"C","checkbox",wordclass})
	AADD( myTokens , {"C","progressbar",wordclass})
	AADD( myTokens , {"C","datepicker",wordclass})
	AADD( myTokens , {"C","spinner",wordclass})
	AADD( myTokens , {"C","grid",wordclass})
	AADD( myTokens , {"C","browse",wordclass})
	AADD( myTokens , {"C","slider",wordclass})
	AADD( myTokens , {"C","treeview",wordclass})
	AADD( myTokens , {"C","tabs",wordclass})
	AADD( myTokens , {"C","tabpage",wordclass})
	AADD( myTokens , {"C","frame",wordclass})
	AADD( myTokens , {"C","hyperlink",wordclass})
	AADD( myTokens , {"C","statusbar",wordclass})
	AADD( myTokens , {"C","statusitem",wordclass})
	AADD( myTokens , {"C","statusdate",wordclass})
	AADD( myTokens , {"C","statusclock",wordclass})
	AADD( myTokens , {"C","statuskeyboard",wordclass})
	AADD( myTokens , {"C","menubar",wordclass})
	AADD( myTokens , {"C","menupopup",wordclass})
	AADD( myTokens , {"C",":",wordclass})
	AADD( myTokens , {"C","menuitem",wordclass})
	AADD( myTokens , {"C","application",wordclass})
	AADD( myTokens , {"C","counter",wordclass})
	
	SNLang_ArabicTokensC()

	wordclass = 0

	AADD( myTokens , {"A","title",wordclass})
	AADD( myTokens , {"A","backcolor",wordclass})
	AADD( myTokens , {"A","direction",wordclass})
	AADD( myTokens , {"A","top",wordclass})
	AADD( myTokens , {"A","left",wordclass})
	AADD( myTokens , {"A","width",wordclass})
	AADD( myTokens , {"A","height",wordclass})
	AADD( myTokens , {"A","name",wordclass})
	AADD( myTokens , {"A","fontname",wordclass})
	AADD( myTokens , {"A","fontsize",wordclass})
	AADD( myTokens , {"A","forecolor",wordclass})
	AADD( myTokens , {"A","fontbold",wordclass})
	AADD( myTokens , {"A","fontitalic",wordclass})
	AADD( myTokens , {"A","fontunderline",wordclass})
	AADD( myTokens , {"A","fontstrickout",wordclass})
	AADD( myTokens , {"A","picture",wordclass})
	AADD( myTokens , {"A","transparent",wordclass})
	AADD( myTokens , {"A","file",wordclass})
	AADD( myTokens , {"A","value",wordclass})
	AADD( myTokens , {"A","caption",wordclass})
	AADD( myTokens , {"A","must",wordclass})
	AADD( myTokens , {"A","rangeminimum",wordclass})
	AADD( myTokens , {"A","rangemaximum",wordclass})
	AADD( myTokens , {"A","address",wordclass})
	AADD( myTokens , {"A","note",wordclass})
	AADD( myTokens , {"A","start",wordclass})
	AADD( myTokens , {"A","end",wordclass})
	AADD( myTokens , {"A","step",wordclass})
	AADD( myTokens , {"A","parent",wordclass})
	AADD( myTokens , {"A","handle",wordclass})

	SNLang_ArabicTokensA()

	wordclass = 0
	
	AADD( myTokens , {"I","the",wordclass})
	AADD( myTokens , {"I","and",wordclass})
	AADD( myTokens , {"I","setwindowautoshowoff",wordclass})
	AADD( myTokens , {"I","setwindowautoshowon",wordclass})
	AADD( myTokens , {"I","instructionsare",wordclass})
	AADD( myTokens , {"I","endofinstructions",wordclass})
	AADD( myTokens , {"I","instructionsmustdone",wordclass})
	AADD( myTokens , {"I","windowselected",wordclass})
	AADD( myTokens , {"I","setlabeltransparenton",wordclass})
	AADD( myTokens , {"I","setlabeltransparentoff",wordclass})
	AADD( myTokens , {"I","buttonselected",wordclass})
	AADD( myTokens , {"I","labelselected",wordclass})
	AADD( myTokens , {"I","pictureselected",wordclass})
	AADD( myTokens , {"I","textboxselected",wordclass})
	AADD( myTokens , {"I","fileinstructionsmustdone",wordclass})
	AADD( myTokens , {"I","ok",wordclass})
	AADD( myTokens , {"I","store",wordclass})
	AADD( myTokens , {"I","get",wordclass})
	AADD( myTokens , {"I","dowindowsevents",wordclass})
	AADD( myTokens , {"I","listboxselected",wordclass})
	AADD( myTokens , {"I","editboxselected",wordclass})
	AADD( myTokens , {"I","comboboxselected",wordclass})
	AADD( myTokens , {"I","checkboxselected",wordclass})
	AADD( myTokens , {"I","progressbarselected",wordclass})
	AADD( myTokens , {"I","sliderselected",wordclass})
	AADD( myTokens , {"I","datepickerselected",wordclass})
	AADD( myTokens , {"I","spinnerselected",wordclass})
	AADD( myTokens , {"I","hyperlinkselected",wordclass})
	AADD( myTokens , {"I","dowhile",1})
	AADD( myTokens , {"I","doif",1})
	AADD( myTokens , {"I","endif",wordclass})
	AADD( myTokens , {"I","endwhile",wordclass})
	AADD( myTokens , {"I","dofunction",1})
	AADD( myTokens , {"I","doprocedure",1})
	AADD( myTokens , {"I","dofile",1})
	AADD( myTokens , {"I","endfunction",wordclass})
	AADD( myTokens , {"I","endprocedure",wordclass})
	AADD( myTokens , {"I","function",1})
	AADD( myTokens , {"I","procedure",1})
	AADD( myTokens , {"I","decimalplacesallowed",wordclass})
	AADD( myTokens , {"I","++",wordclass})
	AADD( myTokens , {"I","--",wordclass})
	AADD( myTokens , {"I","executefile",1})
	AADD( myTokens , {"I","executefrom",1})
	AADD( myTokens , {"I","setwindowresizeon",wordclass})
	AADD( myTokens , {"I","setwindowresizeoff",wordclass})
	AADD( myTokens , {"I","setwindowmodalon",wordclass})
	AADD( myTokens , {"I","setwindowmodaloff",wordclass})
	AADD( myTokens , {"I","filetoopen",wordclass})
	AADD( myTokens , {"I","filetosave",wordclass})
	AADD( myTokens , {"I","dlllibrarytouse",wordclass})
	AADD( myTokens , {"I","comobjecttouse",wordclass})
	AADD( myTokens , {"I","sethyperlinktransparenton",wordclass})
	AADD( myTokens , {"I","sethyperlinktransparentoff",wordclass})

	
	SNLang_ArabicTokensI()

	// add text length
	MYEND = LEN(MYTOKENS)
	FOR X = 1 TO MYEND
		aadd ( mytokens[x] , len ( mytokens[x][2] ) )
	NEXT
//------------------------------------------------------
	
	
	// determine class P V C A I  Start & End 
	
	Pfromdone = .f.
	Vfromdone = .f.
	Cfromdone = .f.
	Afromdone = .f.
	Ifromdone = .f.
		
	Ptodone = .f.
	Vtodone = .f.
	Ctodone = .f.
	Atodone = .f.
	Itodone = .f.

	tokenmap = {}
	aadd(tokenmap,{"P",0,0})
	aadd(tokenmap,{"V",0,0})
	aadd(tokenmap,{"C",0,0})
	aadd(tokenmap,{"A",0,0})
	aadd(tokenmap,{"I",0,0})

	for x = 1 to len(mytokens)
		if Pfromdone = .f.
			if mytokens[x][1] = "P"
				pfromdone = .T.
				TOKENMAP[1][2] := x
			endif
		endif
		if Vfromdone = .f.
			if mytokens[x][1] = "V"
				Vfromdone = .T.
				TOKENMAP[2][2] := x
			endif
		endif
		if Cfromdone = .f.
			if mytokens[x][1] = "C"
				Cfromdone = .T.
				TOKENMAP[3][2] := x
			endif
		endif
		if Afromdone = .f.
			if mytokens[x][1] = "A"
				Afromdone = .T.
				TOKENMAP[4][2] := x
			endif
		endif
		if Ifromdone = .f.
			if mytokens[x][1] = "I"
				Ifromdone = .T.
				TOKENMAP[5][2] := x
			endif
		endif

	next


	for x = len(mytokens) to 1 step -1
		if Ptodone = .f.
			if mytokens[x][1] = "P"
				ptodone = .T.
				TOKENMAP[1][3] := x
			endif
		endif
		if Vtodone = .f.
			if mytokens[x][1] = "V"
				Vtodone = .T.
				TOKENMAP[2][3] := x
			endif
		endif
		if Ctodone = .f.
			if mytokens[x][1] = "C"
				Ctodone = .T.
				TOKENMAP[3][3] := x
			endif
		endif
		if Atodone = .f.
			if mytokens[x][1] = "A"
				Atodone = .T.
				TOKENMAP[4][3] := x
			endif
		endif
		if Itodone = .f.
			if mytokens[x][1] = "I"
				Itodone = .T.
				TOKENMAP[5][3] := x
			endif
		endif
	next

	AADD( myRules , "SI")
	AADD( myRules , "SPVC")
	AADD( myRules , "SCAVD")
	AADD( myRules , "SDI")
	AADD( myRules , "SDVD")
	
	AADD( myTransform , {"SP","contains","SPV","iwant",0})
	AADD( myTransform , {"V","equal","V","is",0})
	AADD( myTransform , {"V","see","V","want",0})
	AADD( myTransform , {"V","=","V","equal",0})
	AADD( myTransform , {"SP","create","SPV","iwant",0})
	AADD( myTransform , {"SI","dowhile","SW","",0})
	AADD( myTransform , {"SWD","","SDI","dowhile",0})
	AADD( myTransform , {"SI","doif","SF","",0})
	AADD( myTransform , {"SFD","","SDI","doif",0})
	AADD( myTransform , {"SPD","i","SD","",1})
	AADD( myTransform , {"SPD","you","SD","",1})
	AADD( myTransform , {"SI","dofunction","SU","",0})
	AADD( myTransform , {"SI","doprocedure","SU","",0})
	AADD( myTransform , {"SI","function","ST","",0})
	AADD( myTransform , {"SI","procedure","ST","",0})
	AADD( myTransform , {"SI","dofile","SL","",0})
	AADD( myTransform , {"SUD","","SDI","instructionsmustdone",0})
	AADD( myTransform , {"STD","","SDI","instructionsare",0})
	AADD( myTransform , {"SLD","","SDI","fileinstructionsmustdone",0})
	AADD( myTransform , {"P","please","P","you",0})
	AADD( myTransform , {"SI","executefile","SR","",0})
	AADD( myTransform , {"SI","executefrom","SR2","",0})
	AADD( myTransform , {"SRD","","SDI","executefile",0})
	AADD( myTransform , {"SR2D","","SDI","executefrom",0})
	
	
	* myoperations
	* [1] RULE
	* [2] Command
	* [3] OPCODE
	* [4] EFFECT ON ERROR STATE
	* [5] COMMAND LENGTH (AUTO)
	
	AADD( myOperations , {"SI","the",0,0})
	AADD( myOperations , {"SI","and",0,0})
	AADD( myOperations , {"SI","store",0,0})
	AADD( myOperations , {"SI","get",0,0})
	AADD( myOperations , {"SCAVD",":note:",0,0})
	AADD( myOperations , {"SDI","instructionsare",-1000,5})
	AADD( myOperations , {"SI","endofinstructions",-1001,6})
	AADD( myOperations , {"SDI","instructionsmustdone",-1002,0})
	AADD( myOperations , {"SDI","fileinstructionsmustdone",-1003,0})
	AADD( myOperations , {"SI","ok",-1001,6})
	AADD( myOperations , {"SI","endfunction",-1001,6})
	AADD( myOperations , {"SI","endprocedure",-1001,6})
	AADD( myOperations , {"SPVC","iwantwindow",1,0})
	AADD( myOperations , {"SCAVD","windowtitleis",2,0})
	AADD( myOperations , {"SCAVD","windowdirectionis",3,0})
	AADD( myOperations , {"SCAVD","windowbackcoloris",4,0})
	AADD( myOperations , {"SCAVD","windowtopis",5,0})
	AADD( myOperations , {"SCAVD","windowleftis",6,0})
	AADD( myOperations , {"SCAVD","windowwidthis",7,0})
	AADD( myOperations , {"SCAVD","windowheightis",8,0})
	AADD( myOperations , {"SPVC","youmaximizewindow",9,0})
	AADD( myOperations , {"SPVC","youminimizewindow",10,0})
	AADD( myOperations , {"SPVC","youcentrewindow",11,0})
	AADD( myOperations , {"SPVC","youshowwindow",12,0})
	AADD( myOperations , {"SPVC","youhidewindow",13,0})
	AADD( myOperations , {"SPVC","youclosewindow",14,0})
	AADD( myOperations , {"SCAVD","windownameis",15,0})
	AADD( myOperations , {"SDI","windowselected",16,0})
	AADD( myOperations , {"SPVC","youcloseapplication",17,0})
	AADD( myOperations , {"SCAVD","windowtitlefrom",18,0})
	AADD( myOperations , {"SCAVD","windowtitleto",19,0})
	AADD( myOperations , {"SCAVD","windowparentis",20,0})
	AADD( myOperations , {"SCAVD","applicationtitleis",21,0})
	AADD( myOperations , {"SI","setwindowautoshowon",22,0})
	AADD( myOperations , {"SI","setwindowautoshowoff",23,0})
	AADD( myOperations , {"SI","setwindowresizeon",24,0})
	AADD( myOperations , {"SI","setwindowresizeoff",25,0})
	AADD( myOperations , {"SI","setwindowmodalon",26,0})
	AADD( myOperations , {"SI","setwindowmodaloff",27,0})
	AADD( myOperations , {"SCAVD","windowhandleto",28,0})
	AADD( myOperations , {"SCAVD","windowtopto",29,0})
	AADD( myOperations , {"SCAVD","windowleftto",30,0})
	AADD( myOperations , {"SCAVD","windowwidthto",31,0})
	AADD( myOperations , {"SCAVD","windowheightto",32,0})
	AADD( myOperations , {"SCAVD","windowtopfrom",33,0})
	AADD( myOperations , {"SCAVD","windowleftfrom",34,0})
	AADD( myOperations , {"SCAVD","windowwidthfrom",35,0})
	AADD( myOperations , {"SCAVD","windowheightfrom",36,0})
	AADD( myOperations , {"SPVC","iwantbutton",50,0})
	AADD( myOperations , {"SCAVD","buttoncaptionis",51,0})
	AADD( myOperations , {"SCAVD","buttontopis",52,0})
	AADD( myOperations , {"SCAVD","buttonleftis",53,0})
	AADD( myOperations , {"SCAVD","buttonwidthis",54,0})
	AADD( myOperations , {"SCAVD","buttonheightis",55,0})
	AADD( myOperations , {"SCAVD","buttonnameis",56,0})
	AADD( myOperations , {"SCAVD","buttonfontnameis",57,0})
	AADD( myOperations , {"SCAVD","buttonfontsizeis",58,0})
	AADD( myOperations , {"SCAVD","buttonforecoloris",59,0})
	AADD( myOperations , {"SCAVD","buttonbackcoloris",60,0})
	AADD( myOperations , {"SCAVD","buttonfontboldis",61,0})
	AADD( myOperations , {"SCAVD","buttonfontitalicis",62,0})
	AADD( myOperations , {"SCAVD","buttonfontunderlineis",63,0})
	AADD( myOperations , {"SCAVD","buttonfontstrickoutis",64,0})
	AADD( myOperations , {"SCAVD","buttonpictureis",65,0})
	AADD( myOperations , {"SDI","buttonselected",66,0})
	AADD( myOperations , {"SCAVD","buttoncaptionfrom",67,0})
	AADD( myOperations , {"SCAVD","buttoncaptionto",68,0})
	AADD( myOperations , {"SCAVD","buttontopto",69,0})
	AADD( myOperations , {"SCAVD","buttonleftto",70,0})
	AADD( myOperations , {"SCAVD","buttonwidthto",71,0})
	AADD( myOperations , {"SCAVD","buttonheightto",72,0})
	AADD( myOperations , {"SCAVD","buttontopfrom",73,0})
	AADD( myOperations , {"SCAVD","buttonleftfrom",74,0})
	AADD( myOperations , {"SCAVD","buttonwidthfrom",75,0})
	AADD( myOperations , {"SCAVD","buttonheightfrom",76,0})
	AADD( myOperations , {"SPVC","iwantlabel",100,0})
	AADD( myOperations , {"SCAVD","labelcaptionis",101,0})
	AADD( myOperations , {"SCAVD","labeltopis",102,0})
	AADD( myOperations , {"SCAVD","labelleftis",103,0})
	AADD( myOperations , {"SCAVD","labelwidthis",104,0})
	AADD( myOperations , {"SCAVD","labelheightis",105,0})
	AADD( myOperations , {"SCAVD","labelnameis",106,0})
	AADD( myOperations , {"SCAVD","labelfontnameis",107,0})
	AADD( myOperations , {"SCAVD","labelfontsizeis",108,0})
	AADD( myOperations , {"SCAVD","labelforecoloris",109,0})
	AADD( myOperations , {"SCAVD","labelbackcoloris",110,0})
	AADD( myOperations , {"SCAVD","labelfontboldis",111,0})
	AADD( myOperations , {"SCAVD","labelfontitalicis",112,0})
	AADD( myOperations , {"SCAVD","labelfontunderlineis",113,0})
	AADD( myOperations , {"SCAVD","labelfontstrickoutis",114,0})
	AADD( myOperations , {"SI","setlabeltransparenton",115,0})
	AADD( myOperations , {"SI","setlabeltransparentoff",116,0})
	AADD( myOperations , {"SDI","labelselected",117,0})
	AADD( myOperations , {"SCAVD","labelcaptionfrom",118,0})
	AADD( myOperations , {"SCAVD","labelcaptionto",119,0})
	AADD( myOperations , {"SCAVD","labeltopto",120,0})
	AADD( myOperations , {"SCAVD","labelleftto",121,0})
	AADD( myOperations , {"SCAVD","labelwidthto",122,0})
	AADD( myOperations , {"SCAVD","labelheightto",123,0})
	AADD( myOperations , {"SCAVD","labeltopfrom",124,0})
	AADD( myOperations , {"SCAVD","labelleftfrom",125,0})
	AADD( myOperations , {"SCAVD","labelwidthfrom",126,0})
	AADD( myOperations , {"SCAVD","labelheightfrom",127,0})
	AADD( myOperations , {"SPVC","iwantlistbox",300,0})
	AADD( myOperations , {"SCAVD","listboxvalueis",301,0})
	AADD( myOperations , {"SCAVD","listboxtopis",302,0})
	AADD( myOperations , {"SCAVD","listboxleftis",303,0})
	AADD( myOperations , {"SCAVD","listboxwidthis",304,0})
	AADD( myOperations , {"SCAVD","listboxheightis",305,0})
	AADD( myOperations , {"SCAVD","listboxnameis",306,0})
	AADD( myOperations , {"SCAVD","listboxfontnameis",307,0})
	AADD( myOperations , {"SCAVD","listboxfontsizeis",308,0})
	AADD( myOperations , {"SCAVD","listboxforecoloris",309,0})
	AADD( myOperations , {"SCAVD","listboxbackcoloris",310,0})
	AADD( myOperations , {"SCAVD","listboxfontboldis",311,0})
	AADD( myOperations , {"SCAVD","listboxfontitalicis",312,0})
	AADD( myOperations , {"SCAVD","listboxfontunderlineis",313,0})
	AADD( myOperations , {"SCAVD","listboxfontstrickoutis",314,0})
	AADD( myOperations , {"SDI","listboxselected",315,0})
	AADD( myOperations , {"SCAVD","listboxmustadditem",316,0})
	AADD( myOperations , {"SCAVD","listboxmustaddfrom",317,0})
	AADD( myOperations , {"SCAVD","listboxvaluefrom",318,0})
	AADD( myOperations , {"SCAVD","listboxvalueto",319,0})
	AADD( myOperations , {"SDVD","is",2000,0})
	AADD( myOperations , {"SDVD",":=",2003,0})
	AADD( myOperations , {"SDI","++",2004,0})
	AADD( myOperations , {"SDI","--",2005,0})
	AADD( myOperations , {"SDI","decimalplacesallowed",2001,0})
	AADD( myOperations , {"SI","dowindowsevents",2002,0})
	AADD( myOperations , {"SPVC","iwantcounter",3000,0})
	AADD( myOperations , {"SCAVD","counterstartis",3001,0})
	AADD( myOperations , {"SCAVD","counterendis",3002,0})
	AADD( myOperations , {"SCAVD","counterstepis",3003,0})
	AADD( myOperations , {"SCAVD","counternameis",3004,0})
	AADD( myOperations , {"SPVC","youusecounter",3005,0})
	AADD( myOperations , {"SCAVD","countervaluefrom",3006,0})
	AADD( myOperations , {"SCAVD","countervalueto",3007,0})
	AADD( myOperations , {"SCAVD","counterstartfrom",3008,0})
	AADD( myOperations , {"SCAVD","counterstartto",3009,0})
	AADD( myOperations , {"SCAVD","counterendfrom",3010,0})
	AADD( myOperations , {"SCAVD","counterendto",3011,0})
	AADD( myOperations , {"SCAVD","counterstepfrom",3012,0})
	AADD( myOperations , {"SCAVD","counterstepto",3013,0})
	AADD( myOperations , {"SCAVD","counternamefrom",3014,0})
	AADD( myOperations , {"SCAVD","counternameto",3015,0})
	AADD( myOperations , {"SDI","dowhile",3050,3})
	AADD( myOperations , {"SI","endwhile",3051,4})
	AADD( myOperations , {"SDI","doif",3060,1})
	AADD( myOperations , {"SI","endif",3061,2})
	AADD( myOperations , {"SPVC","iwantpicture",150,0})
	AADD( myOperations , {"SCAVD","picturefileis",151,0})
	AADD( myOperations , {"SCAVD","picturetopis",152,0})
	AADD( myOperations , {"SCAVD","pictureleftis",153,0})
	AADD( myOperations , {"SCAVD","picturewidthis",154,0})
	AADD( myOperations , {"SCAVD","pictureheightis",155,0})
	AADD( myOperations , {"SCAVD","picturenameis",156,0})
	AADD( myOperations , {"SDI","pictureselected",157,0})
	AADD( myOperations , {"SCAVD","picturefilefrom",158,0})
	AADD( myOperations , {"SCAVD","picturefileto",159,0})
	AADD( myOperations , {"SCAVD","picturetopto",160,0})
	AADD( myOperations , {"SCAVD","pictureleftto",161,0})
	AADD( myOperations , {"SCAVD","picturewidthto",162,0})
	AADD( myOperations , {"SCAVD","pictureheightto",163,0})
	AADD( myOperations , {"SCAVD","picturetopfrom",164,0})
	AADD( myOperations , {"SCAVD","pictureleftfrom",165,0})
	AADD( myOperations , {"SCAVD","picturewidthfrom",166,0})
	AADD( myOperations , {"SCAVD","pictureheightfrom",167,0})
	AADD( myOperations , {"SPVC","iwanttextbox",200,0})
	AADD( myOperations , {"SCAVD","textboxvalueis",201,0})
	AADD( myOperations , {"SCAVD","textboxtopis",202,0})
	AADD( myOperations , {"SCAVD","textboxleftis",203,0})
	AADD( myOperations , {"SCAVD","textboxwidthis",204,0})
	AADD( myOperations , {"SCAVD","textboxheightis",205,0})
	AADD( myOperations , {"SCAVD","textboxnameis",206,0})
	AADD( myOperations , {"SCAVD","textboxfontnameis",207,0})
	AADD( myOperations , {"SCAVD","textboxfontsizeis",208,0})
	AADD( myOperations , {"SCAVD","textboxforecoloris",209,0})
	AADD( myOperations , {"SCAVD","textboxbackcoloris",210,0})
	AADD( myOperations , {"SCAVD","textboxfontboldis",211,0})
	AADD( myOperations , {"SCAVD","textboxfontitalicis",212,0})
	AADD( myOperations , {"SCAVD","textboxfontunderlineis",213,0})
	AADD( myOperations , {"SCAVD","textboxfontstrickoutis",214,0})
	AADD( myOperations , {"SDI","textboxselected",215,0})
	AADD( myOperations , {"SCAVD","textboxvaluefrom",216,0})
	AADD( myOperations , {"SCAVD","textboxvalueto",217,0})
	AADD( myOperations , {"SPVC","iwanteditbox",250,0})
	AADD( myOperations , {"SCAVD","editboxvalueis",251,0})
	AADD( myOperations , {"SCAVD","editboxtopis",252,0})
	AADD( myOperations , {"SCAVD","editboxleftis",253,0})
	AADD( myOperations , {"SCAVD","editboxwidthis",254,0})
	AADD( myOperations , {"SCAVD","editboxheightis",255,0})
	AADD( myOperations , {"SCAVD","editboxnameis",256,0})
	AADD( myOperations , {"SCAVD","editboxfontnameis",257,0})
	AADD( myOperations , {"SCAVD","editboxfontsizeis",258,0})
	AADD( myOperations , {"SCAVD","editboxforecoloris",259,0})
	AADD( myOperations , {"SCAVD","editboxbackcoloris",260,0})
	AADD( myOperations , {"SCAVD","editboxfontboldis",261,0})
	AADD( myOperations , {"SCAVD","editboxfontitalicis",262,0})
	AADD( myOperations , {"SCAVD","editboxfontunderlineis",263,0})
	AADD( myOperations , {"SCAVD","editboxfontstrickoutis",264,0})
	AADD( myOperations , {"SDI","editboxselected",265,0})
	AADD( myOperations , {"SCAVD","editboxvaluefrom",266,0})
	AADD( myOperations , {"SCAVD","editboxvalueto",267,0})
	AADD( myOperations , {"SCAVD","editboxtopto",268,0})
	AADD( myOperations , {"SCAVD","editboxleftto",269,0})
	AADD( myOperations , {"SCAVD","editboxwidthto",270,0})
	AADD( myOperations , {"SCAVD","editboxheightto",271,0})
	AADD( myOperations , {"SCAVD","editboxtopfrom",272,0})
	AADD( myOperations , {"SCAVD","editboxleftfrom",273,0})
	AADD( myOperations , {"SCAVD","editboxwidthfrom",274,0})
	AADD( myOperations , {"SCAVD","editboxheightfrom",275,0})
	AADD( myOperations , {"SPVC","iwantcombobox",350,0})
	AADD( myOperations , {"SCAVD","comboboxvalueis",351,0})
	AADD( myOperations , {"SCAVD","comboboxtopis",352,0})
	AADD( myOperations , {"SCAVD","comboboxleftis",353,0})
	AADD( myOperations , {"SCAVD","comboboxwidthis",354,0})
	AADD( myOperations , {"SCAVD","comboboxheightis",355,0})
	AADD( myOperations , {"SCAVD","comboboxnameis",356,0})
	AADD( myOperations , {"SCAVD","comboboxfontnameis",357,0})
	AADD( myOperations , {"SCAVD","comboboxfontsizeis",358,0})
	AADD( myOperations , {"SCAVD","comboboxforecoloris",359,0})
	AADD( myOperations , {"SCAVD","comboboxbackcoloris",360,0})
	AADD( myOperations , {"SCAVD","comboboxfontboldis",361,0})
	AADD( myOperations , {"SCAVD","comboboxfontitalicis",362,0})
	AADD( myOperations , {"SCAVD","comboboxfontunderlineis",363,0})
	AADD( myOperations , {"SCAVD","comboboxfontstrickoutis",364,0})
	AADD( myOperations , {"SDI","comboboxselected",365,0})
	AADD( myOperations , {"SCAVD","comboboxmustadditem",366,0})
	AADD( myOperations , {"SCAVD","comboboxmustaddfrom",367,0})
	AADD( myOperations , {"SCAVD","comboboxvaluefrom",368,0})
	AADD( myOperations , {"SCAVD","comboboxvalueto",369,0})
	AADD( myOperations , {"SPVC","iwantcheckbox",400,0})
	AADD( myOperations , {"SCAVD","checkboxvalueis",401,0})
	AADD( myOperations , {"SCAVD","checkboxtopis",402,0})
	AADD( myOperations , {"SCAVD","checkboxleftis",403,0})
	AADD( myOperations , {"SCAVD","checkboxwidthis",404,0})
	AADD( myOperations , {"SCAVD","checkboxheightis",405,0})
	AADD( myOperations , {"SCAVD","checkboxnameis",406,0})
	AADD( myOperations , {"SCAVD","checkboxfontnameis",407,0})
	AADD( myOperations , {"SCAVD","checkboxfontsizeis",408,0})
	AADD( myOperations , {"SCAVD","checkboxforecoloris",409,0})
	AADD( myOperations , {"SCAVD","checkboxbackcoloris",410,0})
	AADD( myOperations , {"SCAVD","checkboxfontboldis",411,0})
	AADD( myOperations , {"SCAVD","checkboxfontitalicis",412,0})
	AADD( myOperations , {"SCAVD","checkboxfontunderlineis",413,0})
	AADD( myOperations , {"SCAVD","checkboxfontstrickoutis",414,0})
	AADD( myOperations , {"SDI","checkboxselected",415,0})
	AADD( myOperations , {"SCAVD","checkboxcaptionis",416,0})
	AADD( myOperations , {"SPVC","iwantprogressbar",450,0})
	AADD( myOperations , {"SCAVD","progressbarvalueis",451,0})
	AADD( myOperations , {"SCAVD","progressbartopis",452,0})
	AADD( myOperations , {"SCAVD","progressbarleftis",453,0})
	AADD( myOperations , {"SCAVD","progressbarwidthis",454,0})
	AADD( myOperations , {"SCAVD","progressbarheightis",455,0})
	AADD( myOperations , {"SCAVD","progressbarnameis",456,0})
	AADD( myOperations , {"SDI","progressbarselected",457,0})
	AADD( myOperations , {"SCAVD","progressbarrangeminimumis",458,0})
	AADD( myOperations , {"SCAVD","progressbarrangemaximumis",459,0})
	AADD( myOperations , {"SCAVD","progressbarforecoloris",460,0})
	AADD( myOperations , {"SCAVD","progressbarbackcoloris",461,0})
	AADD( myOperations , {"SPVC","iwantslider",500,0})
	AADD( myOperations , {"SCAVD","slidervalueis",501,0})
	AADD( myOperations , {"SCAVD","slidertopis",502,0})
	AADD( myOperations , {"SCAVD","sliderleftis",503,0})
	AADD( myOperations , {"SCAVD","sliderwidthis",504,0})
	AADD( myOperations , {"SCAVD","sliderheightis",505,0})
	AADD( myOperations , {"SCAVD","slidernameis",506,0})
	AADD( myOperations , {"SDI","sliderselected",507,0})
	AADD( myOperations , {"SCAVD","sliderrangeminimumis",508,0})
	AADD( myOperations , {"SCAVD","sliderrangemaximumis",509,0})
	AADD( myOperations , {"SCAVD","sliderbackcoloris",510,0})
	AADD( myOperations , {"SPVC","iwantdatepicker",550,0})
	AADD( myOperations , {"SCAVD","datepickervalueis",551,0})
	AADD( myOperations , {"SCAVD","datepickertopis",552,0})
	AADD( myOperations , {"SCAVD","datepickerleftis",553,0})
	AADD( myOperations , {"SCAVD","datepickerwidthis",554,0})
	AADD( myOperations , {"SCAVD","datepickerheightis",555,0})
	AADD( myOperations , {"SCAVD","datepickernameis",556,0})
	AADD( myOperations , {"SDI","datepickerselected",557,0})
	AADD( myOperations , {"SCAVD","datepickerforecoloris",558,0})
	AADD( myOperations , {"SCAVD","datepickerbackcoloris",559,0})
	AADD( myOperations , {"SCAVD","datepickerfontnameis",560,0})
	AADD( myOperations , {"SCAVD","datepickerfontsizeis",561,0})
	AADD( myOperations , {"SCAVD","datepickerfontboldis",562,0})
	AADD( myOperations , {"SCAVD","datepickerfontitalicis",563,0})
	AADD( myOperations , {"SCAVD","datepickerfontunderlineis",564,0})
	AADD( myOperations , {"SCAVD","datepickerfontstrickoutis",565,0})
	AADD( myOperations , {"SPVC","iwantspinner",600,0})
	AADD( myOperations , {"SCAVD","spinnervalueis",601,0})
	AADD( myOperations , {"SCAVD","spinnertopis",602,0})
	AADD( myOperations , {"SCAVD","spinnerleftis",603,0})
	AADD( myOperations , {"SCAVD","spinnerwidthis",604,0})
	AADD( myOperations , {"SCAVD","spinnerheightis",605,0})
	AADD( myOperations , {"SCAVD","spinnernameis",606,0})
	AADD( myOperations , {"SDI","spinnerselected",607,0})
	AADD( myOperations , {"SCAVD","spinnerforecoloris",608,0})
	AADD( myOperations , {"SCAVD","spinnerbackcoloris",609,0})
	AADD( myOperations , {"SCAVD","spinnerfontnameis",610,0})
	AADD( myOperations , {"SCAVD","spinnerfontsizeis",611,0})
	AADD( myOperations , {"SCAVD","spinnerfontboldis",612,0})
	AADD( myOperations , {"SCAVD","spinnerfontitalicis",613,0})
	AADD( myOperations , {"SCAVD","spinnerfontunderlineis",614,0})
	AADD( myOperations , {"SCAVD","spinnerfontstrickoutis",615,0})
	AADD( myOperations , {"SCAVD","spinnerrangeminimumis",616,0})
	AADD( myOperations , {"SCAVD","spinnerrangemaximumis",617,0})
	AADD( myOperations , {"SPVC","iwanthyperlink",650,0})
	AADD( myOperations , {"SCAVD","hyperlinkcaptionis",651,0})
	AADD( myOperations , {"SCAVD","hyperlinktopis",652,0})
	AADD( myOperations , {"SCAVD","hyperlinkleftis",653,0})
	AADD( myOperations , {"SCAVD","hyperlinkwidthis",654,0})
	AADD( myOperations , {"SCAVD","hyperlinkheightis",655,0})
	AADD( myOperations , {"SCAVD","hyperlinknameis",656,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontnameis",657,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontsizeis",658,0})
	AADD( myOperations , {"SCAVD","hyperlinkforecoloris",659,0})
	AADD( myOperations , {"SCAVD","hyperlinkbackcoloris",660,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontboldis",661,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontitalicis",662,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontunderlineis",663,0})
	AADD( myOperations , {"SCAVD","hyperlinkfontstrickoutis",664,0})
	AADD( myOperations , {"SI","sethyperlinktransparenton",665,0})
	AADD( myOperations , {"SI","sethyperlinktransparentoff",666,0})
	AADD( myOperations , {"SDI","hyperlinkselected",667,0})
	AADD( myOperations , {"SCAVD","hyperlinkaddressis",668,0})
	AADD( myOperations , {"SPVC","iwantstatusbar",700,0})
	AADD( myOperations , {"SCAVD","statusbarfontnameis",701,0})
	AADD( myOperations , {"SCAVD","statusbarfontsizeis",702,0})
	AADD( myOperations , {"SCAVD","statusbarfontboldis",703,0})
	AADD( myOperations , {"SCAVD","statusbarfontitalicis",704,0})
	AADD( myOperations , {"SCAVD","statusbarfontunderlineis",705,0})
	AADD( myOperations , {"SCAVD","statusbarfontstrickoutis",706,0})
	AADD( myOperations , {"SPVC","iwantstatusitem",707,0})
	AADD( myOperations , {"SPVC","iwantstatusclock",708,0})
	AADD( myOperations , {"SPVC","iwantstatusdate",709,0})
	AADD( myOperations , {"SPVC","iwantstatuskeyboard",710,0})
	AADD( myOperations , {"SCAVD","statusitemcaptionis",711,0})
	AADD( myOperations , {"SCAVD","statusitemwidthis",712,0})
	AADD( myOperations , {"SPVC","youshowstatusbar",713,0})
	AADD( myOperations , {"SPVC","iwantmenubar",750,0})
	AADD( myOperations , {"SPVC","iwantmenupopup",751,0})
	AADD( myOperations , {"SCAVD","menupopupcaptionis",752,0})
	AADD( myOperations , {"SPVC","iwantmenuitem",753,0})
	AADD( myOperations , {"SCAVD","menuitemcaptionis",754,0})
	AADD( myOperations , {"SCAVD","menuitemnameis",755,0})
	AADD( myOperations , {"SDI","executefile",4000,0})
	AADD( myOperations , {"SDI","executefrom",4001,0})
	AADD( myOperations , {"SDVD","memorytofile",4002,0})
	AADD( myOperations , {"SDVD","filetomemory",4003,0})
	AADD( myOperations , {"SDI","filetoopen",4004,0})
	AADD( myOperations , {"SDI","filetosave",4005,0})
	AADD( myOperations , {"SDI","dlllibrarytouse",4006,0})
	AADD( myOperations , {"SDVD","dllfunctiontocallwithparameters",4007,0})
	AADD( myOperations , {"SDVD","comobjecttocreateoftype",4010,0})
	AADD( myOperations , {"SDI","comobjecttouse",4011,0})
	AADD( myOperations , {"SDVD","compropertytoset",4012,0})
	AADD( myOperations , {"SDVD","compropertytoget",4013,0})
	AADD( myOperations , {"SDVD","commethodtocallwithparameters",4014,0})
	

	// add COMMAND length
	MYEND = LEN(MYoperations)
	FOR X = 1 TO MYEND
		aadd ( myoperations[x] , len ( myoperations[x][2] ) )
	NEXT
	//------------------------------------------------------


	RULESDI = {}	
	RULESDVD = {}
	RULESCAVD = {}
	RULESPVC = {}
	RULESI = {}
	

	mystop = len(myoperations)
	for x = 1 to mystop
		if myoperations[x][1] == "SDI"
			aadd(RULESDI,myoperations[x])
			LOOP
		endif
		if myoperations[x][1] == "SDVD"
			aadd(RULESDVD,myoperations[x])
		LOOP
		endif
		if myoperations[x][1] == "SCAVD"
			aadd(RULESCAVD,myoperations[x])
			LOOP
		endif
		if myoperations[x][1] == "SPVC"
			aadd(RULESPVC,myoperations[x])
			LOOP
		endif
		if myoperations[x][1] == "SI"
			aadd(RULESI,myoperations[x])
			LOOP
		endif
	next

	rulesmap := {}
	aadd(rulesmap, { "SDI" , 0 , 0 } )
	aadd(rulesmap, { "SDVD" , 0 , 0 } )
	aadd(rulesmap, { "SCAVD" , 0 , 0 } )
	aadd(rulesmap, { "SPVC" , 0 , 0 } )
	aadd(rulesmap, { "SI" , 0 , 0 } )
	
	myoperations := {}

	rulesmap[1][2] = 1
	rulesmap[1][3] = len(RuleSDI)
	
	rulesmap[2][2] = len(RuleSDI)+1
	rulesmap[2][3] = len(RuleSDI)+len(RuleSDVD)
	
	rulesmap[3][2] = rulesmap[2][3]+1
	rulesmap[3][3] = rulesmap[2][3]+len(RuleSCAVD)

	rulesmap[4][2] = rulesmap[3][3]+1
	rulesmap[4][3] = rulesmap[3][3]+len(RuleSPVC)
	
	rulesmap[5][2] = rulesmap[4][3]+1
	rulesmap[5][3] = rulesmap[4][3]+len(RuleSI)
	
	mystop = len(ruleSDI)
	for x = 1 to mystop
		aadd(myoperations,ruleSDI[X])
	next

	mystop = len(ruleSDVD)
	for x = 1 to mystop
		aadd(myoperations,ruleSDVD[X])
	next
	
	mystop = len(ruleSCAVD)
	for x = 1 to mystop
		aadd(myoperations,ruleSCAVD[X])
	next

	mystop = len(ruleSPVC)
	for x = 1 to mystop
		aadd(myoperations,ruleSPVC[X])
	next
	
	
	mystop = len(ruleSI)
	for x = 1 to mystop
		aadd(myoperations,ruleSI[X])
	next

	SNLang_ArabicTokensT()
	
	AADD( mySwitches , {"P",True})
	AADD( mySwitches , {"V",False})
	AADD( mySwitches , {"C",True})
	AADD( mySwitches , {"A",False})
	AADD( mySwitches , {"I",True})
	AADD( mySwitches , {"D",True})


Return Nil

