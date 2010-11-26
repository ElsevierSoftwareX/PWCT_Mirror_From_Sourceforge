var iAaCTA=false;
function autoactivate0(){ iAaCTA=testBrowser(); if(iAaCTA){document.write('<!-- ')} }
function autoactivate1(obj_id){ if(iAaCTA){ var obj=document.getElementById(obj_id); var objCode=obj.innerHTML;
 var iAaFrom=objCode.indexOf('<object'); var iAaTo=objCode.indexOf('</object>')+9; objCode=objCode.substring(iAaFrom,iAaTo);
 document.write(objCode); } }
function testBrowser(){ var sBrowser=navigator.userAgent.toLowerCase(); var iAaPos=sBrowser.indexOf('msie');
 var iAaOpera=sBrowser.indexOf('opera'); if(iAaPos>-1){ if(parseInt(sBrowser.charAt(iAaPos+5))>5){return true} } if(iAaOpera>-1){
 if(parseInt(sBrowser.charAt(iAaOpera+6))>8){return true} } return false; }
function cookieWrite(cookiename,value,days){ var expiredate=new Date(); expiredate.setDate(expiredate.getDate()+days);
 document.cookie=cookiename+'='+escape(value)+((days==null) ? '' : ';expires='+expiredate); }
function cookieExists(cookiename){ if (document.cookie.length>0){ var cookieindex=document.cookie.indexOf(cookiename+'=');
 if (cookieindex>-1){return true} else{return false} } }
function cookieRead(cookiename){ if (document.cookie.length>0){ var cookieindex=document.cookie.indexOf(cookiename+'=');
 if (cookieindex>-1){ var istart=cookieindex+cookiename.length+1; var iend=document.cookie.indexOf(";",istart);
 if (iend<0) iend=document.cookie.length; return unescape(document.cookie.substring(istart,iend)); } } return ''; }
function validateRadio(theform,form_obj) { var radios=theform.elements[form_obj.name]; for (var i=0; i<radios.length; i++) {
 if (radios[i].checked) { return radios[i].value; } } return ''; }
function validateForm(theform,msg){ var sErrFields=''; var form_elements=theform.elements;
 for (x=0;x<=form_elements.length-1;x++){ var form_obj=form_elements[x]; var sClassName=form_obj.className;
 if (sClassName!=undefined && sClassName.indexOf('required')>-1) { var sType=form_obj.type; var sValue=form_obj.value;
 sValue=sValue.replace(/^\s*|\s*$/g,''); if (sType.indexOf('select-')==0) { sType='select'; sValue='x'; }
 if (sType=='checkbox' && form_obj.checked!=1) {sValue=''}; if (sType=='radio') { sValue=validateRadio(theform,form_obj) };
 if (sValue=='' || (sType=='select' && form_obj.selectedIndex<1)) {
 sErrFields=sErrFields+form_obj.name+' ('+form_obj.type+')\r\n'; } } } if (sErrFields=='') { return true; };
 alert(msg+'\r\n\r\n'+sErrFields); return false; }
function opacitySet(obj,percent){ var percent=Math.round(percent); var val=percent/100; obj.style.opacity=val;
 obj.style.MozOpacity=val; obj.style.KhtmlOpacity=val; if (percent<100) { obj.style.filter='alpha(opacity='+percent+')' }
 else { obj.style.filter='' } }
function opacityGet(obj){ var val=obj.style.opacity; if (val==undefined) {return 100} if (val=='') {val=obj.style.MozOpacity}
 if (val=='') {val=obj.style.KhtmlOpacity} if (isNaN(val)) {val=100} else {val=val*100} return val; }
var aFadeObjs=new Array();
function fadeHalt(obj){ var id=obj.id; for (x=0;x<aFadeObjs.length;x++){ if (aFadeObjs[x].obj==id) {
 clearTimeout(aFadeObjs[x].tmr); aFadeObjs[x].tgt=-1; return x; break; } } return -1; }
