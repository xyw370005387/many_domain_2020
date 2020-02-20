<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" id="top" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]><html lang="en" id="top" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]><html lang="en" id="top" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]><html lang="en" id="top" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="fr" id="top" class="no-js">
<head>
    <meta charset="utf-8"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQYEUV5XARACVFJbBwgFUg==",licenseKey:"a0c3a06b6c",applicationID:"20390924"};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(21),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,s){try{p?p-=1:o(s||new UncaughtException(t,n,e),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t,n){var e=n?null:c.now();i("err",[t,e])}var i=t("handle"),a=t(22),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),c.xhrWrappable&&t(10),d=!0)}s.on("fn-start",function(t,n,e){d&&(p+=1)}),s.on("fn-err",function(t,n,e){d&&!e[l]&&(f(e,l,function(){return!0}),this.thrown=!0,o(e))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(9),s=t(8),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof x&&(this.bstStart=y.now())}),o.on(w,function(t,n){var e=t[0];e instanceof x&&i("bst",[e,n,this.bstStart,y.now()])}),a.on(m,function(t,n,e){this.bstStart=y.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),this.bstType])}),s.on(m,function(){this.bstStart=y.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),"requestAnimationFrame"])}),o.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),o.on(g+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){function r(t,n,e){var r=t[n];"function"==typeof r&&(t[n]=function(){var t=i(arguments),n={};o.emit(e+"before-start",[t],n);var a;n[m]&&n[m].dt&&(a=n[m].dt);var s=r.apply(this,t);return o.emit(e+"start",[t,a],s),s.then(function(t){return o.emit(e+"end",[null,t],s),t},function(t){throw o.emit(e+"end",[t],s),t})})}var o=t("ee").get("fetch"),i=t(22),a=t(21);n.exports=o;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,l=s.Response,p=s.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,n){r(d[h],n,f),r(l[h],n,f)}),r(s,"fetch",c),o.on(c+"end",function(t,n){var e=this;if(n){var r=n.headers.get("content-length");null!==r&&(e.rxSize=r),o.emit(c+"done",[null,n],e)}else o.emit(c+"done",[t],e)}))},{}],7:[function(t,n,e){var r=t("ee").get("history"),o=t("wrap-function")(r);n.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,n,e){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],9:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t("wrap-function")(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],10:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",s)}function i(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];n.exports=u;var x=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,n,e){function r(t){if(!i(t))return null;var n=window.NREUM;if(!n.loader_config)return null;var e=(n.loader_config.accountID||"").toString()||null,r=(n.loader_config.agentID||"").toString()||null,s=(n.loader_config.trustKey||"").toString()||null;if(!e||!r)return null;var c=a.generateCatId(),f=a.generateCatId(),u=Date.now(),d=o(c,f,u,e,r,s);return{header:d,guid:c,traceId:f,timestamp:u}}function o(t,n,e,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:n,ti:e}};return i&&r!==i&&(s.d.tk=i),btoa(JSON.stringify(s))}function i(t){var n=!1,e=!1,r={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(r=NREUM.init.distributed_tracing,e=!!r.enabled),e)if(t.sameOrigin)n=!0;else if(r.allowed_origins instanceof Array)for(var o=0;o<r.allowed_origins.length;o++){var i=s(r.allowed_origins[o]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){n=!0;break}}return e&&n}var a=t(19),s=t(13);n.exports={generateTracePayload:r,shouldGenerateTrace:i}},{}],12:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);n.aborted||(e.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==n.status&&(n.status=0):i(this,t),e.cbTime=this.cbTime,u.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime]))}}function o(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.parsedOrigin=c(n),t.sameOrigin=t.parsedOrigin.sameOrigin}function i(t,n){t.params.status=n.status;var e=w(n,t.lastSize);if(e&&(t.metrics.rxSize=e),t.sameOrigin){var r=n.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,n.loadCaptureCalled=!1,t.addEventListener("load",function(e){i(n,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},o(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var e=f(this.parsedOrigin);e&&e.header&&(n.setRequestHeader("newrelic",e.header),this.dt=e)}),u.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=m(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<l;s++)n.addEventListener(d[s],this.listener,!1)}),u.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),u.on("xhr-load-added",function(t,n){var e=""+p(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,n){var e=""+p(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],n)}),u.on("removeEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],n)}),u.on("fn-start",function(t,n,e){n instanceof v&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,n){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)}),u.on("fetch-before-start",function(t){var n,e=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=c(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var r=f(this.parsedOrigin);if(r&&r.header){var o=r.header;if("string"==typeof t[0]){var i={};for(var a in e)i[a]=e[a];i.headers=new Headers(e.headers||{}),i.headers.set("newrelic",o),this.dt=r,t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&(t[0].headers.append("newrelic",o),this.dt=r)}})}},{}],13:[function(t,n,e){var r={};n.exports=function(t){if(t in r)return r[t];var n=document.createElement("a"),e=window.location,o={};n.href=t,o.port=n.port;var i=n.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=n.hostname||e.hostname,o.pathname=n.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!n.protocol||":"===n.protocol||n.protocol===e.protocol,s=n.hostname===document.domain&&n.port===e.port;return o.sameOrigin=a&&(!n.hostname||s),"/"===o.pathname&&(r[t]=o),o}},{}],14:[function(t,n,e){function r(t,n){var e=t.responseType;return"json"===e&&null!==n?n:"arraybuffer"===e||"blob"===e||"json"===e?o(t.response):"text"===e||"document"===e||""===e||void 0===e?o(t.responseText):void 0}var o=t(16);n.exports=r},{}],15:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(21),s=t(22),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],e),t}finally{c.emit("fn-end",[f.now()],e)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t,n){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,n])}},{}],16:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],17:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],18:[function(t,n,e){function r(t,n){var e=t.getEntries();e.forEach(function(t){"first-paint"===t.name?c("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&c("timing",["fcp",Math.floor(t.startTime)])})}function o(t,n){var e=t.getEntries();e.length>0&&c("lcp",[e[e.length-1]])}function i(t){if(t instanceof u&&!l){var n,e=Math.round(t.timeStamp);n=e>1e12?Date.now()-e:f.now()-e,l=!0,c("timing",["fi",e,{type:t.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,s,c=t("handle"),f=t("loader"),u=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),s=new PerformanceObserver(o);try{a.observe({entryTypes:["paint"]}),s.observe({entryTypes:["largest-contentful-paint"]})}catch(d){}}if("addEventListener"in document){var l=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(t){document.addEventListener(t,i,!1)})}}},{}],19:[function(t,n,e){function r(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(n=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&Uint8Array&&(n=r.getRandomValues(new Uint8Array(31)));for(var o=[],i=0;i<16;i++)o.push(t().toString(16));return o.join("")}n.exports={generateUuid:r,generateCatId:o}},{}],20:[function(t,n,e){function r(t,n){if(!o)return!1;if(t!==o)return!1;if(!n)return!0;if(!i)return!1;for(var e=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==e[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}n.exports={agent:o,version:i,match:r}},{}],21:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],22:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],23:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=m(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([x,e,r,a]),a}}function p(t,n){g[t]=m(t).concat(n)}function h(t,n){var e=g[t];if(e)for(var r=0;r<e.length;r++)e[r]===n&&e.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||o(e)}function v(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:e,get:w,listeners:m,context:n,buffer:v,abort:a,aborted:!1};return x}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(21),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!E++){var t=b.info=NREUM.info,n=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=p.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(21),u=t("ee"),d=t(20),l=window,p=l.document,h="addEventListener",m="attachEvent",w=l.XMLHttpRequest,v=w&&w.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:w,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var g=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},x=w&&v&&v[h]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:g,features:{},xhrWrappable:x,userAgent:d};t(15),t(18),p[h]?(p[h]("DOMContentLoaded",i,!1),l[h]("load",r,!1)):(p[m]("onreadystatechange",o),l[m]("onload",r)),c("mark",["firstbyte",s],null,"api");var E=0,O=t(23)},{}],"wrap-function":[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(22),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}]},{},["loader",2,12,4,3]);</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vente en ligne de matériel électrique de grandes marques à bas prix - 123elec.com</title>

<meta name="description" content="Boutique en ligne de matériel électrique divers spécialisée dans les installations électriques domestiques et proposant des prix intéressants sur de grandes marques (Legrand, Schneider, Hager, Wago, etc.) sur l'ensemble des équipements et appareillages électriques." />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="https://cdn.123elec.com/media/favicon/default/favicon_123elec.ico" type="image/x-icon" />
<link rel="shortcut icon" href="https://cdn.123elec.com/media/favicon/default/favicon_123elec.ico" type="image/x-icon" />

    <meta property="og:image" content="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/batiment-v2.png" />



<script nodefer type="text/javascript">
    //<![CDATA[
    var WEBSITE_URL = 'https://www.123elec.com/';
    //]]>
</script>
<link rel="stylesheet" type="text/css" href="https://cdn.123elec.com/skin/frontend/rwd/123elec/css/styles.css?v=1574173177" media="all" />






























<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic" />


<meta name="viewport" content="initial-scale=1.0, width=device-width" />






<!-- Google Tag Manager -->

<!-- End Google Tag Manager -->




<meta property="og:type" content="article"/>
<meta property="og:title" content="Vente en ligne de matériel électrique de grandes marques à bas prix - 123elec.com"/>
<meta property="og:description" content="Boutique en ligne de matériel électrique divers spécialisée dans les installations électriques domestiques et proposant des prix intéressants sur de grandes marques (Legrand, Schneider, Hager, Wago, etc.) sur l'ensemble des équipements et appareillages électriques."/>
<meta property="og:url" content="https://www.123elec.com"/>
<meta property="og:site_name" content="123elec"/>
    <link rel="alternate" hreflang="es" href="https://www.123elec.es" />
    <link rel="alternate" hreflang="fr" href="https://www.123elec.com" />
<!--f452d3d8835ef9b1f17e2e7f587317e2-->
<!--88422a273d55e130f48fc2462aed9bbd-->
</head>
<body class=" cms-index-index cms-home async-load part-customer">
<!-- main container of all the page elements -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe data-src="https://www.googletagmanager.com/ns.html?id=GTM-8HWF"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="wrapper">
    <div class="page">
        <!-- header of the page -->
        <header id="header">
    <div class="main-container">
        <div class="top-header async" data-asyncblock="pre_header">
            <div class="holder">
<ul class="user-control">
<li><a href="https://www.123elec.com/nos-engagements" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="nos_engagements" data-promotion-position="1" data-promotion-id="nos_engagements">Nos engagements</a></li>
<li><a href="https://www.123elec.com/demande-devis" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="devis" data-promotion-position="2" data-promotion-id="devis">DEVIS</a></li>
<li><a href="https://www.123elec.com/faq_123elec" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="faq" data-promotion-position="3" data-promotion-id="faq">Questions fr&eacute;quentes</a></li>
<li><a href="https://www.123elec.com/avantages_123elec_pros" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="avantages_pros" data-promotion-position="4" data-promotion-id="avantages_pros">Avantages PROS</a></li>
<li><a href="https://www.123elec.com/qui-sommes-nous" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="qui_sommes_nous" data-promotion-position="5" data-promotion-id="qui_sommes_nous">Qui sommes-nous?</a></li>
<li><a href="https://www.123elec.com/quickshopping/index/index" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="commande_rapide" data-promotion-position="6" data-promotion-id="commande_rapîde">Commande rapide</a></li>
<li><a href="https://www.123elec.com/contacts" data-promotion="true" data-promotion-creative="pre-header" data-promotion-name="contact" data-promotion-position="7" data-promotion-id="contact">Contact</a></li>
</ul>
<span class="client-info"><span>Service clients: </span><a href="tel:0481120080">04 81 12 00 80</a> </span></div>        </div>
        <div class="header-main" id="header_main">
            <!-- page logo -->
            <div class="logo"><a href="https://www.123elec.com/" title="123 elec"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo.png" width="94" height="94" alt="123 elec"></a></div>
            <h1>Votre référence en matériel électrique</h1>            <div class="user-box">
                <a href="https://www.123elec.com/customer/account/create/" class="my-account"><span class="ico-account"></span><span>Mon compte</span></a>
                <a href="https://www.123elec.com/customer/account/create/?pro=1" class="access"><span class="ico-pro"></span><span>Accès PROS</span></a>
                <div class="basket">
                    
<div class="box mini-cart cart-opener">
    <span class="added-basket minicart-qty">0</span>
    <img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/ico3.png" width="56" height="64" alt="" class="alignleft">
    <a href="https://www.123elec.com/checkout/cart/" class="basket-link">
        <b class="title">Votre panier</b>
        <span class="minicart-qty-label">0 produit</span>
        <span class="price minicart-amount">0,00 € <sup>TTC</sup></span>
    </a>
</div>
<div id="header-cart" class="basket-popup" style="display: none">
    <div class="minicart">
        <div id="c_cart_count">
                    <p class="empty empty-cart">Votre panier est vide.</p>
            </div>
</div></div>
                </div>
            </div>
            <!-- search form -->
            <div class="search-box">
                
<form id="search_mini_form" class="search-form" action="https://www.123elec.com/catalogsearch/result/" method="get">
    <div class="row">
        <input id="search" type="search" name="q" value="" class="input-text required-entry" maxlength="128" placeholder="Votre recherche..." />
        <input type="submit" value="Chercher">
    </div>

    <div id="search_autocomplete" class="search-autocomplete"></div>
    
</form>
                <span class="welcome-text">Nous sommes ravis de votre visite </span>
            </div>
        </div>
        <div class="site-info">
            <div class="box"><span class="ico-shipping"></span>
                <span class="text">
                    <b class="title">Livraison offerte</b>dès 250€ TTC de commande                </span>
            </div>
            <div class="box"><span class="ico-marque"></span>
                <span class="text">
                    <b class="title">Les grandes marques</b>au meilleur prix                </span>
            </div>
            <div class="box"><span class="ico-stock"></span>
                <span class="text">
                    <b class="title">Plus de 3000 articles</b>en stock permanent                </span>
            </div>
            <div class="box">
                <a href="https://www.123elec.com/contacts"><span class="ico-team"></span>
                    <span class="text">
                        <b class="title">Une équipe professionnelle</b>à votre écoute                    </span>
                </a>
            </div>
        </div>
    </div>
