<!DOCTYPE html>
<html lang="en">
<head>
<meta name="X-Yottaa-Metrics" content="33218cae0c7c/[21,-,-]" />
<meta name="X-Yottaa-Optimizations" content="ob/1000000000100001100 si/33118cae0dbf-1581699195-295040295 tts/1581630137809 ti/5b3fd3ca0b534453f080c43a ai/5b3fd3ca0b534453f080c3d1" />
<meta name="profile.id" content="5b3fd3ca0b534453f080c3d1" />
<meta name="tod.id" content="5b3fd3ca0b534453f080c43a" />
<meta name="profile.name" content="Default Profile" />
<meta name="resource.version" content="v~4b.14c.0.0" />
<meta name="adn.id" content="5b3fd3ca0b534453f080c3d1" />
<meta name="shard.size" content="0" />
<meta name="cdn.hostname" content="//cdn-fsly.yottaa.net" /><!-- INSERT BY TRANSFORMER. SELECTOR=head,LOCATION=prepend --><script>

/*  Rapid+JS v4.0.0 Released on 2018-06-29T20:14Z | (c) Yottaa, Inc. | https://www.yottaa.com/rapidjs-license */ (function(h,ka){return ka(h)})('undefined'!==typeof window?window:this,function(h,ka){function M(){var a='0123456789abcdef'.split(''),b=[],c=Math.random,d;b[8]=b[13]=b[18]=b[23]='-';b[14]='4';for(var g=0;36>g;g++)b[g]||(d=0|16*c(),b[g]=a[19==g?d&3|8:d&15]);return b.join('')}function N(a){return f.rum.key+'-'+a}function Aa(a){if(!0==n.isIE('8'))return n.log('IE 8 detected we will not send data back for this browser currently.'),!1;if(!0===f.rum.post){var b=new XMLHttpRequest;b.onreadystatechange=function(){4== this.readyState&&n.log('Rum data response received',this.status)};b.open('POST',f.rum.beaconUrl,!0);b.setRequestHeader('Content-type','application/json');b.send(JSON.stringify(a))}else{var b=document.createElement('img'),c=f.rum.beaconUrl+'?';n.log('Sending timing data to ',c);for(var d in a)c+=d+'='+encodeURIComponent(a[d])+'&';b.src=c}}function la(a){for(var b=0;b<f.delayed.length;b++){var c=f.delayed[b];if(c.src==a||c.srcAttr==a)return c}return null}function S(a,b,c,d){a={lastByteTime:c.duration, implementationType:'dom',type:a,zone:b,resourceName:c.name,resourceSizeBytes:c.decodedBodySize};c=la(c.name);null!=c&&(a.delayedType=c.orgDelayType,a.delayedValue=c.delayValue);e.def(d)&&(a.stack=d);return a}function Ba(a,b,c,d){if(f.sequenceWrites&&'script'==a.nodeName.toLowerCase()){for(var g in w)if(0<w[g].length&&d.writeLocation!=w[g][0].getWriteSelector())return e.def(d.writeLocation)&&(a.yo_writeSelector=d.writeLocation),w[g][0].addScript(a),!1;g=null;f&&(g=e.select(d.writeLocation));if(null!= g){a.write_context=new z(g,a,d.writeLocation);var m=w[d.writeLocation];e.undef(m)&&(m=w[d.writeLocation]=[]);m.push(a.write_context);T=function(){var a=Array.prototype.slice.call(arguments,0,-1).join('');0<m.length&&m[m.length-1].collectDocumentWrite(a)};a.original_onload=a.onload;a.original_onreadystatechange=a.onreadystatechange;a.onload=a.onreadystatechange=null;var k=!1;a.onerror=a.onload=function(){k||this.readyState&&'loaded'!==this.readyState&&'complete'!==this.readyState||(e.log('loading ', this,this.write_context.getId()),k=!0,this.original_onload?this.original_onload.call(arguments):l.publish({topic:'sequence/afterloaded/'+a.src,message:a}),this.write_context.finalizeWriteOverride(),this.original_onload=this.write_context=this.onload=this.onreadystatechange=null)};a.onreadystatechange=function(){k||this.readyState&&'loaded'!==this.readyState&&'complete'!==this.readyState||(e.log('loading ',this,this.write_context.getId()),k=!0,this.original_onload||l.publish({topic:'sequence/afterloaded/'+ a.src,message:a}),this.write_context.finalizeWriteOverride(),this.original_onload=this.write_context=this.onload=this.onreadystatechange=null);this.original_onreadystatechange&&this.original_onreadystatechange.call(arguments)}}}return!0}function Ca(a,b,c,d){if(f.sequenceWrites&&'function'!==typeof d.writeLocation){for(var g in w)if(0<w[g].length&&d.writeLocation!=w[g][0].getWriteSelector())return e.def(d.writeLocation)&&(d.yo_writeSelector=d.writeLocation),w[g][0].addScript(a),!1;g=null;f&&(g=e.select(d.writeLocation)); if(null!=g){d.write_context=new z(g,{src:a},d.writeLocation);var m=w[d.writeLocation];e.undef(m)&&(m=w[d.writeLocation]=[]);m.push(d.write_context);T=function(){var a=Array.prototype.slice.call(arguments,0,-1).join('');0<m.length&&m[m.length-1].collectDocumentWrite(a)}}}return!0}function ma(a,b){for(;a.firstChild;)a.removeChild(a.firstChild);e.writeHTML(a,b)}function Da(){if(!1!=f.afterShockLoaded){for(var a=0;a<f.delayed.length;a++)if('none'!=f.delayed[a].delayType)return;null!=f.intervalID&&(clearInterval(f.intervalID), f.intervalID=null,e.log('Turning off response timer all objects are loaded.'))}}function na(a){f.sequenceWrites&&e.undef(a.yo_write)&&(a.yo_write=a.write,T=Ea,a.writeln=a.write=function(){var b=Array.prototype.slice.call(arguments).join('');T(b,a)})}function Ea(a,b){for(var c=!1,d=0;d<f.write.length;d++){var g=f.write[d];if(a.match(g.start)||1==g.state){var d={document:b},m;for(m in g)d[m]=g[m];c=!0;g.string&&!1==Z?g.string+=a:(g.state=1,g.string=a);if(e.undef(g.end)||a.match(g.end)){if(e.undef(d.delayType)|| 'none'==d.delayType){g.config=d;if(e.def(d.onBefore))d.onBefore(g,b);e.undef(d.selector)||null==d.selector?d.selector=b:d.selector=e.select(d.selector);d.selector.yo_write?(Z=!0,-1!=g.string.indexOf('m_js_controller.js')&&(Z=!0),d.selector.yo_write(g.string)):e.writeHTML(d.selector,g.string,d.how);if(e.def(d.onAfter))d.onAfter(g,b)}else e.undef(d.selector)?(d.selector='yo_write_'+Math.floor(1E9*Math.random()),e.undef(d.how)&&(d.how='append'),e.undef(d.delayValue)&&(d.delayValue=d.selector),document.yo_write('<di'+'v id='+ d.selector+' style=width:0px;height:0px></di'+'v>'),d.selector=e.select(d.selector).parentNode):d.selector=e.select(d.selector),m=Yo.sequence.resource(''),e.def(d.onBefore)&&m.beforeLoading(d.onBefore),e.def(d.onLoad)&&m.afterLoaded(d.onLoad),m.type='inner',m.how=g.how,m.newNode=a,m.before=d.selector,m.me=d.selector,f.delayed.push(m),domCompleteTriggered&&m.execute();g.state=2;g.string=''}break}}!1==c&&b.yo_write(a);e.log('write hander = '+a)}function ma(a,b){for(;a.firstChild;)a.removeChild(a.firstChild); Fa(a,b)}function Fa(a,b,c){var d=document.createElement('div');d.innerHTML='string'===typeof b?b:b.innerHTML;for(b=d.childNodes;0<b.length;)'insert'==c?a.parentNode.insertBefore(d.removeChild(b[0]),a):a.appendChild(d.removeChild(b[0]));return this}function oa(a){for(var b=0;b<f.srcAttrs.length;b++){var c=a.getAttribute(f.srcAttrs[b]);if(null!=c)return c}return(c=a.getAttribute('src'))&&'data:image/cloaked;plain,'==c.slice(0,25)?c.substring(25):null}function Ga(a){a='string'===typeof a?e.select(a): a;var b=content=e.select(a.getAttribute(f.pre+'location')),c=a.getAttribute(f.pre+'how'),d=new (_delayed()),g=a.nodeName.toLowerCase(),m=a;if('eval'==c||'gpt'==c){content=a.innerHTML;var d=Yo.sequence.script(content),k=a.getAttribute(f.pre+'key');null!=k&&(d.key=k)}else null==c&&(c='replace');var k=a.getAttribute(f.pre+'delayType'),l=a.getAttribute(f.pre+'delayValue'),n=a.getAttribute('src'),v=oa(a),p=v&&0<v.length?'src':'inner',n=a.getAttribute(f.pre+'animator'),q=a.getAttribute(f.pre+'onbefore'); null!=q&&e.isFunction(h[q])&&d.beforeLoading(h[q]);var u=a.getAttribute(f.pre+'onLoad');null!=u&&e.isFunction(h[u])&&d.afterLoaded(h[u]);null==content&&(content=a,c='insert');a.setAttribute(f.pre+'loaded','true');if(-1===e.inArray(a,f.targets)){d.animator=n;if('img'==g)null==k&&(k='lazy'),null==b&&(b=a);else if('script'==g){g=a.getAttribute('type');null!=g&&(g=g.split('/'),2<g.length&&(k=g[2],l=g[3]));g=a.getAttribute(f.pre+'writeLocation');d.writeLocation=null!=g?g:a;n=a.getAttribute(f.pre+'src'); if(null!=n)return null==k&&(k='none'),d=Yo.sequence.script(n)[k](l),null!=q&&e.isFunction(h[q])&&d.beforeLoading(h[q]),null!=u&&e.isFunction(h[u])&&d.afterLoaded(h[u]),d.src=n,d.me=a,d.load(),d;null==b&&(b=a)}null==k&&(k='none');!0==e.contains(document.documentElement,a)&&a.setAttribute(f.pre+'loaded','true');d[k](l);d.before=b;d.me=m;d.type=p;d.srcAttr=v;d.how=c;d.match=!1;d.newNode='eval'==c||'gpt'==c?content:a;return d}}function pa(a){return function(b,c,d){var g=U[(a?'on':'')+b];if(g)g.triggered? setTimeout(function(){c(g.event)},0):g.listeners.push(c);else return a?this.yo_addEventListener(b,c,d):this.yo_attachEvent(b,c,d)}}function Ha(a,b,c){function d(a){e.log('Loading '+c.before.src+' via event handler '+c.delayValue);c.afterShock();var f=null;e.def(a.currentTarget)?f=a.currentTarget:e.def(a.srcElement)&&(f=a.srcElement);e.removeEvent(f,b[0],d)}e.log('Adding event ',b[0],b[1]);e.addEvent(a,b[0],d)}function qa(a,b){return a.top>b.top-a.height&&a.bottom<b.bottom+f.offset+2*a.height&&a.left> b.left-a.width&&a.right<b.right+f.offset+2*a.width}function Ia(a,b){return ra(this,a,b,'insert')}function Ja(a){return ra(this,a,a,'append')}function ra(a,b,c,d){l.publish({topic:'sequence/captured',message:{parentNode:a,newNode:b,before:c,captureType:d}});if(!1==sa(b,a,function(a,e){var k=a.clone();k.type=d;k.newNode=b;k.src=b?b.src:'';k.before=c;k.me=e;f.delayed.push(k)}))return I.safeWriteInsert(b,c,a,O(b),'append'==d);a=f.delayed[f.delayed.length-1];if(domCompleteTriggered||'none'==a.delayType)return a.execute()} function sa(a,b,c){var d=null,g=null,f=!1;a&&a.nodeName&&(d=a.nodeName.toLowerCase());if('script'==d||'iframe'==d){g=O(a);c(g,b);var f=!0,k=!1;a.onreadystatechange&&(a.onreadystatechangeOriginal=a.onreadystatechange,a.onreadystatechange=null);a.onreadystatechange=function(){k||this.readyState&&'loaded'!==this.readyState&&'complete'!==this.readyState||(l.publish({topic:'sequence/afterloaded/'+g.key,message:g}),k=!0);this.onreadystatechangeOriginal&&this.onreadystatechangeOriginal.apply(this,arguments)}; a.onload&&(a.onloadOriginal=a.onload,a.onload=null);a.onload=function(){!1==k&&(l.publish({topic:'sequence/afterloaded/'+g.key,message:g}),k=!0);this.onloadOriginal&&this.onloadOriginal.apply(this,arguments)}}else if(g=O(b),null==g||'none'!=g.delayType)c(g,b),g.before=b,f=!0;e.log(a.nodeName+' '+a.src+' is'+(f?' ':' NOT ')+'sequenced.');!1==f&&l.publish({topic:'sequence/beforeloading/'+g.key,message:g});return f}function O(a){var b=a.src;!0==e.def(a.yo_src)&&(b=a.yo_src);if(null==b||0==b.length){var c= new (_delayed());c.delayType='none';return c}for(c=0;c<f.resources.length;c++){var d=f.resources[c];if(!0==d.match&&!0==e.matchUrl(d.url,b))return e.log('Found configuration for '+b+' delayType '+d.delayType),'empty'==d.delayType&&(a.src=null==d.delaySrc?'data:text/javascript;plain,//':d.delaySrc,d.delayType='none'),d}e.log('Did NOT find configuration for '+b+' checking local configuration. ');c=new (_delayed());c.key=c.src=b;if(null!=a.delayType)'empty'==a.delayType&&(a.src=null==a.delaySrc?'data:text/javascript;plain,//': a.delaySrc,a.delayType='none'),c[a.delayType](a.delayValue);else c[f.defaultType](f.defaultDelay);c.before=a;return c}function ta(){for(var a=0;a<f.resources.length;a++){var b=f.resources[a];if(!b.isConfig){var c=new (_delayed());c.key=c.url=b.url;c.match=!0;c.local=!0;c[b.delayType](b.delayValue);f.resources[a]=c}}}var P={},f={defaultDelay:5E3,defaultType:'none',log:!1,throttle:20,sequenceXHR:!1,sequenceWrites:!1,sendTimingData:!1,timingDataURL:'',offset:100,loadOnDOM:!1,scan:['script','img'],resources:[], abTesting:[],write:[],intervalID:null,lazyCheckSize:!0,pre:'data-yo-',srcAttrs:['data-yo-src','data-yo-srcset'],afterShockLoaded:!1,optimizeIE:0,delayed:[]},n={log:function(){if(f.log&&('undefined'!==typeof h&&n.def(h.console)&&n.def(h.console.log)||'undefined'!==typeof self&&n.def(self.console)&&n.def(self.console.log))){for(var a='',b=0;b<arguments.length;b++){var c=arguments[b],d='';'object'===typeof c&&c&&n.def(c.nodeName)?(d=c.yo_src?'yo_src '+c.yo_src:c.src?'src '+c.src:'id '+c.id,a+='['+c.nodeName+ ', '+d+'] '):a+=c+' '}console.log('Yo.utils.log: '+a)}},def:function(a){return'undefined'!=typeof a},undef:function(a){return!n.def(a)},isFunction:function(a){return!!(a&&a.constructor&&a.call&&a.apply)},decodeSafeString:function(a){return decodeURIComponent(a)},getCookie:function(a){for(var b=document.cookie.split(';'),c=0;c<b.length;c++){var d=b[c];if(-1!=d.indexOf(a)){for(;' '==d.charAt(0);)d=d.substring(1,d.length);return d.substring(a.length+1,d.length)}}return null},setCookie:function(a,b,c){var d= '';c&&(d=new Date,d=new Date(d.getTime()+1E3*c),d='; expires='+d.toGMTString());document.cookie=a+'='+b+d+'; path=/';return!0},addEvent:function(a,b,c){a.attachEvent?a.attachEvent('on'+b,c):a.addEventListener&&a.addEventListener(b,c,!1)},removeEvent:function(a,b,c){a.detachEvent?a.detachEvent('on'+b,c):a.removeEventListener(b,c,!1)},metaDataValue:function(a,b){var c=document.getElementsByName(a);return null!=c&&1==c.length?1==arguments.length?c[0].getAttribute('content'):c[0].setAttribute('content', b):null},matchUrl:function(a,b){if(null==a||null==b)return!1;n.log('Match src',b,'and url',a);return'string'===typeof a&&-1!=b.indexOf(a)||null!=b.match(a)}},l={},G={},Ka=1,ua={},$=[];_executeCallback=function(a,b){setTimeout(function(){a.callback.call(a.context,b.message,b.topic)},0)};_addWildcards=function(a,b){for(var c=0;c<$.length;c++){var d=$[c];null!=b.topic.match(d.topic)&&a.push(d)}};l.subscribe=function(a){a.id=++Ka;n.undef(a.priority)&&(a.priority=0);n.undef(a.priority)&&(a.priority=0); 'string'===typeof a.topic&&-1!=a.topic.indexOf('*')&&(a.topic=new RegExp(a.topic.replace(/\*/g,'.*')));if('string'===typeof a.topic){a.topic=a.topic.toLowerCase();!0==n.undef(G[a.topic])&&(G[a.topic]=[]);G[a.topic].push(a);G[a.topic].sort(function(a,b){return b.priority-a.priority});var b=ua[a.topic];n.def(b)&&a.callback.call(b.context,b.message,b.topic)}else $.push(a);n.log('_pubsub.subscribe',a.topic,a.id);return a.id};l.publish=function(a){a.topic=a.topic.toLowerCase();var b=G[a.topic],b=!0==n.undef(b)? []:b.slice(0);_addWildcards(b,a);a.persistent&&(ua[a.topic]=a);if(!0==n.def(b)){for(var c=[],d=0;d<b.length;d++){var g=b[d],e=!0;!0==a.async?_executeCallback(g,a):(e=g.callback.call(g.context,a.message,a.topic),c.push(e));n.log('_pubsub.publish',g.topic,g.id);if(!1==e&&!0===a.cancellable)break}return c}n.log('_pubsub.publish',a.topic,'no callbacks');return 0};l.unsubscribe=function(a){for(var b in G)for(var c=G[b],d=0;d<c.length;d++)if(c[d].id==a)return c.splice(d,1),n.log('_pubsub.unsubscribe','found'), !0;n.log('_pubsub.unsubscribe','not found');return!1};var D={releaseDate:'2018-06-29',errors:{has:!1},config:f},Q=function(){return D};l.subscribe({topic:'core/configure',callback:function(a){Q.config=f}});l.subscribe({topic:'core/start',callback:function(){Q.config=f}});n.addEvent(h,'error',function(a){var b=a.message,c=a.lineno,d=a.filename;3==arguments.length&&(b=arguments[0],d=arguments[1],c=arguments[2]);n.log('errorCapture',b,c,d);l.publish({topic:'core/js/error',persistent:!0,message:{message:b, implementationType:'dom',resourceName:d,lineNumber:c,stack:a&&a.error&&a.error.stack?a.error.stack:'',collectionTimestamp:(new Date).getTime()}});D.errors={has:!0}});var A={},va=[],R=[],J={},aa='unknown',wa=M(),ba={};A.initialize=function(a,b,c,d,g){f.rum={beaconUrl:a,requests:b,key:c,post:!0,advanced:{performanceTime:1500,blockingTime:750,violationSize:1024E3,domInteractiveCoef:200,domContentLoadedEventCoef:150,domCompleteCoef:100,loadEventCoef:50}};n.def(g)&&(g.performanceTime&&(f.rum.advanced.performanceTime= g.performanceTime),g.blockingTime&&(f.rum.advanced.blockingTime=g.blockingTime),g.violationSize&&(f.rum.advanced.violationSize=g.violationSize));h.performance&&h.performance.setResourceTimingBufferSize&&h.performance.setResourceTimingBufferSize(500)};A.captureStack=function(){return Error().stack};A.set=function(a,b){J[a]=b};A.get=function(){return J};l.subscribe({topic:'core/load',callback:function(){n.def(f.rum)&&n.def(f.rum.beaconUrl)&&(setTimeout(function(){l.publish({topic:'rum/send',message:D.rum})}, 100),n.addEvent(h,'unload',function(){n.log('unload window event triggered');a:if(!1!=n.def(h.performance)&&!1!=n.def(h.performance.getEntries)){try{if(!h.localStorage||!h.localStorage.getItem)break a}catch(a){n.log('localStorage was not available');break a}for(var b=[],c=h.performance.timing,d=0,g=0,m=c.domInteractive-c.navigationStart,k=c.domContentLoadedEventEnd-c.navigationStart,l=c.domComplete-c.navigationStart,t=c.loadEventEnd-c.navigationStart,v=h.performance.getEntries(),c=v.length,p=0;p< c;p++){var q=v[p],u=q.startTime,r=0;u<=m?(g+=f.rum.advanced.domInteractiveCoef,r=1):u<=k?(g+=f.rum.advanced.domContentLoadedEventCoef,r=2):u<=l?(g+=f.rum.advanced.domCompleteCoef,r=3):u<=t?(g+=f.rum.advanced.loadEventCoef,r=4):0<q.duration&&(d+=q.duration);u=ba[q.name];0!=r&&q.duration>f.rum.advanced.blockingTime?R.push(S(4,r,q,u)):0==r&&q.duration>f.rum.advanced.performanceTime?R.push(S(0,r,q,u)):q.decodedBodySize>f.rum.advanced.violationSize&&R.push(S(1,r,q,u));q.toJSON&&(q=q.toJSON(),q.implementationType= 'dom',e.def(u)&&(q.stack=u),r=la(q.name),null!=r&&(q.delayedType=r.orgDelayType,q.delayedValue=r.delayValue),b.push(q))}if(h.performance.getEntriesByName)for(m=document.getElementsByTagName('script'),p=0;p<m.length;p++)null!=m[p].src&&''!=m[p].src&&(k=m[p].src,0==k.indexOf('//')&&(k=h.location.protocol+k),v=h.performance.getEntriesByName(k),null!=v&&0!=v.length||R.push(S(2,0,{name:m[p].src,duration:0,decodedBodySize:0},ba[m[p].src])));p=localStorage.getItem(N('rapid-js-qoe-5'));null==p?p={sessionTimeSaved:d, journeyTime:d}:(p=JSON.parse(p),p={sessionTimeSaved:(new Date).getTime()>p.collectionTimestamp+18E5?d:p.sessionTimeSaved+d,journeyTime:p.journeyTime+d});p.entries=c;p.timeSaved=d;p.score=g;p.pageMeasured=h.location.href;p.pageMeasuredCategory='';p.violations=R;!0===f.rum.requests&&(p.resourceTiming=b);p.jsErrors=va;p.pageMeasuredUuid=wa;p.collectionTimestamp=(new Date).getTime();p.commonDimensions={};for(var w in J)p.commonDimensions[w]=J[w];p.commonDimensions.optState||(p.commonDimensions.optState= aa);localStorage.setItem(N('rapid-js-qoe-5'),JSON.stringify(p))}}))}});l.subscribe({topic:'sequence/captured',callback:function(a,b){var c='';a.open_args?c=a.open_args[1]:a.newNode&&a.newNode.src?c=a.newNode.src:a.delayed&&a.delayed.newNode&&a.delayed.newNode.src?c=a.delayed.newNode.src:a.src&&(c=a.src);ba[c]=A.captureStack()}});l.subscribe({topic:'core/js/error',callback:function(a,b){va.push(a)}});l.subscribe({topic:'rum/send',callback:function(a,b){for(var c=f.rum.key?f.rum.key:n.getCookie('yo-rum-key'), d=0,g=0,e=0,k=0;k<f.delayed.length;k++){var r=f.delayed[k];'none'!=r.orgDelayType&&(aa='active',r.newNode&&r.newNode.nodeName?'img'==r.newNode.nodeName.toLowerCase()?g++:'script'==r.newNode.nodeName.toLowerCase()&&'attributesrc'!=r.type&&d++:r.me&&r.me.nodeName&&'script'==r.me.nodeName.toLowerCase()&&e++)}c={siteKey:null!=c?c:h.location.hostname,uuid:wa,formatVersion:'3',releaseDate:'2018-06-29',requestType:'navigation',fullPageURL:document.location.href,pageCategory:'',userAgent:navigator.userAgent, pageTitle:document.title,isNavigationSupported:n.def(h.performance)&&n.def(h.performance.timing)&&n.def(h.performance.timing.toJSON),isResourceTimingSupported:n.def(h.performance)&&n.def(h.performance.getEntries),isPaintTimingSupported:n.def(h.performance)&&n.def(h.performance.getEntries),yOptimizations:n.metaDataValue('X-Yottaa-Optimizations'),eventTimestamp:(new Date).getTime(),sequencing:{numScriptsSequenced:d,numImagesSequenced:g,numBlocksSequenced:e,numDelayedObjects:f.delayed.length},commonDimensions:{}}; Q.geo&&(c.geo=Q.geo);for(var t in J)c.commonDimensions[t]=J[t];c.commonDimensions.optState||(c.commonDimensions.optState=aa);try{if(h.localStorage&&localStorage.getItem){var v=localStorage.getItem(N('rapid-js-visitor-3'));if(null!=v){var v=JSON.parse(v),p=(new Date).getTime()>v.visitorTimestamp+18E5;c.visitor={visitorTimestamp:(new Date).getTime(),numVisitorPageViews:v.numVisitorPageViews+1,numSessionPageViews:p?1:v.numSessionPageViews+1,visitorId:v.visitorId?v.visitorId:M(),numSessions:p?v.numSessions+ 1:v.numSessions,sessionId:p?M():v.sessionId,bandwidth:''}}else c.visitor={visitorTimestamp:(new Date).getTime(),numVisitorPageViews:1,numSessionPageViews:1,numSessions:1,visitorId:M(),sessionId:M(),bandwidth:''};localStorage.setItem(N('rapid-js-visitor-3'),JSON.stringify(c.visitor));var q=localStorage.getItem(N('rapid-js-qoe-5'));null!=q&&(c.qoe=JSON.parse(q))}}catch(u){n.log('localStorage was not available')}!0==c.isNavigationSupported&&(c.navigationTiming=h.performance.timing.toJSON());c.isPaintTimingSupported= !1;c.paintTiming={};c.userTiming={};c.measureTiming={};if(h.performance&&h.performance.getEntriesByType){t=h.performance.getEntriesByType('paint');if(null!=t&&0<t.length)for(c.isPaintTimingSupported=!0,k=0;k<t.length;k++)c.paintTiming[t[k].name]=t[k].startTime;t=h.performance.getEntriesByType('mark');if(null!=t&&0<t.length)for(k=0;k<t.length;k++)c.userTiming[t[k].name]=t[k].startTime;t=h.performance.getEntriesByType('measure');if(null!=t&&0<t.length)for(k=0;k<t.length;k++)c.measureTiming[t[k].name]= t[k].duration}D.rum=c;k=l.publish({topic:'rum/beforeSend',async:!1,message:D.rum});0!=k.length&&!1===k[0]||Aa(D.rum)}});var K=document;_loadCookieConfig=function(){var a=n.getCookie('yo-aftershock-config');if(null!=a&&0<a.length)try{a=eval(a),Yo.configure(a)}catch(b){}};_domready=function(){function a(a){b(a)}function b(a){('poll'===a||'readystatechange'===a.type)&&'complete'!==K.readyState||d||(d=!0,f.afterShockLoaded=!0,l.publish({topic:'core/load',async:!0,message:P,persistent:!0}))}function c(){try{K.documentElement.doScroll('left')}catch(a){setTimeout(c, 50);return}b('poll')}var d=!1,g=!0;if('complete'===K.readyState)f.afterShockLoaded=!0,l.publish({topic:'core/load',async:!0,message:Yo,persistent:!0});else{if(K.createEventObject&&K.documentElement.doScroll){try{g=!h.frameElement}catch(e){}g&&c()}!0==f.loadOnDOM&&(n.addEvent(document,'DOMContentLoaded',b),n.addEvent(document,'readystatechange',b));n.addEvent(h,'load',a)}};l.subscribe({topic:'core/start',callback:function(){_loadCookieConfig();_domready()}});var e=n;e.rewrite=function(a){var b=e.metaDataValue('resource.version'), c=e.metaDataValue('cdn.hostname'),d=e.metaDataValue('profile.id');return location.protocol+c+'/'+d+'/'+location.hostname+'/'+b+(0!=a.indexOf('/')?'/':'')+a};e.rewriteImageAPI=function(a){var b=e.metaDataValue('resource.version'),c=e.metaDataValue('cdn.hostname'),d=e.metaDataValue('profile.id'),g=0<=navigator.userAgent.indexOf('Chrome')?'o~f_webp':'o~';return location.protocol+c+'/'+d+'/'+g+'/'+b+'/'+a};e.rewriteSrcSet=function(a,b){for(var c=a.split(','),d='',g=0;g<c.length;g++){var e=c[g].trim(), f=e.lastIndexOf(' '),h='';-1!=f&&(h=' '+e.substring(f).trim(),e=e.substring(0,f).trim());e=b(e,h);d+=e+h;g<c.length-1&&(d+=', ')}return d};e.select=function(a){var b=-1;if(null==a||1==a.length)return null;if('document'==a)return document;if('window'==a)return h;if(e.def(a.nodeName))return a;if('.'==a[0])return a=document.getElementsByClassName(a.substring(1)),0<a.length?a[0]:null;if(-1!=(b=a.indexOf('['))){var c=a.substring(0,b),d=a.substring(b+1),g=d.indexOf(']'),f=d.indexOf('['),d=d.substring(0, g),k=0,g=-1,l=[],n=null;if(-1!=(k=d.indexOf('~')))g=2;else if(-1!=(k=d.indexOf('*')))g=1;else if(-1!=(k=d.indexOf('=')))g=0;else return null;if(-1!=f){f=a.substring(b+1+f+1);b=f.indexOf(']');try{f=parseInt(f.substring(0,b))}catch(r){}}var p=d.substring(0,k),k=d.substring(k+1);2==g&&(n=new RegExp(k));c=document.getElementsByTagName(c);for(b=0;b<c.length;b++){var q=0<p.length?c[b].getAttribute(p):c[b].innerHTML;0==g&&q==k?l.push(c[b]):1==g&&null!=q&&-1!=q.indexOf(k)?l.push(c[b]):2==g&&null!=q&&-1!= q.search(n)&&l.push(c[b])}e.log(a,d,p,k,0==l.length?l.length:l[0]);return-1!=f?f<l.length?l[f]:null:l[0]}'#'==a[0]&&(a=a.substring(1));return document.getElementById(a)};e.writeHTML=function(a,b,c){var d=document.createElement('div');d.innerHTML='string'===typeof b?b:b.innerHTML;for(b=d.childNodes;0<b.length;)if('script'==b[0].nodeName.toLowerCase())if(b[0].src)Yo.sequence.script(d.removeChild(b[0]).src).load();else try{eval(d.removeChild(b[0]).innerHTML)}catch(g){e.log(g)}else'insert'==c?a.parentNode.insertBefore(d.removeChild(b[0]), a):a.appendChild(d.removeChild(b[0]))};e.contains=document.documentElement.compareDocumentPosition?function(a,b){return!!(a.compareDocumentPosition(b)&16)}:document.documentElement.contains?function(a,b){return a!==b&&(a.contains?a.contains(b):!1)}:function(a,b){for(;b=b.parentNode;)if(b===a)return!0;return!1};e.updateHeadItemAttributes=function(a,b,c){0>a&&(document.cookie='yo-disable-instanton=true;Max-Age=2',h.location.reload(!0));a=document.documentElement.getElementsByTagName('head')[0].children[a]; for(var d=0;d<b.length;d++)a.removeAttribute(b[d]);for(var g in c)a.setAttribute(g,c[g])};e.replaceHeadItemContent=function(a,b){0>a&&(document.cookie='yo-disable-instanton=true;Max-Age=2',h.location.reload(!0));document.documentElement.getElementsByTagName('head')[0].children[a].textContent=b};e.isIE=function(a){var b=navigator.userAgent;return b&&a&&11==parseInt(a)&&-1!=b.indexOf('rv:11')?!0:b&&a&&-1!=b.indexOf('MSIE '+a)?!0:b&&(-1!=b.indexOf('MSIE')||-1!=b.indexOf('rv:11'))};e.inArray=function(a, b,c){var d;if(b){if(Array.prototype.indexOf)return Array.prototype.indexOf.call(b,a,c);d=b.length;for(c=c?0>c?Math.max(0,d+c):c:0;c<d;c++)if(c in b&&b[c]===a)return c}return-1};var ca=function(a){l.subscribe({topic:'sequence/beforeloading/'+this.key,callback:a,context:this});return this},da=function(a){l.subscribe({topic:'sequence/afterloaded/'+this.key,callback:a,context:this});return this},I={},w={},z=function(a,b,c){this.writeContent='';this.writeLocation=a;this.writeSelector=c;this.offScreenDom= null;this.node=b;this.scripts=[];this.id='yo_write_'+Math.floor(1E9*Math.random());e.log('creating WriteContext',this.id,this.node.src);z.prototype.getId=function(a){return this.id};z.prototype.collectDocumentWrite=function(a){this.writeContent+=a;e.log('write override',this.getId(),this.node.src,a)};z.prototype.addScript=function(a){this.scripts.push(a)};z.prototype.getWriteSelector=function(a){return this.writeSelector};z.prototype.executeDeferredScripts=function(){for(var a=0;a<this.scripts.length;a++){var b= this.scripts[a].getAttribute('src');e.def(this.scripts[a].yo_src)&&(b=this.scripts[a].yo_src);Yo.sequence.script(b).none().writeLocation(this.scripts[a].yo_writeSelector).load()}};z.prototype.finalizeWriteOverride=function(){null==this.writeLocation?e.log('write location is null, content ignored',this.getId(),this.node.src):0<this.writeContent.length?(e.log('creating off screen DOM',this.getId(),this.node.src),this.offScreenDom=K.createElement('div'),this.offScreenDom.innerHTML=this.writeContent): e.log('no content, just continue',this.getId(),this.node.src);this.continueWrite()};z.prototype.insertContent=function(){for(;0<this.offScreenDom.childNodes.length;){var a=this.offScreenDom.childNodes[0],b=a.nodeName.toLowerCase();if('script'==b){b=a.getAttribute('language');if(null==b||'vbscript'!=b.toLowerCase()){w[this.writeSelector].push(this);try{this.offScreenDom.removeChild(a)}catch(c){}Yo.sequence.script(a.getAttribute('src')).none().writeLocation(this.writeSelector).load();return!1}try{eval(a.innerHTML), this.offScreenDom.removeChild(a)}catch(e){}this.writeLocation.parentNode.insertBefore(a,this.writeLocation)}else if('link'==b&&'stylesheet'==a.getAttribute('rel').toLowerCase()){document.getElementsByTagName('head')[0].appendChild(a);try{this.offScreenDom.removeChild(a)}catch(f){}}else this.writeLocation.parentNode.insertBefore(a,this.writeLocation)}this.offScreenDom.innerHTML='';return!0};z.prototype.continueWrite=function(){for(var a=w[this.writeSelector],b=a.pop();b;){e.log('Continue writing ', b.getId());if(b.offScreenDom&&!1==b.insertContent())break;0==a.length&&b.executeDeferredScripts();b=a.pop()}}};I.safeWriteInsert=function(a,b,c,d,g){if(!0==Ba(a,b,c,d)){var f;a:{try{!0==e.def(a.yo_src)&&(!0==e.isIE()?a.setAttribute('src',a.yo_src):a.src=a.yo_src);f=!0==g||c.contains&&!1==c.contains(b)?c.yo_ac(a):c.yo_ib(a,b);break a}catch(k){e.log('ERROR adding node into dom',a,k)}f=void 0}return f}};I.safeWriteEval=function(a,b,c,d,g){if(!0==Ca(a,b,c,d))try{a=a.replace('<scri'+'ipt>','').replace('\x3c/scri'+'ipt>', ''),'gpt'==g&&(a='googletag.cmd.push(function() { googletag.pubads().enableSyncRendering = function(){}; '+a+'});'),h.eval(a),f.sequenceWrites&&d.write_context.finalizeWriteOverride()}catch(m){e.log('Error eval',m)}};f.delayed=[];f.targets=[];var B=function(){this.executed=!1;this.cont=!0};B.prototype.afterLoaded=da;B.prototype.beforeLoading=ca;B.prototype.execute=function(){return this.afterShock()};B.prototype.clone=function(){var a=new B,b;for(b in this)a[b]=this[b];return a};B.prototype.preventDefault= function(){this.cont=!1};B.prototype.key=null;B.prototype.isConfig=function(a){return this.delayType==a};B.prototype.afterShock=function(){var a=null;if(!0!=this.loaded&&(this.delayType='none',this.loaded=!0,e.log('Injecting ',this.newNode,', by ',this.type,' into the DOM now.'),'attributesrc'!=this.type&&l.publish({topic:'sequence/beforeloading/'+this.key,message:this}),!1!=this.cont)){var b=this.newNode,c=this.type,d=this.before;if('insert'==c)a=I.safeWriteInsert(b,d,this.me,this,!1);else if('append'== c)a=I.safeWriteInsert(b,null,this.me,this,!0);else if('replace'==c)this.me.replaceChild(b,d);else if('attributesrc'==c)d.setAttribute('src',b.yo_src);else if('src'==c)e.def(this.animator)&&null!=this.animator?animator(d,this.animator):e.def(f.animator)&&animator(d,f.animator),b=d.getAttribute(f.pre+'srcset'),null!=b&&d.setAttribute('srcset',b),d.src=this.srcAttr;else if('style'==c)b.setAttribute('style',b.getAttribute(f.pre+'style'));else if('inner'==c)e.log(this.how+' -> '+b),'replace'==this.how? ma(d,b):'eval'==this.how||'gpt'==this.how?a=I.safeWriteEval(b,d,this.me,this,this.how):e.writeHTML(d,b,this.how),l.publish({topic:'sequence/afterloaded/'+this.key,message:this});else if('function'==c)e.log(this.how+' -> '+b),d=this.key.apply(this.funcThis,this.funcParameters),l.publish({topic:'sequence/afterloaded/'+this.key,message:{delayed:this,retVal:d}});else if('xhr'==c){this.xhr.onreadystatechange&&(this.xhr.original_oonreadystatechange=this.xhr.onreadystatechange);var g=this;this.xhr.onreadystatechange= function(a){4==g.xhr.readyState&&l.publish({topic:'sequence/afterloaded/'+g.key,message:[a,this]});g.xhr.original_oonreadystatechange&&g.xhr.original_oonreadystatechange.call(arguments)};this.xhr.xhr_send.apply(this.xhr,this.xhr._yo.send_args)}else'image'==c&&this.loadImage(this);Da();return a}};_delayed=function(){return B};var V=function(a){var b=new (_delayed());'string'===typeof a&&0==a.indexOf('/')&&a.lastIndexOf('/')==a.length-1&&(a=new RegExp(a));b.key=b.url=a;b.match=!0;e.undef(f.resources)&& (f.resources=[]);for(var c=-1,d=0;d<f.resources.length;d++){var g=f.resources[d].url;if('string'===typeof a&&'string'===typeof g&&-1!=a.indexOf(g)||'string'!==typeof g&&'string'===typeof a&&null!=a.match(g)){c=d;break}}b.writeLocation=function(a){this.writeLocation=a;return this};-1==c?f.resources.push(b):f.resources.splice(c,0,b);return b},T=null,Z=!1;l.subscribe({topic:'core/configure',callback:function(){na(document)}});var E={},La=function(a,b,c,d,g){this._yo={open_args:arguments,async:!1===c? !1:!0};e.log('xhr open = '+b+', async '+c);l.publish({topic:'sequence/captured',message:this._yo});return this.xhr_open.apply(this,arguments)},Ma=function(a){if(e.undef(this._yo)||!0!==this._yo.async)return this.xhr_send.apply(this,arguments);var b=this,c={src:this._yo.open_args[1],nodeName:'xhr'};if(!1==sa(c,c,function(a,c){var e=a.clone();e.type='xhr';e.xhr=b;e.src=c.src;e.newNode=c;f.delayed.push(e);!0==f.afterShockLoaded&&e.execute()}))return e.log('xhr send is NOT defered, '+c.src),this.xhr_send.apply(this, arguments);this._yo.send_args=arguments;e.log('xhr send is defered, '+c.src+', '+f.delayed[f.delayed.length-1].delayType)},Na=function(){if(e.undef(this._yo)||e.undef(this._yo.send_args)||!0!==this._yo.async)return this.xhr_abort.apply(this,arguments);e.log('Abort to the xhr object is called',' async true')};E.create=function(a){return V(a)};E.captureMethods=function(a){!0==e.undef(a.XMLHttpRequest.prototype.xhr_open)&&(a.XMLHttpRequest.prototype.xhr_open=a.XMLHttpRequest.prototype.open,a.XMLHttpRequest.prototype.xhr_send= a.XMLHttpRequest.prototype.send,a.XMLHttpRequest.prototype.xhr_abort=a.XMLHttpRequest.prototype.abort)};E.overrideMethods=function(a){a.XMLHttpRequest.prototype.open=La;a.XMLHttpRequest.prototype.send=Ma;a.XMLHttpRequest.prototype.abort=Na};E.captureMethods(h);l.subscribe({topic:'core/configure',callback:function(){!0==f.sequenceXHR&&!0==e.def(XMLHttpRequest)&&E.overrideMethods(h)}});l.subscribe({topic:'core/load',callback:function(){Yo.sequence.scanTags(!1)}});var x={},U={},W=function(a,b,c){e.def(U[b])|| (U['on'+b]={object:a,name:b,triggered:!1,event:null,listeners:[]},e.addEvent(a,b,function(a){var c=U['on'+b],e=c.listeners;c.event=a;navigator.userAgent.match(/MSIE /)&&(c.event={type:a.type});for(var f=0;f<e.length;f++)e[f].call(c.object,a);c.triggered=!0}),!a.yo_addEventListener&&a.addEventListener&&c&&(a.yo_addEventListener=a.addEventListener,a.addEventListener=pa(!0)),!a.yo_attachEvent&&a.attachEvent&&c&&(a.yo_attachEvent=a.attachEvent,a.attachEvent=pa(!1)))};x.loadEvents=function(){W(h,'load', !0);W(document,'readystatechange',!1);W(document,'DOMContentLoaded',!1);W(document,'DOMFrameContentLoaded',!0)};var X=null,xa=function(a){a.tempImage=new X;var b=a.image.onload;a.image.onload=null;a.tempImage.onload=function(c){b&&b.call(a.image,c);l.publish({topic:'sequence/afterloaded/'+a.key,message:arguments})};var c=a.image.onerror;a.image.onerror=null;a.tempImage.onerror=function(b){c&&c.call(a.image,b);l.publish({topic:'sequence/afterloaded/'+a.key,message:arguments})};l.publish({topic:'sequence/beforeloading/'+ a.key,message:arguments});a.tempImage.src=a.src;a.image.setAttribute('src',a.src)},Oa=function(){null==X&&(X=Image,Image=function(){var a=new X;try{Object.defineProperty(a,'src',{set:function(b){this.yo_src=b;Yo.utils.log('Overloaded image src being set',b);b={src:b,key:b.toLowerCase()};l.publish({topic:'sequence/captured',message:b});var d={src:b.src,key:b.key,nodeName:'image'};nodeConfig=O(d);var e=nodeConfig.clone();e.type='image';e.src=d.src;e.image=this;e.newNode=d;f.delayed.push(e);e.loadImage= xa;!0==f.afterShockLoaded&&e.execute();b.image=a;'none'==nodeConfig.delayType&&xa(b)},get:function(){return this.yo_src?this.yo_src:''}})}catch(b){e.log(b)}return a})};l.subscribe({topic:'core/configure',callback:function(){!0==f.sequenceImage&&Oa()}});l.subscribe({topic:'core/load',callback:function(){}});_delayed().prototype.defer=function(a){this.orgDelayType=this.delayType='defer';this.delayValue=a;if(!0==e.isIE()&&!1==f.optimizeIE)return e.log('Override defer on IE',this.url),this.none();this.execute= function(){if(!1!=f.afterShockLoaded&&!0!=this.executed){this.executed=!0;e.log('Loading ',this.newNode,' via timer event. It will load in ',this.delayValue);var a=this;setTimeout(function(){a.afterShock()},1*this.delayValue);return this}};return this};_delayed().prototype.event=function(a){this.orgDelayType=this.delayType='event';this.delayValue=a;this.execute=function(){if(!1!=f.afterShockLoaded&&!0!=this.executed){this.executed=!0;e.log('Event handling '+this.before.src+' '+this.delayValue);var a= this.delayValue.split(' '),c=a[0].toLowerCase();if('beforeloading'==c||'afterloaded'==c){a=a[1];if('#adjacent'==a)return this.defer(0);l.subscribe({topic:'sequence/'+c+'/'+a,context:this,callback:function(a){e.log('Loading '+this.before.src+' via event handler '+this.delayValue);this.afterShock()}})}else'pubsub'==c?(a=a[1],l.subscribe({topic:a,context:this,callback:function(a){e.log('Loading '+this.before.src+' via pubsub handler '+this.delayValue);this.afterShock()}})):Ha(e.select(a[1]),a,this); return this}};return this};l.subscribe({topic:'core/load',callback:function(){}});var H={},F={top:0-f.offset,left:0-f.offset,height:0,width:0,right:0,bottom:0},ya=function(a){a=a.getBoundingClientRect();e.undef(a.width)&&(a={top:a.top,left:a.left,right:a.right,bottom:a.bottom,width:a.right-a.left,height:a.bottom-a.top});return a},y,L;document.defaultView&&document.defaultView.getComputedStyle&&(y=function(a,b){var c,d;if(d=a.ownerDocument.defaultView){if(d=d.getComputedStyle(a,null))c=d.getPropertyValue(b), ''!==c||e.contains(a.ownerDocument.documentElement,a)||(c=a.style[b]);return c}});document.documentElement.currentStyle&&(L=function(a,b){var c=a.currentStyle&&a.currentStyle[b];return''===c?'auto':c});var ea=y||L;document.getElementsByClassName||(document.getElementsByClassName=function(a){return this.querySelectorAll('.'+a)});H.scrollHandler=function(a){F.height=h.innerHeight||document.documentElement.clientHeight||document.body.clientHeight;F.bottom=F.height;F.width=h.innerWidth||document.documentElement.clientWidth|| document.body.clientWidth;F.right=F.width;if(e.undef(document.documentElement.getBoundingClientRect))return!0;for(var b=a=0;b<f.delayed.length;b++)if(f.delayed[b].isConfig('lazy')){var c=b,d=f.delayed[c],g=d.delayValue;if('string'===typeof g)g=e.select(g);else if(null==g||e.def(g))g=d.before;if(null!=g&&!0==e.contains(document.documentElement,g))if(d=ya(g),!1==(null!=f.intervalID&&e.def(g.getBoundingClientRect))&&d.top<F.height+f.offset)e.log('showIfVisible is visible ',c,', ',g),f.delayed[c].afterShock(); else{var m;if(m=!0==(null!=f.intervalID&&e.def(g.getBoundingClientRect)))if(m=!f.lazyCheckSize||0<d.width&&0<d.height)if(m=!0==qa(d,F)){b:{m=g;for(var k=m.parentNode;null!=k&&1==k.nodeType;){var l=ea(k,'overflow');if(l&&'hidden'==l.toLowerCase())m.yo_clipped=k;else if(0==ea(k,'opacity')||'none'==ea(k,'display')){d=!1;break b}k=k.parentNode}!0==e.undef(m.yo_clipped)&&(m.yo_clipped=!1);d=!1!=m.yo_clipped?qa(d,ya(m.yo_clipped)):!0}m=!0==d}m&&(e.log('showIfVisible is visible ',c,', ',g),f.delayed[c].afterShock())}a++}}; H.delayed=function(a){this.orgDelayType=this.delayType='lazy';this.delayValue=a;this.execute=function(a){return this};return this};y=function(a,b){var c=0;return function(){var d=+new Date;d-c<b||(c=d,a.apply(this,arguments))}}(H.scrollHandler,20);e.addEvent(h,'scroll',y);e.addEvent(h,'resize',y);l.subscribe({topic:'core/load',callback:function(){H.scrollHandler()}});_delayed().prototype.lazy=H.delayed;l.subscribe({topic:'core/configure',callback:function(a){0<a.lazyTimer&&null==f.intervalID&&(f.intervalID= setInterval(H.scrollHandler,a.lazyTimer))}});_delayed().prototype.none=function(){this.orgDelayType=this.delayType='none';this.execute=function(){return this.afterShock()};return this};_delayed().prototype.remove=function(a,b,c){var d=!1,g='yostore'+e.metaDataValue('resource.version')+this.key;e.undef(a)||'always'==a?d=!0:'session'==a?sessionStorage&&'true'==sessionStorage.getItem(g)?d=!0:sessionStorage&&sessionStorage.setItem(g,'true'):'visitor'==a&&(localStorage&&'true'==localStorage.getItem(g)? d=!0:localStorage&&localStorage.setItem(g,'true'));if(!0==d)this.orgDelayType=this.delayType='remove',this.execute=function(){return this};else this[b](c);return this};var fa=null,Pa=function(a,b){var c=e.select(b);fa=new MutationObserver(function(c){for(var g=!1,f=0;f<c.length;f++){var k=c[f];if('attributes'==k.type&&'observe.attributes'==a.delayType||'observe.all'==a.delayType)if(e.log('The '+k.attributeName+' attribute was modified for ',b),'all'==a.delayValue){g=!0;break}else{if(k.attributeName== a.delayValue){g=!0;break}}else if('childList'==k.type&&'observe.children'==a.delayType||'observe.all'==a.delayType)if(e.log('A child node has been added or removed for',b),'all'==a.delayValue){g=!0;break}else if(0<k.addedNodes.length&&'added'==a.delayValue){g=!0;break}else if(0<k.removedNodes.length&&'removed'==a.delayValue){g=!0;break}}!0==g&&(a.afterShock(),fa.disconnect())});fa.observe(c,{attributes:!0,childList:!0})};_delayed().prototype.observe=function(a,b,c){this.orgDelayType=this.delayType= 'observe.'+b;this.delayValue=c?c:'all';if('undefined'===typeof MutationObserver)return e.log('Override defer on IE',this.url),this.none();this.execute=function(){if(!1!=f.afterShockLoaded&&!0!=this.executed)return this.executed=!0,e.log('Loading ',this.newNode,' via observer. It will loaded when ',a,'changes',b),Pa(this,a),this};return this};var r={};domCompleteTriggered=!1;r.node=function(a){if(a=e.select(a))a.yo_ac=e.def(a.yo_ac)?a.yo_ac:a.appendChild,a.yo_ib=e.def(a.yo_ib)?a.yo_ib:a.insertBefore, a.appendChild=Ja,a.insertBefore=Ia};r.clearNode=function(a){e.def(a.yo_ib)&&(a.insertBefore=a.yo_ib);e.def(a.yo_ac)&&(a.appendChild=a.yo_ac)};r.addScanner=function(a){f.scan||(f.scan=[]);-1===e.inArray(a,f.scan)&&f.scan.push(a)};r.displayNow=function(){e.log('Handle the display of all visible tags up to now.');r.scanTags(!0);H.scrollHandler({})};r.createTimer=function(a,b){Yo.configure({lazyTimer:a});b&&Yo.configure({lazyCheckSize:b})};r.createElement=function(a){a.yo_createElement||(a.yo_createElement= a.createElement,a.createElement=function(b){var c=a.yo_createElement(b),d=b.toLowerCase();e.log('_sequencing.createElement',c,b);if(('iframe'==d||'script'==d)&&!0==e.undef(c.yo_src_override)){c.yo_src_override=!0;try{Object.defineProperty(c,'src',{set:function(a){if(this.yo_src=a)if(e.log('Object.src',a),nodeConfig=O(this),null!=nodeConfig&&'none'!=nodeConfig.delayType){if(a=nodeConfig.clone(),a.type='attributesrc',a.newNode=this,a.before=this,a.me=this,f.delayed.push(a),domCompleteTriggered)return a.execute()}else this.setAttribute('src', a)},get:function(){return this.yo_src?this.yo_src:''}})}catch(g){e.log(g)}}return c})};r.resource=V;r.script=function(a){var b=V(a);b.src=a;b.newNode=a;b.before={src:a};b.load=function(a){var b=document.createElement('script');b.type='text/javascript';b.async=!0;b.yo_src=this.url;(a||document.getElementsByTagName('script')[0].parentNode).appendChild(b);return this};b.eval=function(){f.delayed.push(this);this.how='eval';this.type='inner';this.execute();return this};b.apply=function(a,b){f.delayed.push(this); this.how='apply';this.type='function';this.funcThis=a;this.funcParameters=b;this.execute();return this};b.writeLocation=function(a){this.writeLocation=a;return this};return b};r.xhr=E.create;r.content=function(a){var b=Ga(a);l.publish({topic:'sequence/captured',message:{delayed:b,location:a}});b.load=function(){e.log('Sequence a script = '+a.id+', type '+this.type);null==this.delayType||'none'==this.delayType?e.log('Content found that needs to be loaded immediately'):e.log('Content found that needs to be sequenced', this.delayType,this.delayValue);this.execute(f.delayed.length-1);f.delayed.push(this)};return b};r.event=x;r.image=function(a){return V(a)};r.scanTags=function(a){if(f.scan){for(var b=0,c=f.scan.length;b<c;b++){var d=f.scan[b],g=document.getElementsByTagName(d),m=void 0;e.log('Find all '+d+' tags in the document.');for(var k=0,h=g.length;k<h;k+=1)if(m=g[k],'true'!==m.getAttribute(f.pre+'loaded')){var l=oa(m),n=m.getAttribute(f.pre+'style');l?(e.log('Found src ',d,', src = '+l+' tag to handle with AfterShocK.'), Yo.sequence.content(m).load()):'script'==d?(l=m.getAttribute('type'),m.getAttribute(f.pre+'src'),l&&-1<l.indexOf('yo/sequence')?(e.log('Found a '+d+', yo/sequence tag to handle with AfterShocK.'),Yo.sequence.content(m).load()):'yo/abtest'==l&&_abTestScript(m)):n&&(e.log('Found style ',d,', src = '+l+' tag to handle with AfterShocK.'),m=Yo.sequence.content(m),m.type='style',m.before=m.newNode,m.load())}}!0!==a&&(f.scan=[])}};r.cloakImages=function(a,b){if(!0!=e.undef(h.btoa))for(var c=0,d=a.length;c< d;c+=1){var f=a[c],m=document.getElementsByTagName(f);e.log('Cloak '+f);for(var k=0,l=m.length;k<l;k+=1)for(var n=m[k],r=0,p=b.length;r<p;r+=1){var q=b[r],u=n.getAttribute(q);null!=u&&(e.log('Cloak '+f,q,u),n.setAttribute(q,'data:image/cloaked;base64,'+btoa(u)))}}};r.document=na;r.captureMethods=E.captureMethods;r.overrideMethods=E.overrideMethods;x=document.getElementsByTagName('script');0<x.length&&r.node(x[0].parentNode);r.node(document.getElementsByTagName('head')[0]);!0==e.isIE()&&!0==f.optimizeIE&& r.createElement(document);l.subscribe({topic:'core/start',callback:function(){ta()}});l.subscribe({topic:'core/configure',callback:function(){ta()}});l.subscribe({topic:'core/load',callback:function(){domCompleteTriggered=!0;for(var a=0;a<f.delayed.length;a++)f.delayed[a].execute()}});var C={},x={};_abTest=function(a,b,c,d,f,m,k,l){return Yo.sequence.resource(d).none().beforeLoading(function(){e.log('adding the google segmentation using a custom (dimension'+a+', '+b+', '+c+')',f,m);Yo.stats().errors.has&& (c+='_error');if('universal'==f){var d=!1;h.ga=function(){if(e.def(a)&&2<arguments.length&&0<=arguments[0].indexOf('set')&&arguments[1]!='dimension'+a){if((h.ga.q=h.ga.q||[]).push(arguments),ga(arguments[0],'dimension'+a,c),d=!0,!0==e.def(k)){for(var b=[],f=0;f<h.ga.q.length;f++)if(3!=h.ga.q[f].length||h.ga.q[f][1]!='dimension'+k)b[b.length]=h.ga.q[f];h.ga.q=b}}else(h.ga.q=h.ga.q||[]).push(arguments),!0==e.undef(k)&&!1==d&&((h.ga.q=h.ga.q||[]).push(['set','dimension'+a,c]),d=!0);_abTestAnalyticsUniversal(arguments)}}else if(e.def(_gaq)){for(var n= 1,p=[],q=0;q<_gaq.length;q++)e.def(_gaq[q])&&2<_gaq[q].length&&-1!=_gaq[q][0].indexOf('_setCustomVar')?(!0!=e.undef(a)&&_gaq[q][1]==a||!0!=e.undef(k)&&_gaq[q][1]==k||(p[p.length]=_gaq[q]),n=q):p[p.length]=_gaq[q];_gaq=p;e.def(a)&&(p='_setCustomVar',0<_gaq.length&&0<_gaq[0].length&&(q=_gaq[0][0].indexOf('.'),-1!=q&&(p=_gaq[0][0].substring(0,q+1)+p)),e.def(l)&&(a=l),_gaq.splice(n,0,[p,a,b,c,e.undef(m)?2:m]));e.log('abTestAnalyticsClassic()');_abTestAnalyticsClassic()}else e.log('Error creating ga information, no selected version', f)})};_getCookieVariant=function(a){return n.getCookie('yo_abtesting_'+a.name+'v'+a.version)};_setCookieVariant=function(a,b,c){e.setCookie('yo_abtesting_'+a.name+'v'+a.version,b,c)};_configureAbTestAnalytics=function(){var a=config.abTestingAnalytics;e.def(a)&&e.undef(a.loaded)&&(_abTest(void 0,void 0,void 0,a.url,a.gaVersion),e.log('Registering analytics',a.url,a.gaVersion),a.loaded=!0)};_executeAllAbTest=function(){e.undef(f.abTestingAnalytics)?e.log('Analytics for ab testing not properly defined'): 'classic'==f.abTestingAnalytics.gaVersion?_executeAllAbTestClassic():_executeAllAbTestUniversal()};_executeAllAbTestUniversal=function(){for(var a in f.abTesting){var b=f.abTesting[a];_executeAbTest(b);ga('set','dimension'+b.analytics.index,b.valuePrefix+b.name+'_v'+b.version+'_'+b.chosenVariant)}!0==C.delayedTrack&&ga('send','pageview')};_executeAllAbTestClassic=function(){var a=null;if(e.def(h._gat)&&e.def(C.uaCode))for(var b=h._gat._getTrackers(),c=0;c<b.length;c++)b[c]._getAccount()==C.uaCode&& (a=b[c]);for(var d in f.abTesting)b=f.abTesting[d],_executeAbTest(b),c=2,'hit'==b.analytics.stickiness?c=3:'visitor'==b.analytics.stickiness&&(c=1),null!=a?a._setCustomVar(b.analytics.index,b.analytics.name,b.valuePrefix+b.name+'_v'+b.version+'_'+b.chosenVariant,c):e.def(h._gaq)&&h._gaq.push(['_setCustomVar',b.analytics.index,b.analytics.name,b.valuePrefix+b.name+'_v'+b.version+'_'+b.chosenVariant,c]);!0==C.delayedTrack&&(null!=a?(a._trackPageview(),e.log('pageTracker._trackPageview()')):e.def(h._gaq)? (h._gaq.push(['_trackPageview']),e.log("window._gaq.push(['_trackPageview'])")):e.log('Did not find the UA code so we can not track'))};_executeAbTest=function(a){var b=_getCookieVariant(a);null==b&&(b=_chooseVariant(a));'hit'!=a.stickiness&&_setCookieVariant(a,b,'visitor'==a.stickiness?864E5:60*(e.undef(a.sessionTime)?30:a.sessionTime));e.log('Variant',b,'was chooen for test',a.name);a.chosenVariant=b;a=a.variants[b];if(e.undef(a))'original'!=b&&e.log('Using original content as the variant',b,'was not found'); else for(b=0;b<a.targets.length;b++){var c=a.targets[b];'function'==typeof c?c():Yo.sequence.content(c).load()}};_abTestScript=function(a){var b=a.getAttribute(f.pre+'abtestname'),c=f.abTesting[b];if(e.undef(c))e.log('Found variant script for test',b,"but doesn't exist");else if(b=a.getAttribute(f.pre+'variant'),e.def(c.variants[b]))e.log('Variant script with existing name',b,'already exists. This variant will be excluded');else{var b=a.getAttribute(f.pre+'variantname'),d=a.getAttribute(f.pre+'splitcondition'); e.undef(c.variants[b])?c.variants[b]={splitCondition:d,targets:[a]}:c.variants[b].targets.push(a);e.log('Found script variant',b,'with splitCondition',d)}};_chooseVariant=function(a){var b=a.variants;if('percentage'==a.splitBy){var c=0,d;for(d in b){a=b[d];var f=c;a.splitCondition*=1;c+=a.splitCondition;a.splitCondition+=f}100<b[b.length-1]&&e.log('Total percentage of variants is greater than 100, test will always leave out some variants');c=100*Math.random();for(d in b)if(a=b[d],c<a.splitCondition)return d; return'original'}e.log('Unsupported splitType',a.splitBy,'for test',a.name)};_abTestAnalyticsUniversal=function(a){'send'==a[0]&&e.def(C.delayedTrack)&&(h.ga.q.pop(),C.delayedTrack=!0)};_abTestAnalyticsClassic=function(a){if(e.def(C.delayedTrack)){a=[];for(var b=0;b<_gaq.length;b++)e.undef(_gaq[b])||1>_gaq[b].length||'_trackPageview'!=_gaq[b][0]?('_setAccount'==_gaq[b][0]&&(C.uaCode=_gaq[b][1]),a[a.length]=_gaq[b]):C.delayedTrack=!0;_gaq=a}};x.universal=function(a,b,c,d){return _abTest(a,void 0,b, c,'universal',void 0,d)};x.classic=function(a,b,c,d,e,f){return _abTest(a,b,c,d,'classic',e,f)};x.omniture=function(a,b,c,d){var e=s.t;s.t=function(){c&&(s[c]=d+s[c]);s['eVar'+a]=b;return e.apply(this,arguments)}};x.abTesting=function(a){e.undef(a.variants)&&(a.variants={});e.undef(a.splitBy)&&(a.splitBy='percentage');e.undef(a.stickiness)&&(a.stickiness='session');e.undef(a.version)&&(a.version='0');e.undef(a.analytics)&&(a.analytics={});e.undef(a.analytics.valuePrefix)&&(a.analytics.valuePrefix= 'yo_abtesting_');e.undef(a.analytics.name)&&(a.analytics.name='yottaa_abtest');e.undef(a.valuePrefix)&&(a.valuePrefix='');f.abTesting[a.name]=a};x.abVariant=function(a,b){var c=f.abTesting[name];e.undef(c)&&e.log('Test',name,'was not defined');c.variants.push(b)};l.subscribe({topic:'core/load',callback:function(){_executeAllAbTest()}});var ha={HEAD_START:'head_start',HEAD_END:'head_end',BODY_START:'body_start',BODY_END:'body_end',location:function(a){null!=document.body?document.write("<di'+'v id='yo_tag_"+ a+"'></di'+'v>"):document.write("<script id='yo_tag_"+a+"'>\x3c/script>");l.publish({topic:'tag/location/'+a,persistent:!0})},resource:function(a,b,c,d){var f=Yo.sequence.script(a);f.loaded=!0;l.subscribe({topic:'tag/location/'+b,callback:function(){var a=e.select('#yo_tag_'+b);Yo.sequence.node(a);c&&''!=c||(c='none');f[c](d);f.loaded=!1;f.load(a)}});return f},script:function(a,b,c,d){var e=Yo.sequence.script(a);e.loaded=!0;l.subscribe({topic:'tag/location/'+b,callback:function(){c&&''!=c||(c='none'); e[c](d);e.loaded=!1;e.eval()}});return e},content:function(a,b,c,d){var f=document.createElement('script');c&&''!=c||(c='none');f.setAttribute('type','yo/sequencing/'+c+'/'+d);var h=Yo.sequence.content(f);h.loaded=!0;0==b.indexOf('css:')?l.subscribe({topic:'core/load',callback:function(){e.def(a.nodeName)?f.appendChild(a):f.innerHTML=a;var c=b.split(':');h.before=e.select(c[1]);3==c.length&&('after'==c[2]?null==h.before.nextSibling?(h.before=h.before.parentNode,h.how='append'):h.before=h.before.nextSibling: 'prepend'==c[2]?0<h.before.childNodes.length?h.before=h.before.childNodes[0]:h.how='append':'append'==c[2]&&(h.how='append'));h.loaded=!1;h.load()}}):l.subscribe({topic:'tag/location/'+b,callback:function(){e.def(a.nodeName)?f.appendChild(a):f.innerHTML=a;h.loaded=!1;h.before=e.select('#yo_tag_'+b);h.load()}});return h}};f.services=[];var Y={add:function(a){a={afterLoaded:da,beforeLoading:ca,host:a.host,key:'*'+a.host+'*',properties:a,name:a.name};f.services.push(a);l.publish({topic:'services/add', message:a});return a},findByHost:function(a){for(var b=Y.list(),c=0;c<b.length;c++){var d=b[c];if(!0==e.matchUrl(d.host,a))return e.log('Found service configuration for '+a+' service ',d),d}e.log('Did NOT find service configuration for '+a+' checking local configuration. ');return null},findByName:function(a){for(var b=Y.list(),c=0;c<b.length;c++){var d=b[c];if(d.name==a)return e.log('Found service configuration for '+a+' service ',d),d}e.log('Did NOT find service configuration for '+a+' checking local configuration. '); return null},list:function(){return f.services}};y={};f.scheduling={onLoadTime:null,lastScheduleTime:6E3,last:100,step:100,scheduled:!1,hosts:[],priorities:{low:{last:3E3,step:100},medium:{last:1E3,step:100},high:{last:100,step:100},critical:{last:-1}}};y.resource=function(a){return{afterLoaded:da,beforeLoading:ca,src:a,key:'*'+a+'*'}};y.bestFit=function(){f.scheduling.type='bestfit';f.scheduling.scheduled=!0};y.priority=function(){f.scheduling.type='priority';f.scheduling.scheduled=!0};y.spread= function(a){f.scheduling.type='spread';e.def(a)&&(f.scheduling.step=a);f.scheduling.scheduled=!0};y.configure=function(a){for(var b in a)f.scheduling[b]=a[b];l.publish({topic:'schedule/configure',message:f});return f.scheduling};l.subscribe({topic:'core/start',callback:function(){}});l.subscribe({topic:'sequence/captured',callback:function(a,b){null!=f.scheduling.onLoadTime&&(new Date).getTime()>f.scheduling.onLoadTime+f.scheduling.lastScheduleTime?e.log('Scheduling has expired',f.scheduling.lastScheduleTime): !0==f.scheduling.scheduled&&('spread'==f.scheduling.type?ia(a,b):'bestfit'!=f.scheduling.type&&'priority'==f.scheduling.type&&Qa(a,b))}});var Qa=function(a,b){if(a.newNode){var c=a.newNode.src;if(c&&0<c.length){var d=Y.findByHost(c),g=za(c);if(null!=g&&-1==f.scheduling.hosts.indexOf(g)){if(null==d)return ia(a,b);c=f.scheduling.priorities[d.properties.priority];e.log('Service found ',d.properties.name,d.properties.priority);if(!0==e.undef(c))return ia(a,b);0<=c.last&&(c.last+=c.step,l.subscribe({topic:'sequence/beforeloading/*'+ g+'*',callback:function(){-1==f.scheduling.hosts.indexOf(g)&&f.scheduling.hosts.push(g)}}),e.log('Scheduling resource ',a.newNode.src,g,'defer',c.last),a.newNode.delayType='defer',a.newNode.delayValue=c.last)}}}},ia=function(a,b){if(a.newNode){var c=a.newNode.src;if(c&&0<c.length){var d=za(c);null!=d&&-1==f.scheduling.hosts.indexOf(d)&&(f.scheduling.last+=f.scheduling.step,l.subscribe({topic:'sequence/beforeloading/*'+d+'*',callback:function(){-1==f.scheduling.hosts.indexOf(d)&&f.scheduling.hosts.push(d)}}), e.log('Scheduling resource ',a.newNode.src,d,'defer',f.scheduling.last),a.newNode.delayType='defer',a.newNode.delayValue=f.scheduling.last)}}},za=function(a){return(a=a.split('/')[2])?a=a.split('.').slice(-2).join('.'):null};l.subscribe({topic:'core/load',callback:function(){f.scheduling.onLoadTime=(new Date).getTime()}});L={};f.privacy={closeRegistered:!1,lastServiceShown:null};L.location=ha.location;L.configure=function(a){for(var b in a)f.privacy[b]=a[b];l.publish({topic:'privacy/configure',message:f}); return f.privacy};var ja=function(){var a=Yo.utils.select('.yo-privacy-dialog-main').className.replace(/cd-panel--is-visible/g,'');e.select('.yo-privacy-dialog-main').className=a},Ra=function(){!1==f.privacy.closeRegistered&&(e.addEvent(Yo.utils.select('.yo-privacy-dialog-close'),'click',function(){ja()}),e.addEvent(Yo.utils.select('.yo-privacy-dialog-activate'),'click',function(){var a=f.privacy.lastServiceShown;Yo.sequence.script(a.properties.bootstrap).none().afterLoaded(function(){Yo.pubsub.publish({topic:'service/activate/'+ a.properties.name})}).load();ja()}),e.addEvent(Yo.utils.select('.yo-privacy-dialog-deny'),'click',function(){ja()}),f.privacy.closeRegistered=!0)};l.subscribe({topic:'services/add',callback:function(a,b){!0==e.def(a.properties.ui)&&ha.content(a.properties.ui,a.properties.name).afterLoaded(function(b){e.log('UI for the service',a.properties.name,'has been loaded');b=e.select('#yo_tag_'+a.properties.name);null!=b?e.addEvent(b.previousSibling,'click',function(){f.privacy.lastServiceShown=a;e.select('.yo-privacy-dialog-service-name').innerHTML= 'Activate '+a.properties.name;a.properties.image&&(e.select('.yo-privacy-dialog-service-image').src=a.properties.image);a.properties.description&&(e.select('.yo-privacy-dialog-service-description').innerHTML='<p>'+a.properties.description+'</p>');e.select('.yo-privacy-dialog-main').className+=' cd-panel--is-visible ';Ra()}):e.log('Container for the service',a.properties.name,'was not found')})}});l.subscribe({topic:'core/load',callback:function(){}});h.Yo||(h.Yo={});P={utils:e,pubsub:l,configure:{}.configure, sequence:r,rum:A,abTesting:x,insert:ha,stats:Q,geo:function(){if(0===arguments.length)return D.geo;1===arguments.length&&(D.geo=arguments[0],l.publish({topic:'core/geo',message:arguments[0]}))},services:Y,schedule:y,privacy:L};h.Yo=P;P.configure=function(a){if('string'===typeof a){var b='ul= dl= dt= sd= sr= vp='.split(' ');b[0]+=navigator.language;b[1]+=encodeURIComponent(h.location.href.substring(0,1E3));b[2]+=encodeURIComponent(document.title);b[3]+=h.screen.colorDepth;b[4]+=h.screen.width+','+ h.screen.height;b[5]+=h.screen.availWidth+','+h.screen.availHeight;try{if(h.sessionStorage&&sessionStorage.getItem){var c=sessionStorage.getItem('rapid.testVariation');c&&'undefined'!=c&&b.push('testVariation='+c);var d=sessionStorage.getItem('rapid.siteVersion'),c=-1;if(d&&'undefined'!=d)b.push('siteVersion='+d);else if(-1!=(c=h.location.hash.indexOf('yoSiteVersion='))){var e=h.location.hash.substring(c+14).split('&');0<e[0].length?b.push('siteVersion='+e[0]):sessionStorage.removeItem&&sessionStorage.removeItem('rapid.siteVersion')}}}catch(m){n.log('sessionStorage was not available')}d= null;d=h.XMLHttpRequest?new XMLHttpRequest:new ActiveXObject('Microsoft.XMLHTTP');d.open('GET',a+'&'+b.join('&'),!1);d.send('');a=document.createElement('script');a.type='text/javascript';a.text=d.responseText;document.getElementsByTagName('head')[0].appendChild(a);try{h.sessionStorage&&sessionStorage.setItem&&(A.get().testVariation&&sessionStorage.setItem('rapid.testVariation',A.get().testVariation),A.get().inputSiteVersion&&sessionStorage.setItem('rapid.siteVersion',A.get().inputSiteVersion))}catch(k){n.log('sessionStorage was not available')}}else for(b in a)'resources'== b?f.resources=f.resources.concat(a.resources):f[b]=a[b];l.publish({topic:'core/configure',message:f})};l.publish({topic:'core/start',message:P});h.yo_addScaner=Yo.sequence.addScanner;h.yo_createTimer=Yo.sequence.createTimer;h.yo_displayNow=Yo.sequence.displayNow;h.yo_configureAfterShock=Yo.configure;h.yo_afterShockStats=Yo.stats;h.yo_nodeWatch=Yo.sequence.node;h.yo_addResource=function(a,b,c,d,e,f){a=Yo.sequence.resource(a);a[b](c);d&&a.beforeLoading(d);e&&a.afterLoaded(e);f&&a.writeLocation(f)}; h.yo_scriptLoader=function(a,b,c,d,e,f){a=Yo.sequence.script(a);a[b](c);d&&a.beforeLoading(d);e&&a.afterLoaded(e);f&&a.writeLocation(f);a.load()};h.yo_deferLoadResource=function(a,b,c,d,e){yo_addResource(a,'defer',b,c,d,e)};h.yo_lazyLoadResource=function(a,b,c,d,e){yo_addResource(a,'lazy',b,c,d,e)};return h.Yo}); 

