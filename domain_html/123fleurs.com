<!DOCTYPE html>
<html lang="fr">
<head>
            <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge"/><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"8103ec310f",applicationID:"67005051"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
        <link rel="image_src" type="image/png" href="//i.123fleurs.com/18/images/marketing/social/site-200x200.jpg"/>
        <meta itemprop="image" content="//i.123fleurs.com/18/images/marketing/social/site-200x200.jpg"/>
        <meta property="og:image" content="//i.123fleurs.com/18/images/marketing/social/site-200x200.jpg"/>
        <link rel="publisher" href="https://plus.google.com/+123Fleurs"/>
        <meta property="og:site_name" content="123Fleurs"/>
        <meta property="article:publisher" content="https://www.facebook.com/123Fleurs" />
        <meta property="og:type" content="website"/>
        <meta name="twitter:card" value="summary"/>
        <meta name="twitter:site" value="@123Fleurs"/>
        <meta name="twitter:creator" value="@123Fleurs"/>
        <link rel="apple-touch-icon" sizes="180x180" href="//i.123fleurs.com/18/images/favicon/arlequin/apple-touch-icon.png"/>
        <link rel="icon" type="image/png" href="//i.123fleurs.com/18/images/favicon/arlequin/favicon-32x32.png" sizes="32x32"/>
        <link rel="icon" type="image/png" href="//i.123fleurs.com/18/images/favicon/arlequin/favicon-16x16.png" sizes="16x16"/>
        <link rel="manifest" href="//i.123fleurs.com/18/manifest.json"/>
        <meta name="theme-color" content="#f27405"/>
        <meta name="msapplication-navbutton-color" content="#f27405"/>
        <meta name="apple-mobile-web-app-status-bar-style" content="#f27405"/>
                                                        <link rel="alternate" hreflang="fr" href="https://www.123fleurs.com/"/>
                                        <link rel="canonical" href="https://www.123fleurs.com/"/>
            <meta property="og:url" content="https://www.123fleurs.com/"/>
                    <title>123fleurs : Livraison fleurs en 4H par un artisan fleuriste</title>
    <meta name="description" content="Envoyez un bouquet de fleurs à domicile dès 25 €. Livraison par un artisan fleuriste en 4h, 7j/7, même les dimanches et jours fériés.

"/>
    <meta property="og:title" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:description" content="" />
    <meta name="robots" content="index,follow"/>
    <meta name="keywords" content="livraison fleurs, livraison de fleurs, livraison fleur, envoi de fleurs, envoi fleurs, envoyer fleurs, envoyer des fleurs, livraison fleurs à domicile, livraison fleur, fleurs, offrir des fleurs, livrer des fleurs, fleur livraison, envoie de fleurs"/>
                            <script>
            var dataLayer = dataLayer || [];
            dataLayer.push({
                'variante': '0'
            });
        </script>
        
    <script type="text/javascript">
        var dataLayer = dataLayer || [];
        dataLayer.push({
            'criteoProductList': eval('[33271,34766,37344]'),
        });
    </script>
        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-NRSGFML');</script>
        <!-- End Google Tag Manager -->
                            <link href="https://i.aquarelle.com/prod/build/18/styles-3d5e471e9d.css" rel="stylesheet"/>
            
                        <script type="application/ld+json">
            {
    "@context": "http://schema.org/",
    "@type": "Organization",
    "name": "123fleurs.com",
    "description": "Tous les avis clients proviennent de personnes ayant effectué une transaction avec www.123fleurs.com",
    "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": 8,
        "bestRating": "10",
        "ratingCount": 3898,
        "url": "https://fr.trustpilot.com/review/123fleurs.com"
    }
}
        </script>
            
     </head>

<body class="  js-body"
      data-ufs-path-info="/"
      data-ufs-attribute-route="aqua_home_homepage"
>

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NRSGFML"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <header>
        <section class="headerbar">
    <nav class="navbar navbar-default">
        <div class="navbar-collapse collapse ufsite" id="header-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                                        <li><span class="navbar-text">Livraison de fleurs en 4 heures</span></li>
                
    <li><a href="/infos/contact"><span class="contact-icon"></span>Contactez-nous</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                    