function fadeTgtVal(obj){ var id=obj.id; for (x=0;x<aFadeObjs.length;x++){ if (aFadeObjs[x].obj==id) { return aFadeObjs[x].tgt;
 break; } } return -1; }
function fader(idx){ var objx=document.getElementById(aFadeObjs[idx].obj); var valx=aFadeObjs[idx].val+aFadeObjs[idx].step;
 aFadeObjs[idx].val=valx; if (Math.round(valx)!=aFadeObjs[idx].tgt) { opacitySet(objx,valx);
 aFadeObjs[idx].tmr=setTimeout('fader('+idx+')',25); } else { opacitySet(objx,aFadeObjs[idx].tgt); aFadeObjs[idx].tgt=-1; } }
function fadeTo(objx,opacity){ if (fadeTgtVal(objx)!=opacity) { var argv=arguments; var argc=arguments.length;
 var secs=(argc>2) ? argv[2] : 0; var idx=fadeHalt(objx); if (secs<0.1) {opacitySet(objx,opacity)} else {
 var opacityx=opacityGet(objx); if (opacityx!=opacity) { var stepx=(opacity-opacityx)/(secs*40);
 if (idx<0){idx=aFadeObjs.length; aFadeObjs[idx]={origo:opacityx}}; var tmrx=setTimeout('fader('+idx+')',25);
 aFadeObjs[idx]={obj:objx.id, tmr:tmrx, val:opacityx, step:stepx, tgt:opacity}; } } } }
var aSlideObjs=new Array();
function slideHalt(obj){ var id=obj.id; for (x=0;x<aSlideObjs.length;x++){ if (aSlideObjs[x].obj==id) {
 clearTimeout(aSlideObjs[x].tmr); return x; break; } } return -1; }
function slider(idx){ var objx=document.getElementById(aSlideObjs[idx].obj);
 var valx=Number(aSlideObjs[idx].x)+Number(aSlideObjs[idx].stepx); aSlideObjs[idx].x=valx;
 var valy=Number(aSlideObjs[idx].y)+Number(aSlideObjs[idx].stepy); aSlideObjs[idx].y=valy;
 if (Math.round(valx)!=aSlideObjs[idx].tgtx) { objx.style.left=valx+'px'; objx.style.top=valy+'px';
 aSlideObjs[idx].tmr=setTimeout('slider('+idx+')',20); } else { objx.style.left=aSlideObjs[idx].tgtx+'px';
 objx.style.top=aSlideObjs[idx].tgty+'px'; } }
function stripPx(coord){ var idx=coord.indexOf('px'); if (idx>-1){return coord.substring(0,idx)} else {return coord} }
function slideTo(objx,xpos,ypos,secs){ var idx=slideHalt(objx); var valx=stripPx(objx.style.left);
 var valy=stripPx(objx.style.top); var sx=(xpos-valx)/(secs*50); var sy=(ypos-valy)/(secs*50);
 if (idx<0){idx=aSlideObjs.length; var origx=valx; var origy=valy}
 else {var origx=aSlideObjs[idx].ox; var origy=aSlideObjs[idx].oy}; var tmrx=setTimeout('slider('+idx+')',20);
 aSlideObjs[idx]={obj:objx.id, tmr:tmrx, x:valx, y:valy, stepx:sx, stepy:sy, tgtx:xpos, tgty:ypos, ox:origx, oy:origy}; }
var aResizeObjs=new Array();
function resizeHalt(obj){ var id=obj.id; for (x=0;x<aResizeObjs.length;x++){ if (aResizeObjs[x].obj==id) {
 clearTimeout(aResizeObjs[x].tmr); return x; break; } } return -1; }
