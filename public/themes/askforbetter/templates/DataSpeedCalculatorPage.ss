<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)

	<base href="/">
	<script type="text/javascript">function UnsupportedDeviceService(){var e=this;e._init=function(){if(window.navigator&&window.navigator.userAgent)try{e._device=new Device(window.navigator.userAgent.toLowerCase()),e._redirectIfUnsupported()}catch(i){}},e._isSupported=function(){var i=!0;return e._device.isAndroidOs&&e._device.androidVersion[0]<4||4===e._device.androidVersion[0]&&e._device.androidVersion[1]<4?i=!1:e._device.isIos&&e._device.iosVersion<6?i=!1:e._device.isIe&&e._device.ieVersion<10&&(i=!1),i},e._redirectIfUnsupported=function(){e._isSupported()||-1!==window.location.href.indexOf("unsupported")||(window.location.href="unsupported.html")},e._init()}function Device(e){var i=this;i._init=function(){i._ua=e,i.isWindowsMobileOs=/windows phone/i.test(e),i.isAndroidOs=/android/i.test(e),i.isIos=/ipad|iphone|ipod/.test(e)&&/like mac os x/.test(e)&&!/IEMobile/.test(e),i.isIe=-1!==e.indexOf("msie"),i.androidVersion=i._determineAndroidCredentials(),i.iosVersion=i._determineIosCredentials(),i.ieVersion=i._determineIeCredentials()},i._determineIeCredentials=function(){var e=i._ua.toLowerCase().indexOf("msie ");if(e>0)return parseInt(i._ua.substring(e+5,i._ua.indexOf(".",e)),10);var n=i._ua.indexOf("Trident/");if(n>0){var r=i._ua.indexOf("rv:");return parseInt(i._ua.substring(r+3,i._ua.indexOf(".",r)),10)}var t=i._ua.indexOf("Edge/");return t>0?parseInt(i._ua.substring(t+5,i._ua.indexOf(".",t)),10):-1},i._determineAndroidCredentials=function(){if(!i.isAndroidOs)return-1;var e=[];try{var n=i._ua.match(/android\s([0-9\.]*)/);e.push(parseInt(n[1].substr(0,n[1].indexOf(".")))),e.push(parseInt(n[1].substr(n[1].indexOf(".")+1,n[1].length-1)))}catch(r){return-1}return e},i._determineIosCredentials=function(){if(!i.isIos)return-1;var e=i._ua.match(/os\s([0-9\.]*)/);try{return parseInt(e[1])}catch(n){}},i._init()}new UnsupportedDeviceService;</script>

	<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
	<link rel="stylesheet" href="{$ThemeDir}/assets/resources/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="{$ThemeDir}/assets/resources/css/xlook/xlook.css">
	<% require themedCSS('main') %>
	<% require themedCSS('corelogic-api') %>

	<link rel="icon" href="$ThemeDir/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" type="image/x-icon" />

	<script>
		var chorus = window.chorus || {};
	</script>

	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-W5T937J');</script>
	<!-- End Google Tag Manager -->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W5T937J"
				  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

	$Layout

 <script type="text/javascript" src="{$ThemeDir}/assets/data/inline.6bba19c3e908b6c35496.bundle.js"></script>
 <script type="text/javascript" src="{$ThemeDir}/assets/data/polyfills.4771b99d6b64d2397358.bundle.js"></script>
 <script type="text/javascript" src="{$ThemeDir}/assets/data/vendor.2c15b9a4953bd3769ab5.bundle.js"></script>
 <script type="text/javascript" src="{$ThemeDir}/assets/data/main.714bc9755c20843b42ed.bundle.js"></script>

<script src="{$ThemeDir}/javascript/vendor.js"></script>
<script src="{$ThemeDir}/javascript/plugins.js"></script>
<script src="{$ThemeDir}/javascript/main.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/corelogic-api.js"></script>

<script>
	var common = new chorus.Common();
	var componentAddress = new chorus.ComponentAddress();

	common.Common();
	componentAddress.ComponentAddress();
</script>

</body>
</html>