<li class="dropdown ">
            <a href="#" class="dropdown-toggle menu" data-toggle="dropdown" role="button"><i class="fa fa-user"></i> Mon compte</a>
        <div class="dropdown-menu dropdown-menu-right not-expand">
            <div class="int-delivers right">
                    <section data-section="identification" class="clearfix">
                        <div class="myaccount-title">Se connecter</div>
                        <div class="connect-form active header" data-bloc="club-ca">
                            <form action="/login_check" method="post" enctype="application/x-www-form-urlencoded" id=connexion_ce"">
                                <div class="form-design form-design-login">
                                    <div class="input-group">
                                        <input class="radio" type="radio" value="1" id=radio-header-1  checked  name="_type" checked required>
                                        <label for=radio-header-1> Compte particulier </label>
                                    </div>
                                    <div class="input-group">
                                        <input class="radio" type="radio" value="2" id=radio-header-2  name="_type" required >
                                        <label for=radio-header-2> Compte entreprises (facturation mensuelle) </label>
                                    </div>
                                </div>
                                <div class="form-group form-group-sm">
                                    <label class="username-label-js" for="username"> E-mail </label>
                                    <input type="text" id=username name="_username" required class="form-control" placeholder="Votre email" />
                                </div>
                                <div class="form-group form-group-sm">
                                    <label for="password">Mot de passe  </label>
                                    <input type="password" id=password-header name="_password" required class="form-control" placeholder="Votre mot de passe" />
                                </div>
                                <div class="pull-right">
                                    <a class="text-color-link txt-pink" href="/resetting/user/password">Mot de passe oublié ?</a>
                                    <br/>
                                    <button type="submit" class="button-grey btn-sm" data-action="submit-connexion-ce" id=submit-connexion-ce"submit-connexion-ce">Connexion</button>
                                </div>
                            </form>
                        </div>
                    </section>

                <section data-section="inscription" class="clearfix">
                    <div class="myaccount-title">Créer un compte</div>
                    <div class="form-group form-group-sm">
                        <label for="button-create-account">Bienvenue !</label>
                        <div id="button-create-account">
                            <a href="/identification?mode=register" title="Continuer" data-action="btn-show-subcribe-ca" class="button-grey btn-sm">Continuer</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </li>

                        <li class="dropdown">
    <a href="/infos/livraison-fleurs-etranger" class=""  role="button" >LIVRAISONS DOM-TOM &amp; INTERNATIONALES</a>
</li>

            </ul>
        </div>
    </nav>
    <div class="block-logo">
        <div class="block-icon hidden-lg">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-navbar-collapse" aria-expanded="false">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
                            <div class="header-logo">

            
                            
                <a href="/">
                    <img class=""
    alt="Livraison de Fleurs avec 123fleurs.com"
     title="Livraison de fleurs avec 123fleurs"
     src="//i.123fleurs.com/18/images/marketing/logos/logo_fr_426x90.png"
     srcset="//i.123fleurs.com/18/images/marketing/logos/logo_fr_426x90.png 426w,//i.123fleurs.com/18/images/marketing/logos/logo_fr_341x72.png 341w,//i.123fleurs.com/18/images/marketing/logos/logo_fr_294x62.png 294w,//i.123fleurs.com/18/images/marketing/logos/logo_fr_230x53.png 230w"
     sizes="(min-width:1200px) 426px, (min-width:992px) 341px, (min-width:768px) 294px, 230px"
/>
                </a>
                
            
                        <span class="header-right-action">
            <ul class="nav">
                <li class="dropdown hidden">
    <a href="/la-marque/notre-histoire" role="button" >Notre histoire</a>
</li>

                <li class="dropdown hidden">
    <a href="/la-marque/confiance-fleuristes" role="button" >Faites confiance à nos fleuristes !</a>
</li>

            </ul>
        </span>
            </div>

        <div class="block-icon hidden-lg">
            <button class="btn-lg info-aqua" type="button" data-toggle="collapse" data-target="#header-navbar-collapse">
                <span class="glyphicon glyphicon-info-sign "></span>
            </button>
        </div>
        
        </div>
