var mediaWikiLoadStart=(new Date()).getTime(),mwPerformance=(window.performance&&performance.mark)?performance:{mark:function(){}};mwPerformance.mark('mwLoadStart');function isCompatible(ua){if(ua===undefined){ua=navigator.userAgent;}return!((ua.indexOf('MSIE')!==-1&&parseFloat(ua.split('MSIE')[1])<8)||(ua.indexOf('Firefox/')!==-1&&parseFloat(ua.split('Firefox/')[1])<3)||(ua.indexOf('Opera/')!==-1&&(ua.indexOf('Version/')===-1?parseFloat(ua.split('Opera/')[1])<10:parseFloat(ua.split('Version/')[1])<12))||(ua.indexOf('Opera ')!==-1&&parseFloat(ua.split(' Opera ')[1])<10)||ua.match(/BlackBerry[^\/]*\/[1-5]\./)||ua.match(/webOS\/1\.[0-4]/)||ua.match(/PlayStation/i)||ua.match(/SymbianOS|Series60/)||ua.match(/NetFront/)||ua.match(/Opera Mini/)||ua.match(/S40OviBrowser/)||ua.match(/MeeGo/)||(ua.match(/Glass/)&&ua.match(/Android/)));}(function(){if(!isCompatible()){document.documentElement.className=document.documentElement.className.replace(/(^|\s)client-js(\s|$)/,'$1client-nojs$2');return;}
function startUp(){mw.config=new mw.Map(true);mw.loader.addSource({"local":"/load.php"});mw.loader.register([["site","8DqteyLJ"],["noscript","RYLlht0p",[],"noscript"],["filepage","1z1s6w1J"],["user.groups","dwqz0Z01",[],"user"],["user","8aKZ4RNK",[],"user"],["user.cssprefs","64Nx0RWw",[],"private"],["user.defaults","eSrxzDwg"],["user.options","u6SUvbNl",[6],"private"],["user.tokens","ZRD3ouGR",[],"private"],["mediawiki.language.data","0d7kH2n6",[168]],["mediawiki.skinning.elements","XDbI9tT8"],["mediawiki.skinning.content","AFCAcsAo"],["mediawiki.skinning.interface","DFErDh2y"],["mediawiki.skinning.content.parsoid","xuxWgQLY"],["mediawiki.skinning.content.externallinks","0XzE1AqA"],["jquery.accessKeyLabel","cb+z6rcO",[25,129]],["jquery.appear","EFRN0sHh"],["jquery.arrowSteps","61VUTNh1"],["jquery.async","OHkjoOf7"],["jquery.autoEllipsis","V2Fg3gea",[37]],["jquery.badge","Ri8ioqfY",[165]],["jquery.byteLength","FxaXRuK9"],["jquery.byteLimit","8ug/qHAN",[21]],["jquery.checkboxShiftClick",
"m6yThAAf"],["jquery.chosen","F0rSj9oH"],["jquery.client","1VDnYRZO"],["jquery.color","WunImiw5",[27]],["jquery.colorUtil","3i3pu9OR"],["jquery.confirmable","itPdHCrT",[169]],["jquery.cookie","xJf50qoJ"],["jquery.expandableField","H09rI82h"],["jquery.farbtastic","4CB6G2DT",[27]],["jquery.footHovzer","kmlfRMhV"],["jquery.form","xKn2v2OU"],["jquery.fullscreen","Zp9O0G0I"],["jquery.getAttrs","CzELeRmG"],["jquery.hidpi","ESKYUaW/"],["jquery.highlightText","BgUMX34x",[227,129]],["jquery.hoverIntent","3cri3DUX"],["jquery.i18n","0MqJ7hok",[167]],["jquery.localize","g6yMdfiO"],["jquery.makeCollapsible","qz0wBeDk"],["jquery.mockjax","qsNgC9/M"],["jquery.mw-jump","FPJmFieI"],["jquery.mwExtension","8rqz3UE/"],["jquery.placeholder","Dx1kCFYW"],["jquery.qunit","ZHYqWjmT"],["jquery.qunit.completenessTest","zebI7v9A",[46]],["jquery.spinner","vLKwWQaH"],["jquery.jStorage","op0RMtyo",[93]],["jquery.suggestions","PZS4q2uN",[37]],["jquery.tabIndex","VBvRm1ks"],["jquery.tablesorter","iRb9QlkT",[227,129,
170]],["jquery.textSelection","yiacB9ee",[25]],["jquery.throttle-debounce","HGUYdgjX"],["jquery.validate","+PKb7eOc"],["jquery.xmldom","FZeXWKeS"],["jquery.tipsy","vzC5vlpH"],["jquery.ui.core","sBhEw9Wg",[59],"jquery.ui"],["jquery.ui.core.styles","vJyrBOU6",[],"jquery.ui"],["jquery.ui.accordion","Iwu0bUPL",[58,78],"jquery.ui"],["jquery.ui.autocomplete","l3aegR5M",[67],"jquery.ui"],["jquery.ui.button","gUEX6Lij",[58,78],"jquery.ui"],["jquery.ui.datepicker","hHCkYGne",[58],"jquery.ui"],["jquery.ui.dialog","hkTsikhC",[62,65,69,71],"jquery.ui"],["jquery.ui.draggable","x20+ZI4E",[58,68],"jquery.ui"],["jquery.ui.droppable","mBsqVDUO",[65],"jquery.ui"],["jquery.ui.menu","OMXeAHXl",[58,69,78],"jquery.ui"],["jquery.ui.mouse","2Uw+Fu2Y",[78],"jquery.ui"],["jquery.ui.position","sFeG+fKH",[],"jquery.ui"],["jquery.ui.progressbar","EQbsxhCG",[58,78],"jquery.ui"],["jquery.ui.resizable","yZh7qTcI",[58,68],"jquery.ui"],["jquery.ui.selectable","B7Hq3qvh",[58,68],"jquery.ui"],["jquery.ui.slider",
"6Kg84JzL",[58,68],"jquery.ui"],["jquery.ui.sortable","HMDG+sbK",[58,68],"jquery.ui"],["jquery.ui.spinner","XvK/rrqN",[62],"jquery.ui"],["jquery.ui.tabs","2slWV5SE",[58,78],"jquery.ui"],["jquery.ui.tooltip","C4I5q1Yl",[58,69,78],"jquery.ui"],["jquery.ui.widget","c80pheNd",[],"jquery.ui"],["jquery.effects.core","vYOnmzT/",[],"jquery.ui"],["jquery.effects.blind","q+Affw69",[79],"jquery.ui"],["jquery.effects.bounce","JOKmU6Gd",[79],"jquery.ui"],["jquery.effects.clip","WQZQF9J3",[79],"jquery.ui"],["jquery.effects.drop","rlZZ+oxH",[79],"jquery.ui"],["jquery.effects.explode","BYjLhdjg",[79],"jquery.ui"],["jquery.effects.fade","fMKK1H2o",[79],"jquery.ui"],["jquery.effects.fold","XrViDTyX",[79],"jquery.ui"],["jquery.effects.highlight","dheMdm/O",[79],"jquery.ui"],["jquery.effects.pulsate","sNPx0QpW",[79],"jquery.ui"],["jquery.effects.scale","OxSdoRb9",[79],"jquery.ui"],["jquery.effects.shake","TLajDFOr",[79],"jquery.ui"],["jquery.effects.slide","j7ChouPq",[79],"jquery.ui"],[
"jquery.effects.transfer","bortANZA",[79],"jquery.ui"],["json","M2yDyleD",[],null,null,"return!!(window.JSON\u0026\u0026JSON.stringify\u0026\u0026JSON.parse);"],["moment","zm5wEEmF"],["mediawiki.apihelp","zQ5+ITDj",[119]],["mediawiki.template","t8wMiGkb"],["mediawiki.template.mustache","F+UIvzjR",[96]],["mediawiki.template.regexp","p2NLJXxM",[96]],["mediawiki.apipretty","WDYI0WaG"],["mediawiki.api","PPLTtQFB",[145,8]],["mediawiki.api.category","KNBjgGQ1",[134,100]],["mediawiki.api.edit","YJB5ioxV",[134,100]],["mediawiki.api.login","Bm3Ai81z",[100]],["mediawiki.api.options","kAKb3iUO",[100]],["mediawiki.api.parse","Hky31+z/",[100]],["mediawiki.api.upload","B3gb1XvO",[227,93,102]],["mediawiki.api.watch","DOos9qKI",[100]],["mediawiki.content.json","JkXK/yPh"],["mediawiki.confirmCloseWindow","JNrk0mek"],["mediawiki.debug","lP+a9hyY",[32,57]],["mediawiki.debug.init","pZnXPwYv",[110]],["mediawiki.feedback","9/Nb/B61",[134,125,229]],["mediawiki.feedlink","OxEW54XX"],["mediawiki.filewarning",
"TNZr5q6e",[229]],["mediawiki.ForeignApi","X9lQg+Ye",[116]],["mediawiki.ForeignApi.core","LxfxO7MV",[100,228]],["mediawiki.helplink","gjG26prk"],["mediawiki.hidpi","Vyi42QPm",[36],null,null,"return'srcset'in new Image();"],["mediawiki.hlist","ZsrtJV9A",[25]],["mediawiki.htmlform","C6B3AdLK",[22,129]],["mediawiki.htmlform.styles","Pov99gVZ"],["mediawiki.htmlform.ooui.styles","QCmajtHo"],["mediawiki.icon","XiSDEWe9"],["mediawiki.inspect","xBN1Kcdm",[21,93,129]],["mediawiki.messagePoster","XRFWC/FR",[100,228]],["mediawiki.messagePoster.wikitext","mmQHquKm",[102,125]],["mediawiki.notification","F+I0p6zv",[177]],["mediawiki.notify","Z250XdLv"],["mediawiki.RegExp","UCScc08n"],["mediawiki.pager.tablePager","qzYetbp2"],["mediawiki.searchSuggest","jGec2gYL",[35,45,50,100]],["mediawiki.sectionAnchor","/arbnsNB"],["mediawiki.storage","d5MXhdY+"],["mediawiki.Title","m1HUXoLI",[21,145]],["mediawiki.Upload","bEoB842x",[106]],["mediawiki.ForeignUpload","VVg1hn0P",[115,135]],[
"mediawiki.ForeignStructuredUpload","cWlUbAff",[136]],["mediawiki.Upload.Dialog","/rek9uma",[139]],["mediawiki.Upload.BookletLayout","qkpsb1bL",[135,169,229]],["mediawiki.ForeignStructuredUpload.BookletLayout","tDDsYJ+J",[137,139,224,223]],["mediawiki.toc","7R62t2/u",[146]],["mediawiki.Uri","PX8yhqI2",[145,98]],["mediawiki.user","guT+5zW6",[100,146,7]],["mediawiki.userSuggest","mp7KebsB",[50,100]],["mediawiki.util","O433JtOS",[15,128]],["mediawiki.cookie","cXHKAULx",[29]],["mediawiki.toolbar","5RsVMdEi"],["mediawiki.experiments","d7mLbIq4"],["mediawiki.action.edit","btBwula3",[22,53,150]],["mediawiki.action.edit.styles","ztYlf6SN"],["mediawiki.action.edit.collapsibleFooter","ZwTGJA7X",[41,146,123]],["mediawiki.action.edit.preview","7vySDrL+",[33,48,53,155,100,169]],["mediawiki.action.edit.stash","UlvTX3qm",[35,100]],["mediawiki.action.history","M7B09OCz"],["mediawiki.action.history.diff","qYHUtc+a"],["mediawiki.action.view.dblClickEdit","3LIAKvow",[177,7]],[
"mediawiki.action.view.metadata","BgRgBJRM"],["mediawiki.action.view.categoryPage.styles","f+blKvPm"],["mediawiki.action.view.postEdit","K8wv0xpb",[146,169,96]],["mediawiki.action.view.redirect","GaeO3vyU",[25]],["mediawiki.action.view.redirectPage","fg+Ha/qS"],["mediawiki.action.view.rightClickEdit","5iFqcqww"],["mediawiki.action.edit.editWarning","aQVVXSFg",[53,109,169]],["mediawiki.action.view.filepage","c9i800Ko"],["mediawiki.language","wWW3+tuZ",[166,9]],["mediawiki.cldr","0Jju7dGc",[167]],["mediawiki.libs.pluralruleparser","h697BPgE"],["mediawiki.language.init","npzO/M44"],["mediawiki.jqueryMsg","EjtXgyaf",[227,165,145,7]],["mediawiki.language.months","S69Lz8nT",[165]],["mediawiki.language.names","sKzeU4Hy",[168]],["mediawiki.language.specialCharacters","e/sEN09H",[165]],["mediawiki.libs.jpegmeta","TEqsILtI"],["mediawiki.page.gallery","siBtO1a9",[54,175]],["mediawiki.page.gallery.styles","fiU6qkPa"],["mediawiki.page.ready","AULGpTUd",[15,23,41,43,45]],["mediawiki.page.startup",
"18/AId4c",[145]],["mediawiki.page.patrol.ajax","baPr0dbV",[48,134,100,177]],["mediawiki.page.watch.ajax","UtFappNK",[107,177]],["mediawiki.page.image.pagination","hnefKzsG",[48,142]],["mediawiki.special","c0EiyOBv"],["mediawiki.special.block","eVN5kYqj",[145]],["mediawiki.special.changeemail","mu96in3E",[145]],["mediawiki.special.changeslist","IOC412Th"],["mediawiki.special.changeslist.legend","XF49JLub"],["mediawiki.special.changeslist.legend.js","3JaJUrui",[41,146]],["mediawiki.special.changeslist.enhanced","3zy2vAXV"],["mediawiki.special.edittags","Hm8JVhBT",[24]],["mediawiki.special.edittags.styles","3nTlraw7"],["mediawiki.special.import","6fKk0kU/"],["mediawiki.special.movePage","LW9eGZXx",[221]],["mediawiki.special.movePage.styles","VW6QqYeN"],["mediawiki.special.pageLanguage","uKAdrh2+"],["mediawiki.special.pagesWithProp","tPlih+BQ"],["mediawiki.special.preferences","Urq/Zv34",[109,165,127]],["mediawiki.special.recentchanges","fgoQ/r12",[181]],["mediawiki.special.search",
"2ysspyyX"],["mediawiki.special.undelete","tc9ApwDf"],["mediawiki.special.upload","2AgdwMuQ",[48,134,100,109,169,173,96]],["mediawiki.special.userlogin.common.styles","pHO2LXRT"],["mediawiki.special.userlogin.signup.styles","UkKrORMc"],["mediawiki.special.userlogin.login.styles","2LWoUhTf"],["mediawiki.special.userlogin.signup.js","RGcH4R3H",[54,100,169]],["mediawiki.special.unwatchedPages","ZS7YZuyC",[134,107]],["mediawiki.special.javaScriptTest","VnO0Icnl",[142]],["mediawiki.special.version","biwdBep9"],["mediawiki.legacy.config","8gNxVqHf"],["mediawiki.legacy.commonPrint","ITk6zVhR"],["mediawiki.legacy.protect","uRey/I5t",[22]],["mediawiki.legacy.shared","nOTd/Qy2"],["mediawiki.legacy.oldshared","sJrQ9lXI"],["mediawiki.legacy.wikibits","0Ba1QQBh",[145]],["mediawiki.ui","IwDBdShK"],["mediawiki.ui.checkbox","esnDTug8"],["mediawiki.ui.radio","t0PE5iAP"],["mediawiki.ui.anchor","DwChDLJg"],["mediawiki.ui.button","glqPRX5m"],["mediawiki.ui.input","Cvz3HaWz"],["mediawiki.ui.icon",
"LQYGNBkz"],["mediawiki.ui.text","5r5KOHfQ"],["mediawiki.widgets","AC2regEQ",[19,22,224,222]],["mediawiki.widgets.styles","BoD3TtcP"],["mediawiki.widgets.DateInputWidget","wx5X2ZQr",[94,229]],["mediawiki.widgets.CategorySelector","Vh5dU0Y2",[115,134,229]],["mediawiki.widgets.UserInputWidget","X+sl/HM5",[229]],["es5-shim","yj+jit8P",[],null,null,"return(function(){'use strict';return!this\u0026\u0026!!Function.prototype.bind;}());"],["dom-level2-shim","+5piWnfs",[],null,null,"return!!window.Node;"],["oojs","2IGJyhtV",[226,93]],["oojs-ui","3PW4Fumy",[228,230,231,232,233]],["oojs-ui.styles","eRSZoYTo"],["oojs-ui.styles.icons","tE5VhmZE"],["oojs-ui.styles.indicators","4UMUrmoa"],["oojs-ui.styles.textures","NL6TCwF4"],["oojs-ui.styles.icons-accessibility","HD0rMyNe"],["oojs-ui.styles.icons-alerts","uFQsJ9uM"],["oojs-ui.styles.icons-content","X6NQl4ec"],["oojs-ui.styles.icons-editing-advanced","ZsrtF3La"],["oojs-ui.styles.icons-editing-core","C47tBTfb"],["oojs-ui.styles.icons-editing-list",
"GovkwcEx"],["oojs-ui.styles.icons-editing-styling","B0eiNXRW"],["oojs-ui.styles.icons-interactions","n/6jBkeG"],["oojs-ui.styles.icons-layout","ADXeJefF"],["oojs-ui.styles.icons-location","HJpeE4it"],["oojs-ui.styles.icons-media","HQzMcAPJ"],["oojs-ui.styles.icons-moderation","m0Ubj4dA"],["oojs-ui.styles.icons-movement","7EGL6vtD"],["oojs-ui.styles.icons-user","TGj4Wxt/"],["oojs-ui.styles.icons-wikimedia","38mJDh02"],["skins.monobook.styles","AeTt3huW"],["skins.cavendish","BL9YL8/R"],["ext.cite.styles","Vzj3SByi"],["ext.cite.a11y","hJw2u1oq"],["ext.cite.style","BpGzcDrT"],["ext.pygments","DhEucleC"],["ext.geshi.visualEditor","yWctqAqp",["ext.visualEditor.mwcore"]],["jquery.wikiEditor","4JpvZ+V7",[53,165],"ext.wikiEditor"],["jquery.wikiEditor.dialogs","xTLctDQK",[51,64,261],"ext.wikiEditor"],["jquery.wikiEditor.dialogs.config","7dyAmkq0",[50,257,134,100,169,96],"ext.wikiEditor"],["jquery.wikiEditor.preview","q+2mSc13",[256,100],"ext.wikiEditor"],["jquery.wikiEditor.publish","xdlSl5Q6",
[257],"ext.wikiEditor"],["jquery.wikiEditor.toolbar","g92w7mVX",[18,29,256,263],"ext.wikiEditor"],["jquery.wikiEditor.toolbar.config","MYPEyIdG",[261,172],"ext.wikiEditor"],["jquery.wikiEditor.toolbar.i18n","Wn/Xhz2S",[],"ext.wikiEditor"],["ext.wikiEditor","dGYv6ift",[256,143],"ext.wikiEditor"],["ext.wikiEditor.dialogs","mLEPhv/4",[268,258],"ext.wikiEditor"],["ext.wikiEditor.preview","sCc+a3mW",[264,259],"ext.wikiEditor"],["ext.wikiEditor.publish","eT79p8f3",[264,260],"ext.wikiEditor"],["ext.wikiEditor.toolbar","YVO95Jxs",[264,262],"ext.wikiEditor"],["ext.wikiEditor.toolbar.styles","rkKZBz4l",[],"ext.wikiEditor"],["ext.nuke","mrZ+Lyau"],["ext.confirmEdit.fancyCaptcha.styles","XkXyj1If"],["ext.confirmEdit.fancyCaptcha","f1NGaWhH",[100]],["ext.confirmEdit.fancyCaptchaMobile","f1NGaWhH",["mobile.startup"]]]);;mw.config.set({"wgLoadScript":"/load.php","debug":!1,"skin":"cavendish","stylepath":"/skins","wgUrlProtocols":
"apt\\:\\/\\/|http\\:\\/\\/|https\\:\\/\\/|ftp\\:\\/\\/|irc\\:\\/\\/|gopher\\:\\/\\/|telnet\\:\\/\\/|nntp\\:\\/\\/|worldwind\\:\\/\\/|mailto\\:|news\\:","wgArticlePath":"/$1","wgScriptPath":"","wgScriptExtension":".php","wgScript":"/index.php","wgSearchType":null,"wgVariantArticlePath":!1,"wgActionPaths":{},"wgServer":"http://wiki.ubuntu.org.cn","wgServerName":"wiki.ubuntu.org.cn","wgUserLanguage":"zh-hans","wgContentLanguage":"zh-hans","wgTranslateNumerals":!0,"wgVersion":"1.26.3","wgEnableAPI":!0,"wgEnableWriteAPI":!0,"wgMainPageTitle":"首页","wgFormattedNamespaces":{"-2":"媒体文件","-1":"特殊","0":"","1":"讨论","2":"用户","3":"用户讨论","4":"Ubuntu中文","5":"Ubuntu中文讨论","6":"文件","7":"文件讨论","8":"MediaWiki","9":"MediaWiki讨论","10":"模板","11":"模板讨论","12":"帮助","13":"帮助讨论","14":"分类","15":"分类讨论","100":"UbuntuHelp","101":"UbuntuWiki"},"wgNamespaceIds":{"媒体文件":-2,"特殊":-1,"":0,"讨论":1,"用户"
:2,"用户讨论":3,"ubuntu中文":4,"ubuntu中文讨论":5,"文件":6,"文件讨论":7,"mediawiki":8,"mediawiki讨论":9,"模板":10,"模板讨论":11,"帮助":12,"帮助讨论":13,"分类":14,"分类讨论":15,"ubuntuhelp":100,"ubuntuwiki":101,"媒体":-2,"对话":1,"用户对话":3,"图像":6,"档案":6,"image":6,"image_talk":7,"图像对话":7,"图像讨论":7,"档案对话":7,"档案讨论":7,"文件对话":7,"模板对话":11,"帮助对话":13,"分类对话":15,"media":-2,"special":-1,"talk":1,"user":2,"user_talk":3,"project":4,"project_talk":5,"file":6,"file_talk":7,"mediawiki_talk":9,"template":10,"template_talk":11,"help":12,"help_talk":13,"category":14,"category_talk":15},"wgContentNamespaces":[0],"wgSiteName":"Ubuntu中文","wgDBname":"ubuntuwiki","wgExtraSignatureNamespaces":[],"wgAvailableSkins":{"monobook":"MonoBook","cavendish":"Cavendish","fallback":"Fallback","apioutput":"ApiOutput"},"wgExtensionAssetsPath":"/extensions","wgCookiePrefix":"ubuntuwiki","wgCookieDomain":
"","wgCookiePath":"/","wgCookieExpiration":15552000,"wgResourceLoaderMaxQueryLength":2000,"wgCaseSensitiveNamespaces":[],"wgLegalTitleChars":" %!\"$&'()*,\\-./0-9:;=?@A-Z\\\\\\^_`a-z~+\\u0080-\\uFFFF","wgResourceLoaderStorageVersion":1,"wgResourceLoaderStorageEnabled":!1,"wgResourceLoaderLegacyModules":["mediawiki.legacy.wikibits"],"wgForeignUploadTargets":[],"wgEnableUploads":!0,"wgWikiEditorMagicWords":{"redirect":"#重定向","img_right":"右","img_left":"左","img_none":"无","img_center":"居中","img_thumbnail":"缩略图","img_framed":"有框","img_frameless":"无框"}});window.RLQ=window.RLQ||[];while(RLQ.length){RLQ.shift()();}window.RLQ={push:function(fn){fn();}};}var script=document.createElement('script');script.src="/load.php?debug=false&lang=zh-hans&modules=jquery%2Cmediawiki&only=scripts&skin=cavendish&version=DfAMlyKf";script.onload=script.onreadystatechange=function(){if(!script.readyState||/loaded|complete/.test(script.readyState)){script.onload=script.
onreadystatechange=null;script=null;startUp();}};document.getElementsByTagName('head')[0].appendChild(script);}());