</header>        <!-- contain main informative part of the site -->
        <main role="main">
            <div class="main-container">
    <div class="control-panel">
        <div class="aside-nav">
            <a href="#" class="menu-opener"><span><span></span></span><i>TOUT LE MATERIEL</i></a>
            <!-- contain sidebar of the page -->
            <nav class="slide-holder">
                <ul class="slide-nav">
                        <li><a href="https://www.123elec.com/gamme-materiel-electrique.html" class="opener">Matériel électrique</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques.html" class="">Tableaux électriques</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-eco.html" class="">Tableaux électriques Eco</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-ikepe.html" class="">Tableaux électriques IKEPE</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-siemens.html" class="">Tableaux électriques Siemens</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-legrand.html" class="">Tableaux électriques Legrand</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-schneider.html" class="">Tableaux électriques Schneider</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-hager.html" class="">Tableaux électriques Hager</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/mini-tableaux.html" class="">Mini-tableaux électriques</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/accessoires-tableau.html" class="">Accessoires tableau électrique</a></li>    </ul></div></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs.html" class="">Disjoncteurs</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-eco.html" class="">Disjoncteurs Eco</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-ikepe.html" class="">Disjoncteurs IKEPE</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-siemens.html" class="">Disjoncteurs Siemens</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-legrand.html" class="">Disjoncteurs Legrand</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-schneider.html" class="">Disjoncteurs Schneider</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/disjoncteurs/disjoncteurs-hager.html" class="">Disjoncteurs Hager</a></li>    </ul></div></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels.html" class="">Interrupteurs différentiels</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-eco.html" class="">Interrupteurs différentiels Eco</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-ikepe.html" class="">Interrupteurs différentiels IKEPE</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-siemens.html" class="">Interrupteurs différentiels Siemens</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-legrand.html" class="">Interrupteurs différentiels Legrand</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-schneider.html" class="">Interrupteurs différentiels Schneider</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteurs-differentiels/interrupteurs-differentiels-hager.html" class="">Interrupteurs différentiels Hager</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur.html" class="">Modules de commande - Ecocompteur</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/compteur-energie.html" class="">Compteur d'énergie</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/telerupteur.html" class="">Télérupteur</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/contacteur-jour-nuit.html" class="">Contacteur jour/nuit</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/horloge-minuterie.html" class="">Horloge et minuterie</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/interrupteur-crepusculaire.html" class="">Interrupteur crépusculaire</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/delesteur.html" class="">Délesteur</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/modules-commande-ecocompteur/autres-modules-commande.html" class="">Autres modules de commande</a></li>    </ul></div></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/interrupteur-sectionneur.html" class="">Interrupteur sectionneur</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/parafoudres.html" class="">Parafoudres</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/parafoudres/parafoudres-courant-fort.html" class="">Parafoudres courant fort</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/parafoudres/parafoudres-courant-faible.html" class="">Parafoudres courant faible</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/gamme-materiel-electrique/mise-a-la-terre.html" class="">Mise à la terre</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/mise-a-la-terre/barrettes-de-terre-connecteurs.html" class="">Barrettes de terre et connecteurs</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/mise-a-la-terre/piquets-de-terre.html" class="">Piquets de terre</a></li>    </ul></div></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/coffrets-electriques-etanches.html" class="">Coffrets électriques étanches</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/coffrets-electriques-etanches/coffrets-electriques-etanches-nus.html" class="">Coffrets électriques étanches nus</a></li>    </ul></div></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf.html" class="">GTL - Branchement EDF</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf/coffrets-branchement.html" class="">Coffrets de branchement</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf/gaines-techniques-logement.html" class="">Gaines techniques de logement</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf/disjoncteurs-de-branchement.html" class="">Disjoncteurs de branchement</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf/bac-encastrement.html" class="">Bacs d'encastrement</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/gtl-branchement-edf/platines-accessoires.html" class="">Platines et accessoires</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/gamme-materiel-electrique/coffrets-chantier.html" class="">Coffrets de chantier</a></li><li><a href="https://www.123elec.com/gamme-materiel-electrique/borne-recharge-voiture-electrique.html" class="">Borne de recharge voiture électrique</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises.html" class="opener">Interrupteurs et prises</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand.html" class="">Interrupteurs et prises Legrand</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane.html" class="">Interrupteurs et prises Legrand Céliane</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane/legrand-celiane-complet.html" class="">Legrand Céliane complet</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane/mecanismes-legrand-celiane.html" class="">Mécanismes Legrand Céliane</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane/plaques-legrand-celiane.html" class="">Plaques Legrand Céliane</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane/enjoliveurs-legrand-celiane.html" class="">Enjoliveurs Legrand Céliane</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-celiane/accessoires-legrand-celiane.html" class="">Accessoires Legrand Céliane</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-mosaic.html" class="">Interrupteurs et prises Legrand Mosaïc</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-mosaic/mecanismes-legrand-mosaic.html" class="">Mécanismes Legrand Mosaic</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-mosaic/plaques-legrand-mosaic.html" class="">Plaques Legrand Mosaic</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-mosaic/accessoires-legrand-mosaic.html" class="">Accessoires Legrand Mosaic</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-niloe.html" class="">Interrupteurs et prises Legrand Niloé</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-niloe/mecanismes-legrand-niloe.html" class="">Mécanismes Legrand Niloé</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-niloe/plaques-legrand-niloe.html" class="">Plaques Legrand Niloé</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-niloe/accessoires-legrand-niloe.html" class="">Accessoires Legrand Niloé</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-dooxie.html" class="">Interrupteurs et prises Legrand Dooxie</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-dooxie/mecanismes-legrand-dooxie.html" class="">Mécanismes Legrand Dooxie</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/legrand-dooxie/plaques-legrand-dooxie.html" class="">Plaques Legrand Dooxie</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-legrand/supports-fixation-legrand-batibox.html" class="">Supports de fixation Legrand Batibox</a></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-schneider.html" class="">Interrupteurs et prises Schneider</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-schneider/schneider-odace.html" class="">Interrupteurs et prises Schneider Odace</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-schneider/schneider-odace/mecanismes-schneider-odace.html" class="">Mécanismes Schneider Odace</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-schneider/schneider-odace/plaques-schneider-odace.html" class="">Plaques Schneider Odace</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-schneider/schneider-odace/accessoires-schneider-odace.html" class="">Accessoires Schneider Odace</a></li></ul></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens.html" class="">Interrupteurs et prises Siemens</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-iris.html" class="">Interrupteurs et prises Siemens Delta iris</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-iris/mecanismes-siemens-delta-iris.html" class="">Mécanismes Siemens Delta Iris</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-iris/plaques-siemens-delta-iris.html" class="">Plaques Siemens Delta Iris</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-viva.html" class="">Interrupteurs et prises Siemens Delta Viva</a><ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-viva/mecanismes-siemens-delta-viva.html" class="">Mécanismes Siemens Delta Viva</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-viva/plaques-siemens-delta-viva.html" class="">Plaques Siemens Delta Viva</a></li></ul></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-siemens/siemens-delta-one.html" class="">Interrupteurs et prises Siemens Delta One</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-etanches.html" class="">Interrupteurs et prises étanches</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-etanches/siemens.html" class="">Interrupteurs et prises Siemens</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-etanches/legrand-plexo.html" class="">Interrupteurs et prises Legrand Plexo</a></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-saillie.html" class="">Interrupteurs et prises en saillie</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-saillie/legrand.html" class="">Interrupteurs et prises saillie Legrand</a></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/interrupteurs-et-prises-eco.html" class="">Interrupteurs et prises Eco</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/interrupteurs-et-prises/micro-module-eclairage.html" class="">Micro-modules éclairage</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/micro-module-eclairage/micro-modules-yokis.html" class="">Micro-modules Yokis</a></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/fiches-electriques.html" class="">Fiches électriques</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/fiches-electriques/fiches-16a.html" class="">Fiches 16A</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/fiches-electriques/fiches-cuisine.html" class="">Fiches pour cuisine</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/fiches-electriques/fiches-etanches.html" class="">Fiches étanches</a></li>    </ul></div></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/multiprises.html" class="">Multiprises</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/interrupteurs-et-prises/multiprises/multiprises-basiques.html" class="">Multiprises basiques</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/multiprises/multiprises-protegees.html" class="">Multiprises protégées</a></li><li><a href="https://www.123elec.com/interrupteurs-et-prises/multiprises/onduleurs.html" class="">Onduleurs</a></li>    </ul></div></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/cables-gaines-conduits.html" class="opener">Câbles, gaines et conduits</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-electriques.html" class="">Câbles électriques</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-electriques/cables-electriques-rigides-ro2v.html" class="">Câbles électriques rigides RO2V</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-electriques/cables-electriques-souples-ho7rnf.html" class="">Câbles électriques souples HO7RNF</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-electriques/cables-electriques-souples-ho5.html" class="">Câbles électriques souples HO5</a></li>    </ul></div></li><li><a href="https://www.123elec.com/cables-gaines-conduits/fils-electriques.html" class="">Fils électriques</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/fils-electriques/fils-electriques-rigides-ho7vu.html" class="">Fils électriques rigides HO7VU</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/fils-electriques/fils-electriques-rigides-ho7vr.html" class="">Fils électriques rigides HO7VR</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/fils-electriques/fils-electriques-souples-ho7vk.html" class="">Fils électriques souples HO7VK</a></li>    </ul></div></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia.html" class="">Câbles multimédia</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia/cables-informatiques-cat5.html" class="">Câbles Ethernet informatiques cat.5e</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia/cables-informatiques-cat6.html" class="">Câbles RJ45 informatiques cat.6</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia/cables-informatiques-grade-3-sat.html" class="">Câbles informatiques Grade 3 Sat</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia/cable-coaxial-tv.html" class="">Câble coaxial - TV</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/cables-multimedia/cables-telephone.html" class="">Câbles téléphone</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-nues.html" class="">Gaines électriques ICTA nues</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-nues/gaines-icta.html" class="">Gaines ICTA</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-nues/gaines-icta-glisse.html" class="">Gaines ICTA Glisse</a></li>    </ul></div></li><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-prefilees.html" class="">Gaines électriques ICTA préfilées</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-prefilees/gaines-prefilees.html" class="">Gaines préfilées</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/gaines-electriques-icta-prefilees/gaines-prefilees-multimedia.html" class="">Gaines préfilées multimédia</a></li>    </ul></div></li><li><a href="https://www.123elec.com/cables-gaines-conduits/colliers-fixation.html" class="">Colliers et fixations</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/cables-gaines-conduits/colliers-fixation/colliers.html" class="">Colliers</a></li><li><a href="https://www.123elec.com/cables-gaines-conduits/colliers-fixation/fixations-gaines-tubes.html" class="">Fixations pour tubes et gaines</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/cables-gaines-conduits/moulures.html" class="">Moulures</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/boites-connecteurs.html" class="opener">Boites et connecteurs</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/boites-connecteurs/boites-encastrement.html" class="">Boites encastrement</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/boites-connecteurs/boites-encastrement/boites-d-encastrement-a-sceller.html" class="">Boites à sceller</a></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-encastrement/boites-placo.html" class="">Boites placo</a></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-encastrement/boites-bbc.html" class="">Boites BBC</a></li>    </ul></div></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-dcl-luminaire.html" class="">Boites DCL pour luminaire</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/boites-connecteurs/boites-dcl-luminaire/dcl-placo.html" class="">DCL pour placo</a></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-dcl-luminaire/dcl-bbc.html" class="">DCL BBC</a></li>    </ul></div></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-derivation-encastrees.html" class="">Boites de dérivation encastrées</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/boites-connecteurs/boites-pavillonnaire.html" class="">Boites pavillonnaires</a></li><li><a href="https://www.123elec.com/boites-connecteurs/boites-derivation-etanches.html" class="">Boites de dérivation étanches</a></li><li><a href="https://www.123elec.com/boites-connecteurs/barrettes-connexion.html" class="">Barrettes de connexion</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/boites-connecteurs/bornes-connexion-rapide.html" class="">Bornes connexion rapide</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/boites-connecteurs/bornes-connexion-rapide/mini-bornes-connexion.html" class="">Mini bornes de connexion</a></li><li><a href="https://www.123elec.com/boites-connecteurs/bornes-connexion-rapide/bornes-connexion-standards.html" class="">Bornes de connexion standards</a></li>    </ul></div></li><li><a href="https://www.123elec.com/boites-connecteurs/gel-isolant.html" class="">Gel isolant</a></li><li><a href="https://www.123elec.com/boites-connecteurs/adhesifs-isolants.html" class="">Adhésifs isolants</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv.html" class="opener">Coffrets de communication VDI - TV</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication.html" class="">Coffrets de communication</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/coffrets-de-communication-basiques.html" class="">Coffrets de communication basiques</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/coffrets-de-communication-grade-1.html" class="">Coffrets de communication grade 1</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/coffrets-de-communication-grade-2-tv.html" class="">Coffrets de communication grade 2TV</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/coffrets-de-communication-grade-3-tnt-sat.html" class="">Coffrets de communication grade 3 TV/TNT/SAT</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/accessoires-vdi.html" class="">Accessoires VDI</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/coffrets-de-communication/accessoires-fibre-optique.html" class="">Accessoires fibre optique</a></li>    </ul></div></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv.html" class="">Réception TV</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv/antennes-sattelite.html" class="">Antennes satellite</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv/tetes-universelles.html" class="">Têtes universelles LNB</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv/antennes-interieures-tnt.html" class="">Antennes intérieures TNT</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv/antennes-exterieures-tnt.html" class="">Antennes extérieures TNT</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/reception-tv/antennes-caravane.html" class="">Antennes pour caravane</a></li>    </ul></div></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/mats-et-supports.html" class="">Mâts et supports</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/mats-et-supports/supports.html" class="">Supports</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/mats-et-supports/mats.html" class="">Mâts</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/amplis-repartiteurs.html" class="">Amplis et répartiteurs</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/connectique-tv.html" class="">Connectique TV</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/connectique-tv/connectique-coaxiale.html" class="">Connectique coaxiale</a></li><li><a href="https://www.123elec.com/coffrets-de-communication-vdi-tv/connectique-tv/connectique-hdmi.html" class="">Connectique HDMI</a></li>    </ul></div></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/eclairage-luminaire.html" class="opener">Eclairage - Ampoule et luminaire</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led.html" class="">Ampoules LED et tubes LED</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-led-classiques.html" class="">Ampoules LED classiques</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-led-spots.html" class="">Ampoules LED spots</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-led-flamme.html" class="">Ampoules LED flamme</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-led-globes.html" class="">Ampoules LED globe</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-led-vintage.html" class="">Ampoules LED vintage</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/tube-led.html" class="">Tubes LED</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/ampoules-led/ampoules-connectees.html" class="">Ampoules connectées</a></li>    </ul></div></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel.html" class="">Eclairage intérieur résidentiel</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/spots-encastres.html" class="">Spots encastrés</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/appliques-plafonniers.html" class="">Appliques et Plafonniers</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/suspensions.html" class="">Suspensions</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/bandes-lumineuses-led.html" class="">Rubans LED</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/eclairage-salle-de-bain.html" class="">Eclairage salle de bain</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-residentiel/eclairage-appoint.html" class="">Eclairage d'appoint</a></li>    </ul></div></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel.html" class="">Eclairage extérieur résidentiel</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/lampadaires.html" class="">Lampadaires</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/appliques.html" class="">Appliques</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/bornes-jardin.html" class="">Bornes de jardin</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/projecteurs.html" class="">Projecteurs LED</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/spots-encastres.html" class="">Spots encastrables</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/eclairage-solaire.html" class="">Eclairage solaire</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/hublots.html" class="">Hublots</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-exterieur-residentiel/reglettes-etanches.html" class="">Réglettes LED et fluo étanches</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/eclairage-luminaire/detection.html" class="">Détection</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/detection/detection-mouvement.html" class="">Détecteur de mouvement</a></li>    </ul></div></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-tertiaire.html" class="">Eclairage intérieur tertiaire</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-tertiaire/encastre-downlight.html" class="">Downlight LED</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-interieur-tertiaire/dalles-plafond.html" class="">Dalles LED</a></li>    </ul></div></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-design.html" class="">Eclairage Design</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/eclairage-luminaire/douilles.html" class="">Douilles</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/eclairage-luminaire/douilles/dcl.html" class="">DCL</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/douilles/douilles-e14.html" class="">Douilles E14</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/douilles/douilles-e27.html" class="">Douilles E27</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/douilles/douilles-b22.html" class="">Douilles B22</a></li>    </ul></div></li><li><a href="https://www.123elec.com/eclairage-luminaire/eclairage-chantier.html" class="">Eclairage de chantier</a></li><li><a href="https://www.123elec.com/eclairage-luminaire/lampes-torches.html" class="">Lampes et torches</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs.html" class="opener">Chauffage - Climatisation - ECS</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques.html" class="">Radiateurs électriques</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/convecteurs-electriques.html" class="">Convecteurs électriques</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/panneaux-rayonnants.html" class="">Panneaux rayonnants</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/radiateurs-inertie-fluide.html" class="">Radiateurs inertie fluide</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/radiateurs-inertie-ceramique.html" class="">Radiateurs inertie céramique</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/radiateurs-inertie-fonte.html" class="">Radiateurs inertie fonte</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/radiateurs-inertie-mixte.html" class="">Radiateurs inertie mixte</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/radiateurs-electriques/radiateurs-connectes.html" class="">Radiateurs connectés</a></li>    </ul></div></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/seche-serviettes.html" class="">Sèche-serviettes</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/seche-serviettes/seche-serviettes-rayonnants.html" class="">Sèche-serviettes rayonnants</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/seche-serviettes/seche-serviettes-fluide.html" class="">Sèche-serviettes à fluide</a></li>    </ul></div></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/chauffage-appoint.html" class="">Chauffage d'appoint</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/chauffage-de-chantier.html" class="">Chauffage de chantier</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/regulation-chauffage.html" class="">Régulation de chauffage</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/regulation-chauffage/thermostats-chauffage-central.html" class="">Thermostats pour chauffage central</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/regulation-chauffage/programmateurs-radiateur-electrique.html" class="">Programmateurs pour radiateur électrique</a></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/regulation-chauffage/cassettes-programmation.html" class="">Cassettes de programmation</a></li>    </ul></div></li><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/climatisation.html" class="">Climatisation</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/chauffage-climatisation-ecs/chauffe-eau-production-eau-chaude.html" class="">Chauffe-eau</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/vmc-hottes-aeration.html" class="opener">VMC - Hottes - Aération</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc.html" class="">Ventilation - VMC</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/vmc-simple-flux.html" class="">VMC simple flux</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/vmc-simple-flux-hygro-a-b.html" class="">VMC simple flux Hygro A ou B</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/vmc-double-flux.html" class="">VMC double flux</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/bouches-entrees-air.html" class="">Bouches et entrées d'air</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/gaines-manchons-reductions-vmc.html" class="">Gaines manchons et réductions VMC</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/accessoires-vmc.html" class="">Accessoires VMC</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/grilles-aeration.html" class="">Grilles d'aération</a></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/ventilation-vmc/aerateurs.html" class="">Aérateurs</a></li>    </ul></div></li><li><a href="https://www.123elec.com/vmc-hottes-aeration/hottes-cuisine.html" class="">Hottes de cuisine</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/vmc-hottes-aeration/hottes-cuisine/accessoires-hottes-cuisine.html" class="">Accessoires hottes de cuisine</a></li>    </ul></div></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/securite-acces.html" class="opener">Sécurité - Accès</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/securite-acces/securite-incendie.html" class="">Sécurité incendie</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/securite-acces/securite-incendie/detecteurs-de-fumee.html" class="">Détecteurs de fumée</a></li><li><a href="https://www.123elec.com/securite-acces/securite-incendie/detecteurs-monoxyde-de-carbone.html" class="">Détecteurs de monoxyde de carbone</a></li><li><a href="https://www.123elec.com/securite-acces/securite-incendie/equipement-protection-incendie.html" class="">Equipement protection incendie</a></li><li><a href="https://www.123elec.com/securite-acces/securite-incendie/extincteurs.html" class="">Extincteurs</a></li><li><a href="https://www.123elec.com/securite-acces/securite-incendie/echelles-secours.html" class="">Echelles de secours</a></li>    </ul></div></li><li><a href="https://www.123elec.com/securite-acces/acces.html" class="">Accès</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/securite-acces/acces/carillons.html" class="">Carillons</a></li><li><a href="https://www.123elec.com/securite-acces/acces/interphones-visiophones.html" class="">Interphones</a></li>    </ul></div></li><li><a href="https://www.123elec.com/securite-acces/automatisme.html" class="">Automatisme</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/securite-acces/automatisme/kit-motorisation-portail.html" class="">Kit motorisation de portail</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/securite-acces/videosurveillance-camera-ip.html" class="">Vidéosurveillance - Caméra IP</a></li><li><a href="https://www.123elec.com/securite-acces/alarmes.html" class="">Alarmes</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/securite-acces/alarmes/alarmes-sans-fil.html" class="">Alarmes sans fil</a></li>    </ul></div></li><li><a href="https://www.123elec.com/securite-acces/eclairage-secours-baes.html" class="">Eclairage de secours BAES</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/domotique-maison-connectee.html" class="opener">Domotique - Maison connectée</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/domotique-maison-connectee/securite.html" class="">Sécurité</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/domotique-maison-connectee/securite/alarmes-domotiques.html" class="">Alarmes domotiques</a></li>    </ul></div></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestion-automatisme.html" class="">Gestion d'automatisme</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/domotique-maison-connectee/gestion-automatisme/motorisation-volets-roulants.html" class="">Motorisation volets roulants</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestion-automatisme/motorisation-portails-portes-garages.html" class="">Motorisation portails, portes et garages</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestion-automatisme/serrures-connectees.html" class="">Serrures connectées</a></li>    </ul></div></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestionnaire-energie.html" class="">Gestionnaire d'énergie</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/domotique-maison-connectee/gestionnaire-energie/thermostats-connectes.html" class="">Thermostats connectés</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestionnaire-energie/chauffage-domotique.html" class="">Chauffage domotique</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestionnaire-energie/vannes-thermostatiques.html" class="">Vannes thermostatiques</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/gestionnaire-energie/consommation-energetique.html" class="">Consommation énergétique</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/domotique-maison-connectee/commande-eclairage-prise.html" class="">Commande d'éclairage et prise</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/domotique-maison-connectee/commande-eclairage-prise/ampoules-connectees.html" class="">Ampoules connectées</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/commande-eclairage-prise/gestion-eclairage.html" class="">Gestion d'éclairage</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/commande-eclairage-prise/prises-connectees.html" class="">Prises connectées</a></li>    </ul></div></li><li><a href="https://www.123elec.com/domotique-maison-connectee/domotique.html" class="">Domotique</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/domotique-maison-connectee/domotique/knx.html" class="">KNX</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/domotique/enocean-eltako-nodon.html" class="">Enocean Eltako Nodon</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/domotique/yokis-domotique.html" class="">Yokis</a></li><li><a href="https://www.123elec.com/domotique-maison-connectee/domotique/somfy-io-rts.html" class="">Somfy IO - RTS</a></li>    </ul></div></li><li><a href="https://www.123elec.com/domotique-maison-connectee/maison-connectee.html" class="">Maison connectée</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/equipement-electrique-outillage.html" class="opener">Equipement électrique - Outillage</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien.html" class="">Outillage à main</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien/pince-sertir-denuder-degainer.html" class="">Pince à sertir, dénuder, dégainer</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien/tournevis-embout-de-vissage.html" class="">Tournevis et embout de vissage</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien/pince-tenaille.html" class="">Pince et tenaille</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien/scie-ciseaux-cisaille-cutter.html" class="">Scie, ciseaux, cisaille, cutter</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/outils-electricien/cle-douille.html" class="">Clé et douille</a></li>    </ul></div></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/materiel-chantier.html" class="">Matériel de chantier</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/enrouleurs.html" class="">Enrouleurs</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/equipement-electrique-outillage/appareils-de-mesure.html" class="">Appareils de mesure</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/equipement-electrique-outillage/appareils-de-mesure/vat-testeur-de-tension.html" class="">VAT et testeur de tension</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/appareils-de-mesure/multimetre.html" class="">Multimètre</a></li>    </ul></div></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/habillage-electricien.html" class="">EPI - Protection individuelle</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/equipement-electrique-outillage/habillage-electricien/chaussure-securite.html" class="">Chaussure de sécurité</a></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/habillage-electricien/vetement-travail.html" class="">Vêtement de travail</a></li>    </ul></div></li><li><a href="https://www.123elec.com/equipement-electrique-outillage/caisses-a-outils-rangement.html" class="">Caisses à outils - Rangement</a></li>            </ul>        </div>    </div></div></li><li><a href="https://www.123elec.com/outillage-electroportatif.html" class="opener">Outillage électroportatif</a><div class="subnav-box">    <div class="jcf-scrollable">        <div class="holder">            <a href="javascript:void(0)" class="opener-even">X</a>            <ul class="first"><li><a href="https://www.123elec.com/outillage-electroportatif/perceuse-visseuse.html" class="">Perceuse visseuse</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/marteau-perforateur-burineur.html" class="">Marteau perforateur burineur</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/meuleuse.html" class="">Meuleuse</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/outillage-electroportatif/outil-multifonction.html" class="">Outil multifonction</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/decapeur-thermique.html" class="">Décapeur thermique</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/scie-electrique.html" class="">Scie électrique</a><div class="slide-subnav">    <ul><li><a href="https://www.123elec.com/outillage-electroportatif/scie-electrique/scie-sauteuse.html" class="">Scie sauteuse</a></li>    </ul></div></li></ul><ul class="first"><li><a href="https://www.123elec.com/outillage-electroportatif/rainureuse.html" class="">Rainureuse</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/batterie-outillage-electroportatif.html" class="">Batterie outillage électroportatif</a></li><li><a href="https://www.123elec.com/outillage-electroportatif/pack-outillage-electroportatif.html" class="">Pack outillage électroportatif</a></li></ul><ul class="first"><li><a href="https://www.123elec.com/outillage-electroportatif/accessoires-consommables-electroportatif.html" class="">Accessoires et consommables électroportatif</a></li>            </ul>        </div>    </div></div></li>                </ul>
                <div class="partners-box aside-widget">
    <span class="title">NOS MARQUES</span>
    <ul>