</section>
        
    <nav class="navbar navbar-default" id="main-menu">
        <div class="ufsite">
            <div id="menu-navbar-collapse" class="navbar-collapse collapse">
                <ul class="nav navbar-nav fix-font">
                                                                                                        <li><a href="https://www.123fleurs.com/occasions/fete-des-grand-meres" title="Fête des Grand-Mères" class="menu" >Fête des Grand-Mères<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a></li>
                                                                                                                                                            <li><a href="/catalogue/les-incontournables" title="Meilleures ventes" class="menu" >Meilleures ventes<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a></li>
                                                                                                                                                            <li><a href="https://www.123fleurs.com/occasions/anniversaire" title="Anniversaire" class="menu" >Anniversaire<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a></li>
                                                                                                                                                            <li><a href="https://www.123fleurs.com/catalogue/petits-prix" title="Petits prix" class="menu" >Petits prix<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a></li>
                                                                                                                                                            <li><a href="https://www.123fleurs.com/catalogue/bouquets-roses" title="Bouquets de roses" class="menu" >Bouquets de roses<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a></li>
                                                                                                                                                            <li class="dropdown">
                                    <a href="" title="Occasions" class="dropdown-toggle menu" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Occasions<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a>
                                    <ul class="dropdown-menu">
                                                                                    <li>
                                                <a href="/occasions/fete-des-grand-meres" title="Fête des Grand-Mères">Fête des Grand-Mères
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/anniversaire" title="Anniversaire">Anniversaire
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/amour" title="Amour">Amour
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/mariage" title="Mariage">Mariage
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/remerciements" title="Remerciements">Remerciements
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/naissance" title="Naissance">Naissance
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/fleurs-deuil" title="Deuil">Deuil
                                                                                                    </a>
                                            </li>
                                                                            </ul>
                                </li>
                                                                                                                                                            <li class="dropdown">
                                    <a href="" title="Plantes &amp; compositions" class="dropdown-toggle menu" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Plantes &amp; compositions<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a>
                                    <ul class="dropdown-menu">
                                                                                    <li>
                                                <a href="/catalogue/plantes-vertes-fleuries" title="Plantes vertes et fleuries">Plantes vertes et fleuries
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/catalogue/orchidees" title="Orchidées">Orchidées
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/catalogue/compositions-fleurs" title="Compositions de fleurs">Compositions de fleurs
                                                                                                    </a>
                                            </li>
                                                                            </ul>
                                </li>
                                                                                                                                                            <li class="dropdown">
                                    <a href="" title="Deuil" class="dropdown-toggle menu" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Deuil<span class="glyphicon glyphicon-chevron-right pull-right visible-xs-inline"></span></a>
                                    <ul class="dropdown-menu">
                                                                                    <li>
                                                <a href="/occasions/fleurs-deuil" title="Toutes nos fleurs de deuil">Toutes nos fleurs de deuil
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/bouquets-fleurs-deuil" title="Bouquets de deuil">Bouquets de deuil
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/deuil-compositions" title="Compositions et plantes fleuries">Compositions et plantes fleuries
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/deuil-gerbes" title="Gerbes, raquettes et devants de tombes">Gerbes, raquettes et devants de tombes
                                                                                                    </a>
                                            </li>
                                                                                    <li>
                                                <a href="/occasions/deuil-coussins" title="Coussins, couronnes et croix">Coussins, couronnes et croix
                                                                                                    </a>
                                            </li>
                                                                            </ul>
                                </li>
                                                                                        </ul>
                                            </div>
        </div>
    </nav>
    </header>

    <div class="ufsite main">
        
                                                    <section data-section="text-seo" >
        <div class="title-home hidden-xs">
            <h1 class="main-title">Livraison de fleurs par un <a href="https://www.123fleurs.com/fleuristes">fleuriste</a> en France et à l'étranger</h1>
        </div>
    </section>

    
                                                    <section data-section="slideshow" class="slideshow">
                            <div id="slideshow-carousel-1" class="double-block carousel slide" data-ride="carousel">
            <!-- Indicators -->
        <ol class="carousel-indicators">
                            <li data-target="#slideshow-carousel-1" data-slide-to="0" class="active"></li>
                            <li data-target="#slideshow-carousel-1" data-slide-to="1" ></li>
                            <li data-target="#slideshow-carousel-1" data-slide-to="2" ></li>
                    </ol>
        <div class="carousel-inner u-padding-bottom-sm" role="listbox">
                    <div class="item active">
                <a href="https://www.123fleurs.com/occasions/fete-des-grand-meres">
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2020-450x84-fdgm.jpg"
                            alt="Une jolie manière de souhaiter la fête des grand-mères " title="Notre sélection spéciale fête des grand-mères" class="mobile" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2020-750x140-fdgm.jpg"
                            alt="Une jolie manière de souhaiter la fête des grand-mères " title="Notre sélection spéciale fête des grand-mères" class="tablet" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2020-1180x220-fdgm.jpg"
                            alt="Une jolie manière de souhaiter la fête des grand-mères " title="Notre sélection spéciale fête des grand-mères"                             class="desktop" >
                                    </a>
            </div>
                    <div class="item ">
                <a href="https://www.123fleurs.com/occasions/anniversaire">
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-460x86-anniversaire.jpg"
                            alt="Pour un anniversaire, faites plaisir avec des fleurs" title="Notre sélection pour un anniversaire" class="mobile" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-750x140-anniversaire.jpg"
                            alt="Pour un anniversaire, faites plaisir avec des fleurs" title="Notre sélection pour un anniversaire" class="tablet" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-1180x220-anniversaire.jpg"
                            alt="Pour un anniversaire, faites plaisir avec des fleurs" title="Notre sélection pour un anniversaire"                             class="desktop" >
                                    </a>
            </div>
                    <div class="item ">
                <a href="https://www.123fleurs.com/occasions/fleurs-deuil ">
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-460x86-deuil.jpg"
                            alt="Nos fleurs de deuil pour transmettre vos condoléances" title="Découvrez les bouquets et fleurs de deuil" class="mobile" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-750x140-deuil.jpg"
                            alt="Nos fleurs de deuil pour transmettre vos condoléances" title="Découvrez les bouquets et fleurs de deuil" class="tablet" >
                                            <img
                            width="1180"
                            height="300"
                            src="//i.123fleurs.com/18/images/marketing/slideshow/fr/banner-2019-1180x220-deuil.jpg"
                            alt="Nos fleurs de deuil pour transmettre vos condoléances" title="Découvrez les bouquets et fleurs de deuil"                             class="desktop" >
                                    </a>
            </div>
            </div>