</script><!-- INSERT BY TRANSFORMER. SELECTOR=head,LOCATION=prepend --><script>
var yo_host="://"+document.location.host+"/"
Yo.sequence.resource(yo_host).none();
Yo.sequence.resource('gtm.js').none();
Yo.sequence.resource('moovweb').none();
Yo.sequence.resource('convertexperiments').none();
Yo.sequence.resource('utag.js').none();
Yo.sequence.resource('jquery').none();
Yo.sequence.resource('analytics.js').none();
Yo.sequence.resource('about:blank').none();
Yo.sequence.resource('javascript:').none();
Yo.sequence.resource('monetate').none();
Yo.sequence.resource('optimizely').none();

Yo.sequence.resource('bazaarvoice.com').none();
Yo.sequence.resource('doubleclick').none();
</script><!-- INSERT BY TRANSFORMER. SELECTOR=head,LOCATION=prepend --><script>
Yo.sequence.resource('cb=gapi.loaded_0').none();
Yo.sequence.resource('cb=gapi.loaded_1').none();
Yo.sequence.resource('postmessageRelay').none();
</script><!-- INSERT BY TRANSFORMER. SELECTOR=head,LOCATION=prepend --><script>
Yo.sequence.resource(/.*/).defer(0);
</script><!-- INSERT BY TRANSFORMER. SELECTOR=head,LOCATION=prepend --><script>Yo.rum.initialize('https://qoe-1.yottaa.net/log-nt/event', true, 'ey9wOeT_WjkveQ', true);</script>
<script>Yo.rum.set('optState', 'active');</script>
<script>
Yo.pubsub.subscribe({
  topic: 'rum/beforeSend',
  callback: function(message, topic){
   if (typeof google_tag_params !== 'undefined' && google_tag_params.ecomm_pagetype){
     message.fullPageURL = google_tag_params.ecomm_pagetype;
   }
  }
});
</script><link rel="dns-prefetch" href="//apis.google.com"><link rel="dns-prefetch" href="//www.google.com"><link rel="dns-prefetch" href="//www.googletagmanager.com"><link rel="dns-prefetch" href="//cdn.merklesearch.com"><link rel="dns-prefetch" href="//ad.doubleclick.net"><link rel="dns-prefetch" href="//www.googleadservices.com"><link rel="dns-prefetch" href="//googleads.g.doubleclick.net">
	<!-- begin Convert Experiments code-->