<li><a href="https://www.123elec.com/marques/legrand.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_legrand" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-legrand">&nbsp;</span> <span class="title">Legrand</span> </a></li>
<li><a href="https://www.123elec.com/marques/schneider.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_schneider" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-schneider">&nbsp;</span> <span class="title">Schneider</span> </a></li>
<li><a href="https://www.123elec.com/marques/hager.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_hager" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-hager">&nbsp;</span> <span class="title">Hager</span> </a></li>
<li><a href="https://www.123elec.com/marques/wago.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_wago" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-wago">&nbsp;</span> <span class="title">Wago</span> </a></li>
<li><a href="https://www.123elec.com/marques/siemens.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_siemens" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-siemens">&nbsp;</span> <span class="title">Siemens</span> </a></li>
<li><a href="https://www.123elec.com/marques/brennenstuhl.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_brennenstuhl" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-brennenstuhl">&nbsp;</span> <span class="title">Brennenstuhl</span> </a></li>
<li><a href="https://www.123elec.com/marques/stanley.html" data-promotion="true" data-promotion-creative="logo_marque" data-promotion-name="logo_stanley" data-promotion-position="1" data-promotion-id="logo_marque"> <span class="ico-box ico-box-stanley">&nbsp;</span> <span class="title">Stanley</span> </a></li>
</ul></div>
<div class="aside-widget posts-box">
    <span class="title">123ELEC S'ENGAGE</span>
    <div class="short-post"><span class="ico-box"><img alt="Electriciens sans fronti&egrave;re" src="https://cdn.123elec.com/media/wysiwyg/illustrations/123elec-sengage/electriciens-sans-frontiere.png" width="80" /></span>
<div class="text"><b class="title">Electriciens sans fronti&egrave;res</b> <a href="https://www.123elec.com/123elec-sengage" data-promotion="true" data-promotion-creative="123elec_s_engage" data-promotion-name="electriciens_sans_frontiere" data-promotion-position="1" data-promotion-id="123elec_s_engage">Acc&egrave;s &agrave; l&rsquo;&eacute;lectricit&eacute; dans une &eacute;cole au S&eacute;n&eacute;gal</a></div>
</div>
<div class="short-post"><span class="ico-box"><img title="Uncridalarme" alt="Uncridalarme" src="https://cdn.123elec.com/media/wysiwyg/illustrations/123elec-sengage/un-cri-dalarme-logo.jpg" width="80" /></span>
<div class="text"><b class="title">Un CRI d'alarme</b> <a href="https://www.123elec.com/123elec-sengage" data-promotion="true" data-promotion-creative="123elec_s_engage" data-promotion-name="catamaran" data-promotion-position="1" data-promotion-id="123elec_s_engage">123elec soutient la campagne Uncridalarme</a></div>
</div>
<div class="short-post"><span class="ico-box"><img title="KNX Member" alt="KNX Member" src="https://cdn.123elec.com/media/wysiwyg/illustrations/123elec-sengage/KNX_Member.jpg" width="80" /></span>
<div class="text"><b class="title">Membre KNX France&nbsp;</b><a href="https://www.123elec.com/123elec-membre-knx-france" data-promotion="true" data-promotion-creative="123elec_s_engage" data-promotion-name="membre_knx" data-promotion-position="1" data-promotion-id="123elec_s_engage">123elec a choisi de devenir Membre KNX France</a></div>
</div></div>
<div class="infos-box aside-widget">
    <span class="title">INFOS PRATIQUES</span>
    <ul>
<li><a href="https://www.123elec.com/livraison" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="info_livraison" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="title">Informations sur la livraison</span> </a></li>
<li><a href="https://www.123elec.com/avantages_123elec_pros" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="avantages_pros" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="ico-box"><img alt="PNOS" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo11.jpg" /></span><span class="title">Avantages PROS</span></a></li>
<li><a href="https://www.123elec.com/faq_123elec" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="faq" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="title">Foire aux questions</span> </a></li>
<li><a href="https://www.123elec.com/dossiers-thematiques" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="dossiers_bricolage" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="title">Dossiers bricolage</span> </a></li>
<li><a href="https://www.123elec.com/codes-promos" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="codes-promos" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="title">Codes promos 123elec</span> </a></li>
<li><a href="https://www.123elec.com/recrutement" data-promotion="true" data-promotion-creative="info_pratiques" data-promotion-name="recrutement" data-promotion-position="1" data-promotion-id="info_pratiques"> <span class="title">123elec recrute</span> </a></li>
</ul></div>
<div class="banner"><a href="https://www.123elec.com/acheter_son_materiel_electrique_moins_cher_programme_fidelite"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/banner1.jpg" width="257" height="60" alt="Programme de Fidélité points WATT"></a></div>
<div class="visual-vidget aside-widget">
    <span class="title">UNE EQUIPE PRO</span>
    <p><a href="https://www.123elec.com/presse"><img alt="123elec, meilleur site e-commerce 2018 et 2019" src="https://cdn.123elec.com/media/wysiwyg/visuel-capital-gauche-site-2.jpg" /></a></p></div>
            </nav>
        </div>
        <div class="control-holder">
            <!-- main navigation of the page -->
            <nav id="main-nav">
                <ul>
                    <li><a href="https://www.123elec.com/promotions.html">Promotions</a></li>
                    <li><a href="https://www.123elec.com/destockage.html">Destockage</a></li>
                    <li><a href="https://www.123elec.com/nos-lots.html">Les lots</a></li>
                    <li>
                        <a href="javascript:;">Les marques</a>
                        <ul class="drop">