</div>
                                                        </section>
    
                        
    
    


<section data-section="catalog" class="display-block" data-mel=266554>

                    
        
        
        <article data-produit="33271" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="33271" href="/produit/bouquet-du-fleuriste-rose-et-rouge-catalpapier-33271" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-et-rouge-catal-papier-250x250-33270.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-et-rouge-catal-papier-250x250-33270.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-et-rouge-catal-papier-250x250-33270.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-et-rouge-catal-papier-150x150-33270.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-et-rouge-catal-papier-250x250-33270.jpg"
                             alt="Bouquet du fleuriste - rose et rouge-catal.papier"
                             title="Bouquet du fleuriste - rose et rouge-catal.papier"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="33271" href="/produit/bouquet-du-fleuriste-rose-et-rouge-catalpapier-33271" class="txt-pink product-title">BOUQUET DU FLEURISTE ROSE ET ROUGE</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 27,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="33271" href="/produit/bouquet-du-fleuriste-rose-et-rouge-catalpapier-33271" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="34766" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="34766" href="/produit/livraison-de-fleurs-bouquet-de-fleurs-34766" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/livraison-de-fleurs-bouquet-de-fleurs-250x250-34766.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/livraison-de-fleurs-bouquet-de-fleurs-250x250-34766.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/livraison-de-fleurs-bouquet-de-fleurs-250x250-34766.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/livraison-de-fleurs-bouquet-de-fleurs-150x150-34766.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/livraison-de-fleurs-bouquet-de-fleurs-250x250-34766.jpg"
                             alt="Fleurs de printemps"
                             title="Fleurs de printemps"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="34766" href="/produit/livraison-de-fleurs-bouquet-de-fleurs-34766" class="txt-pink product-title">FLEURS DE PRINTEMPS</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 28,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="34766" href="/produit/livraison-de-fleurs-bouquet-de-fleurs-34766" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="37344" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="37344" href="/produit/bouquet-de-fleurs-felicity-livraison-de-fleurs-37344" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-felicity-livraison-de-fleurs-250x250-37344.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-felicity-livraison-de-fleurs-250x250-37344.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-de-fleurs-felicity-livraison-de-fleurs-250x250-37344.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-de-fleurs-felicity-livraison-de-fleurs-150x150-37344.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-felicity-livraison-de-fleurs-250x250-37344.jpg"
                             alt="Felicity"
                             title="Felicity"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="37344" href="/produit/bouquet-de-fleurs-felicity-livraison-de-fleurs-37344" class="txt-pink product-title">FELICITY</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 26,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="37344" href="/produit/bouquet-de-fleurs-felicity-livraison-de-fleurs-37344" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="37326" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="37326" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37326" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-rubis-livraison-de-fleurs-250x250-37326.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-rubis-livraison-de-fleurs-250x250-37326.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-rubis-livraison-de-fleurs-250x250-37326.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-rubis-livraison-de-fleurs-150x150-37326.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-rubis-livraison-de-fleurs-250x250-37326.jpg"
                             alt="Rubis"
                             title="Rubis"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="37326" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37326" class="txt-pink product-title">RUBIS</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 35,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="37326" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37326" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="33273" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="33273" href="/produit/bouquet-du-fleuriste-blanc-catalpapier-33273" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-blanc-catal-papier-250x250-33272.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-blanc-catal-papier-250x250-33272.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-blanc-catal-papier-250x250-33272.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-blanc-catal-papier-150x150-33272.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-blanc-catal-papier-250x250-33272.jpg"
                             alt="Bouquet du fleuriste - blanc-catal.papier"
                             title="Bouquet du fleuriste - blanc-catal.papier"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="33273" href="/produit/bouquet-du-fleuriste-blanc-catalpapier-33273" class="txt-pink product-title">BOUQUET DU FLEURISTE BLANC</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 27,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="33273" href="/produit/bouquet-du-fleuriste-blanc-catalpapier-33273" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="32612" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="32612" href="/produit/celeste-32612" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-celeste-livraison-de-fleurs-250x250-32612.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-celeste-livraison-de-fleurs-250x250-32612.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-celeste-livraison-de-fleurs-250x250-32612.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-celeste-livraison-de-fleurs-150x150-32612.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-celeste-livraison-de-fleurs-250x250-32612.jpg"
                             alt="Bouquet Céleste"
                             title="Bouquet Céleste"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="32612" href="/produit/celeste-32612" class="txt-pink product-title">CÉLESTE</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 32,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="32612" href="/produit/celeste-32612" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="37324" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="37324" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37324" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-declaration-livraison-de-fleurs-250x250-37324.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-declaration-livraison-de-fleurs-250x250-37324.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-declaration-livraison-de-fleurs-250x250-37324.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-declaration-livraison-de-fleurs-150x150-37324.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-declaration-livraison-de-fleurs-250x250-37324.jpg"
                             alt="Déclaration"
                             title="Déclaration"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="37324" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37324" class="txt-pink product-title">DÉCLARATION</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 39,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="37324" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37324" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="32186" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="32186" href="/produit/sunshine-32186" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-sunshine-livraison-de-fleurs-250x250-32186.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-sunshine-livraison-de-fleurs-250x250-32186.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-de-fleurs-sunshine-livraison-de-fleurs-250x250-32186.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-de-fleurs-sunshine-livraison-de-fleurs-150x150-32186.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-de-fleurs-sunshine-livraison-de-fleurs-250x250-32186.jpg"
                             alt="Sunshine"
                             title="Sunshine"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="32186" href="/produit/sunshine-32186" class="txt-pink product-title">SUNSHINE</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 27,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="32186" href="/produit/sunshine-32186" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="33269" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="33269" href="/produit/bouquet-du-fleuriste-rose-catalpapier-33269" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-catal-papier-250x250-33268.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-catal-papier-250x250-33268.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-catal-papier-250x250-33268.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-catal-papier-150x150-33268.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-du-fleuriste-rose-catal-papier-250x250-33268.jpg"
                             alt="Bouquet du fleuriste"
                             title="Bouquet du fleuriste"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="33269" href="/produit/bouquet-du-fleuriste-rose-catalpapier-33269" class="txt-pink product-title">BOUQUET DU FLEURISTE ROSE</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 27,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="33269" href="/produit/bouquet-du-fleuriste-rose-catalpapier-33269" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="36940" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="36940" href="/produit/livraison-de-fleurs-bouquet-de-noel-36940" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-orange-petillant-livraison-de-fleurs-250x250-36940.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-orange-petillant-livraison-de-fleurs-250x250-36940.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-orange-petillant-livraison-de-fleurs-250x250-36940.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-orange-petillant-livraison-de-fleurs-150x150-36940.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-orange-petillant-livraison-de-fleurs-250x250-36940.jpg"
                             alt="Bouquet Pétillant"
                             title="Bouquet Pétillant"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="36940" href="/produit/livraison-de-fleurs-bouquet-de-noel-36940" class="txt-pink product-title">PÉTILLANT</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 28,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="36940" href="/produit/livraison-de-fleurs-bouquet-de-noel-36940" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="37328" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="37328" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37328" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-livraison-de-fleurs-250x250-37328.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-livraison-de-fleurs-250x250-37328.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-livraison-de-fleurs-250x250-37328.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/bouquet-saint-valentin-livraison-de-fleurs-150x150-37328.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/bouquet-saint-valentin-livraison-de-fleurs-250x250-37328.jpg"
                             alt="Romantique"
                             title="Romantique"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="37328" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37328" class="txt-pink product-title">ROMANTIQUE</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 32,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="37328" href="/produit/bouquet-saint-valentin-livraison-de-fleurs-37328" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
            
        
        <article data-produit="31596" class="md-product">

                    <div class="img-product">
                <div class="img-product-action">
                    <a title="Commander" data-btn-produit="31596" href="/produit/tulipes-rouges-et-blanches-31596" class="btn-commander">
                        <img data-src="//i.123fleurs.com/18/images/produits/tulipes-roses-et-blanches-livraison-de-fleurs-250x250-31596.jpg"
                                                                                                data-srcset="//i.123fleurs.com/18/images/produits/tulipes-roses-et-blanches-livraison-de-fleurs-250x250-31596.jpg 400w,
                                    //i.123fleurs.com/18/images/produits/tulipes-roses-et-blanches-livraison-de-fleurs-250x250-31596.jpg 250w,
                                    //i.123fleurs.com/18/images/produits/tulipes-roses-et-blanches-livraison-de-fleurs-150x150-31596.jpg 150w"
                                                                                         src="//i.123fleurs.com/18/images/produits/tulipes-roses-et-blanches-livraison-de-fleurs-250x250-31596.jpg"
                             alt="Tulipes roses et blanches"
                             title="Tulipes roses et blanches"
                             width="250" height="250" 
                             class="js-lazy" />
                    </a>
                                    </div>
                            </div>
                    <div class="central-block">
                <div class="txt-product">
                    <div class="product-infos">
                            <a title="Commander" data-btn-produit="31596" href="/produit/tulipes-rouges-et-blanches-31596" class="txt-pink product-title">TULIPES ROSES ET BLANCHES</a>
                                            </div>
                                    </div>
                                <div class="action-product">
                        <p class="from-price">
        A partir de 29,00 €
    </p>
                    <div class="product-button">
                        <a title="Commander" data-btn-produit="31596" href="/produit/tulipes-rouges-et-blanches-31596" class="btn-commander btn-commander-js">Découvrir</a>
                    </div>
                </div>                                                            </div>
                    </article>
        </section>

                        <section data-section="text-seo">
                <div class="text-seo-footer">
                    <p><h2>Livraison de fleurs à domicile</h2>

