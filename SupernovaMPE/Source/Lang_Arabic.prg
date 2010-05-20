Procedure SNLang_ArabicTokensP()
	Local wordclass
	wordclass = 2
	AADD( myTokens , {"P","«‰«",wordclass})
	AADD( myTokens , {"P","«‰ ",wordclass})
	AADD( myTokens , {"P","·Ê”„Õ ",wordclass})
	AADD( myTokens , {"P"," Õ ÊÏ",wordclass})
return 

Procedure SNLang_ArabicTokensV()
	Local wordclass
	wordclass = 2
	AADD( myTokens , {"V","«—Ìœ",wordclass})
	AADD( myTokens , {"V","⁄«Ì“",wordclass})
	AADD( myTokens , {"V","ÂÊ",wordclass})
	AADD( myTokens , {"V","ﬁ„» ﬂ»Ì—",wordclass})
	AADD( myTokens , {"V","ﬁ„» ’€Ì—",wordclass})
	AADD( myTokens , {"V","ﬁ„» Ê”Ìÿ",wordclass})
	AADD( myTokens , {"V","«⁄—÷",wordclass})
	AADD( myTokens , {"V","«Œ›Ï",wordclass})
	AADD( myTokens , {"V","«€·ﬁ",wordclass})
	AADD( myTokens , {"V","«‰ ÷Ì›⁄‰’—",wordclass})
	AADD( myTokens , {"V","Ì”«ÊÏ",wordclass})
	AADD( myTokens , {"V","«·Ï",wordclass})
	AADD( myTokens , {"V","„‰",wordclass})
	AADD( myTokens , {"V","«” ⁄„·",wordclass})
	AADD( myTokens , {"V","«‰ ÷Ì›„‰",wordclass})
	AADD( myTokens , {"V","ÂÏ",wordclass})
	AADD( myTokens , {"V","–«ﬂ—…ÌÕ›Ÿ„Õ Ê«Â«›Ï„·›",wordclass})
	AADD( myTokens , {"V","„·›ÌÕ›Ÿ„Õ Ê«Â›Ï«·–«ﬂ—…",wordclass})
	AADD( myTokens , {"V","«” œ⁄«¡œ«·…›Ï„ﬂ »…—»ÿœÌ‰«„ÌﬂÏ»«·„⁄ÿÌ« ",wordclass})
	AADD( myTokens , {"V","ﬂ«∆‰·„ﬂÊ‰„‰«·‰Ê⁄",wordclass})
	AADD( myTokens , {"V","Œ«’Ì…„ﬂÊ‰Ê«·ﬁÌ„… ﬂÊ‰",wordclass})
	AADD( myTokens , {"V","Œ«’Ì…„ﬂÊ‰Ê«·ﬁÌ„…«·Ï",wordclass})
	AADD( myTokens , {"V","ÿ—Ìﬁ…„ﬂÊ‰··«” œ⁄«¡»«·„⁄ÿÌ« ",wordclass})
	
Return Nil