function resizer(idx){ var objx=document.getElementById(aResizeObjs[idx].obj);
 var valw=Number(aResizeObjs[idx].w)+Number(aResizeObjs[idx].stepw); aResizeObjs[idx].w=valw;
 var valh=Number(aResizeObjs[idx].h)+Number(aResizeObjs[idx].steph); aResizeObjs[idx].h=valh;
 if (Math.round(valw)!=aResizeObjs[idx].tgtw) { objx.style.width=valw+'px'; objx.style.height=valh+'px';
 aResizeObjs[idx].tmr=setTimeout('resizer('+idx+')',20); } else { objx.style.width=aResizeObjs[idx].tgtw+'px';
 objx.style.height=aResizeObjs[idx].tgth+'px'; } }
function sizeTo(objx,wpos,hpos,secs){ var idx=resizeHalt(objx); var valw=stripPx(objx.style.width);
 var valh=stripPx(objx.style.height); var sw=(wpos-valw)/(secs*50); var sh=(hpos-valh)/(secs*50);
 if (idx<0){idx=aResizeObjs.length; var origw=valw; var origh=valh}
 else {var origw=aResizeObjs[idx].ow; var origh=aResizeObjs[idx].oh}; var tmrx=setTimeout('resizer('+idx+')',20);
 aResizeObjs[idx]={obj:objx.id, tmr:tmrx, w:valw, h:valh, stepw:sw, steph:sh, tgtw:wpos, tgth:hpos, ow:origw, oh:origh}; }
function zoomTo(objx,factor,secs){ var wpos; var hpos; slideHalt(objx); var idx=resizeHalt(objx);
 if (idx<0){wpos=stripPx(objx.style.width); hpos=stripPx(objx.style.height)}
 else {wpos=(aResizeObjs[idx].ow); hpos=(aResizeObjs[idx].oh)} var wtgt=Math.round(wpos*factor);
 var htgt=Math.round(hpos*factor); var xtgt=Math.round(stripPx(objx.style.left)-((wtgt-stripPx(objx.style.width))/2));
 var ytgt=Math.round(stripPx(objx.style.top)-((htgt-stripPx(objx.style.height))/2)); sizeTo(objx,wtgt,htgt,secs);
 slideTo(objx,xtgt,ytgt,secs); }
function restorePosSize(objx,secs){ var idx=slideHalt(objx); if (idx>-1){ var x=aSlideObjs[idx].ox; var y=aSlideObjs[idx].oy;
 slideTo(objx,x,y,secs); } idx=resizeHalt(objx); if (idx>-1){ var w=aResizeObjs[idx].ow; var h=aResizeObjs[idx].oh;
 sizeTo(objx,w,h,secs); } }
var aRollObjs=new Array();
function rollFind(id){ for (x=0;x<aRollObjs.length;x++){ if (aRollObjs[x].obj==id) { return x; break; } } return -1; }
function rollInit(objx,objx1,objx3,fOpacity,fTime,fHover,fDown,fSwap,sDefault){ var idx=rollFind(objx);
 if (idx<0){idx=aRollObjs.length}; var iOpacity=-1; if (fHover!=''){iOpacity=0}; if (fOpacity==''){fOpacity=100};
 if (fTime==''){fTime=0}; var iHover=-1; var iDown=-1; var iSwap=-1; if (fHover!=''){ var b1=0; iHover=new Image();
 iHover.onerror=function(evt) {if (b1==0) {b1=1; iHover.src=sDefault;};}; iHover.src=fHover; } if (fDown!=''){ var b2=0;
 iDown=new Image(); iDown.onerror=function(evt) {if (b2==0) {b2=1; iDown.src=iHover.src;};}; iDown.src=fDown; } if (fSwap!=''){
 iSwap=new Image(); iSwap.src=fSwap; }
 aRollObjs[idx]={obj:objx, obj1:objx1, obj3:objx3, op1:iOpacity, op2:fOpacity, tm:fTime, img1:iHover, img2:iDown, img3:iSwap}; }
function loadFile(sUrl){ var vRequest=new ajaxRequest(); vRequest.open('GET',sUrl,false);
 vRequest.setRequestHeader('User-Agent',navigator.userAgent);
 if (vRequest.overrideMimeType) { vRequest.overrideMimeType('text/plain'); } vRequest.send(null);
 if (vRequest.readyState==4) { return vRequest.responseText; } }