Toute l’année, les artisans fleuristes 123fleurs réalisent et livrent, partout en France, des bouquets de fleurs et plantes de saison : <a href="/catalogue/bouquets-roses">bouquets de roses</a>, de <a href="/catalogue/bouquets-lys">lys</a>, bonsaïs... <br>

Une livraison fleurs de dernière minute ? Les artisans fleuristes 123fleurs s’occupent de livrer en 4h, 7 jours / 7 même les dimanches et jours fériés !

<h2>Des fleurs pour toutes les occasions </h2>

Quel que soit le bouquet de fleurs que vous souhaitez offrir, 123fleurs vous propose une large variété de compositions qui feront plaisir lors des petites et grandes occasions. <br><br>

N’hésitez pas à laisser libre cours à votre plaisir d’offrir de belles fleurs aux couleurs intenses. Quelles que soient vos envies, les artisans fleuristes 123fleurs vous accompagnent pour fêter chaque événement grâce à son réseau de fleuristes !


<h2>Envoi de fleurs et de gourmandises en quelques clics</h2>

Opter pour 123fleurs, c’est choisir un service de qualité et une livraison en express par un fleuriste toute l’année ! Laissez-vous tenter par la diversité de nos créations florales, il y en a pour tous les budgets. Commandez votre bouquet en ligne, il pourra être livré le jour même ou le jour de votre choix, y compris les dimanches et jours fériés. <br><br>

