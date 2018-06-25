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
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<%--<% require themedCSS('bootstrap.min') %>--%>
	<% require themedCSS('main') %>
	<% require themedCSS('corelogic-api') %>

	<script src="{$ThemeDir}/javascript/vendor/modernizr.js"></script>

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

<script src="{$ThemeDir}/javascript/vendor.js"></script>
<script src="{$ThemeDir}/javascript/plugins.js"></script>
<script src="{$ThemeDir}/javascript/main.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/corelogic-api.js"></script>

<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>


<script>
	var common = new chorus.Common();
	var howToGuides = new chorus.HowToGuides();
	var componentAddress = new chorus.ComponentAddress();

	common.Common();
	howToGuides.HowToGuides();
	componentAddress.ComponentAddress();
</script>

</body>
</html>