<!-- <script type="text/javascript" src="//cdn-3.convertexperiments.com/js/1000329-1000456.js"></script> -->
<!-- end Convert Experiments code -->
<!-- START Rakuten Marketing Tracking -->
<!--
<script type="text/javascript">
	(function (url) {
			/*Tracking Bootstrap
			Set Up DataLayer objects/properties here*/
			if(!window.DataLayer){
				window.DataLayer = {};
			}
			if(!DataLayer.events){
				DataLayer.events = {};
			}
			DataLayer.events.SiteSection = "1";
      var loc, ct = document.createElement("script"); 
      ct.type = "text/javascript"; 
      ct.async = true;
      ct.src = url;
      loc = document.getElementsByTagName('script')[0];
      loc.parentNode.insertBefore(ct, loc);
	}(document.location.protocol + "//intljs.rmtag.com/115195.ct.js"));
</script>
<!-- END Rakuten Marketing Tracking -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-itunes-app" content="app-id=1195712445,app-argument=https://www.1800petmeds.com/">
		<link rel="stylesheet" href="/resources/css/smart-app-banner.css?v=2" type="text/css" media="screen">
    <link rel="android-touch-icon" href="/resources/img/ic_launcher.jpg" />
	<script type="text/javascript">
	if(window.screen.width < 768)
	{
		document.write('<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, minimal-ui" />');
	}
	else
	{
		document.write("<meta name='viewport' content='width=1024' />");
	}