Avec une sélection de bouquets de fleurs et plantes vertes, 123fleurs vous propose d’envoyer des boîtes de chocolats et gourmandises pour faire encore plus plaisir !


<h2>Des bouquets de fleurs livrés par un artisan fleuriste</h2>

En commandant sur 123fleurs, votre commande de fleurs est confiée à un artisan fleuriste proche du lieu de livraison. C’est lui qui réalise votre bouquet ou votre composition florale et assure la livraison de vos fleurs à domicile ou sur le lieu de livraison de votre choix. <br><br>


L’artisan fleuriste 123fleurs réalise votre bouquet avec des fleurs fraîches le jour de la livraison. <br><br>


Afin d'effectuer la livraison de vos fleurs dans les meilleures conditions, notre artisan fleuriste pourra prendre rendez-vous par téléphone avec le destinataire de votre commande.

<h2>Envoi de fleurs pas cher</h2>
Vous souhaitez commander un bouquet de fleurs pas cher ? 123fleurs vous propose des bouquets à<a href="/catalogue/petits-prix"> petits prix</a> à partir de 25 € pour les petits budgets.

<h2>Livraison de fleurs tous les jours, même le dimanche et jours fériés</h2>
Les artisans fleuristes 123fleurs livrent vos fleurs en 4h, 7j/7 même les dimanches, les jours fériés et jours de fête dans la France entière. <br><br>


Pour une livraison de fleurs le jour même :

<ul>
<li>du lundi au samedi : commandez avant 17h.
<li>le dimanche : commandez avant 10h, un fleuriste livre vos fleurs le dimanche matin.
<li>un jour férié : commandez avant 10h, vos bouquets de fleurs sont livrés en express le matin du jour férié.
</li>
</ul>

</p>
                </div>
            </section>
                </div>
                            <div id="modal-img-produit" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                        </div>
                        <div class="modal-body text-center"></div>
                    </div>
                </div>
            </div>
                            
    
<footer>

    <section class="row footer-first">
            <div class="footer-ufsite">
        <div class="row newsletter-block">
            <div class="newsletter-title">RECEVEZ NOTRE NEWSLETTER</div>
            <div class="newsletter-form"><form method="post" id="newsletter-sign-up" data-action="/ajax/newsletter-subscription">
    <div class="form-group">
        <div class="input-group">
            <input type="email" id="subscribe_newsletter_email" name="subscribe_newsletter[email]" required="required" placeholder="Saisir votre email" class="form-control">
            <a class="btn btn-default btn-grey input-group-addon" id="newsletter-submit">OK</a>
        </div>
        <div class="alert alert-danger text-center hide">Email incorrect</div>
    </div>
</form>

<div class="modal-overlay closed" id="modal-overlay"></div>
<div class="modal closed" id="modal">
    <button class="close-button" id="close-button">X</button>
    <div class="modal-guts">
        <div class="text-center" id="subscribe-ok">Merci ! Vous êtes bien inscrit à la newsletter.</div>
    </div>