Procedure SNLang_ArabicTokensC()
	Local wordclass
	wordclass = 2
	AADD( myTokens , {"C","‰«›–…",wordclass})
	AADD( myTokens , {"C","“—",wordclass})
	AADD( myTokens , {"C","⁄‰Ê«‰",wordclass})
	AADD( myTokens , {"C","’Ê—…",wordclass})
	AADD( myTokens , {"C","„—»⁄‰’",wordclass})
	AADD( myTokens , {"C","„—»⁄ Õ—Ì—",wordclass})
	AADD( myTokens , {"C","„—»⁄«·ﬁ«∆„…",wordclass})
	AADD( myTokens , {"C","ﬂÊ„»Ê",wordclass})
	AADD( myTokens , {"C","„—»⁄›Õ’",wordclass})
	AADD( myTokens , {"C","‘—Ìÿ ﬁœ„",wordclass})
	AADD( myTokens , {"C","„· ﬁÿ «—ÌŒ",wordclass})
	AADD( myTokens , {"C","”»Ì‰—",wordclass})
	AADD( myTokens , {"C","’›",wordclass})
	AADD( myTokens , {"C","„ ’›Õ",wordclass})
	AADD( myTokens , {"C","”Ê” …",wordclass})
	AADD( myTokens , {"C","‘Ã—…",wordclass})
	AADD( myTokens , {"C","›Ê«’·",wordclass})
	AADD( myTokens , {"C","’›Õ…›«’·",wordclass})
	AADD( myTokens , {"C","«ÿ«—",wordclass})
	AADD( myTokens , {"C","—«»ÿ ‘⁄»Ï",wordclass})
	AADD( myTokens , {"C","‘—ÌÿÕ«·…",wordclass})
	AADD( myTokens , {"C","⁄‰’—Õ«·…",wordclass})
	AADD( myTokens , {"C","Õ«·…«· «—ÌŒ",wordclass})
	AADD( myTokens , {"C","Õ«·…«·”«⁄…",wordclass})
	AADD( myTokens , {"C","Õ«·…·ÊÕ…«·„›« ÌÕ",wordclass})
	AADD( myTokens , {"C","‘—Ìÿ«·ﬁÊ«∆„",wordclass})
	AADD( myTokens , {"C","ﬁ«∆„…›—⁄Ì…",wordclass})
	AADD( myTokens , {"C","⁄‰’—›Ï«·ﬁ«∆„…",wordclass})
	AADD( myTokens , {"C"," ÿ»Ìﬁ",wordclass})
	AADD( myTokens , {"C","⁄œ«œ",wordclass})
	AADD( myTokens , {"C","«·‰«›–…",wordclass})
Return 


Procedure SNLang_ArabicTokensA()
	Local wordclass
	wordclass = 2
	AADD( myTokens , {"A"," Õ ⁄‰Ê«‰",wordclass})
	AADD( myTokens , {"A","·Ê‰«·Œ·›Ì…",wordclass})
	AADD( myTokens , {"A","«·« Ã«Â",wordclass})
	AADD( myTokens , {"A","«·»œ«Ì…«·⁄·ÊÌ…",wordclass})
	AADD( myTokens , {"A","«·»œ«Ì…«·Ì”—Ï",wordclass})
	AADD( myTokens , {"A","«·⁄—÷",wordclass})
	AADD( myTokens , {"A","«·«— ›«⁄",wordclass})
	AADD( myTokens , {"A","«·«”„",wordclass})
	AADD( myTokens , {"A","«”„«·Œÿ",wordclass})
	AADD( myTokens , {"A","ÕÃ„«·Œÿ",wordclass})
	AADD( myTokens , {"A","·Ê‰«·ﬂ «»…",wordclass})
	AADD( myTokens , {"A","”„ﬂ«·Œÿ",wordclass})
	AADD( myTokens , {"A","„Ì·«·Œÿ",wordclass})
	AADD( myTokens , {"A","«·Œÿ Õ «·”ÿ—",wordclass})
	AADD( myTokens , {"A","»—Ê“«·Œÿ",wordclass})
	AADD( myTokens , {"A","«·’Ê—…",wordclass})
	AADD( myTokens , {"A","«·‘›«›Ì…",wordclass})
	AADD( myTokens , {"A","«·„·›",wordclass})
	AADD( myTokens , {"A","«·ﬁÌ„…",wordclass})
	AADD( myTokens , {"A","«·‰’",wordclass})
	AADD( myTokens , {"A","ÌÃ»",wordclass})
	AADD( myTokens , {"A","»œ«Ì…«·‰ÿ«ﬁ",wordclass})
	AADD( myTokens , {"A","‰Â«Ì…«·‰ÿ«ﬁ",wordclass})
	AADD( myTokens , {"A","—«»ÿ«·ÊÌ»",wordclass})
	AADD( myTokens , {"A","„·«ÕŸ…",wordclass})
	AADD( myTokens , {"A","‰ﬁÿ…«·»œ«Ì…",wordclass})
	AADD( myTokens , {"A","‰ﬁÿ…«·‰Â«Ì…",wordclass})
	AADD( myTokens , {"A","«·ŒÿÊ…",wordclass})
	AADD( myTokens , {"A","«·«»",wordclass})
Return 

