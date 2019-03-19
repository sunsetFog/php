!function(e,t){var i=document.createElement("div"),s=function(t){this.options=e.extend(!0,{id:"__MUI_PREVIEWIMAGE",zoom:!0,header:'<span class="mui-preview-indicator"></span>',footer:""},t||{}),this.init(),this.initEvent()},n=s.prototype;n.init=function(){var t=this.options,s=document.getElementById(this.options.id);s||(i.innerHTML='<div id="{{id}}" class="mui-slider mui-preview-image mui-fullscreen"><div class="mui-preview-header">{{header}}</div><div class="mui-slider-group"></div><div class="mui-preview-footer mui-hidden">{{footer}}</div><div class="mui-preview-loading"><span class="mui-spinner mui-spinner-white"></span></div></div>'.replace(/\{\{id\}\}/g,this.options.id).replace("{{header}}",t.header).replace("{{footer}}",t.footer),document.body.appendChild(i.firstElementChild),s=document.getElementById(this.options.id)),this.element=s,this.scroller=this.element.querySelector(e.classSelector(".slider-group")),this.indicator=this.element.querySelector(e.classSelector(".preview-indicator")),this.loader=this.element.querySelector(e.classSelector(".preview-loading")),t.footer&&this.element.querySelector(e.classSelector(".preview-footer")).classList.remove(e.className("hidden")),this.addImages()},n.initEvent=function(){var t=this;e(document.body).on("click","img[data-preview-src]",function(){return!t.isAnimationing()&&(t.open(this),!1)});var i=null,s=function(){!i&&(i=e.later(function(){t.isInAnimation=!0,t.loader.removeEventListener("tap",s),t.scroller.removeEventListener("tap",s),t.close()},300))};this.scroller.addEventListener("doubletap",function(){i&&(i.cancel(),i=null)}),this.element.addEventListener("webkitAnimationEnd",function(){t.element.classList.contains(e.className("preview-out"))?(t.element.style.display="none",t.element.classList.remove(e.className("preview-out")),i=null):(t.loader.addEventListener("tap",s),t.scroller.addEventListener("tap",s)),t.isInAnimation=!1}),this.element.addEventListener("slide",function(i){if(t.options.zoom){var s=t.element.querySelector(".mui-zoom-wrapper:nth-child("+(t.lastIndex+1)+")");s&&e(s).zoom().setZoom(1)}var n=i.detail.slideNumber;t.lastIndex=n,t.indicator&&(t.indicator.innerText=n+1+"/"+t.currentGroup.length),t._loadItem(n)})},n.isAnimationing=function(){return!!this.isInAnimation||(this.isInAnimation=!0,!1)},n.addImages=function(e,t){this.groups={};var i=[];if((i=e?"__DEFAULT"===e?document.querySelectorAll("img[data-preview-src]:not([data-preview-group])"):document.querySelectorAll("img[data-preview-src][data-preview-group='"+e+"']"):document.querySelectorAll("img[data-preview-src]")).length)for(var s=0,n=i.length;s<n;s++)this.addImage(i[s])},n.addImage=function(e){var t=e.getAttribute("data-preview-group");t=t||"__DEFAULT",this.groups[t]||(this.groups[t]=[]);var i=e.getAttribute("src");if(e.__mui_img_data&&e.__mui_img_data.src===i)this.groups[t].push(e.__mui_img_data);else{var s=e.getAttribute("data-preview-src");s||(s=i);var n={src:i,lazyload:i===s?"":s,loaded:i===s,sWidth:0,sHeight:0,sTop:0,sLeft:0,sScale:1,el:e};this.groups[t].push(n),e.__mui_img_data=n}},n.empty=function(){this.scroller.innerHTML=""},n._initImgData=function(i,s){if(!i.sWidth){var n=i.el;i.sWidth=n.offsetWidth,i.sHeight=n.offsetHeight;var a=e.offset(n);i.sTop=a.top,i.sLeft=a.left,i.sScale=Math.max(i.sWidth/t.innerWidth,i.sHeight/t.innerHeight)}s.style.webkitTransform="translate3d(0,0,0) scale("+i.sScale+")"},n._getScale=function(e,t){var i=e.width/t.width,s=e.height/t.height;return i<=s?e.height/(t.height*i):e.width/(t.width*s)},n._imgTransitionEnd=function(t){var i=t.target;i.classList.remove(e.className("transitioning")),i.removeEventListener("webkitTransitionEnd",this._imgTransitionEnd.bind(this))},n._loadItem=function(t,i){var s=this.scroller.querySelector(e.classSelector(".slider-item:nth-child("+(t+1)+")")),n=this.currentGroup[t],a=s.querySelector("img");if(this._initImgData(n,a),i){var r=this._getPosition(n);a.style.webkitTransitionDuration="0ms",a.style.webkitTransform="translate3d("+r.x+"px,"+r.y+"px,0) scale("+n.sScale+")",a.offsetHeight}if(!n.loaded&&a.getAttribute("data-preview-lazyload")){var o=this;o.loader.classList.add(e.className("active")),a.style.webkitTransitionDuration="0.5s",a.addEventListener("webkitTransitionEnd",o._imgTransitionEnd.bind(o)),a.style.webkitTransform="translate3d(0,0,0) scale("+n.sScale+")",this.loadImage(a,function(){n.loaded=!0,a.src=n.lazyload,o._initZoom(s,this.width,this.height),a.classList.add(e.className("transitioning")),a.addEventListener("webkitTransitionEnd",o._imgTransitionEnd.bind(o)),a.setAttribute("style",""),a.offsetHeight,o.loader.classList.remove(e.className("active"))})}else n.lazyload&&(a.src=n.lazyload),this._initZoom(s,a.width,a.height),a.classList.add(e.className("transitioning")),a.addEventListener("webkitTransitionEnd",this._imgTransitionEnd.bind(this)),a.setAttribute("style",""),a.offsetHeight;this._preloadItem(t+1),this._preloadItem(t-1)},n._preloadItem=function(t){var i=this.scroller.querySelector(e.classSelector(".slider-item:nth-child("+(t+1)+")"));if(i){var s=this.currentGroup[t];if(!s.sWidth){var n=i.querySelector("img");this._initImgData(s,n)}}},n._initZoom=function(t,i,s){if(this.options.zoom&&!t.getAttribute("data-zoomer"))if("IMG"===t.querySelector(e.classSelector(".zoom")).tagName){var n=this._getScale({width:t.offsetWidth,height:t.offsetHeight},{width:i,height:s});e(t).zoom({maxZoom:Math.max(n,1)})}else e(t).zoom()},n.loadImage=function(e,t){var i=function(){t&&t.call(this)},s=new Image;s.onload=i,s.onerror=i,s.src=e.getAttribute("data-preview-lazyload")},n.getRangeByIndex=function(e,t){return{from:0,to:t-1}},n._getPosition=function(e){var i=e.sLeft-t.pageXOffset,s=e.sTop-t.pageYOffset;return{left:i,top:s,x:i-(t.innerWidth-e.sWidth)/2,y:s-(t.innerHeight-e.sHeight)/2}},n.refresh=function(i,s){this.currentGroup=s;for(var n=s.length,a=[],r=this.getRangeByIndex(i,n),o=r.from,l=r.to+1,d=i,c="",m="",h=(t.innerWidth,t.innerHeight,0);o<l;o++,h++){var u=s[o],p="";u.sWidth&&(p="-webkit-transform:translate3d(0,0,0) scale("+u.sScale+");transform:translate3d(0,0,0) scale("+u.sScale+")"),m='<div class="mui-slider-item mui-zoom-wrapper {{className}}"><div class="mui-zoom-scroller"><img src="{{src}}" data-preview-lazyload="{{lazyload}}" style="{{style}}" class="mui-zoom"></div></div>'.replace("{{src}}",u.src).replace("{{lazyload}}",u.lazyload).replace("{{style}}",p),o===i?(d=h,c=e.className("active")):c="",a.push(m.replace("{{className}}",c))}this.scroller.innerHTML=a.join(""),this.element.style.display="block",this.element.classList.add(e.className("preview-in")),this.lastIndex=d,this.element.offsetHeight,e(this.element).slider().gotoItem(d,0),this.indicator&&(this.indicator.innerText=d+1+"/"+this.currentGroup.length),this._loadItem(d,!0)},n.openByGroup=function(e,t){e=Math.min(Math.max(0,e),this.groups[t].length-1),this.refresh(e,this.groups[t])},n.open=function(t,i){this.element.classList.contains(e.className("preview-in"))||("number"==typeof t?(i=i||"__DEFAULT",this.addImages(i,t),this.openByGroup(t,i)):(i=(i=t.getAttribute("data-preview-group"))||"__DEFAULT",this.addImages(i,t),this.openByGroup(this.groups[i].indexOf(t.__mui_img_data),i)))},n.close=function(i,s){this.element.classList.remove(e.className("preview-in")),this.element.classList.add(e.className("preview-out"));var n=this.scroller.querySelector(e.classSelector(".slider-item:nth-child("+(this.lastIndex+1)+")")).querySelector("img");if(n){n.classList.add(e.className("transitioning"));var a=this.currentGroup[this.lastIndex],r=this._getPosition(a),o=r.left,l=r.top;l>t.innerHeight||o>t.innerWidth||l<0||o<0?(n.style.opacity=0,n.style.webkitTransitionDuration="0.5s",n.style.webkitTransform="scale("+a.sScale+")"):(this.options.zoom&&e(n.parentNode.parentNode).zoom().toggleZoom(0),n.style.webkitTransitionDuration="0.5s",n.style.webkitTransform="translate3d("+r.x+"px,"+r.y+"px,0) scale("+a.sScale+")")}for(var d=this.element.querySelectorAll(e.classSelector(".zoom-wrapper")),c=0,m=d.length;c<m;c++)e(d[c]).zoom().destory()},n.isShown=function(){return this.element.classList.contains(e.className("preview-in"))};var a=null;e.previewImage=function(e){return a||(a=new s(e)),a},e.getPreviewImage=function(){return a}}(mui,window);