</div>
</div>
            <div class="social-network-block">
                <div class="social-network-block-title">SUIVEZ NOUS !</div>
                <div class="social-network-group horizontal backgrounded">
                    <a href="https://www.facebook.com/123fleurs/" target="_blank" rel="noopener" class="bg-facebook social-circle"></a>
                    <a href="https://www.instagram.com/123fleurs_fleuristes" target="_blank" rel="noopener" class="instagram-picto"></a>
                </div>
            </div>
        </div>
    </div>
        <div class="footer-ufsite">
            <div class="footer-block">
    <h5 class="footer-title">A PROPOS D&#039;123FLEURS</h5>
    <li><a href="/infos/qui-sommes-nous" title="Qui sommes-nous ?" target="_parent">Qui sommes-nous ?</a></li>
    <li><a href="/infos/engagements" title="Nos engagements" target="_parent">Nos engagements</a></li>
    <li><a href="/infos/paiement-securise" title="Moyens de paiement" target="_parent">Moyens de paiement</a></li>
    <li><a href="/infos/conditions-generales-de-vente" title="Conditions de Vente (CGV)" target="_parent">Conditions de Vente (CGV)</a></li>
    <li><a href="/infos/mentions-legales" title="Mentions Légales" target="_parent">Mentions Légales</a></li>

    <a href="/infos/contact">
        <div class="footer-contact-us row footer-button-block">
            <div class="col-xs-12 title">Contactez-nous</div>
            <div class="col-xs-12 text-center">
                <span class="txt-pink">08 91 800 123 (0.25€/mn)</span><br />
du lundi au vendredi de 10h à 18h
            </div>
        </div>
        <div class="row logo-contact text-center">
            <img class="contact-img" src="//i.123fleurs.com/18/images/marketing/icones/icone-service-clients-123fleurs.png" width="36" height="36" alt="contact"/>
        </div>
    </a>
</div>


                 <div class="footer-block">
         <h5 class="footer-title">NOS SERVICES</h5>
         <li><a href="/compte" title="Le Compte Club 123fleurs" target="_parent">Le Compte Club 123fleurs</a></li>
         <li><a href="/infos/espace-entreprises" title="Compte client entreprise" target="_parent">Compte client entreprise</a></li>
         <li><a href="/infos/points-fidelite" title="Points fidélité" target="_parent">Points fidélité</a></li>
         <li><a href="/infos/affiliation" title="Partenariat et affiliation" target="_parent">Partenariat et affiliation</a></li>
         <li><a href="/infos/sites-partenaires" title="Nos partenaires" target="_parent">Nos partenaires</a></li>

         <a href="/fleuristes">
             <div class="footer-flowergrower row footer-button-block">
                 <div class="col-xs-12 title">Les fleuristes</div>
                 <div class="col-xs-12 text-center">
                     Un réseau national
                 </div>
             </div>
             <div class="row logo-flowergrow text-center">
                 <img class="flowergrower-img" src="//i.123fleurs.com/18/images/marketing/icones/icone-fleuriste-123fleurs.png" width="114" height="56" alt="flower-grower"/>
             </div>
         </a>
     </div>


            <div class="footer-block">
    <h5 class="footer-title"> &nbsp; </h5>
    <li><a href="https://www.123fleurs.com/avis-clients/" title="Nos clients témoignent" target="_parent">Nos clients témoignent</a></li>
    <li><a href="https://www.123fleurs.com/reseau/" title="Vous êtes fleuriste ?" target="_parent">Vous êtes fleuriste ?</a></li>
    <li><a href="https://www.123fleurs.com/catalogue/catalogue-papier" title="Accès fleuriste" target="_parent">Accès fleuriste</a></li>
    <li> &nbsp; </li>
    <li> &nbsp; </li>
    <a href="/infos/espace-entreprises">
        <div class="footer-entreprise-club row footer-button-block">
            <div class="col-xs-12 title">Espace entreprises</div>
            <div class="col-xs-12 text-center">
                Plus d&#039;avantages avec un compte
            </div>
        </div>
    </a>