Procedure SNLang_ArabicTokensI()
	Local wordclass
	wordclass = 2
	AADD( myTokens , {"I","«·",wordclass})
	AADD( myTokens , {"I","Ê",wordclass})
	AADD( myTokens , {"I","«„‰⁄«·«ŸÂ«—«· ·ﬁ«∆Ï··‰«›–…",wordclass})
	AADD( myTokens , {"I","‘€·«·«ŸÂ«—«· ·ﬁ«∆Ï··‰«›–…",wordclass})
	AADD( myTokens , {"I"," ⁄·Ì„« ÂÂÏ",wordclass})
	AADD( myTokens , {"I","‰Â«Ì…«· ⁄·Ì„« ",wordclass})
	AADD( myTokens , {"I"," ⁄·Ì„« ÂÊ«Ã» ‰›Ì–Â«",wordclass})
	AADD( myTokens , {"I","‰«›–… „ ÕœÌœÂ«",wordclass})
	AADD( myTokens , {"I","‘€·«·‘›«›Ì…··⁄‰«ÊÌ‰",wordclass})
	AADD( myTokens , {"I","«·€Ï«·‘›«›Ì…··⁄‰«ÊÌ‰",wordclass})
	AADD( myTokens , {"I","“— „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","⁄‰Ê«‰ „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","’Ê—… „ ÕœÌœÂ«",wordclass})
	AADD( myTokens , {"I","„—»⁄‰’ „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","„·›«› ⁄·Ì„« ÂÊ«Ã» ‰›Ì–Â«",wordclass})
	AADD( myTokens , {"I","Õ”‰«",wordclass})
	AADD( myTokens , {"I","Œ“‰",wordclass})
	AADD( myTokens , {"I","«Õ÷—",wordclass})
	AADD( myTokens , {"I","‰›–«Õœ«À«·ÊÌ‰œÊ“",wordclass})
	AADD( myTokens , {"I","„—»⁄ﬁ«∆„… „ ÕœÌœÂ«",wordclass})
	AADD( myTokens , {"I","„—»⁄ Õ—Ì— „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","ﬂÊ„»Ê „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","„—»⁄›Õ’ „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","‘—Ìÿ ﬁœ„ „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","”·Ìœ— „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","·«ﬁÿ «—ÌŒ „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","”»Ì‰— „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","—«»ÿ ‘⁄»Ï „ ÕœÌœÂ",wordclass})
	AADD( myTokens , {"I","‰›–ÿ«·„«",wordclass})
	AADD( myTokens , {"I","‰›–›ÏÕ«·…",wordclass})
	AADD( myTokens , {"I","‰Â«Ì…«·Õ«·…",wordclass})
	AADD( myTokens , {"I","‰Â«Ì…ÿ«·„«",wordclass})
	AADD( myTokens , {"I","‰›–«·œ«·…",wordclass})
	AADD( myTokens , {"I","‰›–«·«Ã—«¡",wordclass})
	AADD( myTokens , {"I","‰›–«·„·›",wordclass})
	AADD( myTokens , {"I","‰Â«Ì…«·œ«·…",wordclass})
	AADD( myTokens , {"I","‰Â«Ì…«·«Ã—«¡",wordclass})
	AADD( myTokens , {"I"," ⁄—Ì›«·œ«·…",wordclass})
	AADD( myTokens , {"I"," ⁄—Ì›«·«Ã—«¡",wordclass})
	AADD( myTokens , {"I","⁄·«„« ⁄‘—Ì…„ «Õ…",wordclass})
	AADD( myTokens , {"I","Ì«",wordclass})
	AADD( myTokens , {"I"," ‘€Ì·«·„·›",wordclass})
	AADD( myTokens , {"I"," ‘€Ì·„‰",wordclass})
	AADD( myTokens , {"I","«„‰⁄«⁄«œ… ÕÃÌ„«·‰«›–…",wordclass})
	AADD( myTokens , {"I","‘€·«⁄«œ… ÕÃÌ„«·‰«›–…",wordclass})
	AADD( myTokens , {"I","«„‰⁄«” ﬁ·«·«·‰«›–…",wordclass})
	AADD( myTokens , {"I","‘€·«” ﬁ·«·«·‰«›–…",wordclass})
	AADD( myTokens , {"I","„·›·ﬂÏ‰› ÕÂ",wordclass})
	AADD( myTokens , {"I","„·›·ﬂÏ‰Õ›ŸÂ",wordclass})
	AADD( myTokens , {"I","„ﬂ »…—»ÿœÌ‰«„ÌﬂÏ·ﬂÏ‰” ⁄„·Â«",wordclass})
	AADD( myTokens , {"I","ﬂ«∆‰„ﬂÊ‰·ﬂÏ‰” ⁄„·Â",wordclass})