<li><a href="https://www.123elec.com/marques/airelec.html"><span class="title">Airelec</span></a></li>
<li><a href="https://www.123elec.com/marques/angel-eye.html"><span class="title">Angel Eye</span></a></li>
<li><a href="https://www.123elec.com/marques/atlantic.html"><span class="title">Atlantic</span></a></li>
<li><a href="https://www.123elec.com/marques/bahco.html"><span class="title">Bahco</span></a></li>
<li><a href="https://www.123elec.com/marques/batilec.html"><span class="title">Batilec</span></a></li>
<li><a href="https://www.123elec.com/marques/beneito-faure.html"><span class="title">Beneito Faure</span></a></li>
<li><a href="https://www.123elec.com/marques/brennenstuhl.html"><span class="title">Brennenstuhl</span></a></li>
<li><a href="https://www.123elec.com/marques/capri.html"><span class="title">Capri</span></a></li>
<li><a href="https://www.123elec.com/marques/chaufelec.html"><span class="title">Chaufelec</span></a></li>
<li><a href="https://www.123elec.com/marques/dehn.html"> <span class="title">Dehn</span></a></li>
<li><a href="https://www.123elec.com/marques/delonghi.html"> <span class="title">Delonghi</span></a></li>
<li><a href="https://www.123elec.com/marques/diadora.html"> <span class="title">Diadora</span></a></li>
<li><a href="https://www.123elec.com/marques/dmo.html"> <span class="title">DMO</span></a></li>
<li><a href="https://www.123elec.com/marques/elesys.html"> <span class="title">Elesys</span></a></li>
<li><a href="https://www.123elec.com/marques/e-robur.html"> <span class="title">E-Robur</span></a></li>
<li><a href="https://www.123elec.com/marques/eurohm.html"> <span class="title">Eurohm</span></a></li>
<li><a href="https://www.123elec.com/marques/expert-by-facom.html"> <span class="title">Expert by FACOM</span></a></li>
<li><a href="https://www.123elec.com/marques/fashion-securite.html"> <span class="title">FASHION S&eacute;curit&eacute;</span></a></li>
<li><a href="https://www.123elec.com/marques/gap-lighting.html"> <span class="title">Gap Lighting</span></a></li>
<li><a href="https://www.123elec.com/marques/ggk.html"> <span class="title">GGK</span></a></li>
<li><a href="https://www.123elec.com/marques/hager.html"> <span class="title">Hager</span></a></li>
<li><a href="https://www.123elec.com/marques/ide.html"> <span class="title">IDE</span></a></li>
<li><a href="https://www.123elec.com/marques/ikepe.html"> <span class="title">IKEPE</span></a></li>
<li><a href="https://www.123elec.com/marques/ing-fixations.html"> <span class="title">ING Fixations</span></a></li>
<li><a href="https://www.123elec.com/marques/itron.html"> <span class="title">Itron</span></a></li>
<li><a href="https://www.123elec.com/marques/klauke.html"> <span class="title">Klauke</span></a></li>
<li><a href="https://www.123elec.com/marques/legrand.html"><span class="title">Legrand</span></a></li>
<li><a href="https://www.123elec.com/marques/makita.html"> <span class="title">Makita</span></a></li>
<li><a href="https://www.123elec.com/marques/mecafer.html"> <span class="title">Mecafer</span></a></li>
<li><a href="https://www.123elec.com/marques/metabo.html"> <span class="title">Metabo</span></a></li>
<li><a href="https://www.123elec.com/marques/michaud.html"> <span class="title">Michaud</span></a></li>
<li><a href="https://www.123elec.com/marques/nexans.html"> <span class="title">Nexans</span></a></li>
<li><a href="https://www.123elec.com/marques/osram.html"> <span class="title">Osram</span></a></li>
<li><a href="https://www.123elec.com/marques/qofil.html"> <span class="title">Qofil</span></a></li>
<li><a href="https://www.123elec.com/marques/ryobi.html"> <span class="title">Ryobi</span></a></li>
<li><a href="https://www.123elec.com/marques/sam-outillage.html"> <span class="title">SAM Outillage</span></a></li>
<li><a href="https://www.123elec.com/marques/schneider.html"> <span class="title">Schneider</span></a></li>
<li><a href="https://www.123elec.com/marques/sefram.html"> <span class="title">Sefram</span></a></li>
<li><a href="https://www.123elec.com/marques/siemens.html"> <span class="title">Siemens</span></a></li>
<li><a href="https://www.123elec.com/marques/stanley.html"> <span class="title">Stanley</span></a></li>
<li><a href="https://www.123elec.com/marques/steinel.html"> <span class="title">Steinel</span></a></li>
<li><a href="https://www.123elec.com/marques/tado.html"> <span class="title">Tado</span></a></li>
<li><a href="https://www.123elec.com/marques/theben.html"> <span class="title">Theben</span></a></li>
<li><a href="https://www.123elec.com/marques/thermor.html"> <span class="title">Thermor</span></a></li>
<li><a href="https://www.123elec.com/marques/tonna.html"> <span class="title">Tonna</span></a></li>
<li><a href="https://www.123elec.com/marques/vision-el.html"> <span class="title">Vision-EL</span></a></li>
<li><a href="https://www.123elec.com/marques/wago.html"> <span class="title">Wago</span></a></li>
<li><a href="https://www.123elec.com/marques/yokis.html"> <span class="title">Yokis</span></a></li>
</ul>                    </li>
                    <li><a href="https://www.123elec.com/rt-2012.html">RT 2012</a></li>
                </ul>
            </nav>
            <!--<a href="#" class="partner-btn"><span></span><img src="" alt="siemens"></a>-->
        </div>
    </div>
</div>            <div class="main-container col2-left-layout">
                                <!-- contain the main content of the page -->
                <div class="col-main content">
                                                            <div class="std"><!-- --></div><div class="slideshow">
    <div class="slideset">
                    <div class="slide">
                <div class="img-holder">
                    
                    <a href="https://www.123elec.com/gamme-materiel-electrique/tableaux-electriques/tableaux-electriques-schneider.html" data-promotion="true" data-promotion-creative="1" data-promotion-name="slide-arrivage-schneider-resi9-tableaux-1-rangee" data-promotion-position="1" data-promotion-id="1" title="Arrivage Schneider Resi9 Tableaux prééquipés 1 rangée"><img src="https://cdn.123elec.com/media/slide-arrivage-schneider-resi9-tableaux-1r.jpg" alt="Arrivage Schneider Resi9 Tableaux prééquipés 1 rangée" title="" width="893" height="275"/></a>
                </div>
            </div>
                    <div class="slide">
                <div class="img-holder">
                    
                    <a href="https://www.123elec.com/securite-acces/securite-incendie/detecteurs-monoxyde-de-carbone.html" data-promotion="true" data-promotion-creative="1" data-promotion-name="slide-offre-daaco-fev2020" data-promotion-position="2" data-promotion-id="2" title="Offre DAACO Février 2020"><img src="https://cdn.123elec.com/media/slide-offre-daaco-fev2020.jpg" alt="Offre DAACO Février 2020" title="" width="893" height="275"/></a>
                </div>
            </div>
                    <div class="slide">
                <div class="img-holder">
                    
                    <a href="https://www.123elec.com/marques/wago.html" data-promotion="true" data-promotion-creative="1" data-promotion-name="slide-wago" data-promotion-position="3" data-promotion-id="3" title="Wago"><img src="https://cdn.123elec.com/media/slide-wago-fev2020.jpg" alt="Wago" title="" width="893" height="275"/></a>
                </div>
            </div>
            </div>
    <div class="pagination">
        <ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
        </ul>
    </div>