</div>

                <div class="footer-block">
        <h5 class="footer-title">BESOIN D&#039;AIDE ?</h5>
        <li><a href="/infos/qui-sommes-nous" title="Qui sommes-nous ?" target="_parent">Qui sommes-nous ?</a></li>
        <li><a href="/infos/contact" title="Contactez-nous" target="_parent">Contactez-nous</a></li>
        <li><a href="/infos/aide-questions-frequentes" title="Questions Fréquentes" target="_parent">Questions Fréquentes</a></li>
        <li><a href="/page/plan-du-site" title="Plan du site" target="_parent">Plan du site</a><li>
        <li> &nbsp; </li>
        <a href="/infos/points-fidelite">
            <div class="footer-fidelity-points row footer-button-block">
                <div class="col-xs-12 title">Points fidélité</div>
                <div class="col-xs-12 text-center">
                    Vos achats récompensés
                </div>
            </div>
        </a>
    </div>

                        <div class="footer-block footer-block-feedback">
            <h5 class="footer-title">AVIS CLIENTS</h5>

            <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-md-8 col-md-offset-2 text-center">
                <a rel="noopener" target="_blank" href="https://fr.trustpilot.com/review/123fleurs.com?utm_medium=trustboxes&amp;utm_source=Mini" title="Trustpilot">
                    <div class="trustpilot-block">
                        <span>
                            <strong id="businessUnit-numberOfReviews-total" class="js-businessUnit-numberOfReviews-total" data-api-key="yP0eruREY60eG3sX2UzTdZgPPsNZEFT6" data-business-unit-id="4f0610540000640005121b62"></strong>
                            AVIS SUR TRUSTPILOT
                        </span>
                        <img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/255x29.png" width="255" height="29" alt="Logo Trustpilot" title="Logo Trustpilot">
                    </div>

                    <div class="trustpilot-block text-center">
                                                                                    <div class="star light-star"><img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/sprite_star.png" width="60" height="60" alt="Etoile Trustpilot" title="Etoile Trustpilot"/></div>
                                                                                                                <div class="star light-star"><img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/sprite_star.png" width="60" height="60" alt="Etoile Trustpilot" title="Etoile Trustpilot"/></div>
                                                                                                                <div class="star light-star"><img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/sprite_star.png" width="60" height="60" alt="Etoile Trustpilot" title="Etoile Trustpilot"/></div>
                                                                                                                <div class="star light-star"><img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/sprite_star.png" width="60" height="60" alt="Etoile Trustpilot" title="Etoile Trustpilot"/></div>
                                                                                                                <div class="star"><img src="//i.123fleurs.com/18/images/marketing/partenaires/trustpilot/sprite_star.png" width="60" height="60" alt="Etoile Trustpilot" title="Etoile Trustpilot"/></div>
                                                                        </div>
                    <div class="trustpilot-block text-center">
                        <span>TRUSTSCORE : <strong id="trust-score">8 / 10</strong></span><br />
                      </div>
                </a>
            </div>
        </div>
            </div>
    </section>

        <div class="ufsite">
        <div class="row">
            <div class="col-md-6 text-left">Livraison 7j/7 et jours fériés par un fleuriste <a href="/" class="txt-pink">123fleurs.com</a></div>
            <div class="col-md-6 text-right">*Contactez-nous <span class="txt-pink">08 91 800 123 (0,25€/mn)</span> du lundi au vendredi de 10h à 18h</div>
        </div>
    </div>

        <section class="row footer-end">
        <div class="ufsite">
            <div class="col-xs-12">
                Copyright © 2017 123fleurs 
Spécialiste de la livraison de fleurs à domicile en France, 123fleurs fédère un réseau de milliers d&#039;artisans fleuristes. Les fleuristes 123fleurs livrent en 4h, 7 jours sur 7 même les jours fériés et jours de fêtes, à domicile ou tout autre lieu dans la France entière. Nos fleuristes ont du talent et nos clients sont satisfaits !
            </div>
        </div>
    </section>

</footer>

    <script>
                var AQUA = {"PARTNER":"18","INIT_CURRENCY":"EUR","COUNTRY":"FR","PRODUCT_SUMMARY":false,"BANNER_COOKIES":true,"LOGIN_WITH_AMAZON":false,"BANNER_MESSAGE":"En poursuivant sur ce site, vous acceptez l'utilisation de cookies pour vous offrir un meilleur service en ligne. ","BANNER_DISMISS":"J'AI COMPRIS","BANNER_LINK":"Plus d'infos","BANNER_HREF":"http:\/\/www.123fleurs.com\/infos\/charte-protection-donnees","BANNER_DOMAIN":"www.123fleurs.com","HAS_SCROLL_TO":true,"CONTACT_ORDER_LABEL":"contact.form.object.order.label","CONTACT_INFORMATION_LABEL":"contact.form.object.information.label","CONTACT_FORM_ERROR":"contact.form.error.recaptcha","AUTH":{"TRANSLATIONS":{"EMAIL_PLACEHOLDER":"Saisir votre email","EMAIL_LABEL":"E-mail","CODE_PLACEHOLDER":"Saisir votre email","CODE_LABEL":"E-mail"}},"PRODUCT":{"TRANSLATIONS":{"ADD_ACCESSORIES":"Ajouter","REMOVE_ACCESSORIES":"Retirer"}}};
    </script>

    
    <script src="https://i.aquarelle.com/prod/build/js/homePage-691eafe379.js"></script>

    <script src="https://i.aquarelle.com/prod/build/js/ufs-97b07f23fc.js"></script>
    
    
<button class="back-to-top js-back-to-top hidden-xs"></button>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"8103ec310f","applicationID":"67005051","transactionName":"bl1TY0dWXRFUBhcLWFcXckJGQ1wPGgQSF1ZmUF5aUGhbDVgAEwNQXA==","queueTime":0,"applicationTime":89,"atts":"QhpQFQ9MTh8=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