Return 

Procedure SNLang_ArabicTokensT()
	AADD( myTransform2 , {"P","«‰«","P","i",0})
	AADD( myTransform2 , {"P","«‰ ","P","you",0})
	AADD( myTransform2 , {"P","·Ê”„Õ ","P","you",0})
	AADD( myTransform2 , {"V","«—Ìœ","V","want",0})
	AADD( myTransform2 , {"V","⁄«Ì“","V","see",0})
	AADD( myTransform2 , {"V","ÂÊ","V","is",0})
	AADD( myTransform2 , {"V","ﬁ„» ﬂ»Ì—","V","maximize",0})
	AADD( myTransform2 , {"V","ﬁ„» ’€Ì—","V","minimize",0})
	AADD( myTransform2 , {"V","ﬁ„» Ê”Ìÿ","V","centre",0})
	AADD( myTransform2 , {"V","«⁄—÷","V","show",0})
	AADD( myTransform2 , {"V","«Œ›Ï","V","hide",0})
	AADD( myTransform2 , {"V","«€·ﬁ","V","close",0})
	AADD( myTransform2 , {"V","«‰ ÷Ì›⁄‰’—","V","additem",0})
	AADD( myTransform2 , {"V","Ì”«ÊÏ","V","equal",0})
	AADD( myTransform2 , {"V","«·Ï","V","to",0})
	AADD( myTransform2 , {"V","„‰","V","from",0})
	AADD( myTransform2 , {"V","«” ⁄„·","V","use",0})
	AADD( myTransform2 , {"V","«‰ ÷Ì›„‰","V","addfrom",0})
	AADD( myTransform2 , {"V","ÂÏ","V","is",0})
	AADD( myTransform2 , {"V","–«ﬂ—…ÌÕ›Ÿ„Õ Ê«Â«›Ï„·›","V","memorytofile",0})
	AADD( myTransform2 , {"V","„·›ÌÕ›Ÿ„Õ Ê«Â›Ï«·–«ﬂ—…","V","filetomemory",0})
	AADD( myTransform2 , {"V","«” œ⁄«¡œ«·…›Ï„ﬂ »…—»ÿœÌ‰«„ÌﬂÏ»«·„⁄ÿÌ« ","V","dllfunctiontocallwithparameters",0})
	AADD( myTransform2 , {"V","ﬂ«∆‰·„ﬂÊ‰„‰«·‰Ê⁄","V","comobjecttocreateoftype",0})
	AADD( myTransform2 , {"V","Œ«’Ì…„ﬂÊ‰Ê«·ﬁÌ„… ﬂÊ‰","V","compropertytoset",0})
	AADD( myTransform2 , {"V","Œ«’Ì…„ﬂÊ‰Ê«·ﬁÌ„…«·Ï","V","compropertytoget",0})
	AADD( myTransform2 , {"V","ÿ—Ìﬁ…„ﬂÊ‰··«” œ⁄«¡»«·„⁄ÿÌ« ","V","commethodtocallwithparameters",0})
	AADD( myTransform2 , {"C","‰«›–…","C","window",0})
	AADD( myTransform2 , {"C","“—","C","button",0})
	AADD( myTransform2 , {"C","⁄‰Ê«‰","C","label",0})
	AADD( myTransform2 , {"C","’Ê—…","C","picture",0})
	AADD( myTransform2 , {"C","„—»⁄‰’","C","textbox",0})
	AADD( myTransform2 , {"C","„—»⁄ Õ—Ì—","C","editbox",0})
	AADD( myTransform2 , {"C","„—»⁄«·ﬁ«∆„…","C","listbox",0})
	AADD( myTransform2 , {"C","ﬂÊ„»Ê","C","combobox",0})
	AADD( myTransform2 , {"C","„—»⁄›Õ’","C","checkbox",0})
	AADD( myTransform2 , {"C","‘—Ìÿ ﬁœ„","C","progressbar",0})
	AADD( myTransform2 , {"C","„· ﬁÿ «—ÌŒ","C","datepicker",0})
	AADD( myTransform2 , {"C","”»Ì‰—","C","spinner",0})
	AADD( myTransform2 , {"C","’›","C","grid",0})
	AADD( myTransform2 , {"C","„ ’›Õ","C","browse",0})
	AADD( myTransform2 , {"C","”Ê” …","C","slider",0})
	AADD( myTransform2 , {"C","‘Ã—…","C","treeview",0})
	AADD( myTransform2 , {"C","›Ê«’·","C","tabs",0})
	AADD( myTransform2 , {"C","’›Õ…›«’·","C","tabpage",0})
	AADD( myTransform2 , {"C","«ÿ«—","C","frame",0})
	AADD( myTransform2 , {"C","—«»ÿ ‘⁄»Ï","C","hyperlink",0})
	AADD( myTransform2 , {"C","‘—ÌÿÕ«·…","C","statusbar",0})
	AADD( myTransform2 , {"C","⁄‰’—Õ«·…","C","statusitem",0})
	AADD( myTransform2 , {"C","Õ«·…«· «—ÌŒ","C","statusdate",0})
	AADD( myTransform2 , {"C","Õ«·…«·”«⁄…","C","statusclock",0})
	AADD( myTransform2 , {"C","Õ«·…·ÊÕ…«·„›« ÌÕ","C","statuskeyboard",0})
	AADD( myTransform2 , {"C","‘—Ìÿ«·ﬁÊ«∆„","C","menubar",0})
	AADD( myTransform2 , {"C","ﬁ«∆„…›—⁄Ì…","C","menupopup",0})
	AADD( myTransform2 , {"C","⁄‰’—›Ï«·ﬁ«∆„…","C","menuitem",0})
	AADD( myTransform2 , {"C"," ÿ»Ìﬁ","C","application",0})
	AADD( myTransform2 , {"C","⁄œ«œ","C","counter",0})
	AADD( myTransform2 , {"C","«·‰«›–…","C","window",0})
	AADD( myTransform2 , {"A"," Õ ⁄‰Ê«‰","A","title",0})
	AADD( myTransform2 , {"A","·Ê‰«·Œ·›Ì…","A","backcolor",0})
	AADD( myTransform2 , {"A","«·« Ã«Â","A","direction",0})
	AADD( myTransform2 , {"A","«·»œ«Ì…«·⁄·ÊÌ…","A","top",0})
	AADD( myTransform2 , {"A","«·»œ«Ì…«·Ì”—Ï","A","left",0})
	AADD( myTransform2 , {"A","«·⁄—÷","A","width",0})
	AADD( myTransform2 , {"A","«·«— ›«⁄","A","height",0})
	AADD( myTransform2 , {"A","«·«”„","A","name",0})
	AADD( myTransform2 , {"A","«”„«·Œÿ","A","fontname",0})
	AADD( myTransform2 , {"A","ÕÃ„«·Œÿ","A","fontsize",0})
	AADD( myTransform2 , {"A","·Ê‰«·ﬂ «»…","A","forecolor",0})
	AADD( myTransform2 , {"A","”„ﬂ«·Œÿ","A","fontbold",0})
	AADD( myTransform2 , {"A","„Ì·«·Œÿ","A","fontitalic",0})
	AADD( myTransform2 , {"A","Œÿ Õ «·”ÿ—","A","fontunderline",0})
	AADD( myTransform2 , {"A","»—Ê“«·Œÿ","A","fontstrickout",0})
	AADD( myTransform2 , {"A","«·’Ê—…","A","picture",0})
	AADD( myTransform2 , {"A","«·‘›«›Ì…","A","transparent",0})
	AADD( myTransform2 , {"A","«·„·›","A","file",0})
	AADD( myTransform2 , {"A","«·ﬁÌ„…","A","value",0})
	AADD( myTransform2 , {"A","«·‰’","A","caption",0})
	AADD( myTransform2 , {"A","ÌÃ»","A","must",0})
	AADD( myTransform2 , {"A","»œ«Ì…«·‰ÿ«ﬁ","A","rangeminimum",0})
	AADD( myTransform2 , {"A","‰Â«Ì…«·‰ÿ«ﬁ","A","rangemaximum",0})
	AADD( myTransform2 , {"A","—«»ÿ«·ÊÌ»","A","address",0})
	AADD( myTransform2 , {"A","„·«ÕŸ…","A","note",0})
	AADD( myTransform2 , {"A","‰ﬁÿ…«·»œ«Ì…","A","start",0})
	AADD( myTransform2 , {"A","‰ﬁÿ…«·‰Â«Ì…","A","end",0})
	AADD( myTransform2 , {"A","«·ŒÿÊ…","A","step",0})
	AADD( myTransform2 , {"A","«·«»","A","parent",0})
	AADD( myTransform2 , {"I","«·","I","the",0})
	AADD( myTransform2 , {"I","Ê","I","and",0})
	AADD( myTransform2 , {"I","«„‰⁄«·«ŸÂ«—«· ·ﬁ«∆Ï··‰«›–…","I","setwindowautoshowoff",0})
	AADD( myTransform2 , {"I","‘€·«·«ŸÂ«—«· ·ﬁ«∆Ï··‰«›–…","I","setwindowautoshowon",0})
	AADD( myTransform2 , {"I"," ⁄·Ì„« ÂÂÏ","I","instructionsare",0})
	AADD( myTransform2 , {"I","‰Â«Ì…«· ⁄·Ì„« ","I","endofinstructions",0})
	AADD( myTransform2 , {"I"," ⁄·Ì„« ÂÊ«Ã» ‰›Ì–Â«","I","instructionsmustdone",0})
	AADD( myTransform2 , {"I","‰«›–… „ ÕœÌœÂ«","I","windowselected",0})
	AADD( myTransform2 , {"I","‘€·«·‘›«›Ì…··⁄‰«ÊÌ‰","I","setlabeltransparenton",0})
	AADD( myTransform2 , {"I","«·€Ï«·‘›«›Ì…··⁄‰«ÊÌ‰","I","setlabeltransparentoff",0})
	AADD( myTransform2 , {"I","“— „ ÕœÌœÂ","I","buttonselected",0})
	AADD( myTransform2 , {"I","⁄‰Ê«‰ „ ÕœÌœÂ","I","labelselected",0})
	AADD( myTransform2 , {"I","’Ê—… „ ÕœÌœÂ«","I","pictureselected",0})
	AADD( myTransform2 , {"I","„—»⁄‰’ „ ÕœÌœÂ","I","textboxselected",0})
	AADD( myTransform2 , {"I","„·›«› ⁄·Ì„« ÂÊ«Ã» ‰›Ì–Â«","I","fileinstructionsmustdone",0})
	AADD( myTransform2 , {"I","Õ”‰«","I","ok",0})
	AADD( myTransform2 , {"I","Œ“‰","I","store",0})
	AADD( myTransform2 , {"I","«Õ÷—","I","get",0})
	AADD( myTransform2 , {"I","‰›–«Õœ«À«·ÊÌ‰œÊ“","I","dowindowsevents",0})
	AADD( myTransform2 , {"I","„—»⁄ﬁ«∆„… „ ÕœÌœÂ«","I","listboxselected",0})
	AADD( myTransform2 , {"I","„—»⁄ Õ—Ì— „ ÕœÌœÂ","I","editboxselected",0})
	AADD( myTransform2 , {"I","ﬂÊ„»Ê „ ÕœÌœÂ","I","comboboxselected",0})
	AADD( myTransform2 , {"I","„—»⁄›Õ’ „ ÕœÌœÂ","I","checkboxselected",0})
	AADD( myTransform2 , {"I","‘—Ìÿ ﬁœ„ „ ÕœÌœÂ","I","progressbarselected",0})
	AADD( myTransform2 , {"I","”·Ìœ— „ ÕœÌœÂ","I","sliderselected",0})
	AADD( myTransform2 , {"I","·«ﬁÿ «—ÌŒ „ ÕœÌœÂ","I","datepickerselected",0})
	AADD( myTransform2 , {"I","”»Ì‰— „ ÕœÌœÂ","I","spinnerselected",0})
	AADD( myTransform2 , {"I","—«»ÿ ‘⁄»Ï „ ÕœÌœÂ","I","hyperlinkselected",0})
	AADD( myTransform2 , {"I","‰›–ÿ«·„«","I","dowhile",0})
	AADD( myTransform2 , {"I","‰›–›ÏÕ«·…","I","doif",0})
	AADD( myTransform2 , {"I","‰Â«Ì…«·Õ«·…","I","endif",0})
	AADD( myTransform2 , {"I","‰Â«Ì…ÿ«·„«","I","endwhile",0})
	AADD( myTransform2 , {"I","‰›–«·œ«·…","I","dofunction",0})
	AADD( myTransform2 , {"I","‰›–«·«Ã—«¡","I","doprocedure",0})
	AADD( myTransform2 , {"I","‰›–«·„·›","I","dofile",0})
	AADD( myTransform2 , {"I","‰Â«Ì…«·œ«·…","I","endfunction",0})
	AADD( myTransform2 , {"I","‰Â«Ì…«·«Ã—«¡","I","endprocedure",0})
	AADD( myTransform2 , {"I"," ⁄—Ì›«·œ«·…","I","function",0})
	AADD( myTransform2 , {"I"," ⁄—Ì›«·«Ã—«¡","I","procedure",0})
	AADD( myTransform2 , {"I","⁄·«„« ⁄‘—Ì…„ «Õ…","I","decimalplacesallowed",0})
	AADD( myTransform2 , {"I","Ì«","I","the",0})
	AADD( myTransform2 , {"I"," ‘€Ì·«·„·›","I","executefile",0})
	AADD( myTransform2 , {"I"," ‘€Ì·„‰","I","executefrom",0})
	AADD( myTransform2 , {"I","«„‰⁄«⁄«œ… ÕÃÌ„«·‰«›–…","I","setwindowresizeoff",0})
	AADD( myTransform2 , {"I","‘€·«⁄«œ… ÕÃÌ„«·‰«›–…","I","setwindowresizeon",0})
	AADD( myTransform2 , {"I","«„‰⁄«” ﬁ·«·«·‰«›–…","I","setwindowmodaloff",0})
	AADD( myTransform2 , {"I","‘€·«” ﬁ·«·«·‰«›–…","I","setwindowmodalon",0})
	AADD( myTransform2 , {"I","„·›·ﬂÏ‰› ÕÂ","I","filetoopen",0})
	AADD( myTransform2 , {"I","„·›·ﬂÏ‰Õ›ŸÂ","I","filetosave",0})
	AADD( myTransform2 , {"I","„ﬂ »…—»ÿœÌ‰«„ÌﬂÏ·ﬂÏ‰” ⁄„·Â«","I","dlllibrarytouse",0})
	AADD( myTransform2 , {"I","ﬂ«∆‰„ﬂÊ‰·ﬂÏ‰” ⁄„·Â","I","comobjecttouse",0})
	AADD( myTransform2 , {"SP"," Õ ÊÏ","SPV","iwant",0})