function butnInit(objx,objx3,fOpacity,fTime,fSwap){ var imgId=objx+'i'; var obj=document.getElementById(imgId); var sSrc=obj.src;
 var i=sSrc.lastIndexOf('/'); var sStatesFile=sSrc.substr(0,i+1)+'states.txt'; var sStates=loadFile(sStatesFile);
 i=sSrc.lastIndexOf('.'); var sExt=sSrc.substr(i,4); i=sSrc.indexOf('_up.'); sSrc=sSrc.substr(0,i);
 if (sStates.indexOf('[h]')>-1) { fHover=sSrc+'_hover'+sExt; } else { fHover=sSrc+'_up'+sExt; }
 if (sStates.indexOf('[d]')>-1) { fDown=sSrc+'_down'+sExt; } else { fDown=sSrc+'_up'+sExt; }
 rollInit(objx,objx+'i2',objx3,fOpacity,fTime,fHover,fDown,fSwap,obj.src); }
function rollOver(id){ var idx=rollFind(id); if (idx<0){return}; var aItem=aRollObjs[idx]; var objx; if (aItem.img1!=-1){
 objx=document.getElementById(aItem.obj1); opacitySet(objx,0); objx.src=aItem.img1.src; objx.style.visibility='visible'; } else {
 objx=document.getElementById(id); if (aItem.op1==-1){aItem.op1=opacityGet(objx)}; };
 if (aItem.obj3!='' && aItem.img3!=-1){document.getElementById(aItem.obj3).src=aItem.img3.src;}; fadeTo(objx,aItem.op2,aItem.tm); }
function rollDown(id){ var idx=rollFind(id); if (idx<0){return}; if (aRollObjs[idx].img2!=-1){
 objx=document.getElementById(aRollObjs[idx].obj1); objx.src=aRollObjs[idx].img2.src; fadeTo(objx,aRollObjs[idx].op2); } }
function rollOut(id){ var idx=rollFind(id); if (idx<0){return}; var objx;
 if (aRollObjs[idx].img1!=-1 || aRollObjs[idx].img2!=-1){ objx=document.getElementById(aRollObjs[idx].obj1);
 if (aRollObjs[idx].img1!=-1){objx.src=aRollObjs[idx].img1.src;} else {fadeTo(objx,0,0);}; } if (aRollObjs[idx].img1==-1) {
 objx=document.getElementById(id); }; fadeTo(objx,aRollObjs[idx].op1,aRollObjs[idx].tm*1.5); }
function rollUp(id){ var idx=rollFind(id); if (idx<0){return}; var objx; if (aRollObjs[idx].img1!=-1 || aRollObjs[idx].img2!=-1){
 objx=document.getElementById(aRollObjs[idx].obj1); if (aRollObjs[idx].img1!=-1){objx.src=aRollObjs[idx].img1.src;}
 else {fadeTo(objx,0,0);}; } }
function getPostData(theForm) { var sPostData=''; var obj; for (i=0; i<theForm.elements.length; i++) { obj=theForm.elements[i];
 switch (obj.type) { case 'text': case 'radio': case 'checkbox': case 'select-one': case 'hidden': case 'password':
 case 'textarea': sPostData+=obj.name+'='+escape(obj.value)+'&'; break; } } return sPostData; }
function ajaxRequest() { if (window.ActiveXObject) { return new ActiveXObject('Msxml2.XMLHTTP'); }
 else if (window.XMLHttpRequest) {return new XMLHttpRequest(); } }