</div>			<div class="carousel product-section">
			<h2 class="section-title">ACTUELLEMENT EN <b>PROMOTION !</b></h2>
			<div class="block-content">
				<!-- products list -->
				<ol class="products-grid">
											<li class="item">
                                                                                            <div class="slide-label"><strong class="promo">PROMO</strong></div>                            							<a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-1-rangee-avec-1-id-63a.html" title="SIEMENS Tableau électrique prééquipé 1 rangée 1ID 63A 6 disjoncteurs" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sief822612-f-siemens-tableau-de-distribution-pre-equipe-1-rangee.jpg" width="220" height="200" alt="SIEMENS Tableau électrique prééquipé 1 rangée avec 1 ID 63A">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-1-rangee-avec-1-id-63a.html" title="Product name">SIEMENS Tableau électrique prééquipé 1 rangée 1ID 63A 6 disjoncteurs</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                            
        

                            <span class="price-excluding-tax">
                    <span class="old-price">82,62 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-3465-right">
                            78,49 €                        </span>
                        <sup>HT</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">99,12 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-3465-right">
                            94,16 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>
            
        
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/3465/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_3465">
									<div class="no-display">
										<input type="hidden" name="product" value="3465">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="promo">PROMO</strong></div>                            							<a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-2-rangees-avec-3-id-40a.html" title="SIEMENS Tableau électrique prééquipé 2 rangées 3ID 40A 9 disjoncteurs" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sief822620-f-siemens-coffret-electrique-preequipe-2-rangees.jpg" width="220" height="200" alt="SIEMENS Tableau électrique prééquipé 2 rangées avec 3 ID 40A">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-2-rangees-avec-3-id-40a.html" title="Product name">SIEMENS Tableau électrique prééquipé 2 rangées 3ID 40A 9 disjoncteurs</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                            
        

                            <span class="price-excluding-tax">
                    <span class="old-price">132,75 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-3464-right">
                            126,11 €                        </span>
                        <sup>HT</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">159,25 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-3464-right">
                            151,28 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>
            
        
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/3464/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_3464">
									<div class="no-display">
										<input type="hidden" name="product" value="3464">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="promo">PROMO</strong></div>                            							<a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-3-rangees.html" title="SIEMENS Tableau électrique prééquipé 3 rangées 3ID 63A 12 disjoncteurs" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sief822632-f-siemens-tableau-electrique-preequipe-3rangees.jpg" width="220" height="200" alt="SIEMENS Tableau électrique prééquipé 3 rangées avec 3 ID 63A">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-tableau-electrique-preequipe-3-rangees.html" title="Product name">SIEMENS Tableau électrique prééquipé 3 rangées 3ID 63A 12 disjoncteurs</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                            
        

                            <span class="price-excluding-tax">
                    <span class="old-price">190,88 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-3463-right">
                            181,34 €                        </span>
                        <sup>HT</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">229,01 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-3463-right">
                            217,56 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                                                <span class="label sale">-5%</span>
                                    </span>
            
        
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/3463/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_3463">
									<div class="no-display">
										<input type="hidden" name="product" value="3463">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="promo">PROMO</strong></div>                            							<a href="https://www.123elec.com/marimfra-downlight-led-dimmable-230v-18w-1600lm-4000-k-220mm-blanc-dl-18w-d220-4000k.html" title="MARIMFRA Downlight LED dimmable 230V 18W 1600lm 4000°K 220mm blanc - DL-18W-D220-4000K" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/m/a/mardl-18w-d220-4000k-marimfra-downlight-led-variable-230v-18w-1600lm-4000-k-220mm-blanc-dl-18w-d220-4000k_3.jpg" width="220" height="200" alt="Downlight LED variable 230V 1600lm 18W 4000°K 220mm blanc MARIMFRA - DL-18W-D220-4000K">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/marimfra-downlight-led-dimmable-230v-18w-1600lm-4000-k-220mm-blanc-dl-18w-d220-4000k.html" title="Product name">MARIMFRA Downlight LED dimmable 230V 18W 1600lm 4000°K 220mm blanc - DL-18W-D220-4000K</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/808.jpg" alt="808" border="0" width="38" height="25" />
																						</div>
							

                        
    <div class="price-box">
                                            
                    <!--<span class="old-price" id="old-price-"> <sup></sup></span>-->

            
                
                <span class="price-excluding-tax">
                    <span class="old-price">21,16 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-3998-right">
                            13,75 €                        </span>
                        <sup>HT</sup>
                    </span>
                                            <span class="label sale">-35%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">25,39 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-3998-right">
                            16,50 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                            <span class="label sale">-35%</span>
                                    </span>

                    
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/3998/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_3998">
									<div class="no-display">
										<input type="hidden" name="product" value="3998">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                                        							<a href="https://www.123elec.com/bahco-jeu-de-6-cles-mixtes-metriques-s20-sh6.html" title="BAHCO Jeu de 6 clés mixtes métriques - S20-SH6" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/b/a/bahs20-sh6-bahco-jeu-de-6-cles-mixtes-metriques.jpg" width="220" height="200" alt="BAHCO Jeu de 6 clés mixtes métriques - S20-SH6">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/bahco-jeu-de-6-cles-mixtes-metriques-s20-sh6.html" title="Product name">BAHCO Jeu de 6 clés mixtes métriques - S20-SH6</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/1042.jpg" alt="1042" border="0" width="30" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-excluding-tax-4850-right">
                        <span class="price">
                                                            21,99 €                                                    </span>
                        <sup>HT</sup>
                    </span>
                </span>
                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-including-tax-4850-right">
                        <span class="price">
                            26,39 €                        </span>
                        <sup>TTC</sup>
                    </span>
                </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/4850/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_4850">
									<div class="no-display">
										<input type="hidden" name="product" value="4850">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                                        							<a href="https://www.123elec.com/schneider-wiser-capteur-mesure-impulsions-eer31110.html" title="SCHNEIDER Wiser Capteur de mesure impulsions - EER31110" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/c/scheer31110-schneider-wiser-capteur-mesure-impulsion.jpg" width="220" height="200" alt="SCHNEIDER Wiser Capteur de mesure impulsions - EER31110">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/schneider-wiser-capteur-mesure-impulsions-eer31110.html" title="Product name">SCHNEIDER Wiser Capteur de mesure impulsions - EER31110</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/27.jpg" alt="27" border="0" width="55" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-excluding-tax-2846-right">
                        <span class="price">
                                                            35,50 €                                                    </span>
                        <sup>HT</sup>
                    </span>
                </span>
                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-including-tax-2846-right">
                        <span class="price">
                            42,60 €                        </span>
                        <sup>TTC</sup>
                    </span>
                </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/2846/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_2846">
									<div class="no-display">
										<input type="hidden" name="product" value="2846">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                                        							<a href="https://www.123elec.com/metabo-compresseur-portatif-18v-brushless-kit-outils-air-comprime-601521850.html" title="METABO Compresseur portatif 18V brushless + kit outils air comprimé - 601521850" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/m/e/met601521850p-compresseur-portatif-18v-brushless-et-kit-outils-air-comprime_1.jpg" width="220" height="200" alt="METABO Compresseur portatif 18V brushless + kit outils air comprimé - 601521850">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/metabo-compresseur-portatif-18v-brushless-kit-outils-air-comprime-601521850.html" title="Product name">METABO Compresseur portatif 18V brushless + kit outils air comprimé - 601521850</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/936.jpg" alt="936" border="0" width="40" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-4946-right">
                            332,58 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-4946-right">
                            399,00 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/4946/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_4946">
									<div class="no-display">
										<input type="hidden" name="product" value="4946">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
									</ol>
				<a href="#" class="btn-prev">prev</a>
				<a href="#" class="btn-next">next</a>
			</div>
		</div>
				<div class="carousel product-section">
			<h2 class="section-title">Destockage</h2>
			<div class="block-content">
				<!-- products list -->
				<ol class="products-grid">
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/chaufelec-cassiopee-panneau-rayonnant-vertical-blanc-1000w.html" title="CHAUFELEC Cassiopée Panneau rayonnant SAS vertical blanc 1000W - BJM1553FDAJ" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/c/h/chabjm1553fdaj-chaufelec-cassiopee-panneau-rayonnant-vertical-1000w.jpg" width="220" height="200" alt="CHAUFELEC Cassiopée Panneau rayonnant vertical blanc 1000W">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/chaufelec-cassiopee-panneau-rayonnant-vertical-blanc-1000w.html" title="Product name">CHAUFELEC Cassiopée Panneau rayonnant SAS vertical blanc 1000W - BJM1553FDAJ</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/9.jpg" alt="9" border="0" width="55" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                            
        

                            <span class="price-excluding-tax">
                    <span class="old-price">188,86 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-1617-right">
                            142,00 €                        </span>
                        <sup>HT</sup>
                    </span>
                                                                <span class="label sale">-25,1%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">226,23 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-1617-right">
                            170,00 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                                                <span class="label sale">-25,1%</span>
                                    </span>
            
        
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/1617/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_1617">
									<div class="no-display">
										<input type="hidden" name="product" value="1617">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/somfy-io-kit-visiophone-vsystem-pro-premium.html" title="SOMFY Kit visiophone Vsystem Pro Premium IO - 1841227" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/o/som1841227-somfy-kit-visiophone.jpg" width="220" height="200" alt="SOMFY IO Kit visiophone Vsystem Pro Premium">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/somfy-io-kit-visiophone-vsystem-pro-premium.html" title="Product name">SOMFY Kit visiophone Vsystem Pro Premium IO - 1841227</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/678.jpg" alt="678" border="0" width="55" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                            
        

                            <span class="price-excluding-tax">
                    <span class="old-price">533,60 € <sup>HT</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-3732-right">
                            415,88 €                        </span>
                        <sup>HT</sup>
                    </span>
                                                                <span class="label sale">-22,1%</span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price">640,27 € <sup>TTC</sup></span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-3732-right">
                            499,00 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                                                <span class="label sale">-22,1%</span>
                                    </span>
            
        
    
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/3732/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_3732">
									<div class="no-display">
										<input type="hidden" name="product" value="3732">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-e27-230v-7w-806lm-2700-k-standard.html" title="OSRAM Lot de 4 ampoules LED E27 230V 7W(=60W) 806lm 2700°K standard" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/o/s/osr808164-l2-osram-lot-de-4-ampoules-led-e27-7w-230v-standard.jpg" width="220" height="200" alt="OSRAM Lot de 4 ampoules LED E27 230V 7W(=60W) 806lm 2700°K standard">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-e27-230v-7w-806lm-2700-k-standard.html" title="Product name">OSRAM Lot de 4 ampoules LED E27 230V 7W(=60W) 806lm 2700°K standard</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/690.jpg" alt="690" border="0" width="62" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-5188-right">
                            6,79 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-5188-right">
                            7,99 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/5188/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_5188">
									<div class="no-display">
										<input type="hidden" name="product" value="5188">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-filament-e14-230v-2-5w-25w-250lm-2700-k-flamme.html" title="OSRAM Lot de 4 ampoules LED filament E14 230V 2,5W(=25W) 250lm 2700°K flamme" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/o/s/osr415355-l2-osram-lot-4-ampoules-led-a-filament-flamme-e14-2.5w-230v.jpg" width="220" height="200" alt="OSRAM Lot de 4 ampoules LED filament E14 230V 2,5W(=25W) 250lm 2700°K flamme">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-filament-e14-230v-2-5w-25w-250lm-2700-k-flamme.html" title="Product name">OSRAM Lot de 4 ampoules LED filament E14 230V 2,5W(=25W) 250lm 2700°K flamme</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/690.jpg" alt="690" border="0" width="62" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-5187-right">
                            5,95 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-5187-right">
                            6,99 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/5187/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_5187">
									<div class="no-display">
										<input type="hidden" name="product" value="5187">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-filament-b22-230v-7w-60w-806lm-2700-k-standard.html" title="OSRAM Lot de 4 Ampoules LED filament B22 230V 7W(=60W) 806lm 2700°K standard" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/o/s/osr115170-l2-osram-lot-4-ampoules-led-filament-b22-230v-7w-standard.jpg" width="220" height="200" alt="OSRAM Lot de 4 Ampoules LED filament B22 230V 7W(=60W) 806lm 2700°K standard">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/osram-lot-de-4-ampoules-led-filament-b22-230v-7w-60w-806lm-2700-k-standard.html" title="Product name">OSRAM Lot de 4 Ampoules LED filament B22 230V 7W(=60W) 806lm 2700°K standard</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/690.jpg" alt="690" border="0" width="62" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-5186-right">
                            6,79 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-5186-right">
                            7,99 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/5186/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_5186">
									<div class="no-display">
										<input type="hidden" name="product" value="5186">
									</div>
																			<p class="availability out-of-stock"><span>En cours d'appro</span></p>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                            <div class="slide-label"><strong class="destock">DESTOCK</strong></div>                            							<a href="https://www.123elec.com/osram-lot-de-4-spots-led-mr16-gu5-3-36-12v-4-6w-35w-350lm-2700-k.html" title="OSRAM Lot de 4 Spots LED MR16 GU5.3 36° 12V 4,6W(=35W) 350lm 2700°K" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/o/s/osr957756-l4-osram-lot-4-spot-led-gu5.3-mr16-12v-4.jpg" width="220" height="200" alt="OSRAM Lot de 4 Spots LED MR16 GU5.3 36° 12V 4,6W(=35W) 350lm 2700°K">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/osram-lot-de-4-spots-led-mr16-gu5-3-36-12v-4-6w-35w-350lm-2700-k.html" title="Product name">OSRAM Lot de 4 Spots LED MR16 GU5.3 36° 12V 4,6W(=35W) 350lm 2700°K</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/690.jpg" alt="690" border="0" width="62" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-5190-right">
                            10,12 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-5190-right">
                            11,99 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/5190/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_5190">
									<div class="no-display">
										<input type="hidden" name="product" value="5190">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
									</ol>
				<a href="#" class="btn-prev">prev</a>
				<a href="#" class="btn-next">next</a>
			</div>
		</div>
				<div class="carousel product-section">
			<h2 class="section-title">Produits <b>Watt</b></h2>
			<div class="block-content">
				<!-- products list -->
				<ol class="products-grid">
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>5</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/siemens-delta-iris-mecanisme-prise-2p-terre-blanc.html" title="SIEMENS Delta Iris Prise de courant 2P+T blanc" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sie266733-f-siemens-delta-iris-prise-electrique-blanc.jpg" width="220" height="200" alt="SIEMENS Delta Iris Mécanisme prise 2P+Terre - Blanc">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-delta-iris-mecanisme-prise-2p-terre-blanc.html" title="Product name">SIEMENS Delta Iris Prise de courant 2P+T blanc</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-752-right">
                            3,52 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-752-right">
                            4,22 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/752/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_752">
									<div class="no-display">
										<input type="hidden" name="product" value="752">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>10</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/gaine-electrique-icta-d20-couronne-de-100m.html" title="Gaine électrique ICTA D20 Qofil - couronne de 100m" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/q/o/qof20-gaine-icta-20.jpg" width="220" height="200" alt="Gaine électrique ICTA D20 - couronne de 100m">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/gaine-electrique-icta-d20-couronne-de-100m.html" title="Product name">Gaine électrique ICTA D20 Qofil - couronne de 100m</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/823.jpg" alt="823" border="0" width="39" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-excluding-tax-144-right">
                        <span class="price">
                                                            20,75 €                                                    </span>
                        <sup>HT</sup>
                    </span>
                </span>
                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-including-tax-144-right">
                        <span class="price">
                            24,90 €                        </span>
                        <sup>TTC</sup>
                    </span>
                </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/144/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_144">
									<div class="no-display">
										<input type="hidden" name="product" value="144">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>10</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/angeleye-elegance-expert-sans-fil-duo-de-detecteurs-de-fumee-garantie-5-ans.html" title="ANGELEYE Elegance Détecteur avertisseur autonome de fumée - Lot de 2 - autonomie 10ans" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/a/n/angtpwst-ae630-fr-angeleye-elegance-expert-duo-detecteurs-de-fumee-sans-fil-10-ans.jpg" width="220" height="200" alt="ANGELEYE Elegance Expert Sans fil Duo de détecteurs de fumée - garantie 5 ans">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/angeleye-elegance-expert-sans-fil-duo-de-detecteurs-de-fumee-garantie-5-ans.html" title="Product name">ANGELEYE Elegance Détecteur avertisseur autonome de fumée - Lot de 2 - autonomie 10ans</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/16.jpg" alt="16" border="0" width="61" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-2650-right">
                            45,97 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-2650-right">
                            55,14 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/2650/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_2650">
									<div class="no-display">
										<input type="hidden" name="product" value="2650">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>30</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/siemens-horloge-hebdomadaire-numerique-top.html" title="SIEMENS Horloge hebdomadaire 16A monophasé numérique TOP 2 modules" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sie7lf45110-siemens-horloge-hebdomadaire-numerique_1.jpg" width="220" height="200" alt="SIEMENS Horloge hebdomadaire numérique TOP">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-horloge-hebdomadaire-numerique-top.html" title="Product name">SIEMENS Horloge hebdomadaire 16A monophasé numérique TOP 2 modules</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-excluding-tax-382-right">
                        <span class="price">
                                                            56,99 €                                                    </span>
                        <sup>HT</sup>
                    </span>
                </span>
                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price" id="price-including-tax-382-right">
                        <span class="price">
                            68,39 €                        </span>
                        <sup>TTC</sup>
                    </span>
                </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/382/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_382">
									<div class="no-display">
										<input type="hidden" name="product" value="382">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>5</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/siemens-delta-iris-mecanisme-interrupteur-va-et-vient-blanc.html" title="SIEMENS Delta Iris Interrupteur va et vient blanc" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/s/i/sie266665-f-siemens-delta-iris-va-et-vient-blanc.jpg" width="220" height="200" alt="SIEMENS Delta Iris Mécanisme interrupteur va et vient - Blanc">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/siemens-delta-iris-mecanisme-interrupteur-va-et-vient-blanc.html" title="Product name">SIEMENS Delta Iris Interrupteur va et vient blanc</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/29.jpg" alt="29" border="0" width="60" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-744-right">
                            3,81 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-744-right">
                            4,57 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/744/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_744">
									<div class="no-display">
										<input type="hidden" name="product" value="744">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
											<li class="item">
                                                                                                <div class="slide-label-watt">
                                        <strong class="label-watt"><span>10</span> points</strong>
                                    </div>
                                                                                            							<a href="https://www.123elec.com/angeleye-lot-de-2-detecteurs-de-fumee-1-detecteur-de-monoxyde-de-carbone.html" title="ANGELEYE Lot de 2 détecteurs avertisseurs autonomes de fumée + 1 détecteur de monoxyde de carbone" class="product-image lightbox">
								<img src="https://cdn.123elec.com/media/catalog/product/cache/5/small_image/220x200/9df78eab33525d08d6e5fb8d27136e95/a/n/ang001595-f-angeleye-lot-2-daaf-original-duo-et-1-daaco-access.jpg" width="220" height="200" alt="ANGELEYE Lot de 2 détecteurs de fumée + 1 détecteur de monoxyde de carbone">
							</a>
							<h3 class="product-name"><a href="https://www.123elec.com/angeleye-lot-de-2-detecteurs-de-fumee-1-detecteur-de-monoxyde-de-carbone.html" title="Product name">ANGELEYE Lot de 2 détecteurs avertisseurs autonomes de fumée + 1 détecteur de monoxyde de carbone</a></h3>
							<div class="product-manufacturer">
																								<img src="https://cdn.123elec.com/media/marques/fiche_produit/16.jpg" alt="16" border="0" width="61" height="15" />
																						</div>
							

                        
    <div class="price-box">
                                                                                <span class="price-excluding-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-excluding-tax-1578-right">
                            19,93 €                        </span>
                        <sup>HT</sup>
                    </span>
                                    </span>

                <span class="price-including-tax">
                    <span class="old-price no-price">&nbsp;</span>
                    <span class="special-price">
                        <span class="price" id="price-including-tax-1578-right">
                            23,90 €                        </span>
                        <sup>TTC</sup>
                    </span>
                                    </span>
                        
        </div>


							<div class="slide-footer">
								<form action="https://www.123elec.com/checkout/cart/add/uenc/aHR0cHM6Ly93d3cuMTIzZWxlYy5jb20v/product/1578/form_key/EoKcHGRyktmqo5Kr/" method="post" id="product_addtocart_form_1578">
									<div class="no-display">
										<input type="hidden" name="product" value="1578">
									</div>
																														<div class="number-box">
												<input type="text" value="1" name="qty">
											</div>
																				<button type="submit" class="button btn-cart-list"><span><span>PANIER</span></span></button>
																	</form>
							</div>
						</li>
									</ol>
				<a href="#" class="btn-prev">prev</a>
				<a href="#" class="btn-next">next</a>
			</div>
		</div>
	                </div>
            </div>
        </main>
                <footer id="footer">
            <div class="main-container">
    <div class="process-info-line">
        <div class="box">
            <a href="https://www.123elec.com/livraison"><span class="ico-shipping-footer"></span>
                <span class="text">
                    <b class="title">Livraison offerte dès 250€ TTC</b>
                </span>
            </a>
        </div>
        <div class="box">
            <a href="https://www.123elec.com/cgv"><span class="ico-choix-livraison-footer"></span>
                <span class="text">
                    <b class="title center">Le choix de votre mode de livraison</b>
                </span>
            </a>
        </div>
        <div class="box">
            <a href="https://www.123elec.com/acheter_son_materiel_electrique_moins_cher_programme_fidelite"><span class="ico-sav-footer"></span>
                <span class="text">
                    <b class="title center">Programme de  <br>  fidélité </b>
                </span>
            </a>
        </div>
        <div class="box mob-h">
            <a href="https://www.123elec.com/moyens-de-paiement"><span class="ico-secure-footer"></span>
                <span class="text">
                    <b class="title center">Paiements CB sécurisés par 3Dsecure</b>
                </span>
            </a>
        </div>
        <div class="box">
            <a href="https://www.123elec.com/contacts"><span class="ico-team-footer"></span>
                <span class="text">
                    <b class="title center">Une équipe de professionnels à votre écoute</b>
                </span>
            </a>
        </div>
    </div>