Return 

function SNLang_ArabicEvents(cEvent)
	cEvent = STRTRAN(cEvent,"«·‰ﬁ—»«·›«—…","mouseclick")
	cEvent = STRTRAN(cEvent,"«· €Ì—","change")
	cEvent = STRTRAN(cEvent,"«„ ·«ﬂ«·»ƒ—…","gotfocus")
	cEvent = STRTRAN(cEvent,"›ﬁœ«‰«·»ƒ—…","lostfocus")
	cEvent = STRTRAN(cEvent,"«· Õ—ﬂ»«·›«—…","mousemove")
	cEvent = STRTRAN(cEvent,"«· Õ—ﬂ","move")
	cEvent = STRTRAN(cEvent,"«⁄«œ…«· ÕÃÌ„","resize")
	cEvent = STRTRAN(cEvent,"«· ﬂ»Ì—","maximize")
	cEvent = STRTRAN(cEvent,"«· ’€Ì—","minimize")
	cEvent = STRTRAN(cEvent,"«·‰ﬁ—„— Ì‰","doubleclick")
return cEvent

function SNLang_ArabicColors(p1)
		IF p1 == "„«∆Ï"
			Return "{0,255,255}"
		ENDIF
		IF p1 == "«”Êœ"
			Return "{0,0,0}"
		ENDIF
		IF p1 == "«“—ﬁ"
			Return "{0,0,255}"
		ENDIF
		IF p1 == "—„«œÏ€«„ﬁ"
			Return "{128,128,128}"
		ENDIF
		IF p1 == "›Ê‘Ì«"
			Return "{255,0,255}"
		ENDIF
		IF p1 == "—„«œÏ"
			Return "{128,128,128}"
		ENDIF
		IF p1 == "«Œ÷—"
			Return "{0,128,0}"
		ENDIF
		IF p1 == "ﬂ·”"
			Return "{0,255,0}"
		ENDIF
		IF p1 == "—„«œÏ›« Õ"
			Return "{192,192,192}"
		ENDIF
		IF p1 == "»‰Ï"
			Return "{128,0,0}"
		ENDIF
		IF p1 == "«“—ﬁœ«ﬂ‰"
			Return "{0,0,128}"
		ENDIF
		IF P1 = "«·«—ÃÊ«‰"
			Return "{128,0,128}"
		ENDIF
		IF p1 == "«Õ„—"
			Return "{255,0,0}"
		ENDIF
		IF P1 == "›÷…"
			Return "{192,192,192}"
		ENDIF
		IF p1 == "»ÿ»—Ï"
			Return "{128,128,0}"
		ENDIF
		IF p1 == "«»Ì÷"
			Return "{255,255,255}"
		ENDIF
		IF p1 == "«’›—"
			Return "{255,255,0}"
		ENDIF