</script>
<link rel="shortcut icon" type="image/x-icon" href="/resources/img/raster/favicon.ico" />
<link rel="stylesheet" type="text/css" href="/resources/css/petmeds.css?v=26" />
<link rel="stylesheet" type="text/css" href="/includes/echo.css?v=26"/>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="/resources/css/ie8.css?v=26" />
<![endif]-->
<!--[if gte IE 8]>
<link rel="stylesheet" type="text/css" href="/resources/css/ie.css?v=26" />
<![endif]-->

<link rel="stylesheet" href="/includes/feedback-style.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.fancybox.min.css" media="screen" />
	<script type="text/javascript" src="/resources/js/src/libraries/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/resources/js/src/libraries/jquery-migrate-1.4.1.min.js"></script>
		<script type="text/javascript" src="/resources/js/src/deeplinking/smartbanner-deeplink.js?v=4"></script>
			<script src="/resources/js/src/mobile/smart-banner-app.js?v=5"></script>
			<link rel="stylesheet" href="/resources/css/jquery.rateyo.min.css">
			<script src="/resources/js/src/libraries/jquery.rateyo.min.js"></script>
		    <script type="text/javascript">
			  $(document).ready(function(){
			    if(bannerlink.isMobile()){
			      new SmartBanner({
			          daysHidden: 15,   // days to hide banner after close button is clicked (defaults to 15)
			          daysReminder:90, // days to hide banner after "VIEW" button is clicked (defaults to 90)
			          appStoreLanguage: '', // language code for the App Store (defaults to user's browser language)
			          title: '1-800-PetMeds',
			          author: "America's Largest Pet Pharmacy",
			          button:"View App" ,
			          store: {
			              ios: 'On App Store',
			              android: 'In Google Play'
			              ,windows: 'In Windows store'
			          },
			          price: {
			              ios: 'FREE',
			              android: 'FREE'
			              ,windows: 'FREE'
			          }
			           //, theme: 'android' // put platform type ('ios', 'android', etc.) here to force single theme on all device
			          // , icon: '' // full path to icon image if not using website icon image
			        //, force: 'android' // Uncomment for platform emulation
			      });
			    }
			    
			    if($("a.smartbanner-button")){
			          //append it to .nanobar-simple
			    	  $('.smartbanner').appendTo('.nanobar-simple');
			    	   var returnURL = window.location.href;
			    	   if(window.location.search){
			    		   returnURL = returnURL + "&CID=1&applink=true"
			    		}else{
			    			returnURL = returnURL + "?CID=1&applink=true"
			    		}
					   $("a.smartbanner-button").attr('href','/openAndroidApp.jsp?returnURL='+ returnURL );
				}
			    
			   });
			  
		    </script>
    	<link rel="stylesheet" type="text/css" href="/resources/css/slick.css" />
  <link rel="shortcut icon" href="/favicon.ico">