</div>
<div class="main-container">
    <div class="buy-line">
        <div class="col">
            <strong class="title">Moyens de paiement :</strong>
            <ul class="pay-list">
                <li><a href="https://www.123elec.com/moyens-de-paiement"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/ico12.jpg" alt="cb" width="52" height="36"></a></li>
                <li><a href="https://www.123elec.com/moyens-de-paiement"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/ico13.png" alt="master card" width="50" height="31"></a></li>
                <li><a href="https://www.123elec.com/moyens-de-paiement"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/ico14.jpg" alt="visa" width="52" height="33"></a></li>
                <li><a href="https://www.123elec.com/moyens-de-paiement"><span class="btn">Chèque</span></a></li>
                <li><a href="https://www.123elec.com/moyens-de-paiement"><span class="btn">Virement</span></a></li>
                <li><a href="https://www.123elec.com/moyens-de-paiement"><span class="btn btn-s">Mandat administratif</span></a></li>
            </ul>
        </div>
        <div class="col">
            <strong class="title">Moyens de livraison :</strong>
            <ul class="shiping-list">
                <li><a href="https://www.123elec.com/livraison"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logodpd.png" width="70" height="30" alt="dpd"></a></li>
                <li><a href="https://www.123elec.com/livraison"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo14.png" width="73" height="26" alt="tnt"></a></li>
                <li><a href="https://www.123elec.com/livraison"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo_socolissimo.png" width="114" height="29" alt="chronopost international"></a></li>
                <li><a href="https://www.123elec.com/livraison"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo16.png" width="90" height="48" alt="kuehne+nagel"></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="main-container">
    <div class="footer-nav">
        <div class="col async" data-asyncblock="footer_col1">
            <strong class="title">123elec</strong>
<ul>
<li><a href="https://www.123elec.com/qui-sommes-nous">Qui sommes-nous ?</a></li>
<li><a href="https://www.123elec.com/nos-engagements">Nos engagements</a></li>
<li><a href="https://www.123elec.com/presse">On parle de nous</a></li>
<li><a href="https://www.123elec.com/cgv">Conditions g&eacute;n&eacute;rales de vente</a></li>
<li><a href="https://www.123elec.com/mentions_legales_123elec">Mentions l&eacute;gales</a></li>
<li><a href="https://www.123elec.com/respect-vie-privee">Respect de la vie priv&eacute;e</a></li>
<li><a href="https://www.blog.123elec.com" target="_blank">Le Blog</a></li>
<li><a href="https://www.123elec.com/recrutement">123elec recrute</a></li>
</ul>        </div>
        <div class="col async" data-asyncblock="footer_col2">
            <strong class="title">Vos commandes</strong>
<ul>
<li><a href="https://www.123elec.com/customer/account/">Mon compte client</a></li>
<li><a href="https://www.123elec.com/acheter_son_materiel_electrique_moins_cher_programme_fidelite">Programme fid&eacute;lit&eacute;</a></li>
<li><a href="https://www.123elec.com/comment-acheter-votre-materiel-electrique-sur-123elec">Comment acheter ?</a></li>
<li><a href="https://www.123elec.com/moyens-de-paiement">Moyens de paiement</a></li>
<li><a href="https://www.123elec.com/livraison">Livraison</a></li>
<li><a href="https://www.123elec.com/sav_avoirs_retours">Retours</a></li>
<li><a href="https://www.123elec.com/codes-promos">Codes promos 123elec</a></li>
</ul>        </div>
        <div class="col">
            <strong class="title">Besoin d’aide ?</strong>
<ul>
<li><a href="https://www.123elec.com/avantages_123elec_pros">Avantages PROS</a></li>
<li><a href="https://www.123elec.com/faq_123elec">Foire aux questions</a></li>
<li><a href="https://www.123elec.com/dossiers-thematiques">Dossiers bricolage</a></li>
<li><a href="https://www.123elec.com/customer/account/forgotpassword/">Mot de passe perdu</a></li>
<li><a href="https://www.123elec.com/retractation">Formulaire de r&eacute;tractation</a></li>
<li><a href="https://www.123elec.com/catalog/seo_sitemap/category/">Plan de site</a></li>
<li><a href="https://www.123elec.com/sites-a-visiter">Sites &agrave; visiter</a></li>
<li><a href="https://www.youtube.com/c/123elecTV" target="_blank">La cha&icirc;ne YouTube</a></li>
</ul>        </div>
        <div class="footer-contact async" data-asyncblock="footer_col4">
            <div class="col">
    <strong class="title">Nous contacter</strong>
    <span class="call">
                            <a href="tel:0481120080">04 81 12 00 80</a>
                    <span></span>
                </span>
    <address>123elec/SAS PHASE NEUTRE<br />Rue Rémi Moïse<br />ZAC Montrambert Pigeot<br />42150 La Ricamarie (France)</address>
    <a href="https://www.123elec.com/contacts">Formulaire de contact</a>
</div>
<div class="col">
    <strong class="title">Suivez-nous</strong>
    <!-- social networks -->
    <ul class="social">
        <li><a href="https://fr-fr.facebook.com/123elec" target="_blank" class="facebook">facebook</a></li>
        <li><a href="https://twitter.com/123elec" target="_blank" class="twitter">twitter</a></li>
    </ul>
    <div class="img-box"><p><img alt="Suivez 123elec sur les réseaux sociaux et suivez l'actu du matériel électrique" src="https://cdn.123elec.com/media/wysiwyg/accueil/img6.png" height="132" width="175" /></p></div>
</div>        </div>
    </div>
</div>
<div class="main-container">
    <div class="subscribe-holder">
        <div class="text-box">
            <strong class="title">NEWSLETTER<span>123elec</span></strong>
            <p>Profitez des promos et bons de réduction en vous inscrivant à notre newsletter...<a href="https://www.123elec.com/newsletter_123elec">En savoir +</a> </p>
        </div>
        <!-- newsletter form -->
        <form action="https://www.123elec.com/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
            <div class="subscribe-form">
                <input type="email" name="email" id="newsletter" placeholder="Saisissez votre adresse email" class="required-entry validate-email">
            </div>
            <div class="user-box">
                <button type="submit" class="my-account"><span class="ico-account"></span><span>Particuliers</span></button>
                <button type="submit" class="access"><span class="ico-pro"></span><span>PROS</span></button>
            </div>
            <div class="legal-text">
                Les informations recueillies sur ce formulaire sont enregistrées dans un fichier informatisé par SAS PHASE NEUTRE-123ELEC afin de vous envoyer des informations sur les offres promotionnelles et évènement sur 123elec.com.<br />
                Elles sont conservées pendant 36 mois et sont destinées au service marketing.<br />
                Conformément à la loi « informatique et libertés », vous pouvez exercer votre droit d'accès aux données vous concernant et les faire rectifier en contactant : dpo@123elec.com
            </div>
        </form>
    </div>
</div>
            <div class="main-container">
    <div class="footer-about">
        <a href="#" class="logo"><img src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/logo.png" width="106" height="106" alt="123elec"></a>
        <div class="text-box">
            <strong class="title">Notre Philosophie</strong>
            <p>123elec est depuis 10ans une r&eacute;f&eacute;rence dans la vente en ligne de&nbsp;<strong>mat&eacute;riel &eacute;lectrique</strong>&nbsp;pour l&rsquo;installation r&eacute;sidentielle.</p>
<p><span>Le catalogue vari&eacute; propose du mat&eacute;riel &eacute;lectrique permettant de r&eacute;pondre &agrave; diff&eacute;rents besoins : protection des biens et des personnes (disjoncteurs, interrupteurs diff&eacute;rentiels, tableaux &eacute;lectriques, GTL (Gaines Techniques de Logement), c&acirc;bles et fils &eacute;lectriques), r&eacute;seau multim&eacute;dia (coffrets de communication, accessoires fibre optique),&nbsp;<strong><span>appareillage &eacute;lectrique</span></strong>&nbsp;(interrupteurs et prises), domotique, etc. Avec 123elec, les grandes marques telles que Legrand, Schneider, Hager, Siemens, Wago sont propos&eacute;es au meilleur prix. D&eacute;couvrez &eacute;galement notre propre marque de mat&eacute;riel &eacute;lectrique proposant des produits avec un excellent rapport qualit&eacute; / fonction / prix.</span></p>
<p><span>Afin de permettre au plus grand nombre de s&rsquo;&eacute;quiper en&nbsp;<strong><span>mat&eacute;riel &eacute;lectrique</span></strong>&nbsp;de qualit&eacute; &agrave; juste prix, une politique de prix bas est pratiqu&eacute;e tout au long de l&rsquo;ann&eacute;e sur l&rsquo;ensemble du mat&eacute;riel et de l&rsquo;<strong><span>appareillage &eacute;lectrique</span></strong>. En plus d&rsquo;acheter votre &eacute;quipement moins cher, c&rsquo;est aussi la garantie pour vous de pouvoir vous r&eacute;&eacute;quiper au meilleur prix.</span></p>
<p><span>Quel que soit le&nbsp;<a href="https://www.123elec.com/gamme-materiel-electrique.html"><span>mat&eacute;riel &eacute;lectrique</span></a>&nbsp;et/ou l'outillage dont vous avez besoin pour la r&eacute;alisation de vos travaux ou pour travailler sur vos chantiers, trouvez les produits qu'il vous faut &agrave; juste prix sur 123elec.com.</span></p>
<p><span>L'&eacute;quipe 123elec.</span></p>        </div>
        <div class="image-box">
            <strong class="title">Bienvenue chez 123elec !</strong>
            <p><img alt="Locaux et équipe 123elec, vente de matériel électrique" src="https://cdn.123elec.com/media/wysiwyg/accueil/batiment-v2.png" height="186" width="364" /></p>        </div>
    </div>
</div>        </footer>
    </div>
</div>




<div class="mdl-overlay" id="mdl-overlay" style="display: none;">&nbsp;</div>

<div style="display: none; top: 496px;" class="mdlajax-progress popup" id="mdl_ajax_progress">
        &nbsp;
</div>
<div class="mdl-loading-data" id="mdl-loading-data" style="display: none;">
    <img alt="Chargement en cours..." src="https://cdn.123elec.com/skin/frontend/rwd/123elec/images/mdl/ajax-loader.gif" width="16" height="16"/>
    <p>Chargement en cours...</p>
</div>

<div style="display: none; position: fixed; top: 496px;" class="mdlajax-confirm popup" id="mdl_ajax_confirm">
        &nbsp;
</div>

<div id="mdl-temp-div" style="display:none;"></div><!-- BEGIN GCR Badge Code -->



<!-- END GCR Badge Code -->

<!-- BEGIN GCR Language Code -->

<!-- END GCR Language Code --><!-- BEGIN GCR Badge Code -->



<!-- END GCR Badge Code -->

<!-- BEGIN GCR Language Code -->

<!-- END GCR Language Code --><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"a0c3a06b6c","applicationID":"20390924","transactionName":"ZlUBZRQFWBdRUkYPVl8fIlISDVkKH1JfFRZYXgdUHktfClRUSg==","queueTime":0,"applicationTime":141,"atts":"ShICE1wfSxk=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html><!--[if lt IE 7]>
<script nodefer type="text/javascript">
    //<![CDATA[
    var BLANK_URL = 'https://cdn.123elec.com/js/blank.html';
    var BLANK_IMG = 'https://cdn.123elec.com/js/spacer.gif';
//]]>
</script>
<![endif]--><script type="text/javascript" src="https://cdn.123elec.com/js/prototype/prototype.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/lib/ccard.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/prototype/validation.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/lib/jquery/jquery-1.12.1.min.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/lib/jquery/noconflict.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/scriptaculous/effects.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/scriptaculous/dragdrop.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/scriptaculous/controls.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/scriptaculous/slider.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/varien/js.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/varien/form.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/mage/translate.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/mage/cookies.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/modernizr.custom.min.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/selectivizr.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/matchMedia.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/matchMedia.addListener.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/enquire.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/app.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/jquery.cycle2.min.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/jquery.cycle2.swipe.min.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/slideshow.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/lib/imagesloaded.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/minicart.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/jquery.main.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/jcf.magento.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/base/default/js/ec.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/mdl/ajax_cart.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/skin/frontend/rwd/123elec/js/masonry.pkgd.min.js?v=1574173177"></script><script type="text/javascript" src="https://cdn.123elec.com/js/ebizmarts/mailchimp/campaignCatcher.js?v=1574173177" async></script><script type="text/javascript">
//<![CDATA[
Mage.Cookies.path     = '/';
Mage.Cookies.domain   = '.www.123elec.com';
//]]>
</script><script type="text/javascript">
//<![CDATA[
optionalZipCountries = ["IE","PA","HK","MO"];
//]]>
</script><script>

	
	window.dataLayer = window.dataLayer || [], collection = [];

		
	AEC.Const = 
	{
		TIMING_CATEGORY_ADD_TO_CART:		'Add To Cart Time',
		TIMING_CATEGORY_REMOVE_FROM_CART:	'Remove From Cart Time',
		TIMING_CATEGORY_PRODUCT_CLICK:		'Product Detail Click Time',
		TIMING_CATEGORY_CHECKOUT:			'Checkout Time',
		TIMING_CATEGORY_CHECKOUT_STEP:		'Checkout Step Time',
		TIMING_CATEGORY_PRODUCT_WISHLIST:	'Add to Wishlist Time',
		TIMING_CATEGORY_PRODUCT_COMPARE:	'Add to Compare Time',
		URL:								'https://www.123elec.com/'
	};

		
	AEC.Const.Viewport = false;

		
	AEC.Const.ClientId = null;

		
	AEC.Message = 
	{
		confirmRemove: 'Êtes-vous sûr(e) de vouloir retirer cet article du panier ?'
	};

	AEC.currencyCode 	= 'EUR';
	AEC.eventTimeout 	=  2000;
	AEC.eventCallback	=  true;
	AEC.forceSelectors 	=  1;
	AEC.facebook 		=  false;
	AEC.facebookPixelId = '';

	AEC.SUPER = [];

	/**
	 * Persistent dataLayer[] data
	 */
	AEC.Persist = (function(dataLayer)
	{
		var DATA_KEY = 'persist'; 

		var proto = 'undefined' != typeof Storage ? 
		{
			push: function(key, entity)
			{
				/**
				 * Get data
				 */
				var data = this.data();

				/**
				 * Push data
				 */
				data[key] = entity;

				/**
				 * Save to local storage
				 */
				localStorage.setItem(DATA_KEY, JSON.stringify(data));

				return this;
			},
			data: function()
			{
				var data = localStorage.getItem(DATA_KEY);
				
				if (null !== data)
				{
					return JSON.parse(data);
				}

				return {};
			},
			merge: function()
			{
				var data = this.data();
				var push = 
				{
					persist: {}
				}

				for (var i in data)
				{
					push.persist[i] = data[i];
				}

				dataLayer.push(push);

				return this;
			},
			clear: function()
			{
				/**
				 * Reset private local storage
				 */
				localStorage.setItem(DATA_KEY,JSON.stringify({}));

				return this;
			}
		} : {
			push: 	function(){}, 
			merge: 	function(){},
			clear: 	function(){}
		}

		/**
		 * Constants
		 */
		proto.CONST_KEY_PROMOTION = 'persist_promotion';

		return proto;
		
	})(dataLayer).merge();

	if (AEC.facebook)
	{
		!function(f,b,e,v,n,t,s)
		{
			if(f.fbq)return;n=f.fbq=function(){n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
			n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
			t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)
		}(window,document,'script','//connect.facebook.net/en_US/fbevents.js');

		fbq('init', AEC.facebookPixelId);
		fbq('track', 'PageView');	
	}
	
</script><script>

	/**
 	 * Define dataLayer[] object
	 */
	window.dataLayer = window.dataLayer || [];

	/**
	 * Define transport layer to use as fallback in case of Ad-Blockers
	 * 
	 * @copyright Anowave
	 */
	var dataLayerTransport = (function()
	{
		var data = [];
		
		return {
			data:[],
			push: function(data)
			{
				this.data.push(data);
				
				return this;
			},
			serialize: function()
			{
				return this.data;
			}
		}	
	})();

			
