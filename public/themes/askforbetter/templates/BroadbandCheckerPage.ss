<!DOCTYPE html>

<!--[if !IE]><!-->
<html  ng-app="App" lang="$ContentLocale">
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
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<%--<% require themedCSS('bootstrap.min') %>--%>

	<script src="{$ThemeDir}/javascript/vendor/modernizr.js"></script>

	<link rel="icon" href="$ThemeDir/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" type="image/x-icon" />

	<style>[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
          display: none !important;
      }</style>
    <!-- bs -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.js"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyDrBkTwzJJ3lzu8ddK6D9bPO_6Y5ILIMpc"></script>
	<%--<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyDYSUoa2NnPCK3Ooyrgd77cpj2OXtksuBw"></script>--%>
	<%--<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyC9k-RsqCJ2LHyn3Gm-epGcuP-D61tOB1M"></script>--%>
	<!-- <base href="/"> -->
	 <style>
        .show-all-steps-title {
            clear: both;
            background: #f5f8f9;
            color: #aaa;
            padding: 2em 1.5em 0.75em;
            margin: 0 -5px;
            border-bottom: 2px solid #eee;
            font-size: 2em;
        }

        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }
    </style>
	<link href="{$ThemeDir}/assets/checker/app.fe318b21d46f82bb10d1.css" rel="stylesheet">

	<% require themedCSS('main') %>
	<% require themedCSS('tool-overrides') %>
	<% require themedCSS('corelogic-api') %>

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

<script type="text/javascript" src="//test-chorus-viewer.wivolo.com/viewer-chorus/js/wialus-bootstrap.js"></script>

<script>window.BBC={};BBC.APIEndpoint={"method":"JSONP","url":"https://chorus-viewer.wivolo.com/viewer-chorus/jsonp/location-details"};BBC.WialusHost="https://chorus-viewer.wivolo.com";</script>

<script type="text/javascript" src="{$ThemeDir}/assets/checker/app.fe318b21d46f82bb10d1.js"></script>

<script src="{$ThemeDir}/javascript/vendor.js"></script>
<script src="{$ThemeDir}/javascript/plugins.js"></script>
<script src="{$ThemeDir}/javascript/main.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/corelogic-api.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/tool-override.js"></script>

<script>
	var common = new chorus.Common();
	var askForBetter = new chorus.AskForBetter();
	var componentAddress = new chorus.ComponentAddress();

	componentAddress.ComponentAddress();
	askForBetter.AskForBetter();
	common.Common();
</script>

</body>
</html>