<link rel="canonical" href="https://www.1800petmeds.com/" />
<meta name="description" content="Extra $5-$20 Off. Fast Free Shipping $49+. America&#39;s Largest Pet Pharmacy. Same medications as the vet, for less. We meet any price at time of order.">
			<meta name="keywords" content="1800petmeds,pet medication,pet medicine,pet medications,pet health,pet pharmacy,pet prescription,pet prescriptions,veterinary supplies,pet med,petmedex,petmedexpress,heartgard,petmed express,pet meds,petmeds,petmed pharmacy,1800petmeds.com,pet medications,pet supplies,pet supply,heartworm,advantage,frontline,topspot,rimadyl,etogesic,cosequin,heartgard,pet,pets,pet education,flea,flea and tick,tick,flea killer,pet care,veterinary,veterinarian,vet,vets,animal care,1800petmed,1800petmeds,pet vitamins,pet supplements,pet products,discount pet medications,discount pet supplies,online pet medication,online pet store,online pet supplies,discount pet medicine,pet medicines">
			<meta name="robots" content="index,follow">
			<meta name="verify-v1" content="i+KtuWbxqFnSWEnhCVTG+4OSpasyQbSFo4l7Z2esmZw="/>
      <meta name="google-site-verification" content="zz_9L05awvGzJLpmwyTlemRFW9gwM_X8AqHPAY9KMDA" />      
			<meta name="y_key" content="38e741b41832f2c0">
			<meta name="p:domain_verify" content="4b50259d1eb9208df6f061e92565d697"/>
			<meta property="twitter:account_id" content="21399166" />
			<meta name="msvalidate.01" content="FDDC6D98227DC6CAA07EEC4F8943112E" />
			<meta property="fb:admins" content="100001101286889" />
			<meta property="og:title" content="1800PetMeds"/>
			<meta property="og:type" content="website"/>
			<meta property="og:url" content="https://www.1800petmeds.com"/>
			<meta property="og:locale" content="en_US" />
			<meta property="og:image" content="https://www.1800petmeds.com/images/facebook_image.jpg"/>
      <meta name="yottaa-site-verification" content="5b3fd3c72bb0ac4236ce76f2"/>
			<meta property="og:site_name" content="1800PetMeds"/>
			<meta property="og:description" content="1800PetMeds is your online pet store offering discount prices on petsupplies,medications, products, vitamins and supplements for your pet. Discount Prices on Pet Supplies, Frontline Plus, Advantage, Heartgard Plus, Sentinel, Interceptor, and more."/>
			<title>1-800-PetMeds� - America&#39;s Trusted Pet Pharmacy | Save up to 30%</title>
		<script type="application/ld+json">
	{
    "@context" : "http://schema.org",
    "@type" : "Organization",
    "legalName" : "1800PetMeds",
    "url" : "https://www.1800petmeds.com/",
    "contactPoint" : [
      { "@type" : "ContactPoint",
        "telephone" : "+1-800-738-6337",
        "contactType" : "customer service"
      }
    ],
    "logo" : "https://www.1800petmeds.com/images/PETMEDS(CMYK)_NEW_URL_TOP_PETMEDS.jpg",
    "sameAs" : [ "https://www.facebook.com/PetMeds",
      "https://twitter.com/1800PetMeds",
      "https://www.youtube.com/petmeds",
      "https://www.instagram.com/1800petmeds/",
      "https://www.pinterest.com/petmeds/",
      "https://www.linkedin.com/company/1800petmeds"
    ],
		"potentialAction": {
			"@type": "SearchAction",
			"target": "https://www.1800petmeds.com/search.jsp?Ntt={search_term_string}&Ns=product.salesvolume%7C1",
			"query-input": "required name=search_term_string"
		}
	}
	</script>
</head>

<!-- END OF YOTTAA PREFETCH LOCATION=<body[0]> -->
<!--PREFETCH COOKIES START-->

<script type="text/javascript">
function yo_loader(url){ 
 
 try{(new Image()).src = url;}catch(e){ } 
 }

</script>
<script type="text/javascript">yo_loader("https://www.1800petmeds.com/yo-app-sequencer.png?v=M4u3gsrq2KjoThbDD07ayKFCu_VDA3dK7RhuQqYM_XCiDz7UmQ3sOFWAx28Io9ffPtawnsHng8Vy9NO245ecj_vzW45yJStgzGhOS_Yxy0vxdUVikNDD4h8Fe2DL8Wsvmc0NhZpNAvVdzCCLw-M5Gc72XZWJAjCZ6NlAiAb8yi0=,ZFoaT0wD5pZLkYYuhhuxIXu2aPm7qs8fc5OqM1BchPf1trzGK-jE08IsZTFimAHOVCEGjGtQapD349ePJjOotio7qhe7gCgH90DL-pyWXX4=,xtBjmLZ__KiXGFdazvHoA1axdNxElin_g9DNp3PDrCEhxBAg-ceK6JPViXpCyCPGnWFOZ_YuCg1ZT64cppQqDAGwYepylmKaOJWz24tgSB3PZru4vgf0EQbhqwZEZ7PfrahsR_chXkAKgji-ofXijoYs5d2RrAo5A9-i916zajhTcu1nyrOcG7XGBB-K8-AC,eSW-qPwUnMxZed_MArbhKwGwYepylmKaOJWz24tgSB1yA_zseQH0PJOUg7x9yRg1,s5sYAMWz2A4wKOBCI2fiyKYIHTcs0BZ6CgKP6rUm40dXgnuN3cewn19IOQrea6jq&t=2j-70fKrryCoEC_e0-04mQ==&s=e886fb930d569c4d55d262dac6a6c673");

</script>
<!--PREFETCH COOKIES END-->
<body><!-- INSERT BY TRANSFORMER. SELECTOR=body,LOCATION=prepend --><script>
 Yo.sequence.node(document.body);
</script>
	<div class="container">
		<div id="ada-skip"><a href="#ada-maincontent">Skip to Main Content &#8250;</a></div> 
  <div class="nanobar-simple desktop">
  <div class="nanobar-holder">
    <div class="nanobar-inner">
      <div class="fshipping"><a href="/shiprate.jsp"><img src="/images/nanobar-shipping.jpg" alt="FREE Shipping on orders over $49"/></a></div>
      <div class="divider"><span></span></div>
      <div class="message2">
        <div class="offer3 noselect" style="margin-top:2px !important;"><strong>Save up to 30% + EZREFILL Savings of</strong></div>
        <div class="offer-fine-print">Extra $5 to $20 OFF (<a href="/volumediscount.jsp" style="color: #756824 !important;">exclusions apply details</a>)</div>
        </div>
      <div class="divider"><span></span></div>
<div class="satisfaction"><a href="/guarantee.jsp"><img src="/images/nanobar-satisfaction.jpg" alt="100% Satisfaction Guaranteed"/></a></div>
</div>
  </div>
</div>
<div class="nanobar-simple mobile">
  <div class="nanobar-holder">
    <div class="nanobar-inner">
      <div class="message2">
        <div class="offer3 noselect">Save up to 30%</div>
        <a href="/volumediscount.jsp" style="color: #000 !important;">
        <div class="offer-fine-print">+ EXTRA $5 to $20 OFF</div>
        </a>
        </div>
      <div class="divider"><span></span></div>
<div class="message-right noselect">
        <div class="fshipping">FAST FREE Shipping $49+</div>
        <div class="satisfaction">100% Satisfaction Guaranteed</div>
      </div>
</div>
  </div>
</div>
	<script type="text/javascript">
        $(document).ready(function() {
        $("#button_right").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
        'padding' : '0',
	      'margin' : '0'
		});
      });
</script>

<script type="text/javascript">
function feedback_validation()
{
  var capresp =  grecaptcha.getResponse();
  if(capresp == '') {
    alert('Please Click I\'m not a Robot Box');
    return false;
  }
	var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	var email = document.getElementById('feedback_email').value ;
	if(!re.test(email)) {
		alert('Email is not valid: '+email) ;
		return false ;
	}
	if(document.getElementById('feedback_comment').value == '') {
		alert('Please write some comment') ;
		return false ;
	}
        url = "/includes/feedback-post.jsp";
        var posting = $.post( url,
          {
            feedback_name: $('#feedback_name').val(),
            feedback_phone: $('#feedback_phone').val(),
            feedback_email: $('#feedback_email').val(),
            feedback_userid: $('#feedback_userid').val(),
            feedback_page: $('#feedback_page').val(),
            feedback_ipaddress: $('#feedback_ipaddress').val(),
            transient_user: $('#transient_user').val(),
            feedback_agent: $('#feedback_agent').val(),
            feedback_comment: $('#feedback_comment').val(),
            recaptcha_response_field: capresp
          });
	posting.done(function( data ) {
	  $( "#feedback_name" ).val('');
	  $( "#feedback_phone" ).val('');
	  $( "#feedback_email" ).val('');
    $( "#feedback_ipaddress" ).val('');
	  $( "#feedback_userid" ).val('');
	  $( "#feedback_page" ).val('');
	  $( "#transient_user" ).val('');
	  $( "#feedback_agent" ).val('');
	  $( "#feedback_comment" ).val('');
    $( "#recaptcha_response_field" ).val('');
	  $.fancybox.close();
	  $('#button_right').hide();
	});
}
function feedback_validation_new()
{
	var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	var email = document.getElementById('feedback_email').value ;
	if(!re.test(email)) {
		alert('Email is not valid: '+email) ;
		return false ;
	}
	if(document.getElementById('feedback_comment').value == '') {
		alert('Please write some comment') ;
		return false ;
	}
        url = "/includes/feedback-post.jsp";
        var posting = $.post( url,
          {
            feedback_name: $('#feedback_name').val(),
            feedback_phone: $('#feedback_phone').val(),
            feedback_email: $('#feedback_email').val(),
            feedback_userid: $('#feedback_userid').val(),
            feedback_page: $('#feedback_page').val(),
            feedback_ipaddress: $('#feedback_ipaddress').val(),
            transient_user: $('#transient_user').val(),
            feedback_agent: $('#feedback_agent').val(),
            feedback_comment: $('#feedback_comment').val()
          });
	posting.done(function( data ) {
	  $( "#feedback_name" ).val('');
	  $( "#feedback_phone" ).val('');
	  $( "#feedback_email" ).val('');
    $( "#feedback_ipaddress" ).val('');
	  $( "#feedback_userid" ).val('');
	  $( "#feedback_page" ).val('');
	  $( "#transient_user" ).val('');
	  $( "#feedback_agent" ).val('');
	  $( "#feedback_comment" ).val('');
	  $.fancybox.close();
	  $('#button_right').hide();
	});
}
</script>
<script type="text/javascript" src="/resources/js/src/libraries/jquery-ui-1.12.1.min.js"></script>
  	<script>
  	$(document).ready(function() {
  		$("#searchText").autocomplete({
  			minLength: 3,
  			source: function( request, response ) {
  				var availableTags = [];
  				var searchTerm = $('#searchText').val().trim();
				var selectTerm = $('#selectValue').val().trim();
  		        if(searchTerm.length > 2 && selectTerm == 'Products'){
	  				$.ajax({
	  		            dataType: "json",
	  		            type : 'Get',
	  		            url: '/assembler?format=json&assemblerContentCollection=/content/Shared/Auto-Suggest%20Panels&Dy=1&Ntt=' + searchTerm + '*',
	  		            success: function(data) {
	  		            	if(data.contents[0].autoSuggest[0].totalNumResults>0){
	  				    	   	$(data.contents[0].autoSuggest[0].dimensionSearchGroups).each(function(){
	  				    			   $(this.dimensionSearchValues).each(function(){
	  				    				   if(availableTags.length < 5 && $.inArray(this.label.trim(),availableTags) < 0){
	  				    				   	availableTags.push(this.label.trim());
	  				    				   }
	  				    			   });

	  				    	   });
	  				       	}
	  		            	response(availableTags)
	  		          	}
	  		        });
  		        }
				if(searchTerm.length > 2 && selectTerm == 'Education'){
	  				$.ajax({
	  		            dataType: "json",
	  		            type : 'Get',
	  		            url: '/assembler?format=json&assemblerContentCollection=/content/Shared/Edu-Auto-Suggest%20Panels&Dy=1&Ntk=Edu&Ntt=' + searchTerm + '*',
	  		            success: function(data) {
	  		            	if(data.contents[0].autoSuggest[0].totalNumResults>0){
	  				    	   	$(data.contents[0].autoSuggest[0].dimensionSearchGroups).each(function(){
	  				    			   $(this.dimensionSearchValues).each(function(){
	  				    				   if(availableTags.length < 5 && $.inArray(this.label.trim(),availableTags) < 0){
	  				    				   	availableTags.push(this.label.trim());
	  				    				   }
	  				    			   });

	  				    	   });
	  				       	}
	  		            	response(availableTags)
	  		          	}
	  		        });
  		        }
  		      },
  			open: function() {$('.ui-menu').width(250)},
        select: function(event, ui){}
  		});
      $("#searchText" ).on("autocompleteselect", function(event, ui) 
      {
        $("#searchText").val(ui.item.value);
        $("#searchForm").submit();
      });
  	});

	</script>
	<div class="abandon-cart-popup-overlay desktop" style="display:none">
</div>
<div class="site-header">
		<div class="inner">
			<div class="left">
				<a href="/">
					<img src="/resources/img/raster/logo.png" alt="1800PetMeds Logo Return to Home Page"/>
				</a>

				<div class="phone-number">1-800-738-6337</div>
			</div>

			<div class="right">
				<div class="links">
					<div class="link list">
						<button aria-expanded="false">My Account</button>
						<div class="dropdown">
							<a href="https://www.1800petmeds.com/mypetmed.jsp">My Account</a>
							<a href="https://www.1800petmeds.com/orderlist.jsp">My Orders</a>
							<a href="https://www.1800petmeds.com/mypetmed.jsp#settings">My Settings</a>
							<a href="https://www.1800petmeds.com/orderlist.jsp">Reorder</a>
							<a href="/login.jsp">Sign In</a>
									<a href="/login.jsp?source=new">New Customer</a>
								</div>
					</div>
					<a href="/help.jsp" title="Contact Us" class="link">Contact Us</a>
					<a href="https://www.1800petmeds.com/orderlist.jsp" class="link">Reorder</a>
					<a href="/cart.jsp" aria-label="View Cart, 0 Items in Cart" title="View Cart, 0 Items in Cart" class="link cart" id="view-cart">
						View Cart
					</a>
				</div>

				<form id="searchForm" action="/index.jsp;jsessionid=-tSHQIMBIKXKTOTuB5XdABSs.prod5" class="search" method="GET"><input name="_dyncharset" value="ISO-8859-1" type="hidden"></input><input value="-136814026208323067" type="hidden"></input><div class="categories">
              <div class="search-facade">Products</div>
              <input name="_D:/1800petmeds/search/FacetSearchFormHandler.selection" value=" " type="hidden"></input><select id="selectValue" name="/1800petmeds/search/FacetSearchFormHandler.selection" aria-label="Select Type of Search"><option selected value="Products">Products<option value="Education">Education</select></div>
          <div class="input">
						<input id="searchText" placeholder="Search" name="/1800petmeds/search/FacetSearchFormHandler.question" value="" type="text" aria-label="Enter Text to Search For"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.question" value=" " type="hidden"></div>
					<div class="submit">
						<button type="submit" title="Search" aria-label="Search"><span class="sr-only">Search</span></button>
					</div>
					<input name="/1800petmeds/search/FacetSearchFormHandler.successURL" value="/search.jsp" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.successURL" value=" " type="hidden"><input name="/1800petmeds/search/FacetSearchFormHandler.errorURL" value="/index.jsp" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.errorURL" value=" " type="hidden"><input name="/1800petmeds/search/FacetSearchFormHandler.search" value="Search" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.search" value=" " type="hidden"><input name="_DARGS" value="/includes/top_home_01.jsp" type="hidden"></input></form></div>
		</div>
	</div>

	<div class="mobile-header mobile">
		<a href="/" title="1-800-PetMeds" class="logo">
			<img src="/resources/img/raster/logo.png" alt="1-1800PetMeds Logo, Return to HomePage"/>
		</a>
		<div class="right">
      <span style="float:left;position:relative;margin:22px 5px 0 0;font-size:14px">
					<a href="/mypetmed.jsp">Sign In</a>
						</span>
			<a href="/cart.jsp" class="cart" aria-label="0 Items in Cart" title="0 Items in Cart">
				</a>
			<div class="hamburger">
				<div class="patty"></div>
				<div class="patty"></div>
				<div class="patty"></div>
			</div>
		</div>
	</div>

	<div class="mobile-nav mobile">
		<div class="title-bar">
			<div class="title">My Account</div>

			<div class="close">
				<img src="/resources/img/vector/close-blue.svg" alt="" width="16" height="16" />
			</div>
		</div>

		<div class="links">
			<a href="https://www.1800petmeds.com/mypetmed.jsp">My Account</a>
			<a href="https://www.1800petmeds.com/orderlist.jsp">My Orders</a>
			<a href="https://www.1800petmeds.com/mypetmed.jsp#settings">My Settings</a>
			<a href="https://www.1800petmeds.com/mypetmed.jsp">Reorder</a>
			<a href="/help.jsp" title="Contact Us" class="link">Contact Us</a>
			<a href="https://www.1800petmeds.com/login.jsp">Sign In</a>
				</div>
	</div>
	<div class="site-navigation">
		<div class="inner">
			<div class="left">
				<div class="top-drop-button"><span class="root-cat-label"><button aria-expanded="false">Dog</button></span>

										<a href="/Dog-cat5060012.html?N=3248835821" class="root-cat-link">Dog</a>
											<div class="dropdown">
												<div class="links">
													<div class="title">Categories</div>
										<a href="/Flea+++Tick-cat10.html?N=3552231434+3248835821">Flea &amp; Tick</a>
                                <a href="/Heartworm-cat11.html?N=2844824230+3248835821">Heartworm</a>
                                <a href="/Pain-cat60004.html?N=217832551+3248835821">Pain</a>
                                <a href="/Joints-cat12.html?N=3397521782+3248835821">Joints</a>
                                <a href="/Medications-cat14.html?N=1404481778+3248835821">Medications</a>
                                <a href="/Skin+++Coat-cat68.html?N=2574635383+3248835821">Skin &amp; Coat</a>
                                <a href="/Vitamins-cat235.html?N=2882389639+3248835821">Vitamins</a>
                                <a href="/Dental-cat63.html?N=2680209219+3248835821">Dental</a>
                                <a href="/Supplies-cat17.html?N=1521442510+3248835821">Supplies</a>
                                <a href="/Arthritis-cat268.html?N=1752440223+3248835821">Arthritis</a>
                                <a href="/Hormonal+Endocrine-cat87.html?N=1339613010+3248835821">Hormonal Endocrine</a>
                                <a href="/Urinary+Tract+++Kidneys-cat94.html?N=914874423+3248835821">Urinary Tract &amp; Kidneys</a>
                                <a href="/Eye-cat66.html?N=3551282915+3248835821">Eye</a>
                                <a href="/Ear-cat65.html?N=1558404502+3248835821">Ear</a>
                                <a href="/Wormers-cat74.html?N=2279194308+3248835821">Wormers</a>
                                <a href="/Food-cat78.html?N=1853908073+3248835821">Food</a>
                                <a href="/Allergy+Relief-cat71.html?N=687139856+3248835821">Allergy Relief</a>
                                </div>
										</div>
										</div>


									<div class="top-drop-button"><span class="root-cat-label"><button aria-expanded="false">Cat</button></span>

										<a href="/Cat-cat5060011.html?N=2334612796" class="root-cat-link">Cat</a>
											<div class="dropdown">
												<div class="links">
													<div class="title">Categories</div>
										<a href="/Flea+++Tick-cat10.html?N=3552231434+2334612796">Flea &amp; Tick</a>
                                <a href="/Heartworm-cat11.html?N=2844824230+2334612796">Heartworm</a>
                                <a href="/Pain-cat60004.html?N=217832551+2334612796">Pain</a>
                                <a href="/Joints-cat12.html?N=3397521782+2334612796">Joints</a>
                                <a href="/Medications-cat14.html?N=1404481778+2334612796">Medications</a>
                                <a href="/Skin+++Coat-cat68.html?N=2574635383+2334612796">Skin &amp; Coat</a>
                                <a href="/Vitamins-cat235.html?N=2882389639+2334612796">Vitamins</a>
                                <a href="/Dental-cat63.html?N=2680209219+2334612796">Dental</a>
                                <a href="/Supplies-cat17.html?N=1521442510+2334612796">Supplies</a>
                                <a href="/Arthritis-cat268.html?N=1752440223+2334612796">Arthritis</a>
                                <a href="/Hormonal+Endocrine-cat87.html?N=1339613010+2334612796">Hormonal Endocrine</a>
                                <a href="/Urinary+Tract+++Kidneys-cat94.html?N=914874423+2334612796">Urinary Tract &amp; Kidneys</a>
                                <a href="/Eye-cat66.html?N=3551282915+2334612796">Eye</a>
                                <a href="/Ear-cat65.html?N=1558404502+2334612796">Ear</a>
                                <a href="/Wormers-cat74.html?N=2279194308+2334612796">Wormers</a>
                                <a href="/Food-cat78.html?N=1853908073+2334612796">Food</a>
                                <a href="/Allergy+Relief-cat71.html?N=687139856+2334612796">Allergy Relief</a>
                                </div>
										</div>
										</div>


									<div class="top-drop-button item3"><span class="root-cat-label"><button aria-expanded="false">Horse</button></span>
												<a href="/Horse-cat5160032.html" class="root-cat-link">Horse</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Horse+Anxiety-cat5160028.html">Horse Anxiety</a>
													<a href="/Horse+Digestion-cat5160025.html">Horse Digestion</a>
													<a href="/Horse+First+Aid-cat5160034.html">Horse First Aid</a>
													<a href="/Horse+Grooming+++Skin+Care-cat5160031.html">Horse Grooming &amp; Skin Care</a>
													<a href="/Horse+Insulin+++Hormonal+Endocrine-cat5160029.html">Horse Insulin &amp; Hormonal Endocrine</a>
													<a href="/Horse+Joint+Supplements-cat5160026.html">Horse Joint Supplements</a>
													<a href="/Horse+Medications-cat5160030.html">Horse Medications</a>
													<a href="/Horse+Pain-cat5160024.html">Horse Pain</a>
													<a href="/Horse+Training+Aids-cat5160027.html">Horse Training Aids</a>
													<a href="/Horse+Vitamins+++Supplements-cat5160035.html">Horse Vitamins &amp; Supplements</a>
													<a href="/Horse+Wormers-cat5160022.html">Horse Wormers</a>
													</div>
												</div>
												</div>
											<div class="top-drop-button item4"><span class="root-cat-label"><button aria-expanded="false">Flea &amp; Tick</button></span>
												<a href="/Flea+++Tick-cat10.html" class="root-cat-link">Flea &amp; Tick</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Flea+++Tick+Prevention-cat50.html">Flea &amp; Tick Prevention</a>
													<a href="/Flea+Pills+++Oral+Medications-cat4950008.html">Flea Pills &amp; Oral Medications</a>
													<a href="/Heartworm+++Flea+Prevention-cat4870008.html">Heartworm &amp; Flea Prevention</a>
													<a href="/Home+++Yard+Treatments-cat54.html">Home &amp; Yard Treatments</a>
													<a href="/Immediate+Relief-cat55.html">Immediate Relief</a>
													<a href="/Sprays+++Shampoos-cat5070004.html">Sprays &amp; Shampoos</a>
													<a href="/Tick+++Flea+Collars-cat4950030.html">Tick &amp; Flea Collars</a>
													</div>
												<div class="ads">
		<a href="/Flea5X+Plus+++Generic+to+Frontline+Plus-prod11480.html"><img src="/images/offers/submenu-ad-flea5x.jpg" border="0" width="330" height="336" alt="Flea 5X Plus Generic to Frontline Plus"/></a></div>