</script><script>

	var visitor = 
	{
		visitorLoginState: 		'Logged out',
		visitorType:			'NOT LOGGED IN',
		visitorLifetimeValue:	 0,
		visitorExistingCustomer:'No'
	};

	
	if ('undefined' !== typeof jQuery)
	{
		(function($, visitor)
		{
			$.extend(visitor, []);
			
		})(jQuery, visitor);
	}

	AEC.Cookie.visitor(visitor).push(dataLayer);

	
</script><script>

	/**
	 * Custom dimensions
	 */
	var dimensions = {"pageType":"home","pageName":"Vente en ligne de matériel électrique de grandes marques à bas prix - 123elec.com"};
	
	if (dimensions && dimensions.hasOwnProperty('pageType'))
	{
		dataLayer.push(dimensions);
	}

</script><script>

	/**
	 * A/B Split Testing Experiments
	 * 
	 * @copyright Anowave
 	 * @release Requires PHP 5.4 or higher.
	 */

	 if ('undefined' === typeof AB)
	 {
		var AB = (function($, dataLayer)
		{
			var cookies = {}, experiment_cookie = 'ab', percent = 50;

			/**
			 * Get experiment(s)
			 */
			var experiments = {};

			
			return {
				experiments: experiments,
				experiments_data:[],
				run: function()
				{
					$.each(this.experiments, function(index, experiment)
					{
						if (experiment.triggered)
						{
							experiment.callback.apply(experiment,[dataLayer]);
						}
					});

					return this;
				},
				experiment: function(experiment)
				{
					/**
					 * Get experiment content
					 */
					var content = $('[id=' + experiment + ']').html();

					/**
					 * Replace experimented content
					 */
					$('span[data-experiment=' + experiment + ']').html(content);
				}
			}
		})(jQuery, dataLayer).run();
	 }

</script><script>

	if ('undefined' !== typeof jQuery && 'undefined' !== typeof dataLayer)
	{
		jQuery(document).ready(function()
		{
		    var PromotionTrack = (function($, dataLayer)
		    {
		        return {
		            apply: function()
		            {
		                var promotions = [], position = 0;
		
		                $('[data-promotion]').each(function()
		                {
		                    promotions.push(
	                        {
	                            id:      	$(this).data('promotion-id'),
	                            name:    	$(this).data('promotion-name'),
	                            creative:	$(this).data('promotion-creative'),
	                            position:	++position
	                        });
	
		                    $(this).on(
	                        {
	                            click: function()
	                            {
		                           	var data = 
			                        {
	                           			'event': 'promotionClick',
	                           			'eventLabel': 'Promotion click',
                                        'ecommerce': 
                                        {
                                            'promoClick': 
                                            {
                                                'promotions':
                                                [
	                                                {
		                                                'id':       $(this).data('promotion-id'),
		                                                'name':     $(this).data('promotion-name'),
		                                                'creative': $(this).data('promotion-creative'),
		                                                'position': $(this).data('promotion-position')
	                                                }
                                                ]
                                            }
                                        }
					                };
					                
	                                dataLayer.push(data);

	                                /**
	                                 * Save persistent data
	                                 */
	                                AEC.Persist.push(AEC.Persist.CONST_KEY_PROMOTION,
	    	                        {
		    	                        'promotion':data.ecommerce.promoClick.promotions[0]
		    	                    });
	                            }
	                        });
		                });
		
		                if (promotions.length)
		                {
		                    dataLayer.push(
	                        {
		                        'event':'promoViewNonInteractive',
		                        'eventLabel':'Promotion view',
	                            'ecommerce':
	                            {
	                                'promoView':
	                                {
	                                    'promotions': promotions
	                                }
	                            }
	                        });
		                }
		
		                return this;
		            }
		        }
		    })(jQuery, dataLayer).apply();
		});
	}
	else 
	{
		console.log('Promotion tracking requires jQuery and dataLayer[] object defined.');
	}
	
</script><script>

	var EC = [], Purchase = [], FacebookProducts = [];

	/* Dynamic remarketing */
	window.google_tag_params = window.google_tag_params || {};

	/* Default pagetype */
	window.google_tag_params.ecomm_pagetype = 'home';

	/* Grouped products collection */
	window.G = [];

	/**
	 * Global revenue 
	 */
	window.revenue = 0;

	/**
	 * DoubleClick
	 */
	window.DoubleClick = 
	{
		DoubleClickRevenue:	 	0,
		DoubleClickTransaction: 0,
		DoubleClickQuantity: 	0
	}

	
	if (Purchase.length)
	{
				
		for (i = 0, l = Purchase.length; i < l; i++)
		{
			AEC.Cookie.purchase(Purchase[i]).push(dataLayer);
		}

		
		AEC.Cookie.purchase({"event":"purchaseEvent"}).push(dataLayer);

		/**
		 * Facebook Pixel Tracking
		 */
		
		/**
		 * Clear persistant data from local storage
		 */
		AEC.Persist.clear();
	}
	
</script><script>AEC.Cookie.pushPrivate()</script><script>

	/**
 	 * Push tracking 
	 */
	
				var data = AEC.Cookie.Storage.get('ec_0dc4ddc7a7536bcc44a0b4fa3c1eb09b_ec_details');

		if (data)
		{
						data.localStorage = true;

						dataLayer.push(data);
		}
	
	
		if ('undefined' !== typeof Product && Product.hasOwnProperty('OptionsPrice') && Product.OptionsPrice.prototype.hasOwnProperty('formatPrice'))
	{
				Product.OptionsPrice.prototype.reload = Product.OptionsPrice.prototype.reload.wrap(function(parentMethod)
		{
			parentMethod();

			AEC.Callbacks.queue(function(price)
			{
				var price = parseFloat(price).toFixed(2);

				jQuery('[data-event="addToCart"]').data('price', price).attr('data-price', price);
			});
		});

		Product.OptionsPrice.prototype.formatPrice = Product.OptionsPrice.prototype.formatPrice.wrap(function(parentMethod, price)
		{
						AEC.Callbacks.apply(price);
			
			var price = parentMethod(price);

			return price;
		});
	}

		</script><script>

	
	
</script><script>
	</script><script>
		</script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-8HWF');</script><script type="text/javascript">
    var doofinderCDN = '//cdn.doofinder.com/media/js/doofinder-classic.latest.min.js';
    (function(d,t){f=d.createElement(t),s=d.getElementsByTagName(t)[0];f.async=1;
            f.src=('https:'==location.protocol?'https:':'http:')+doofinderCDN;
            s.parentNode.insertBefore(f,s)}(document,'script')
    );
    var dfClassicLayers = [{
        queryInput: "#search",
        hashid: 'df95c7881f108dd707910e8bc6119033',
        urlHash: false,
        zone: 'eu1',
        display: {
            lang: 'fr',
            translations: {
                'Add to Cart': 'Panier'
            },
            center: true,
            facets:{"attached":"left"},
            results: {
                template:  '{{#is_first }}' +
                '{{#banner}}' +
                '<div class="df-banner">' +
                '<a href="{{banner.link}}"><img src="{{banner.image}}"/></a>' +
                '</div>' +
                '{{/banner}}' +
                '{{/is_first}}' +
                '{{#total}}' +
                '{{#results}}' +
                '<div class="df-results__item">' +
                '<div class="df-card">' +
                '{{#image_link}}' +
                '<a class="df-card__image" href="{{#url-params}}{{link}}{{/url-params }}" data-df-hitcounter="{{dfid}}">' +
                '<img src="{{#remove-protocol}}{{image_link}}{{/remove-protocol}}" alt="{{title}}">' +
                '</a>' +
                '{{/image_link}}' +
                '{{#logo_marque}}' +
                '<div class="product-manufacturer">' +
                '<img src="{{logo_marque}}" />' +
                '</div>' +
                '{{/logo_marque}}' +
                '<div class="df-card__content">' +
                '<a class="df-card__content__block" data-df-hitcounter="{{dfid}}" href="{{#url-params}}{{link}}{{/url-params}}">' +
                '<div class="df-card__title">{{title}}</div>'+
                '<div class="df-card__description" style="overflow: hidden; text-overflow: ellipsis;">{{{description}}}</div>' +
                '{{#sale_price}}' +
                '<div class="df-card__price price-excluding-tax">' +
                '<span class="df-card__old-price">{{#format-currency}}{{price_excl_tax}}{{/format-currency}} <sup>TTC</sup></span>' +
                '<span class="df-card__sale-price">{{#format-currency}}{{sale_price_excl_tax}}{{/format-currency}} <sup>TTC</sup></span>' +
                '{{#percent_off}}' +
                '<span class="label sale">{{percent_off}}</span>' +
                '{{/percent_off}}' +
                '</div>' +
                '<div class="df-card__price price-including-tax">' +
                '<span class="df-card__old-price">{{#format-currency}}{{price}}{{/format-currency}} <sup>TTC</sup></span>' +
                '<span class="df-card__sale-price">{{#format-currency}}{{sale_price}}{{/format-currency}} <sup>TTC</sup></span>' +
                '{{#percent_off}}' +
                '<span class="label sale">{{percent_off}}</span>' +
                '{{/percent_off}}' +
                '</div>' +
                '{{/sale_price}}' +
                '{{^sale_price}}{{#price}}' +
                '<div class="df-card__price price-excluding-tax">' +
                '<span class="df-card__regular-price">{{#format-currency}}{{price_excl_tax}}{{/format-currency}} <span class="label">TTC</span></span>' +
                '</div>'+
                '<div class="df-card__price price-including-tax">' +
                '<span class="df-card__regular-price">{{#format-currency}}{{price}}{{/format-currency}} <span class="label">TTC</span></span>' +
                '</div>' +
                '{{/price}}{{/sale_price}}' +
                '</a>' +

                '{{#points_watt}}' +
                '<div class="slide-label-watt"><strong class="label-watt"><span>{{points_watt}}</span> points</strong></div>' +
                '{{/points_watt}}' +

                '{{#add_to_cart}}' +
                '<div class="slide-footer">' +
                '<form action="//www.123elec.com/checkout/cart/add/product/{{id}}" id="product_addtocart_form_df_{{id}}">' +
                '<div class="number-box">' +

                '<span class="control"><a href="javascript:;" onClick="removeQty(\'product_addtocart_form_df_{{id}}\')">-</a></span>' +
                '<input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qté" class="input-text qty">' +
                '<span class="control"><a href="javascript:;" onClick="addQty(\'product_addtocart_form_df_{{id}}\')">+</a></span>' +

                '</div>' +

                '<button type="button" title="Panier" class="button btn-cart-list" onClick="sendcartDoofinder(\'product_addtocart_form_df_{{id}}\')"><span><span>Panier</span></span></button>' +
                '</form>' +
                '</div>' +
                '{{/add_to_cart}}' +
                '</div>' +
                '</div>' +
                ' </div>' +
                '{{/results}}' +
                '{{/total}}' +
                '{{^total}}' +
                '<div class="df-card">{{#translate}}Sorry, no results found.{{/translate}}</div>' +
                '{{/total}}'
            }
        },
        mobile:{
            display:{
                results:{
                    template:'{{#results}}' +
                    '<div class="df-card">' +
                    '{{#image_link}}' +
                    '<a class="df-card__image" href="{{#url-params}}{{link}}{{/url-params }}" data-df-hitcounter="{{dfid}}">' +
                    '<img src="{{#remove-protocol}}{{image_link}}{{/remove-protocol}}" alt="{{title}}">' +
                    '</a>' +
                    '{{/image_link}}' +
                    '{{#logo_marque}}' +
                    '<div class="product-manufacturer">' +
                    '<img src="{{logo_marque}}" />' +
                    '</div>' +
                    '{{/logo_marque}}' +
                    '<div class="df-card__content">' +
                    '<a class="df-card__content__block" data-df-hitcounter="{{dfid}}" href="{{#url-params}}{{link}}{{/url-params}}">' +
                    '<div class="df-card__title">{{title}}</div>'+
                    '{{#sale_price}}' +
                    '<div class="df-card__price price-excluding-tax">' +
                    '<span class="df-card__old-price">{{#format-currency}}{{price_excl_tax}}{{/format-currency}} <sup>HT</sup></span>' +
                    '<span class="df-card__sale-price">{{#format-currency}}{{sale_price_excl_tax}}{{/format-currency}} <sup>HT</sup></span>' +
                    '{{#percent_off}}' +
                    '<span class="label sale">{{percent_off}}</span>' +
                    '{{/percent_off}}' +
                    '</div>' +
                    '<div class="df-card__price price-including-tax">' +
                    '<span class="df-card__old-price">{{#format-currency}}{{price}}{{/format-currency}} <sup>TTC</sup></span>' +
                    '<span class="df-card__sale-price">{{#format-currency}}{{sale_price}}{{/format-currency}} <sup>TTC</sup></span>' +
                    '{{#percent_off}}' +
                    '<span class="label sale">{{percent_off}}</span>' +
                    '{{/percent_off}}' +
                    '</div>' +
                    '{{/sale_price}}' +
                    '{{^sale_price}}{{#price}}' +
                    '<div class="df-card__price price-excluding-tax">' +
                    '<span class="df-card__regular-price">{{#format-currency}}{{price_excl_tax}}{{/format-currency}} <span class="label">HT</span></span>' +
                    '</div>'+
                    '<div class="df-card__price price-including-tax">' +
                    '<span class="df-card__regular-price">{{#format-currency}}{{price}}{{/format-currency}} <span class="label">TTC</span></span>' +
                    '</div>' +
                    '{{/price}}{{/sale_price}}' +
                    '</a>' +

                    '{{#points_watt}}' +
                    '<div class="slide-label-watt"><strong class="label-watt"><span>{{points_watt}}</span> points</strong></div>' +
                    '{{/points_watt}}' +

                    '{{#add_to_cart}}' +
                    '<div class="slide-footer">' +
                    '<form action="//www.123elec.com/checkout/cart/add/product/{{id}}" id="product_addtocart_form_df_m_{{id}}">' +
                    '<div class="number-box">' +

                    '<span class="control"><a href="javascript:;" onClick="removeQty(\'product_addtocart_form_df_{{id}}\')">-</a></span>' +
                    '<input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qté" class="input-text qty">' +
                    '<span class="control"><a href="javascript:;" onClick="addQty(\'product_addtocart_form_df_{{id}}\')">+</a></span>' +

                    '</div>' +

                    '<button type="button" title="Panier" class="button btn-cart-list" onClick="sendcartDoofinder(\'product_addtocart_form_df_m_{{id}}\')"><span><span>Panier</span></span></button>' +
                    '</form>' +
                    '</div>' +
                    '{{/add_to_cart}}' +
                    '</div>' +
                    '</div>' +
                    '{{/results}}'
                }
            }
        }
    }];
</script><script type="text/javascript">if (typeof Varien.searchForm !== 'undefined') Varien.searchForm.prototype.initAutocomplete = function() { $('search_autocomplete').hide(); };</script><script type="application/ld+json">{"@context":"http:\/\/schema.org","@type":"WebSite","url":"https:\/\/www.123elec.com\/","name":"123elec"}</script><script>
  window.fcWidget.init({
    token: "7da92807-9e85-4966-8999-f92976167534",
    host: "https://wchat.freshchat.com"
  });
</script><script type="text/javascript" async>
    var w = document.createElement("script");
    w.type = "text/javascript";
    w.src = "//widget.trustpilot.com/bootstrap/v5/tp.widget.bootstrap.min.js";
    w.async = true;
    document.head.appendChild(w);