return "NOCOLOR"

function SNLang_ArabicOutput()
return "«·Œ—Ã"

function SNLang_ArabicExpToken(exptoken)

   IF exptoken = "«Ê"
         exptoken := "or"
      ENDIF
      IF exptoken = "Ê"
         exptoken := "and"
      ENDIF
      IF exptoken = "„‘"
         exptoken := "not"
      ENDIF
      IF exptoken = " ”«ÊÏ"
         exptoken := "isequal"
      ENDIF
      IF exptoken = "ÿÊ·"
         exptoken := "len"
      ENDIF
      IF exptoken = "Õ—Ê›ﬂ»Ì—…"
         exptoken := "upper"
      ENDIF
      IF exptoken = "Õ—Ê›’€Ì—…"
         exptoken := "lower"
      ENDIF
      IF exptoken = "„—« ﬂ——"
         exptoken := "replicate"
      ENDIF
      IF exptoken = "Õ—Ê›Ì”«—"
         exptoken := "left"
      ENDIF
      IF exptoken = "Õ—Ê›Ì„Ì‰"
         exptoken := "right"
      ENDIF
      IF exptoken = "Õ—›œ«Œ·"
         exptoken := "inside"
      ENDIF
      IF exptoken = "ﬁ’ﬂ·«·„”«›« "
         exptoken := "alltrim"
      ENDIF
      IF exptoken = "ﬁ’«·„”«›« Ì„Ì‰"
         exptoken := "rtrim"
      ENDIF
      IF exptoken = "ﬁ’«·„”«›« Ì”«—"
         exptoken := "ltrim"
      ENDIF
      IF exptoken = "Õ—Ê›œ«Œ·"
         exptoken := "substr"
      ENDIF
      IF exptoken = "„«ÂÏ»œ«Ì Â«›Ï"
         exptoken := "at"
      ENDIF
      IF exptoken = "ÕÊ·"
         exptoken := "transform"
      ENDIF
      IF exptoken = "«· «—ÌŒ"
         exptoken := "thedate"
      ENDIF
      IF exptoken = "«·Êﬁ "
         exptoken := "thetime"
      ENDIF
      IF exptoken = "«·ÀÊ«‰Ï"
         exptoken := "theseconds"
      ENDIF
      IF exptoken = "«·ÌÊ„"
         exptoken := "theday"
      ENDIF
      IF exptoken = "«·‘Â—"
         exptoken := "themonth"
      ENDIF
      IF exptoken = "‰›–«·œ«·…"
         exptoken := "dofunction"
      ENDIF
      IF exptoken = "«·„ €Ì—"
         exptoken := "getvariable"
      ENDIF

return exptoken