</div>
												</div>
											<a href="/Heartworm-cat11.html" class="root-cat-childless">Heartworm</a>
											<a href="/Pain-cat60004.html" class="root-cat-childless">Pain</a>
											<div class="top-drop-button item7"><span class="root-cat-label"><button aria-expanded="false">Joints</button></span>
												<a href="/Joints-cat12.html" class="root-cat-link">Joints</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Joint+Pain-cat60.html">Joint Pain</a>
													<a href="/Joint+Supplements-cat61.html">Joint Supplements</a>
													<a href="/Lift+Harnesses+++Slings-cat480094.html">Lift Harnesses &amp; Slings</a>
													<a href="/Orthopedic+Beds-cat59.html">Orthopedic Beds</a>
													<a href="/Steps+++Ramps-cat200006.html">Steps &amp; Ramps</a>
													</div>
												<div class="ads">
		<a href="/Super+Joint+Enhancer+Soft+Chews-prod278144.html"><img src="/images/offers/submenu-ad-sje3.jpg" border="0" width="330" height="336" alt="Super Joint Enhancer Soft Chews"/></a></div>
</div>
												</div>
											<div class="top-drop-button item8"><span class="root-cat-label"><button aria-expanded="false">Medications</button></span>
												<a href="/Medications-cat14.html" class="root-cat-link">Medications</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Allergy+Relief-cat71.html">Allergy Relief</a>
													<a href="/Antibiotics-cat72.html">Antibiotics</a>
													<a href="/Antifungal-cat73.html">Antifungal</a>
													<a href="/Anxiety-cat75.html">Anxiety</a>
													<a href="/Arthritis-cat268.html">Arthritis</a>
													<a href="/Asthma-cat4890004.html">Asthma</a>
													<a href="/Compound+Medications-cat4870006.html">Compound Medications</a>
													<a href="/Cough+Relief-cat77.html">Cough Relief</a>
													<a href="/Digestive+Support+++Enzymes-cat90004.html">Digestive Support &amp; Enzymes</a>
													<a href="/Diuretics-cat81.html">Diuretics</a>
													<a href="/Ear-cat65.html">Ear</a>
													<a href="/Eye-cat66.html">Eye</a>
													<a href="/Heart+++Blood+Pressure-cat85.html">Heart &amp; Blood Pressure</a>
													<a href="/Hormonal+Endocrine-cat87.html">Hormonal Endocrine</a>
													<a href="/Incontinence-cat295.html">Incontinence</a>
													<a href="/Insulin+++Diabetes-cat80.html">Insulin &amp; Diabetes</a>
													<a href="/Nausea+++Motion+Sickness-cat360006.html">Nausea &amp; Motion Sickness</a>
													<a href="/Pain-cat60004.html">Pain</a>
													<a href="/Seizure+++Epilepsy-cat90.html">Seizure &amp; Epilepsy</a>
													<a href="/Thyroid+Medications-cat190002.html">Thyroid Medications</a>
													<a href="/Urinary+Tract+++Kidneys-cat94.html">Urinary Tract &amp; Kidneys</a>
													<a href="/Vaccines++-cat5170004.html">Vaccines  </a>
													<a href="/Wormers-cat74.html">Wormers</a>
													</div>
												</div>
												</div>
											<div class="top-drop-button item9"><span class="root-cat-label"><button aria-expanded="false">Skin &amp; Coat</button></span>
												<a href="/Skin+++Coat-cat68.html" class="root-cat-link">Skin &amp; Coat</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Allergy+Relief-cat71.html">Allergy Relief</a>
													<a href="/Antibacterials-cat60022.html">Antibacterials</a>
													<a href="/Fish+Oils+++Omega+3-cat231.html">Fish Oils &amp; Omega 3</a>
													<a href="/Grooming+Tools-cat104.html">Grooming Tools</a>
													<a href="/Hairball+Remedies-cat218.html">Hairball Remedies</a>
													<a href="/Itch+Relief-cat229.html">Itch Relief</a>
													<a href="/Ringworm+Treatments-cat232.html">Ringworm Treatments</a>
													<a href="/Shampoos-cat230.html">Shampoos</a>
													<a href="/Shedding+Remedies-cat101.html">Shedding Remedies</a>
													<a href="/Skin+Care+Supplements-cat102.html">Skin Care Supplements</a>
													<a href="/Skin+Medications-cat60024.html">Skin Medications</a>
													</div>
												<div class="ads">
		<a href="/Super+Pure+Omega+3+Soft+Chews-prod11379.html"><img src="/images/offers/submenu-ad-11379.jpg" border="0" width="330" height="336" alt="Super Pure Omega 3 Soft Chews"/></a></div>
</div>
												</div>
											<div class="top-drop-button item10"><span class="root-cat-label"><button aria-expanded="false">Vitamins</button></span>
												<a href="/Vitamins-cat235.html" class="root-cat-link">Vitamins</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Antioxidants-cat233.html">Antioxidants</a>
													<a href="/Calcium-cat234.html">Calcium</a>
													<a href="/Dietary-cat60010.html">Dietary</a>
													<a href="/Digestive+Enzymes-cat90006.html">Digestive Enzymes</a>
													<a href="/Fish+Oils+++Omega+3-cat231.html">Fish Oils &amp; Omega 3</a>
													<a href="/Food+Additives-cat60020.html">Food Additives</a>
													<a href="/Hemp+for+Pets-cat5160005.html">Hemp for Pets</a>
													<a href="/Liver+Support-cat60012.html">Liver Support</a>
													<a href="/Multivitamins-cat60008.html">Multivitamins</a>
													<a href="/Potassium-cat60016.html">Potassium</a>
													<a href="/Senior+Support-cat60018.html">Senior Support</a>
													</div>
												<div class="ads">
		<a href="/Super+VitaChews+For+Dogs-prod10897.html"><img src="/images/offers/submenu-ad-10897.jpg" border="0" width="330" height="336" alt="Super VitaChews For Dogs"/></a></div>
</div>
												</div>
											<div class="top-drop-button item11"><span class="root-cat-label"><button aria-expanded="false">Dental</button></span>
												<a href="/Dental-cat63.html" class="root-cat-link">Dental</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Breath+Fresheners-cat214.html">Breath Fresheners</a>
													<a href="/Chews+++Treats-cat212.html">Chews &amp; Treats</a>
													<a href="/Rinses+++Water+Additives-cat213.html">Rinses &amp; Water Additives</a>
													<a href="/Toothpaste+++Toothbrushes-cat211.html">Toothpaste &amp; Toothbrushes</a>
													</div>
												<div class="ads">
		<a href="/Be+Fresh+Dental+Care+Solution-prod11070.html"><img src="/images/offers/submenu-ad-be-fresh.jpg" border="0" width="330" height="336" alt="Be Fresh Dental Care Solution"/></a> </div>