</script><script type="text/javascript">
	(function(w,d,s,r,n){w.TrustpilotObject=n;w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)};
	a=d.createElement(s);a.async=1;a.src=r;a.type='text/java'+s;f=d.getElementsByTagName(s)[0];
	f.parentNode.insertBefore(a,f)})(window,document,'script', 'https://invitejs.trustpilot.com/tp.min.js', 'tp');
	tp('register','lVbbLde1kxgJdziE');
</script><script type="text/javascript">
    function inIframe() {
        try {
            return window.self !== window.top;
        } catch (e) {
            return false;
        }
    }

    function tryParseJson(str) {
        if (typeof str === 'string') {
            try {
                return JSON.parse(str);
            } catch (e) {
                return false;
            }
        }
        return false;
    }

    if (inIframe()) {
        window.addEventListener('message', function (e) {
            var adminOrign = new URL(window.location).hostname;
            if (!e.data || e.origin.indexOf(adminOrign) === -1) {
                return;
            }
            if (typeof TrustpilotPreview !== 'undefined') {
                if (typeof e.data === 'string' && e.data === 'submit') {
                    TrustpilotPreview.sendTrustboxes();
                } else {
                    jsonData = JSON.parse(e.data);
                    if (jsonData.trustbox) {
                        TrustpilotPreview.setSettings(jsonData.trustbox);
                    } else if (jsonData.customised) {
                        TrustpilotPreview.updateActive(jsonData.customised);
                    }
                }
            } else {
                var settings = tryParseJson(e.data);
                if (settings) {
                    var p = document.createElement("script");
                    p.type = "text/javascript";
                    p.onload = function () {
                        const iFrame = e.source.parent.document.getElementById('configuration_iframe').contentWindow;
                        TrustpilotPreview.init(['//ecommplugins-scripts.trustpilot.com/v2.1/css/preview.css'], settings, iFrame, e.source);
                    };
                    p.src = '//ecommplugins-scripts.trustpilot.com/v2.1/js/preview.js';
                    document.head.appendChild(p);
                }
            }
        });
    }
</script><script type="text/javascript" async>
    const trustpilot_trustbox_settings = {"trustboxes":[]};
    /*if (trustpilot_trustbox_settings) {
        document.addEventListener('DOMContentLoaded', function() {
            tp('trustBox', trustpilot_trustbox_settings);
        });
    }*/
</script><script type="text/javascript">//<![CDATA[
        var Translator = new Translate({"HTML tags are not allowed":"Les balises HTML ne sont pas autoris\u00e9es","Please select an option.":"S\u00e9lectionnez une option","This is a required field.":"Ce champ est obligatoire.","Please enter a valid number in this field.":"Veuillez saisir un nombre valide.","The value is not within the specified range.":"La valeur n'est pas dans la plage sp\u00e9cifi\u00e9e.","Please use numbers only in this field. Please avoid spaces or other characters such as dots or commas.":"Seuls les chiffres sont autoris\u00e9s dans ce champ. \u00c9vitez les espaces ou autres caract\u00e8res tels que les points ou les virgules.","Please use letters only (a-z or A-Z) in this field.":"Veuillez utiliser uniquement des lettres (a-z ou A-Z) dans ce champ.","Please use only letters (a-z), numbers (0-9) or underscore(_) in this field, first character should be a letter.":"Veuillez utiliser uniquement des lettres (a-z), des chiffres (0-9) ou underscore (_) dans ce champ, en commen\u00e7ant par une lettre.","Please use only letters (a-z or A-Z) or numbers (0-9) only in this field. No spaces or other characters are allowed.":"Veuillez utiliser uniquement des lettres (a-z) ou des chiffres (0-9) dans ce champ. Les espaces et autres caract\u00e8res ne sont pas autoris\u00e9s.","Please use only letters (a-z or A-Z) or numbers (0-9) or spaces and # only in this field.":"Veuillez utiliser uniquement des lettres (a-z), des chiffres (0-9), des espaces ou des di\u00e8ses (#) dans ce champ.","Please enter a valid phone number. For example (123) 456-7890 or 123-456-7890.":"Veuillez saisir un num\u00e9ro de t\u00e9l\u00e9phone valide.","Please enter a valid fax number. For example (123) 456-7890 or 123-456-7890.":"Veuillez saisir un num\u00e9ro de fax valide. Par exemple 0123456789.","Please enter a valid date.":"Veuillez saisir une date valide.","Please enter a valid email address. For example johndoe@domain.com.":"Veuillez saisir une adresse email valide. Par exemple prenom.nom@domaine.com","Please use only visible characters and spaces.":"Veuillez utiliser uniquement des caract\u00e8res visibles et des espaces.","Please enter more characters or clean leading or trailing spaces.":"7 caract\u00e8res minimum.","Please make sure your passwords match.":"V\u00e9rifiez que vos mots de passe concordent.","Please enter a valid URL. Protocol is required (http:\/\/, https:\/\/ or ftp:\/\/)":"Veuillez saisir une URL valide. Le protocole est obligatire (http:\/\/, https:\/\/ ou ftp:\/\/)","Please enter a valid URL. For example http:\/\/www.example.com or www.example.com":"Veuillez saisir une URL valide. Par exemple http:\/\/www.exemple.com ou www.exemple.com","Please enter a valid URL Key. For example \"example-page\", \"example-page.html\" or \"anotherlevel\/example-page\".":"Veuillez saisir une URL valide. Par exemple \"page-exemple\", \"page-exemple.html\" ou \"niveau\/page-exemple\".","Please enter a valid XML-identifier. For example something_1, block5, id-4.":"Veuillez saisir un identifiant XML valide. Par exemple, quelquechose_1, bloc5, id-4.","Please enter a valid social security number. For example 123-45-6789.":"Veuillez saisir un num\u00e9ro de s\u00e9curit\u00e9 sociale valide. Par exemple 123-45-6789.","Please enter a valid zip code. For example 90602 or 90602-1234.":"Veuillez saisir un code postal valide. Par exemple 92100.","Please enter a valid zip code.":"Veuillez saisir un code postal valide.","Please use this date format: dd\/mm\/yyyy. For example 17\/03\/2006 for the 17th of March, 2006.":"Veuillez utiliser ce format de date : jj\/mm\/aaaa. Par exemple, 21\/12\/2012 pour le 21 D\u00e9cembre 2012.","Please enter a valid $ amount. For example $100.00.":"Veuillez saisir un montant valide. Par exemple 100.00 \u20ac.","Please select one of the above options.":"Veuillez choisir une des options ci-dessus.","Please select one of the options.":"Veuillez choisir une des options.","Please select State\/Province.":"Veuillez choisir un \u00e9tat\/province.","Please enter a number greater than 0 in this field.":"Veuillez saisir un nombre sup\u00e9rieur \u00e0 0 dans ce champ.","Please enter a number 0 or greater in this field.":"Veuillez saisir un nombre sup\u00e9rieur ou \u00e9gal \u00e0 0 dans ce champ.","Please enter a valid credit card number.":"Veuillez saisir un num\u00e9ro de carte bancaire valide.","Credit card number does not match credit card type.":"Le num\u00e9ro de carte ne correspond pas au type de carte.","Card type does not match credit card number.":"Le type de carte ne correspond pas au num\u00e9ro de carte.","Incorrect credit card expiration date.":"Mauvaise date d'expiration de carte de cr\u00e9dit.","Please enter a valid credit card verification number.":"Veuillez saisir un num\u00e9ro de v\u00e9rification de carte bancaire valide.","Please use only letters (a-z or A-Z), numbers (0-9) or underscore(_) in this field, first character should be a letter.":"Utilisez uniquement des lettres (a-z ou A-Z), des chiffres (0-9) ou des underscores (_) dans ce champ. Le premier caract\u00e8re doit \u00eatre une lettre.","Please input a valid CSS-length. For example 100px or 77pt or 20em or .5ex or 50%.":"Veuillez saisir une longueur CSS valide. Par exemple 100px ou 77pt ou 20 em ou .5ex ou 50%.","Text length does not satisfy specified text range.":"La longueur du texte ne satisfait pas la plage de texte sp\u00e9cifi\u00e9e.","Please enter a number lower than 100.":"Veuillez saisir un nombre inf\u00e9rieur \u00e0 100.","Please select a file":"S\u00e9lectionnez un fichier","Please enter issue number or start date for switch\/solo card type.":"Veuillez saisir le num\u00e9ro de probl\u00e8me ou une date de d\u00e9but pour le type de carte switch\/solo.","Please wait, loading...":"Veuillez patienter, chargement en cours...","This date is a required value.":"Cette date est obligatoire.","Please enter a valid day (1-%d).":"Veuillez saisir un jour valide (1-%d).","Please enter a valid month (1-12).":"Veuillez saisir un mois valide (1-12).","Please enter a valid year (1900-%d).":"Veuillez saisir une ann\u00e9e valide (1900-%d).","Please enter a valid full date":"Veuillez saisir une date compl\u00e8te valide.","Please enter a valid date between %s and %s":"Veuillez saisir une date valide entre %s et %s","Please enter a valid date equal to or greater than %s":"Veuillez saisir une date valide sup\u00e9rieure ou \u00e9gale \u00e0 %s","Please enter a valid date less than or equal to %s":"Veuillez saisir une date valide inf\u00e9rieure ou \u00e9gale \u00e0 %s","Complete":"Termin\u00e9e","Add Products":"Ajouter des produits","Please choose to register or to checkout as a guest":"Choisissez de vous enregistrer ou de passer votre commande en tant qu'invit\u00e9","Your order cannot be completed at this time as there is no shipping methods available for it. Please make necessary changes in your shipping address.":"Vous ne pouvez pas continuer votre commande car aucun mode de livraison n'est disponible pour votre adresse.","Please specify shipping method.":"Choisissez un mode de livraison.","Your order cannot be completed at this time as there is no payment methods available for it.":"Vous ne pouvez pas continuer votre commande car aucun mode de paiement n'est disponible.","Please specify payment method.":"Choisissez un mode de paiement.","Insert Widget...":"Ins\u00e9rer un widget...","Add to Cart":"Panier","In Stock":"En stock","Out of Stock":"En commande"});
        //]]></script><script type="text/javascript">
        //<![CDATA[
        var searchForm = new Varien.searchForm('search_mini_form', 'search', '');
        searchForm.initAutocomplete('https://www.123elec.com/catalogsearch/ajax/suggest/', 'search_autocomplete');
        //]]>
    </script><script type="text/javascript">
    //<![CDATA[
    var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
    new Varien.searchForm('newsletter-validate-detail', 'newsletter', 'Saisissez votre adresse email');
    //]]>
</script><script>

	if ('undefined' !== typeof jQuery && 'undefined' !== typeof dataLayer)
	{
		(function($, dataLayer)
		{
			var events = 
			{
				addToCart: function()
				{
										
				},
				addToCartList: function()
				{
										
				},
				removeFromCart: function()
				{
										
				},
				productClick: function()
				{
										
				},
				addToWishlist: function()
				{
										
				},
				addToCartWishlist: function()
				{
									},
				addToCompare: function()
				{
										
				}
			};

			var b = function(events)
			{
				$.each(events, function(event, callback)
				{
					var elements = $('[data-event]').filter(function()
					{
						return $(this).data('event') == event;
					});

					elements.each(function()
					{
						$(this).off('click.ec').on('click.ec', callback);
					});
				});
			};

						
			b(events);

						
			(function(events)
			{
				$(document).ajaxComplete(function( event, request, settings ) 
				{
					b(events);
				});
			})(events);
			
		})(jQuery, dataLayer);
	}
</script><script>

	if (typeof dataLayer !== "undefined")
	{
		
					
		
					
			
		for (a = 0, b = EC.length; a < b; a++)
		{
			EC[a].apply(this,[dataLayer]);
			EC[a].apply(this,[dataLayerTransport]);
		}

		/**
		 * Check if GTM is not blocked by Ad-Blocker
		 */
		if ('undefined' !== typeof jQuery)
		{
			jQuery(window).load(function()
			{
				if (!AEC.gtm())
				{
										
					console.log('Google Tag Manager may be blocked by Ad-Blocker or not included in page');
				}
			});
		}

		/* AdWords Remarketing */
		if (window.google_tag_params)
		{
			dataLayer.push(
			{  
				'event':				'fireRemarketingTag',
				'google_tag_params': 	window.google_tag_params
			});
		}

		if (typeof FB !== 'undefined') 
		{
			FB.Event.subscribe('edge.create',function(href) 
		 	{
				dataLayer.push(
				{
					'event': 			'socialInt',
					'socialNetwork': 	'Facebook',
					'socialAction': 	'Like',
					'socialTarget': 	href
				});
			});
		}

		window.sendPlus = function(g)
		{
		    dataLayer.push(
			{
		        'event': 			'socialInt',
		        'socialNetwork': 	'Google',
		        'socialAction': 	'+1',
		        'socialTarget': 	g.href
		    });
		};

		if (typeof twttr !== 'undefined') 
		{
			twttr.ready(function (twttr) 
			{
				twttr.events.bind('click', function()
				{
					dataLayer.push(
					{
						'event': 			'socialInt',
						'socialNetwork': 	'Twitter',
						'socialAction': 	'tweet',
						'socialTarget': 	window.location.href
					});
				}); 
			});
		}
	}
	else
	{
		console.log('dataLayer[] is not intialized. Check if GTM is installed properly');
	}
	
</script><script type="text/javascript">
    var ajax_cart_show_popup = 1;
            
    var loadingW = 300;
    var loadingH = 50;
    var confirmW = 320;
    var confirmH = 134;

</script><script src="https://apis.google.com/js/platform.js?onload=renderBadge"
        async defer>
</script><script>
    window.renderBadge = function() {
        var ratingBadgeContainer = document.createElement("div");
        document.body.appendChild(ratingBadgeContainer);
        window.gapi.load('ratingbadge', function() {
            window.gapi.ratingbadge.render(
                ratingBadgeContainer, {
                    // REQUIRED
                    "merchant_id": 8585089,
                    // OPTIONAL
                    "position": "BOTTOM_LEFT"
                });
        });
    }
</script><script>
    window.___gcfg = {
        lang: 'fr'
    };
</script><script src="https://apis.google.com/js/platform.js?onload=renderBadge"
        async defer>
</script><script>
    window.renderBadge = function() {
        var ratingBadgeContainer = document.createElement("div");
        document.body.appendChild(ratingBadgeContainer);
        window.gapi.load('ratingbadge', function() {
            window.gapi.ratingbadge.render(
                ratingBadgeContainer, {
                    // REQUIRED
                    "merchant_id": 8585089,
                    // OPTIONAL
                    "position": "BOTTOM_LEFT"
                });
        });
    }
</script><script>
    window.___gcfg = {
        lang: 'fr'
    };
</script><script type="text/javascript" language="JavaScript">
    if (!Mage.Cookies.get('frontend')) {
        new Ajax.Request('https://www.123elec.com/pncookie/', {
                onSuccess: function(transport) {
                    //do nothing
                }
            }
        );
    }
</script><script>function init_defer(){for(var t=document.getElementsByTagName("iframe"),e=0;e<t.length;e++)t[e].getAttribute("data-src")&&t[e].setAttribute("src",t[e].getAttribute("data-src"))}window.onload=init_defer;</script>