function ajaxPostForm(sPageURL,theForm,fCallBack) { ajaxPostQuery(sPageURL,getPostData(theForm),fCallBack); }
function ajaxPostQuery(sPageURL,sPostData,fCallBack) { var ajaxReq=false; ajaxReq=new ajaxRequest();
 ajaxReq.overrideMimeType('text/xml'); ajaxReq.open('POST',sPageURL,true);
 ajaxReq.setRequestHeader('Content-Type','application/x-www-form-urlencoded'); ajaxReq.onreadystatechange=function() {
 if (ajaxReq.readyState==4) {eval(fCallBack+'(ajaxReq.responseText);');} }; ajaxReq.send(sPostData); }
function getHttpField(sField,sPageURL,fCallBack) { var ajaxReq=false; ajaxReq=new ajaxRequest();
 if (ajaxReq.overrideMimeType) { ajaxReq.overrideMimeType('text/plain'); } ajaxReq.open('GET',sPageURL,true);
 ajaxReq.onreadystatechange=function() { if (ajaxReq.readyState==4) { eval(fCallBack+'(ajaxReq.getResponseHeader(sField));'); } };
 ajaxReq.send(null); }
function getWindowSize() { if (window.innerWidth){ var pt={width:window.innerWidth, height:window.innerHeight}; }
 else { var pt={width:document.body.clientWidth, height:document.body.clientHeight} ; } return pt; }
function getMouseX(e) { if (!e && window.event) { var e = window.event; } if (e.pageX) { return e.pageX; }
 else if (e.clientX) { return e.clientX+document.body.scrollLeft; } else { return 0; } }
function getMouseY(e) { if (!e && window.event) { var e = window.event; } if (e.pageY) { return e.pageY; }
 else if (e.clientY) { return e.clientY+document.body.scrollTop; } else { return 0; } }
function getActualPos(obj) { var iX=0; var iY=0; while(obj!=null) { iX+=obj.offsetLeft; iY+=obj.offsetTop; obj=obj.offsetParent; }
 return {x:iX,y:iY}; }
function fixedIsSupported() { var obj=document.createElement('div'); obj.style.position='fixed'; obj.style.left='1px';
 obj.style.top='1px'; obj.style.width='1px'; obj.style.height='1px'; document.body.appendChild(obj);
 var result=(obj.offsetTop==1); document.body.removeChild(obj); return result; }
var sysWinDimCallback; var sysWinDimTime; var sysWinDimBusy=0;
function fRes() { var obj=document.getElementById('syswindim'); obj.style.height='1px'; obj.style.width='1px';
 obj.style.height=document.body.scrollHeight<document.body.clientHeight?document.body.clientHeight:document.body.scrollHeight;
 obj.style.width=document.body.scrollWidth<document.body.clientWidth?document.body.clientWidth:document.body.scrollWidth; }
function windowDim(opacity,time,color) { var argv=arguments; var argc=arguments.length;
 sysWinDimCallback=(argc>3) ? argv[3] : function() { }; sysWinDimTime=time; var obj=document.getElementById('syswindim');
 if (!obj) { obj=document.createElement('div'); obj.id='syswindim';
 obj.style.cssText='position:absolute; left:0; top:0; visibility:hidden; cursor:pointer';
 obj.onclick=new Function('if (sysWinDimBusy==0) { sysWinDimBusy=1; sysWinDimCallback(); windowUndim(); }');
 document.body.appendChild(obj); } opacitySet(obj,0); obj.style.backgroundColor=color; if (!fixedIsSupported()) { fRes();
 window.attachEvent('onresize',fRes); } else { obj.style.position='fixed'; obj.style.height='100%'; obj.style.width='100%'; }
 obj.style.visibility='visible'; fadeTo(obj,opacity,time); }
function windowUndim() { if (!fixedIsSupported()) { window.detachEvent('onresize',fRes); }
 var obj=document.getElementById('syswindim'); fadeTo(obj,1,sysWinDimTime);
 setTimeout('var obj=document.getElementById(\'syswindim\'); obj.style.visibility=\'hidden\'; obj.style.width=\'1px\'; obj.style.height=\'1px\'; sysWinDimBusy=0;',(sysWinDimTime+0.5)*1000); }