</div>
												</div>
											<div class="top-drop-button item12"><span class="root-cat-label"><button aria-expanded="false">Supplies</button></span>
												<a href="/Supplies-cat17.html" class="root-cat-link">Supplies</a>
													<div class="dropdown">
														<div class="links">
															<div class="title">Categories</div>
											<a href="/Beds-cat106.html">Beds</a>
													<a href="/Bowls+++Automatic+Feeders-cat107.html">Bowls &amp; Automatic Feeders</a>
													<a href="/Carriers-cat300006.html">Carriers</a>
													<a href="/Car+Seats+++Seat+Covers-cat210002.html">Car Seats &amp; Seat Covers</a>
													<a href="/Cat+Furniture-cat340002.html">Cat Furniture</a>
													<a href="/Crates+++Kennels-cat200002.html">Crates &amp; Kennels</a>
													<a href="/First+Aid-cat84.html">First Aid</a>
													<a href="/Furniture+Covers-cat4870010.html">Furniture Covers</a>
													<a href="/Gates-cat300002.html">Gates</a>
													<a href="/Gifts+for+Pets-cat500004.html">Gifts for Pets</a>
													<a href="/Grooming+Tools-cat104.html">Grooming Tools</a>
													<a href="/Leashes+++Harnesses-cat111.html">Leashes &amp; Harnesses</a>
													<a href="/Litter+Boxes+++Accessories-cat220002.html">Litter Boxes &amp; Accessories</a>
													<a href="/Outdoor+Cat+Enclosures-cat470004.html">Outdoor Cat Enclosures</a>
													<a href="/Pet+Food+Storage+-cat4950010.html">Pet Food Storage </a>
													<a href="/Pet+Health+Tests+++Kits-cat5110007.html">Pet Health Tests &amp; Kits</a>
													<a href="/Shampoos-cat230.html">Shampoos</a>
													<a href="/Stain+++Odor+Removers-cat227.html">Stain &amp; Odor Removers</a>
													<a href="/Steps+++Ramps-cat200006.html">Steps &amp; Ramps</a>
													<a href="/Strollers-cat200008.html">Strollers</a>
													<a href="/Toys-cat116.html">Toys</a>
													<a href="/Training+Aids-cat110.html">Training Aids</a>
													<a href="/Treats-cat109.html">Treats</a>
													<a href="/Water+Fountains-cat450002.html">Water Fountains</a>
													<a href="/Wireless+Dog+Fences-cat470002.html">Wireless Dog Fences</a>
													</div>
												</div>
												</div>
											</div>
							<div class="right">
								<div class="list">
									<button aria-expanded="false">More</button>
									<div class="dropdown">
								<a href="/Arthritis-cat268.html">Arthritis</a>
									<a href="/Hormonal+Endocrine-cat87.html">Hormonal Endocrine</a>
								<a href="/Urinary+Tract+++Kidneys-cat94.html">Urinary Tract &amp; Kidneys</a>
								<a href="/Eye-cat66.html">Eye</a>
								<a href="/Ear-cat65.html">Ear</a>
								<a href="/Wormers-cat74.html">Wormers</a>
								<a href="/Food-cat78.html">Food</a>
								<a href="/Allergy+Relief-cat71.html">Allergy Relief</a>
								<a href="/todayspecial.jsp">NEW</a>
						<a href="/education">Education</a>
						<a href="/hot+deals-cat5160012.html" style="color:red;weight:600 !important">Happy, Healthy Deals</a>
					</div>
						</div>
					</div> </div>
	</div>
  <div id="ada-maincontent"></div>
		<div class="home">
			<div class="inner">
				<div class="search-bar mobile">
							
		<form id="searchFormM" action="/index.jsp;jsessionid=-tSHQIMBIKXKTOTuB5XdABSs.prod5" class="input" method="GET"><input name="_dyncharset" value="ISO-8859-1" type="hidden"></input><input value="-136814026208323067" type="hidden"></input><input placeholder="Search" name="/1800petmeds/search/FacetSearchFormHandler.question" value="" type="text"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.question" value=" " type="hidden"><button type="submit" title="Search" aria-label="Search"><span class="sr-only">Search</span></button>
			<input name="/1800petmeds/search/FacetSearchFormHandler.successURL" value="/search.jsp" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.successURL" value=" " type="hidden"><input name="/1800petmeds/search/FacetSearchFormHandler.errorURL" value="/index.jsp" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.errorURL" value=" " type="hidden"><input name="/1800petmeds/search/FacetSearchFormHandler.search" value="Search" type="hidden"><input name="_D:/1800petmeds/search/FacetSearchFormHandler.search" value=" " type="hidden"><input name="_DARGS" value="/includes/search-bar-mobile.jsp" type="hidden"></input></form></div>
		<div class="top-sellers">
			<div class="headline">
            <h1 class="title">Top Sellers</h1>
            <style>
	.top-bar .right .newsletter-signup {width:100%;font-size:16px;}
	.top-bar .right .newsletter-signup::before,.top-bar .right .newsletter-signup::after {content:" ";display:table}
	.top-bar .right .newsletter-signup::after {clear:both}
	.newsletter-signup-bar {border-bottom:1px solid #dde2e7;font-size:18px;font-weight:bold;color:#373839;background-color:#f2f6fa;padding:20px;line-height:120%}
	.top-bar .right .newsletter-signup-name {padding:10px 0 0 0;line-height:120%}
	.top-bar .right .newsletter-signup-content {overflow:hidden;color:#333}
	.top-bar .right .newsletter-signup-content .cols {width:35%;float:left}
	.top-bar .right .newsletter-signup-content .cols:last-child {width:30%}
	.top-bar .right .newsletter-signup-content form {margin:10px 0 10px 0}
	.top-bar .right .newsletter-signup-content form label {float:left;border:1px solid #dde2e7;font-size:14px;border-right:none;height:37px;padding:12px 0 0 8px;width:56px;background:#f2f6fa;color:#373839;border-top-left-radius:5px;border-bottom-left-radius:5px;}
	.top-bar .right .newsletter-signup-content form input {color:#373839;float:left;display:block;margin:0;padding:0 0 0 12px;height:37px;width:170px;font-size:14px;color:#979da3;border:1px solid #dde2e7;border-top-right-radius:5px;border-bottom-right-radius:5px;}
	.top-bar .right .newsletter-signup-content form .error-message {display:block;float:left;padding:5px 0px 10px 3px; width: 100%;}
	.top-bar .right .newsletter-signup-content form .submit-btn {width:100%;height:37px;border:none;border-radius:5px;background-color:#0173cd;color:#fff;font-size:14px;font-weight:bold}
	.top-bar .right .newsletter-signup-fine-print {padding:5px;font-size:12px;text-align:center}
</style>
<div class="top-bar" style="height:auto;">
	<div class="right" style="padding:0;width:730px;">
		<div class="newsletter-signup">
    <div class="newsletter-signup-content">
    <div class="newsletter-signup-name"><strong>Subscribe for Special Offers!</strong></div>
      <form id="homeSignUpForm" name="customerInfo" action="/includes/customerInfo.jsp;jsessionid=-tSHQIMBIKXKTOTuB5XdABSs.prod5?_DARGS=/includes/right_home_ncust_01.jsp" class="sign-up-form" method="post"><input name="_dyncharset" value="ISO-8859-1" type="hidden"></input><input value="-136814026208323067" type="hidden"></input><input name="/atg/userprofiling/ProfileFormHandler.emailSuccessURL" value="/email-thank-you.jsp" type="hidden"><input name="_D:/atg/userprofiling/ProfileFormHandler.emailSuccessURL" value=" " type="hidden"><input name="/atg/userprofiling/ProfileFormHandler.emailErrorURL" value="/index.jsp" type="hidden"><input name="_D:/atg/userprofiling/ProfileFormHandler.emailErrorURL" value=" " type="hidden"><input id="addButton" name="/atg/userprofiling/ProfileFormHandler.instantDiscountEmail" value="Submit" type="hidden"><input name="_D:/atg/userprofiling/ProfileFormHandler.instantDiscountEmail" value=" " type="hidden"><div class="cols">
          <label for="fullname" class="name">Name</label>
          <input id="fullname" title="Full Name" name="/atg/userprofiling/ProfileFormHandler.value.fullname" value="" class="name" type="text"><input name="_D:/atg/userprofiling/ProfileFormHandler.value.fullname" value=" " type="hidden"></div>
        <div class="cols">
          <label for="email" class="email">Email</label>
          <input id="email" data-validation="required email" maxlength="100" name="email" value="" class="email" type="text" aria-required="true"><input name="_D:email" value=" " type="hidden"><div class="error-message"></div>
        </div>
        <div style="" class="cols">
          <button type="submit" class="submit-btn">Yes, I want tips &amp; discounts!</button>
          <div class="newsletter-signup-fine-print">No SPAM! View our <a href="/privacy.jsp" target="_blank" title="Read our Privacy Policy">Privacy Policy</a>.
        </div>
      <input name="_DARGS" value="/includes/right_home_ncust_01.jsp" type="hidden"></input></form></div>
	</div>
</div>
</div>
</div>
</div>
					<div class="items"><a href="/Apoquel-prod11700.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11701_80.jpg" alt="Apoquel">
					</div>
				</div>
	
				<div class="name">Apoquel</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/NexGard+Chewables-prod10356.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10372_80.jpg" alt="NexGard">
					</div>
				</div>
	
				<div class="name">NexGard</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Heartgard+Plus+Chewables-prod10002.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10502_80.jpg" alt="Heartgard Plus Chewables">
					</div>
				</div>
	
				<div class="name">Heartgard Plus Chewables</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Bravecto+Chews-prod11638.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11639_80.jpg" alt="Bravecto">
					</div>
				</div>
	
				<div class="name">Bravecto</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Revolution-prod10265.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10265_80.jpg" alt="Revolution">
					</div>
				</div>
	
				<div class="name">Revolution</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Trifexis-prod11190.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11191_80.jpg" alt="Trifexis">
					</div>
				</div>
	
				<div class="name">Trifexis</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/K9+Advantix+II+-prod10631.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10627_80.jpg" alt="K9 Advantix II">
					</div>
				</div>
	
				<div class="name">K9 Advantix II</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Frontline+Plus-prod10459.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10359_80.jpg" alt="Frontline Plus">
					</div>
				</div>
	
				<div class="name">Frontline Plus</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Sentinel-prod10118.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10117_80.jpg" alt="Sentinel">
					</div>
				</div>
	
				<div class="name">Sentinel</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Advantage+II+-prod10433.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10433_80.jpg" alt="Advantage II">
					</div>
				</div>
	
				<div class="name">Advantage II</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Flea5X+Plus+++Generic+to+Frontline+Plus-prod11480.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11480_80.jpg" alt="Flea5X Plus Generic to Frontline Plus">
					</div>
				</div>
	
				<div class="name">Flea5X Plus Generic to Frontline Plus</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Interceptor+Plus-prod11710.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11711_80.jpg" alt="Interceptor Plus">
					</div>
				</div>
	
				<div class="name">Interceptor Plus</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Simparica-prod11716.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11719_80.jpg" alt="Simparica">
					</div>
				</div>
	
				<div class="name">Simparica</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Galliprant-prod110001.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/110101_80.jpg" alt="Galliprant">
					</div>
				</div>
	
				<div class="name">Galliprant</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Advantage+Multi-prod10945.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/10945_80.jpg" alt="Advantage Multi">
					</div>
				</div>
	
				<div class="name">Advantage Multi</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Seresto-prod11501.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/11503_80.jpg" alt="Seresto">
					</div>
				</div>
	
				<div class="name">Seresto</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Proin-prod10304.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/104482_80.jpg" alt="Proin">
					</div>
				</div>
	
				<div class="name">Proin</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<a href="/Rimadyl-prod10261.html" class="item">
				<div class="graphic">
					<div class="asset-holder">
						<img src="/images/products/small/102630_80.jpg" alt="Rimadyl">
					</div>
				</div>
	
				<div class="name">Rimadyl</div>
			</a>
			<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				<!-- KPNOTE: Haven't touched this block yet, it wasn't active on the homepage -->
				</div></div>
<script>
  function CheckForm() {
    var checkedCount = 0;
    $("#SaleItem1 input[type=checkbox]").each(function () {
      var id = $(this).attr("id");
      if (this.checked) {
        checkedCount++;
        $("#SaleItem1 #ItemProductIds"+id).prop('disabled', false);
				$("#SaleItem1 #ItemSKUs"+id).prop('disabled', false);
				$("#SaleItem1 #pPurchaseItemIds"+id).prop('disabled', false);
      }else{
        $("#SaleItem1 #ItemProductIds"+id).prop('disabled', true);
				$("#SaleItem1 #ItemSKUs"+id).prop('disabled', true);
				$("#SaleItem1 #pPurchaseItemIds"+id).prop('disabled', true);
      }
		});
    if(checkedCount < 1){
      alert("Please select an item to add to your shopping cart.");
			return false;
    }
    return true;
	};
  $(document).ready( function() {
    $(".checkbox").on('click', function () {
      var $this = $(this);
      var $checkbox = $this.find('input[type="checkbox"]');
      if ($checkbox.is(":checked") === false) {
        $checkbox.prop("checked", true);
        $this.addClass("active");
      } else {
        $checkbox.prop("checked", false);
        $this.removeClass("active");
      }
    });
  });
</script>
<script src="/resources/player/jwplayer.js?v=26"></script>
<script>jwplayer.key="vMd4hdH0VaIEInivhU9bWWoB+gltzO+qKhm2PNppMnI="</script>
<link href="/resources/player/lity.css?v=26" rel="stylesheet">
<script src="/resources/player/lity.js?v=26"></script>
<style>
.hp-banner {margin-bottom: 20px; box-sizing: border-box; font-family: 'Roboto', Arial, Helvetica, sans-serif;}
.hp-banner .holi-deals {box-sizing: border-box; overflow: hidden; width: 980px; height: 170px; border: 1px solid #dde2e7; background: url('/images/bg-deals.jpg') #fff no-repeat center center; }
.hp-banner .holi-deals .left-bar {width: 220px; height: 100%; float: left; text-align: center; margin-left: 50px;}
.hp-banner .holi-deals .left-bar .btn-cta {display: inline-block; background-color: #0173cd; border: none; border-radius: 4px; color: #fff; font-size: 16px; font-weight: bold; text-align: left; padding: 10px 15px;cursor: pointer; text-decoration: none;}
.hp-banner .holi-deals .left-bar .btn-cta:hover {background-color: #d60b38; color: #fff;}
.hp-banner .holi-deals .left-bar .title {font-size: 27px; color: #0173cd; font-weight: 700; padding: 16px 10px 12px 10px; font-style: italic;}
.hp-banner .holi-deals .left-bar .description {font-size: 15px; color: #373839; font-weight: 400; padding: 0px 25px 12px 25px;}
.hp-banner .holi-deals .products {font-size: 13px; line-height: 1.2em;}
.hp-banner .holi-deals .products .product {box-sizing: border-box; width: 124px; height: 100%; float: left; text-align: center; padding: 13px 10px 5px 10px;}
.hp-banner .holi-deals .products .product a {text-decoration: none; font-weight: 700; color: #0173cd; display: inline-block;}
.hp-banner .holi-deals .products .product:hover a {color: #01579a;}
.hp-banner .holi-deals .products .product a img {width: 90px; height: auto; padding-bottom: 10px;}
</style>
<!--
<div class="ads" style="padding-bottom:20px;">
<h2 style="font-size: 32px;color: #373839;padding: 15px 0 15px 0;border-top: 1px solid #e9edf2;">Special Offers</h2>
<div class="ad">
<a href="/HomeoPet+HP+Healing+Cream-prod10384.html"><img src="/banners/banner-homeopet-hp-healing-cream.jpg" alt="HomeoPet HP Healing Cream" border="0" width="230" height="150"/></a> 
</div>
</div>
-->
<div class="promo desktop">
<div class="hp-banner default desktop">
    <div class="holi-deals">
        <div class="left-bar">
        	<div class="title">Happy, Healthy Deals</div>
            <div class="description">Start the New Year off right with low prices</div>
            <a href="/hot+deals-cat5160012.html?utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" class="btn-cta" title="Shop Now">Shop All Deals &rsaquo;</a>
        </div>
        <div class="products">
            <div class="product">
            	<a href="/product.jsp?id=prod278144&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Super Joint Enhancer Bite-Sized Chews"><img src="images/products/large/11019_160.jpg" alt="Super Joint Enhancer Bite-Sized Chews" border="0" /></a><br /><a href="product.jsp?id=prod278144&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Super Joint Enhancer Bite-Sized Chews">Super Joint Enhancer Bite-Sized Chews</a>
            </div>
            <div class="product">
            	<a href="/product.jsp?id=prod12198&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Frontline Oral Defense Daily Dental Chews"><img src="images/products/large/12198_160.jpg" alt="Frontline Oral Defense Daily Dental Chews" border="0" /></a><br /><a href="product.jsp?id=prod12198&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Frontline Oral Defense Daily Dental Chews">Frontline Oral Defense Daily Dental Chews</a>
            </div>
            <div class="product">
            	<a href="/product.jsp?id=prod11754&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="CheckUp At Home Wellness Test for Dogs"><img src="images/products/large/11754_160.jpg" alt="CheckUp At Home Wellness Test for Dogs" border="0" /></a><br /><a href="product.jsp?id=prod11754&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="CheckUp At Home Wellness Test for Dogs">CheckUp At Home Wellness Test for Dogs</a>
            </div>
            <div class="product">
            	<a href="/product.jsp?id=prod428143&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Super Vitachew Soft Chews"><img src="images/products/large/11096_160.jpg" alt="Super Vitachew Soft Chews" border="0" /></a><br /><a href="product.jsp?id=prod428143&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="Super Vitachew Soft Chews">Super Vitachew Soft Chews</a>
            </div>
            <div class="product">
            	<a href="/product.jsp?id=prod10803&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="NaturVet Digestive Enzymes Plus Probiotic Powder"><img src="images/products/large/10803_160.jpg" alt="NaturVet Digestive Enzymes Plus Probiotic Powder" border="0" /></a><br /><a href="product.jsp?id=prod10803&utm_source=homepage&utm_medium=banner&utm_campaign=HappyHealthyDealsDef&utm_content=desktop" title="NaturVet Digestive Enzymes Plus Probiotic Powder">NaturVet Digestive Enzymes</a>
            </div>
        </div>
    </div>
</div>
<a href="/loyalty-program.jsp?utm_source=homepage&amp;utm_medium=banner&amp;utm_campaign=rewards-promo&amp;utm_content=desktop" title="Learn More About PetMeds Rewards Program" style="margin-bottom: 20px;display: block;"><img src="/banners/banner-petmeds-rewards-program-desktop.jpg" alt="PetMeds Rewards Program" border="0" width="980" height="90"></a>
</div>
<div class="ads">
      <h2 style="font-size: 32px;color: #373839;padding: 15px 0 15px 0;border-top: 1px solid #e9edf2;">Why Choose 1-800-PetMeds<sup style="font-size:14px;">&reg;</sup>?</h2>
		<div class="ad"><a href="#inline" id="videoButton3" data-videoid="hksQX6le" data-lity><img src="/images/offers/banner-video-hksQX6le.jpg" alt="Trust" border="0" width="230" height="150"/></a></div>
		<div class="ad"><a href="#inline" id="videoButton2" data-videoid="ixsHFP9p" data-lity><img src="/images/offers/banner-bayer-pharmacy.jpg" alt="America's Largest Pet Pharmacy, opens video player" border="0" width="230" height="150"></a></div>
		<div class="ad"><a href="#inline" id="videoButton1" data-videoid="oq70sESa" data-lity><img src="/videos/4pvk4xo62s.jpg" alt="Real Customers Talk 1800PetMeds: Service" border="0" width="230" height="150"></a></div>
		<div class="ad"><a href="#inline" id="videoButton4" data-videoid="QMVKa200" data-lity><img src="/images/offers/banner-bayer-vets.jpg" alt="We Love our Vets, opens video player" border="0" width="230" height="150"/></a></div>
		</div>
		<div id="inline" style="background:#fff" class="lity-hide"><div id="myPlayer"></div></div>
<script type="text/JavaScript">
  $(document).ready(function() {
    $("#videoButton1").click(function() {
      loadPlayer(this.dataset.videoid);
    });
  });
  $(document).ready(function() {
    $("#videoButton2").click(function() {
      loadPlayer(this.dataset.videoid);
    });
  });
  $(document).ready(function() {
    $("#videoButton3").click(function() {
      loadPlayer(this.dataset.videoid);
    });
  });
  $(document).ready(function() {
    $("#videoButton4").click(function() {
      loadPlayer(this.dataset.videoid);
    });
  });
  function loadPlayer(videoid) {
  var playerInstance = jwplayer(myPlayer);
    playerInstance.setup({playlist: "//cdn.jwplayer.com/v2/media/" + videoid});
    playerInstance.play();
  }
  $(document).on('lity:close', function() {
    var playerInstance = jwplayer(myPlayer);
    playerInstance.pause();
  });
</script>
<div class="mobile">
					<div class="category-links">
						<a href="/topSellers.jsp">Top Sellers</a> <a href="/Dog-cat5060012.html?N=3248835821">Dog</a>
								<a href="/Cat-cat5060011.html?N=2334612796">Cat</a>
								<a href="/Horse-cat5160032.html">Horse</a>
								<a href="/Flea+++Tick-cat10.html">Flea &amp; Tick</a>
								<a href="/Heartworm-cat11.html">Heartworm</a>
								<a href="/Pain-cat60004.html">Pain</a>
								<a href="/Joints-cat12.html">Joints</a>
								<a href="/Medications-cat14.html">Medications</a>
								<a href="/Skin+++Coat-cat68.html">Skin &amp; Coat</a>
								<a href="/Vitamins-cat235.html">Vitamins</a>
								<a href="/Dental-cat63.html">Dental</a>
								<a href="/Supplies-cat17.html">Supplies</a>
								<a href="/Arthritis-cat268.html">Arthritis</a>
								<a href="/Hormonal+Endocrine-cat87.html">Hormonal Endocrine</a>
								<a href="/Urinary+Tract+++Kidneys-cat94.html">Urinary Tract &amp; Kidneys</a>
								<a href="/Eye-cat66.html">Eye</a>
								<a href="/Ear-cat65.html">Ear</a>
								<a href="/Wormers-cat74.html">Wormers</a>
								<a href="/Food-cat78.html">Food</a>
								<a href="/Allergy+Relief-cat71.html">Allergy Relief</a>
								<a href="/todayspecial.jsp">NEW</a>
							<a href="/education/">Education</a>
              <a href="/hot+deals-cat5160012.html" style="color:red;weight:600 !important">Happy, Healthy Deals</a>
						</div>
					<div class="see-more active">Show More</div>
					<div class="see-less">Show Less</div>
          <div class="promo mobile" style="text-align:center;margin:0 10px 20px 10px;">
          <a href="/loyalty-program.jsp?utm_source=homepage&amp;utm_medium=banner&amp;utm_campaign=rewards-promo&amp;utm_content=mobile" target="_blank" title="Learn More About PetMeds Rewards Program Opens in New Window"><img src="/banners/banner-petmeds-rewards-program-mobile.jpg" alt="PetMeds Rewards Program" style="width:100%;height:auto;max-width:420px;"></a>
          </div>
         <div class="mobile" style="text-align: center; padding-bottom: 10px"> <a href="https://www.safe.pharmacy/buying-safely/" target="_blank" title="National Association of Boards of Pharmacy Opens in New Window"><img src="/images/dot-pharmacy-logo.png" alt="National Association of Boards of Pharmacy"></a></div>      
				</div>
			</div>
		<!-- INSERT BY TRANSFORMER. SELECTOR=.home[0],LOCATION=append --><script>Yo.sequence.displayNow();</script></div>
		<!-- footer links -->
<div class="site-footer">
	<div class="inner">
		<div class="column">
			<h3 class="title">Help / Customer Service</h3>
			<a href="/company.jsp">About Us</a>
			<a href="/help.jsp">Contact Us</a>
      <a href="/shiprate.jsp" target="_self">Shipping Rates</a>
			<a href="/newcustomer.jsp">FAQ</a>
      <a href="/guarantee.jsp">100% Satisfaction Guaranteed</a>
			<a href="/orderform.jsp">Printable Order Form</a>
			<a href="/education">Pet Education</a>
			<a href="/vet_directory.jsp">Vet Directory</a>
			<a href="/vetvipps.jsp" target="_self">Pet Pharmacy Verification</a>
		</div>

		<div class="column">
			<h3 class="title">My Account</h3>
			<a href="https://www.1800petmeds.com/login.jsp">Login</a>
				<a href="/request.jsp?ans=4&uid=1">Email Preferences</a>
			<a href="https://www.1800petmeds.com/orderlist.jsp">Reorder</a>
			<a href="https://www.1800petmeds.com/easyrefillMsg.jsp">Easy Refill</a>
			<a href="https://www.1800petmeds.com/orderlist.jsp">Track My Order</a>
			<a href="https://www.1800petmeds.com/mypetmed.jsp">My Account Page</a>
			<a href="https://www.1800petmeds.com/remove_pet.jsp">My Pet Has Passed Away</a>
		</div>
		<div class="column">
			<h3 class="title">PetMeds&reg; Programs</h3>
			<a href="/loyalty-program.jsp">PetMeds<sup style="line-height: 0px; font-size: 10px;">&reg;</sup> Rewards Program</a>
			<a href="/affiliateprogram.jsp">Affiliate Program</a>
  		<a href="/community.jsp">Free Pet Meds</a>
      <a href="/vetlogin.jsp">Vet Login</a>
		</div>
		<div class="column social-column">
			<h3 class="title socialnetwork">Join Our Social Network</h3>
			<div class="social-links">
				<a href="https://www.facebook.com/PetMeds" target="_blank">
					<img src="/resources/img/vector/facebook.png" alt="Join us on Facebook, Opens in New Window" width="30" height="30" />
				</a>
				<a href="https://twitter.com/1800petmeds" target="_blank">
					<img src="/resources/img/vector/twitter.png" alt="Join us on Twitter, Opens in New Window" width="30" height="30" />
				</a>
				<a href="https://www.linkedin.com/company/1800petmeds" target="_blank">
					<img src="/resources/img/vector/linkedin.png" alt="Join us on Linked In, Opens in New Window" width="30" height="30" />
				</a>
				<a href="https://www.instagram.com/1800petmeds/" target="_blank">
					<img src="/resources/img/vector/instagram.png" alt="Join us on Instagram, Opens in New Window" width="30" height="30" />
				</a>
				<a href="https://www.youtube.com/petmeds" target="_blank">
					<img src="/resources/img/vector/youtube.png" alt="Join us on Youtube, Opens in New Window" width="30" height="30" />
				</a>
			</div>
      <h3 class="title socialnetwork" style="font-size: 15px;margin-top:15px">America's Largest Pet Pharmacy<sup style="line-height: 0px; font-size: 10px;">&reg;</sup> </h3>
      <h3 class="title" style="font-size: 15px;color: #0173cd;">Trusted Pet Medication Experts<sup style="line-height: 0px; font-size: 10px;">&trade;</sup></h3>
      <a href="https://www.safe.pharmacy/buying-safely/" target="_blank" title="National Association of Boards of Pharmacy Opens in New Window"><img src="/images/dot-pharmacy-logo.png" alt="National Association of Boards of Pharmacy"></a>      
      <script src="https://apis.google.com/js/platform.js"></script>
      <script>
        window.___gcfg = {
          lang: 'en_US'
        };
      </script>	
      <g:ratingbadge merchant_id=3228932></g:ratingbadge>
      </div>
	</div>
</div>
<span style="display:none" id="profilename">1629390625</span>
<div class="mobile-footer mobile">
	<div class="btns">
		<a href="mailto:customerservice@1800petmeds.com">Email Us</a>
		<a href="tel:18007386337">Call Us: 1-800-738-6337</a>
	</div>

	<div class="expanding-links">
		<div class="expanding-link">
			<div class="bar">
				<h3 class="title">Help / Customer Service</h3>
				<div class="collapse"></div>
			</div>
			<div class="content">
				<a href="/company.jsp">About Us</a>
				<a href="/help.jsp">Contact Us</a>
        <a href="/shiprate.jsp" target="_self">Shipping Rates</a>
				<a href="/newcustomer.jsp">FAQ</a>
        <a href="/guarantee.jsp">100% Satisfaction Guaranteed</a>
				<a href="/orderform.jsp">Printable Order Form</a>
        <a href="/education">Pet Education</a>
				<a href="/vet_directory.jsp">Vet Directory</a>
        <a href="/vetvipps.jsp">Pet Pharmacy Verification</a>
			</div>
		</div>

		<div class="expanding-link">
			<div class="bar">
				<h3 class="title">My Account</h3>
				<div class="collapse"></div>
			</div>
			<div class="content">
				<a href="https://www.1800petmeds.com/login.jsp">Login</a>
					<a href="/request.jsp?ans=4&uid=1">Email Preferences</a>
				<a href="https://www.1800petmeds.com/orderlist.jsp">Reorder</a>
				<a href="https://www.1800petmeds.com/easyrefillMsg.jsp">Easy Refill</a>
				<a href="https://www.1800petmeds.com/orderlist.jsp">Track My Order</a>
				<a href="https://www.1800petmeds.com/mypetmed.jsp">My Account Page</a>
				<a href="https://www.1800petmeds.com/remove_pet.jsp">My Pet Has Passed Away</a>
			</div>
		</div>

		<div class="expanding-link">
			<div class="bar">
				<h3 class="title">PetMeds&reg; Programs</h3>
				<div class="collapse"></div>
			</div>
			<div class="content">
        <a href="/loyalty-program.jsp">PetMeds<sup style="line-height: 0px; font-size: 10px;">&reg;</sup> Rewards Program</a>
				<a href="/affiliateprogram.jsp">Affiliate Program</a>
				<a href="https://www.petmeds.org" target="_blank">Shelter &amp; Rescue Program</a>
				<a href="/community.jsp">Free Pet Meds</a>
			</div>
		</div>
	</div>

	<div class="social">
		<h3 class="title">Join Our Social Network</h3>

		<div class="social-links">
			<a href="https://www.facebook.com/PetMeds" target="_blank">
				<img src="/resources/img/vector/facebook.png" alt="Join us on Facebook, Opens in New Window" width="30" height="30" />
			</a>
			<a href="https://twitter.com/1800petmeds" target="_blank">
				<img src="/resources/img/vector/twitter.png" alt="Join us on Twitter, Opens in New Window" width="30" height="30" />
			</a>
			<a href="https://www.instagram.com/1800petmeds/" target="_blank">
				<img src="/resources/img/vector/instagram.png" alt="Join us on Instagram, Opens in New Window" width="30" height="30" />
			</a>
			<a href="https://www.youtube.com/petmeds" target="_blank">
				<img src="/resources/img/vector/youtube.png" alt="Join us on Youtube, Opens in New Window" width="30" height="30" />
			</a>
		</div>
	</div>
</div>
<div class="copyright">
	<div class="inner">Copyright &copy; 2020 PetMed Express, Inc. All Rights Reserved.</div>
</div>
</div>


<div id="PMCcouponhtml" class="graybodysm" align="center"><a href="/cart.jsp?MID=1435&CID=11604"><img src="/images/offers/090509_exitad.jpg" alt="Get 10% OFF Now Offer" width="214" height="290" border="0"></a></div>
<style type="text/css">
#PMCcouponhtml {position:absolute;top:200px;left:10px;width:214px;height:290px;visibility:hidden;}
</style>
<script type="text/javascript">
function hidebar() {
	document.getElementById("feedback-bar").style.visibility="hidden";
	document.cookie = "feedbackbar=hide";
}
</script>
<script type="yo/sequence/defer/1" data-yo-src="https://www.google.com/recaptcha/api.js"></script>
<div id="feedback-bar" class="feedback-bar">
    <div class="close-button"><a href="javascript:hidebar();" aria-label="Close Feedback Bar" alt="Close This FeedBack Bar" class="close">Close</a></div>
  <a class="share" id="button_right" href="#feedback_form_div" alt="Share Website Feedback"><span class="desktop">Share Website </span>Feedback</a>
  <div style="display: none;">
  <div id="feedback_form_div" class="feedbackform">
    <div class="flogo"></div>
    <div class="sep"></div>
    <form action="/includes/feedback-post.jsp" method="post" name="feedback_form" id="feedback_form">
        <input type="hidden" name="recaptcha_response_field" id="recaptcha_response_field" value=""/>
        <div class="frow"><label for="feedback_name">Name:</label><input class="fname" name="feedback_name" id="feedback_name" type="text" value="" placeholder="John Doe" required /></div>
            <div class="frow"><label for="feedback_email">Email:</label><input class="email" name="feedback_email" id="feedback_email" type="text" value="" placeholder="name@email.com" required /></div>
            <div class="frow"><label for="feedback_phone">Phone:</label><input class="phone" name="feedback_phone" id="feedback_phone" type="text" value="" placeholder="123-456-7890" /></div>
          <div class="frow"><label for="feedback_comment">Feedback:</label><textarea class="feedback" name="feedback_comment" id="feedback_comment" maxlength="511" cols="50" rows="5" placeholder="Enter your feedback" required></textarea></div>
        <div class="frow"><div class="g-recaptcha" data-sitekey="6Lco9tkSAAAAAAP9nhAC3eXznOA_AU94MXAKhtcE"></div></div>
        <input type="hidden" name="feedback_userid" id="feedback_userid" value="1629390625" />
        <input type="hidden" name="transient_user" id="transient_user" value="true" />
        <input type="hidden" name="feedback_page" id="feedback_page" value="%2F" />
        <input type="hidden" name="feedback_ipaddress" id="feedback_ipaddress" value="198.21.205.75" />
        <input type="hidden" name="feedback_agent" id="feedback_agent" value="Mozilla%2F5.0+%28Windows+NT+6.1%29+AppleWebKit%2F537.36+%28KHTML%2C+like+Gecko%29+Chrome%2F41.0.2228.0+Safari%2F537.3" />
        <div class="frow"><input class="submit" title="Submit Feedback" type="button" value="Send Feedback" onclick="feedback_validation();"/></div>
      </form>
    </div>
    </div>
</div>
<script language="javascript" src="/includes/scripts.js?v=26"></script>
	<script type="text/javascript" src="/resources/js/src/petmeds/petmeds.js?v=26"></script>
	<!--[if IE 8]>
	<script type="text/javascript" src="/resources/js/src/plugins/placeholders.js"></script>
	<![endif]-->

	<script type="text/javascript" src="/includes/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="/resources/js/src/libraries/jquery.fancybox.min.js"></script>

  <script type="text/javascript" src="/includes/jquery.colorbox-min.js"></script>
<script type="text/javascript">

	function setCookie(cname,cvalue)	{
		var d = new Date();
		d.setTime(d.getTime()+(7*24*60*60*1000));
		var expires = "expires="+d.toGMTString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i=0; i<ca.length; i++) {
  		var c = $.trim(ca[i]);
  		if (c.indexOf(name)==0) return c.substring(name.length,(c.length));
		}
		return "";
	}
</script>
<style>
.abandon-cart-popup-overlay {display:none;width:100%;height:100%;background:rgba(0,0,0,0.7);position:fixed;z-index:10}
.abandon-cart-popup-overlay .overlay-holder {width:420px;position:relative;left:412px;top:10px;}
.abandon-cart-popup-overlay .overlay-holder .view-cart {display:inline-block;width:115px;background:#fff;float:right;height:45px;padding-top:18px}
.abandon-cart-popup-overlay .overlay-holder .view-cart .amount {display:inline-block;height:20px;width:20px;background-color:#ad1417;border-radius:10px;color:#fff;font-size:12px;font-weight:700;text-align:center;position:absolute;top:-12px;left:8px;padding:4px 0 0 0}
.abandon-cart-popup-overlay .overlay-holder .view-cart .link {font-size:16px;font-weight:500;color:#0173cd;cursor:pointer;padding:1px 0 0 0}
.abandon-cart-popup-overlay .overlay-holder .view-cart .link.cart {background-size:20px 17px;background-repeat:no-repeat;background-image:url(/resources/img/vector/cart-blue.svg);padding:0 0 0 27px;margin-left:8px;position:relative}
.abandon-cart-popup-overlay .overlay-holder .bar {float:left;width:100%;padding:10px 13px 6px 13px;font-size:22px;color:#37383a;text-align:left;background:#f2f5fa;border-bottom:1px solid #dde2e8;font-weight:bold}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder {float:left;background:#fff;width:100%;padding:0px 20px;max-height: 400px;overflow-y:auto;}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item {border-bottom:1px solid #e9ecf1;overflow:hidden;padding:15px 0}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item:last-child {border: none}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .product {float:left;width:25%}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .product img {width:85%;height:auto}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details {float:left;width:75%;padding-top:5px}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .title a {color:#0173cd;font-size:14px;font-weight:bold;line-height:120%}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .info {font-size:13px;color:#666;padding:6px 0 3px 0}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .prices {float:left;padding-right:10px}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .prices .sale {display:inline-block;color:#ad1417;font-size:16px;font-weight:bold}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .prices .strikethrough {display:inline-block;color:#666;font-size:13px;font-weight:bold;text-decoration:line-through;padding:11px 10px 0 0}
.abandon-cart-popup-overlay .overlay-holder .cart-items-holder .cart-item .details .prices .savings {font-size:14px;color:#666;font-weight:bold;float:right;padding:10px;}
.abandon-cart-popup-overlay .overlay-holder .footer .offer strong {font-weight:bold}
.abandon-cart-popup-overlay .overlay-holder .footer .offer {float:left;width:100%;color:#373839;font-size:22px;text-align:center;padding:5px 0 5px 0;font-style:italic;margin:0 0 10px 0}
.abandon-cart-popup-overlay .overlay-holder .footer .offer span {color:#ad1417;font-weight:bold}
.abandon-cart-popup-overlay .overlay-holder .footer {float:left;background:#f2f5fa;padding:15px 10px 15px 10px;width: 100%;text-align:center}
.abandon-cart-popup-overlay .overlay-holder .footer .button {display:inline-block;border-radius:5px;padding:13px 0 0 0;width:150px;height:43px;text-align:center;margin:0 10px;cursor:pointer;font-weight:bold}
.abandon-cart-popup-overlay .overlay-holder .footer .button.cart {background:#0173cc;color:#fff;font-size:18px}
.abandon-cart-popup-overlay .overlay-holder .footer .close-window {display:block;width:100%;margin-top:15px;font-size:13px;cursor:pointer;color:#717272}
.abandon-cart-popup-overlay .overlay-position { width:1024px;margin:0 auto;height:100% }
</style>
<script type="text/javascript">
	var viewcart = $("#view-cart");
	var viewcartp = viewcart.position();
  function setCookie(cname,cvalue)	{
		var d = new Date();
		d.setTime(d.getTime()+(7*24*60*60*1000));
		var expires = "expires="+d.toGMTString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i=0; i<ca.length; i++) {
  		var c = $.trim(ca[i]);
  		if (c.indexOf(name)==0) return c.substring(name.length,(c.length));
		}
		return "";
	}
	$('.container').mouseleave(function(e) {
    if(e.offsetY < 0) {
      $(".abandon-cart-popup-overlay").load( "/view_cart.jsp", function( response, status, xhr ) {
        if ( status == "error" ) {
        } else {
          var cookie = getCookie("abtest");
          var showcart = getCookie("showcart");
          response = response.trim();
          if(response != undefined && response != null && cookie != null && cookie != undefined && cookie=="Yes" && window.location.pathname!="/checkout.jsp") {
            if(showcart!="yes") {
              $('.abandon-cart-popup-overlay').fadeIn(300).show();
              $("html,body").animate({scrollTop:0},"fast");
                document.cookie = "showcart=yes;"
            }
          }
        }
      });
    }
	});
	$('.abandon-cart-popup-overlay').click(function() {
		closeOverlay();	
	});
  function closeOverlay() {
    $('.abandon-cart-popup-overlay').fadeOut(300);
    $('.abandon-cart-popup-overlay').innerHTML = "";
  }
</script>
<!-- 
Start of global snippet: Please do not remove
Place this snippet between the <head> and </head> tags on every page of your site.
-->
<!-- Global site tag (gtag.js) - Google Marketing Platform -->
<script type="text/javascript">!function(){var a=document.createElement("script");a.type="text/javascript",a.async=!0,a.src="//configusa.veinteractive.com/tags/E8931297/6F80/4464/9C6D/2DE3E975E6C9/tag.js";var b=document.getElementsByTagName("head")[0];if(b)b.appendChild(a,b);else{var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)}}();</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-1069277114"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-1069277114');
  gtag('config', 'DC-4381721');
</script>
<!-- End of global snippet: Please do not remove -->
<!--SteelHouse Tracking Pixel-->
<!-- INSTALL ON ALL PAGES OF SITE-->
<script type="text/javascript">
	(function(){"use strict";var e=null,b="4.0.0",n="31120",additional="term=value",t,r,i;try{t=top.document.referer!==""?encodeURIComponent(top.document.referrer.substring(0,2048)):""}catch(o){t=document.referrer!==null?document.referrer.toString().substring(0,2048):""}try{r=window&&window.top&&document.location&&window.top.location===document.location?document.location:window&&window.top&&window.top.location&&""!==window.top.location?window.top.location:document.location}catch(u){r=document.location}try{i=parent.location.href!==""?encodeURIComponent(parent.location.href.toString().substring(0,2048)):""}catch(a){try{i=r!==null?encodeURIComponent(r.toString().substring(0,2048)):""}catch(f){i=""}}var l,c=document.createElement("script"),h=null,p=document.getElementsByTagName("script"),d=Number(p.length)-1,v=document.getElementsByTagName("script")[d];if(typeof l==="undefined"){l=Math.floor(Math.random()*1e17)}h="dx.steelhousemedia.com/spx?"+"dxver="+b+"&shaid="+n+"&tdr="+t+"&plh="+i+"&cb="+l+additional;c.type="text/javascript";c.src=("https:"===document.location.protocol?"https://":"http://")+h;v.parentNode.insertBefore(c,v)})()
</script>
<script type="text/javascript" integrity="sha384-znwM85Jrjv+ce7FeQj2GV/Bc2i4vProMfkAevQ6TCBUI8wIvXOpxkt2WGsnJCn8x" crossorigin="anonymous" src="https://cdn.merklesearch.com/merkle_track.js"></script>
<script type="text/javascript"> try{ merklesearch.sendAdSid("petmeds"); } catch(e) {} </script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-37875464-1']);
    _gaq.push(['_setCustomVar', 2, 'yottaa', (window.Yo ? Yo.rum.get().optState : 'yo-not-present'), 3]);
		
		_gaq.push(['_trackPageview']);
		
		var trackingScripts = trackingScripts || [];
		trackingScripts.push([('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js', 'gaScript']);
		/* campaign: - */
	</script>

	<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-37875464-1']);
			_gaq.push(['_setCustomVar',1,'Customer Type','NEW',2]);
		</script>
	<!--
    Event snippet for PetMeds General Container Tag on http://www.1800petmeds.com: Please do not remove.
    Place this snippet on pages with events you’re tracking. 
    Creation date: 08/22/2019
    -->
    <script>
      gtag('event', 'conversion', {
      'allow_custom_scripts': true,
      'u10': '',
      'u11': '',
      'u12': 'NEW',
      'u4': '',
      'u5': '',
      'send_to': 'DC-4381721/Gener0/PetMe0+standard'
    });
    </script>
    <noscript>
    <img src="https://ad.doubleclick.net/ddm/activity/src=4381721;type=Gener0;cat=PetMe0;u4=;u5=;u10=;u11=;u12=NEW;dc_lat=;dc_rdid=;tag_for_child_directed_treatment=;tfua=;npa=;ord=1?" width="1" height="1" alt=""/>
    </noscript>
    <!-- End of event snippet: Please do not remove -->
	<!-- START OF Data Collection Server TAG -->
<script type="text/javascript">
</script>
<SCRIPT LANGUAGE="Javascript"><!--
gVersion="1.0";
//-->
</SCRIPT>
<SCRIPT LANGUAGE="Javascript1.1"><!--
gVersion="1.1";
//-->
</SCRIPT>
<SCRIPT LANGUAGE="Javascript1.2"><!--
gVersion="1.2";
var RE={"%09":/\t/g,"%20":/ /g,"%23":/#/g,"%26":/\&/g,"%2B":/\+/g,"%3F":/\?/g,"%5C":/\\/g};
//-->
</SCRIPT>
<SCRIPT LANGUAGE="Javascript1.3"><!--
gVersion="1.3";
//-->
</SCRIPT>
<SCRIPT LANGUAGE="Javascript1.4"><!--
gVersion="1.4";
//-->
</SCRIPT>
<SCRIPT LANGUAGE="Javascript1.5"><!--
gVersion="1.5";
//-->
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
	<!--
	
	WT.profile='Unknown';
	var wtqry='';
var wtrefer='';
WT.custtype='New';

  var yottaaFlag = "";
  if(window.Yo) {
    yottaaFlag = Yo.rum.get().optState;
  } else {
    yottaaFlag = "yo-not-present";
  }
  WT.yottaa = yottaaFlag;
	window.name = "1800PetMeds";
	var gDomain="wt.1800petmeds.com";
	var gDcsId="";
	// Add customizations here
	//WT.sp="@@SPLITVALUE@@";

	function dcsVar(){
		var dCurrent=new Date();
		WT.tz=dCurrent.getTimezoneOffset()/60*-1;
		if (WT.tz==0){
			WT.tz="0";
		}
		WT.bh=dCurrent.getHours();
		WT.ul=navigator.appName=="Netscape"?navigator.language:navigator.userLanguage;
		if (typeof(screen)=="object"){
			WT.cd=navigator.appName=="Netscape"?screen.pixelDepth:screen.colorDepth;
			WT.sr=screen.width+"x"+screen.height;
		}
		if (typeof(navigator.javaEnabled())=="boolean"){
			WT.jo=navigator.javaEnabled()?"Yes":"No";
		}
		if (document.title){
			WT.ti=document.title;
		}
		WT.js="Yes";
		if (typeof(gVersion)!="undefined"){
			WT.jv=gVersion;
		}
		DCS.dcsdat=dCurrent.getTime();
		DCS.dcssip=window.location.hostname;
		DCS.dcsuri=window.location.pathname;
		if (wtqry!="") {
			DCS.dcsqry=wtqry;
		} else {
			if (window.location.search){
				DCS.dcsqry=window.location.search;
			}
		}
		if (wtrefer!="") {
			DCS.dcsref=wtrefer;
		} else {
			if ((window.document.referrer!="")&&(window.document.referrer!="-")){
				if (!(navigator.appName=="Microsoft Internet Explorer"&&parseInt(navigator.appVersion)<4)){
					DCS.dcsref=window.document.referrer;
				}
			}
		}
	}

	function A(N,V){
		return "&"+N+"="+dcsEscape(V);
	}

	function dcsEscape(S){
		if (typeof(RE)!="undefined"){
			var retStr = new String(S);
			for (R in RE){
				retStr = retStr.replace(RE[R],R);
			}
			return retStr;
		}
		else{
			return escape(S);
		}
	}

	function dcsCreateImage(dcsSrc){
    if (document.images){
			gImages[gIndex]=new Image;
			gImages[gIndex].src=dcsSrc;
			gIndex++;
		}
		else{
			document.write('<IMG BORDER="0" NAME="DCSIMG" WIDTH="1" HEIGHT="1" SRC="'+dcsSrc+'">');
		}
	}

	function dcsMeta(){
		var myDocumentElements;
		if (document.all){
			myDocumentElements=document.all.tags("meta");
		}
		else if (document.documentElement){
			myDocumentElements=document.getElementsByTagName("meta");
		}
		if (typeof(myDocumentElements)!="undefined"){
			for (var i=1;i<=myDocumentElements.length;i++){
				myMeta=myDocumentElements.item(i-1);
				if (myMeta.name){
					if (myMeta.name.indexOf('WT.')==0){
						WT[myMeta.name.substring(3)]=myMeta.content;
					}
					else if (myMeta.name.indexOf('DCSext.')==0){
						DCSext[myMeta.name.substring(7)]=myMeta.content;
					}
					else if (myMeta.name.indexOf('DCS.')==0){
						DCS[myMeta.name.substring(4)]=myMeta.content;
					}
				}
			}
		}
	}

	function dcsTag(){
		
    var P="http"+(window.location.protocol.indexOf('https:')==0?'s':'')+"://"+gDomain+(gDcsId==""?'':'/'+gDcsId)+"/dcs.gif?";
		for (N in DCS){
			if (DCS[N]) {
				P+=A(N,DCS[N]);
			}
		}
		for (N in WT){
			if (WT[N]) {
				P+=A("WT."+N,WT[N]);
			}
		}
		for (N in DCSext){
			if (DCSext[N]) {
				P+=A(N,DCSext[N]);
			}
		}
		if (P.length>2048&&navigator.userAgent.indexOf('MSIE')>=0){
			P=P.substring(0,2040)+"&WT.tu=1";
		}
		
		dcsCreateImage(P);
		
	}

	dcsVar();
	dcsMeta();
	dcsTag();

	function dcsMultiTrack(){
		for (var i=0;i<arguments.length;i++){
			if (arguments[i].indexOf('WT.')==0){
				WT[arguments[i].substring(3)]=arguments[i+1];
				i++;
			}
			if (arguments[i].indexOf('DCS.')==0){
				DCS[arguments[i].substring(4)]=arguments[i+1];
				i++;
			}
			if (arguments[i].indexOf('DCSext.')==0){
				DCSext[arguments[i].substring(7)]=arguments[i+1];
				i++;
			}
		}
		var dCurrent=new Date();
		DCS.dcsdat=dCurrent.getTime();
		dcsTag();
	}
	//-->
</SCRIPT>
<!-- END OF Data Collection Server TAG -->
<!-- instance: prod5 -->
  <script LANGUAGE="JavaScript">
if(typeof gImages == 'undefined' || !gImages){ var gImages=new Array; }
if(typeof gIndex == 'undefined' || !gIndex){ var gIndex=0;}
if(typeof DCS == 'undefined' || !DCS){ var DCS=new Object(); }
if(typeof WT == 'undefined' || !WT){ var WT=new Object(); }
if(typeof DCSext == 'undefined' || !DCSext){ var DCSext=new Object(); }
if(typeof wtrefer == 'undefined' || !wtrefer){ var wtrefer; }
</script>
<!--
Event snippet for PetMeds Homepage Tag on http://www.1800petmeds.com: Please do not remove.
Place this snippet on pages with events you’re tracking. 
Creation date: 08/22/2019
-->
<script>
  gtag('event', 'conversion', {
    'allow_custom_scripts': true,
    'u10': '',
    'u11': '',
    'u12': '',
    'u4': '',
    'u5': '',
    'send_to': 'DC-4381721/Gener0/PetMe00+standard'
  });
</script>
<noscript>
<img src="https://ad.doubleclick.net/ddm/activity/src=4381721;type=Gener0;cat=PetMe00;u4=;u5=;u10=;u11=;u12=;dc_lat=;dc_rdid=;tag_for_child_directed_treatment=;tfua=;npa=;ord=1?" width="1" height="1" alt=""/>
</noscript>
<!-- End of event snippet: Please do not remove -->
<script type="text/javascript">
	var google_tag_params = {
		ecomm_prodid: '',
		ecomm_pagetype: 'home',
		ecomm_totalvalue: ''
	};
</script>
<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 1069277114;
	var google_conversion_label = "--KXCNK_-AUQur_v_QM";
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
</script>
	<script type="yo/sequence/event/afterloaded *conversion_async*" data-yo-src="//www.googleadservices.com/pagead/conversion.js"></script>
<noscript><div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1069277114/?value=0&amp;label=--KXCNK_-AUQur_v_QM&amp;guid=ON&amp;script=0"/></div></noscript>
<script type="text/javascript" src="/resources/js/src/petmeds/slick.min.js"></script>
		<script type="text/javascript">
			PetMeds.Home.Init();
			$(document).ready(function(){
				$(".slides").slick({
					arrows: false,
					dots: true,
					autoplay: true,
					adaptiveHeight:true
				});
			});
		</script>
</body>
</html>
